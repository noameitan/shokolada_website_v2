<?php
/*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/
if (!defined('_PS_VERSION_'))
	exit;

class StQuickViewDefaultModuleFrontController extends ModuleFrontController
{	 
	protected $product;
	public function __construct()
	{
	    $this->content_only = true;
        
		parent::__construct();
		$this->context = Context::getContext();
	}
    
	public function setMedia()
	{
		parent::setMedia();
		if (count($this->errors))
			return ;

		if ($this->context->getMobileDevice() == false)
		{
			$this->addCSS(_THEME_CSS_DIR_.'product.css');
			$this->addCSS(_PS_CSS_DIR_.'jquery.fancybox-1.3.4.css', 'screen');
			$this->addJqueryPlugin(array('fancybox', 'idTabs', 'scrollTo', 'serialScroll'));
			$this->addJS(array(
				_THEME_JS_DIR_.'tools.js',
				_THEME_JS_DIR_.'product.js'
			));
			$this->addCSS(_THEME_CSS_DIR_.'product.css');
		    $this->addCSS('/modules/stquickview/views/css/stquickview.css');
		}
		if (Configuration::get('PS_DISPLAY_JQZOOM') == 1)
			$this->addJqueryPlugin('jqzoom');
	}
    
	public function initContent()
	{
        $this->setMedia();
		parent::initContent();
	    parent::initHeader();
	    parent::initFooter();

		if ($id_product = (int)Tools::getValue('id_product'))
			$this->product = new Product($id_product, true, $this->context->language->id, $this->context->shop->id);


		if (!$this->errors)
		{
			if (Pack::isPack((int)$this->product->id) && !Pack::isInStock((int)$this->product->id))
				$this->product->quantity = 0;

			// Assign to the template the id of the virtual product. "0" if the product is not downloadable.
			$this->context->smarty->assign('virtual', ProductDownload::getIdFromIdProduct((int)$this->product->id));

			$this->context->smarty->assign('customizationFormTarget', Tools::safeOutput(urldecode($_SERVER['REQUEST_URI'])));

			if (Tools::isSubmit('submitCustomizedDatas'))
			{
				// If cart has not been saved, we need to do it so that customization fields can have an id_cart
				// We check that the cookie exists first to avoid ghost carts
				if (!$this->context->cart->id && isset($_COOKIE[$this->context->cookie->getName()]))
				{
					$this->context->cart->add();
					$this->context->cookie->id_cart = (int)$this->context->cart->id;
				}
				$this->pictureUpload();
				$this->textRecord();
				$this->formTargetFormat();
			}
			else if (Tools::getIsset('deletePicture') && !$this->context->cart->deleteCustomizationToProduct($this->product->id, Tools::getValue('deletePicture')))
				$this->errors[] = Tools::displayError('An error occurred while deleting the selected picture.');

			
			$pictures = array();
			$text_fields = array();
			if ($this->product->customizable)
			{
				$files = $this->context->cart->getProductCustomization($this->product->id, Product::CUSTOMIZE_FILE, true);
				foreach ($files as $file)
					$pictures['pictures_'.$this->product->id.'_'.$file['index']] = $file['value'];

				$texts = $this->context->cart->getProductCustomization($this->product->id, Product::CUSTOMIZE_TEXTFIELD, true);

				foreach ($texts as $text_field)
					$text_fields['textFields_'.$this->product->id.'_'.$text_field['index']] = str_replace('<br />', "\n", $text_field['value']);
			}

			$this->context->smarty->assign(array(
				'pictures' => $pictures,
				'textFields' => $text_fields));

			// Assign template vars related to the category + execute hooks related to the category
			//$this->assignCategory();
			// Assign template vars related to the price and tax
			$this->assignPriceAndTax();

			// Assign template vars related to the images
			$this->assignImages();
			// Assign attribute groups to the template
			$this->assignAttributesGroups();

			// Assign attributes combinations to the template
			$this->assignAttributesCombinations();

			// Pack management
			$pack_items = $this->product->cache_is_pack ? Pack::getItemTable($this->product->id, $this->context->language->id, true) : array();
			$this->context->smarty->assign('packItems', $pack_items);
			$this->context->smarty->assign('packs', Pack::getPacksTable($this->product->id, $this->context->language->id, true, 1));
            
			if (isset($this->category->id) && $this->category->id)
				$return_link = Tools::safeOutput($this->context->link->getCategoryLink($this->category));
			else
				$return_link = 'javascript: history.back();';

			$this->context->smarty->assign(array(
				'stock_management' => Configuration::get('PS_STOCK_MANAGEMENT'),
				'customizationFields' => ($this->product->customizable) ? $this->product->getCustomizationFields($this->context->language->id) : false,
				'return_link' => $return_link,
				'product' => $this->product,
				'product_manufacturer' => new Manufacturer((int)$this->product->id_manufacturer, $this->context->language->id),
				'token' => Tools::getToken(false),
				'features' => $this->product->getFrontFeatures($this->context->language->id),
				'attachments' => (($this->product->cache_has_attachments) ? $this->product->getAttachments($this->context->language->id) : array()),
				'allow_oosp' => $this->product->isAvailableWhenOutOfStock((int)$this->product->out_of_stock),
				'last_qties' =>  (int)Configuration::get('PS_LAST_QTIES'),
				'HOOK_EXTRA_LEFT' => Hook::exec('displayLeftColumnProduct'),
				'HOOK_EXTRA_RIGHT' => Hook::exec('displayRightColumnProduct'),
				'HOOK_PRODUCT_OOS' => Hook::exec('actionProductOutOfStock', array('product' => $this->product)),
				'HOOK_PRODUCT_ACTIONS' => Hook::exec('displayProductButtons', array('product' => $this->product)),
				'display_qties' => (int)Configuration::get('PS_DISPLAY_QTIES'),
				'display_ht' => !Tax::excludeTaxeOption(),
				'currencySign' => $this->context->currency->sign,
				'currencyRate' => $this->context->currency->conversion_rate,
				'currencyFormat' => $this->context->currency->format,
				'currencyBlank' => $this->context->currency->blank,
				'jqZoomEnabled' => Configuration::get('PS_DISPLAY_JQZOOM'),
				'ENT_NOQUOTES' => ENT_NOQUOTES,
				'outOfStockAllowed' => (int)Configuration::get('PS_ORDER_OUT_OF_STOCK'),
			    'content_only' => 1,
				'qw_show_short_desc' => Configuration::get('ST_QW_SHOW_SHORT_DESC'),
			));
		}

		$this->context->smarty->assign('errors', $this->errors);
        
		$this->setTemplate('product_quickview.tpl');
	}
    
	/**
	 * Assign price and tax to the template
	 */
	protected function assignPriceAndTax()
	{
		$id_customer = (isset($this->context->customer) ? (int)$this->context->customer->id : 0);
		$id_group = (int)Group::getCurrent()->id;
		$id_country = (int)$id_customer ? Customer::getCurrentCountry($id_customer) : Configuration::get('PS_COUNTRY_DEFAULT');

		$group_reduction = GroupReduction::getValueForProduct($this->product->id, $id_group);
		if ($group_reduction == 0)
			$group_reduction = Group::getReduction((int)$this->context->cookie->id_customer) / 100;

		// Tax
		$tax = (float)$this->product->getTaxesRate(new Address((int)$this->context->cart->{Configuration::get('PS_TAX_ADDRESS_TYPE')}));
		$this->context->smarty->assign('tax_rate', $tax);

		$product_price_with_tax = Product::getPriceStatic($this->product->id, true, null, 6);
		if (Product::$_taxCalculationMethod == PS_TAX_INC)
			$product_price_with_tax = Tools::ps_round($product_price_with_tax, 2);
		$product_price_without_eco_tax = (float)$product_price_with_tax - $this->product->ecotax;

		$ecotax_rate = (float)Tax::getProductEcotaxRate($this->context->cart->{Configuration::get('PS_TAX_ADDRESS_TYPE')});
		$ecotax_tax_amount = Tools::ps_round($this->product->ecotax, 2);
		if (Product::$_taxCalculationMethod == PS_TAX_INC && (int)Configuration::get('PS_TAX'))
			$ecotax_tax_amount = Tools::ps_round($ecotax_tax_amount * (1 + $ecotax_rate / 100), 2);

		$id_currency = (int)$this->context->cookie->id_currency;
		$id_product = (int)$this->product->id;
		$id_shop = $this->context->shop->id;

		$quantity_discounts = SpecificPrice::getQuantityDiscounts($id_product, $id_shop, $id_currency, $id_country, $id_group, null, true, (int)$this->context->customer->id);
		foreach ($quantity_discounts as &$quantity_discount)
			if ($quantity_discount['id_product_attribute'])
			{
				$combination = new Combination((int)$quantity_discount['id_product_attribute']);
				$attributes = $combination->getAttributesName((int)$this->context->language->id);
				foreach ($attributes as $attribute)
					$quantity_discount['attributes'] = $attribute['name'].' - ';
				$quantity_discount['attributes'] = rtrim($quantity_discount['attributes'], ' - ');
			}

		$product_price = $this->product->getPrice(Product::$_taxCalculationMethod == PS_TAX_INC, false);
		$address = new Address($this->context->cart->{Configuration::get('PS_TAX_ADDRESS_TYPE')});
		$this->context->smarty->assign(array(
			'ecotax_tax_inc' => $ecotax_tax_amount,
			'ecotax_tax_exc' => Tools::ps_round($this->product->ecotax, 2),
			'ecotaxTax_rate' => $ecotax_rate,
			'productPriceWithoutEcoTax' => (float)$product_price_without_eco_tax,
			'group_reduction' => (1 - $group_reduction),
			'no_tax' => Tax::excludeTaxeOption() || !$this->product->getTaxesRate($address),
			'ecotax' => (!count($this->errors) && $this->product->ecotax > 0 ? Tools::convertPrice((float)$this->product->ecotax) : 0),
			'tax_enabled' => Configuration::get('PS_TAX')
		));
	}

	/**
	 * Assign template vars related to images
	 */
	protected function assignImages()
	{
		$images = $this->product->getImages((int)$this->context->cookie->id_lang);
		$product_images = array();

		if(isset($images[0]))
			$this->context->smarty->assign('mainImage', $images[0]);
		foreach ($images as $k => $image)
		{
			if ($image['cover'])
			{
				$this->context->smarty->assign('mainImage', $image);
				$cover = $image;
				$cover['id_image'] = (Configuration::get('PS_LEGACY_IMAGES') ? ($this->product->id.'-'.$image['id_image']) : $image['id_image']);
				$cover['id_image_only'] = (int)$image['id_image'];
			}
			$product_images[(int)$image['id_image']] = $image;
		}

		if (!isset($cover))
		{
			if(isset($images[0]))
			{
				$cover = $images[0];
				$cover['id_image'] = (Configuration::get('PS_LEGACY_IMAGES') ? ($this->product->id.'-'.$images[0]['id_image']) : $images[0]['id_image']);
				$cover['id_image_only'] = (int)$images[0]['id_image'];
			}
			else
				$cover = array(
					'id_image' => $this->context->language->iso_code.'-default',
					'legend' => 'No picture',
					'title' => 'No picture'
				);
		}
		$size = Image::getSize(ImageType::getFormatedName('large'));
		$this->context->smarty->assign(array(
			'have_image' => isset($cover['id_image'])? array((int)$cover['id_image']) : Product::getCover((int)Tools::getValue('id_product')),
			'cover' => $cover,
			'imgWidth' => (int)$size['width'],
			'mediumSize' => Image::getSize(ImageType::getFormatedName('medium')),
			'largeSize' => Image::getSize(ImageType::getFormatedName('large')),
			'homeSize' => Image::getSize(ImageType::getFormatedName('home')),
			'col_img_dir' => _PS_COL_IMG_DIR_));
		if (count($product_images))
			$this->context->smarty->assign('images', $product_images);
	}

	/**
	 * Assign template vars related to attribute groups and colors
	 */
	protected function assignAttributesGroups()
	{
		$colors = array();
		$groups = array();

		// @todo (RM) should only get groups and not all declination ?
		$attributes_groups = $this->product->getAttributesGroups($this->context->language->id);
		if (is_array($attributes_groups) && $attributes_groups)
		{
			$combination_images = $this->product->getCombinationImages($this->context->language->id);
			$combination_prices_set = array();
			foreach ($attributes_groups as $k => $row)
			{
				// Color management
				if ((isset($row['attribute_color']) && $row['attribute_color']) || (file_exists(_PS_COL_IMG_DIR_.$row['id_attribute'].'.jpg')))
				{
					$colors[$row['id_attribute']]['value'] = $row['attribute_color'];
					$colors[$row['id_attribute']]['name'] = $row['attribute_name'];
					if (!isset($colors[$row['id_attribute']]['attributes_quantity']))
						$colors[$row['id_attribute']]['attributes_quantity'] = 0;
					$colors[$row['id_attribute']]['attributes_quantity'] += (int)$row['quantity'];
				}
				if (!isset($groups[$row['id_attribute_group']]))
					$groups[$row['id_attribute_group']] = array(
						'name' => $row['public_group_name'],
						'group_type' => $row['group_type'],
						'default' => -1,
					);

				$groups[$row['id_attribute_group']]['attributes'][$row['id_attribute']] = $row['attribute_name'];
				if ($row['default_on'] && $groups[$row['id_attribute_group']]['default'] == -1)
					$groups[$row['id_attribute_group']]['default'] = (int)$row['id_attribute'];
				if (!isset($groups[$row['id_attribute_group']]['attributes_quantity'][$row['id_attribute']]))
					$groups[$row['id_attribute_group']]['attributes_quantity'][$row['id_attribute']] = 0;
				$groups[$row['id_attribute_group']]['attributes_quantity'][$row['id_attribute']] += (int)$row['quantity'];


				$combinations[$row['id_product_attribute']]['attributes_values'][$row['id_attribute_group']] = $row['attribute_name'];
				$combinations[$row['id_product_attribute']]['attributes'][] = (int)$row['id_attribute'];
				$combinations[$row['id_product_attribute']]['price'] = (float)$row['price'];

				// Call getPriceStatic in order to set $combination_specific_price
				if (!isset($combination_prices_set[(int)$row['id_product_attribute']]))
				{
					Product::getPriceStatic((int)$this->product->id, false, $row['id_product_attribute'], 6, null, false, true, 1, false, null, null, null, $combination_specific_price);
					$combination_prices_set[(int)$row['id_product_attribute']] = true;
					$combinations[$row['id_product_attribute']]['specific_price'] = $combination_specific_price;
				}
				$combinations[$row['id_product_attribute']]['ecotax'] = (float)$row['ecotax'];
				$combinations[$row['id_product_attribute']]['weight'] = (float)$row['weight'];
				$combinations[$row['id_product_attribute']]['quantity'] = (int)$row['quantity'];
				$combinations[$row['id_product_attribute']]['reference'] = $row['reference'];
				$combinations[$row['id_product_attribute']]['unit_impact'] = $row['unit_price_impact'];
				$combinations[$row['id_product_attribute']]['minimal_quantity'] = $row['minimal_quantity'];
				if ($row['available_date'] != '0000-00-00')
					$combinations[$row['id_product_attribute']]['available_date'] = $row['available_date'];
				else
					$combinations[$row['id_product_attribute']]['available_date'] = '';

				if (!isset($combination_images[$row['id_product_attribute']][0]['id_image']))
					$combinations[$row['id_product_attribute']]['id_image'] = -1;
				else
				{
					$combinations[$row['id_product_attribute']]['id_image'] = $id_image = (int)$combination_images[$row['id_product_attribute']][0]['id_image'];
					if ($row['default_on'] && $id_image > 0)
					{
						if (isset($this->context->smarty->tpl_vars['images']->value))
							$product_images = $this->context->smarty->tpl_vars['images']->value;
                        if (isset($product_images) && is_array($product_images) && isset($product_images[$id_image]))
						{
							$product_images[$id_image]['cover'] = 1;
							$this->context->smarty->assign('mainImage', $product_images[$id_image]);
							if (count($product_images))
								$this->context->smarty->assign('images', $product_images);
						}
						if (isset($this->context->smarty->tpl_vars['cover']->value))
							$cover = $this->context->smarty->tpl_vars['cover']->value;
						if (isset($cover) && is_array($cover) && isset($product_images) && is_array($product_images))
						{
							$product_images[$cover['id_image']]['cover'] = 0;
							if (isset($product_images[$id_image]))
								$cover = $product_images[$id_image];
							$cover['id_image'] = (Configuration::get('PS_LEGACY_IMAGES') ? ($this->product->id.'-'.$id_image) : (int)$id_image);
							$cover['id_image_only'] = (int)$id_image;
							$this->context->smarty->assign('cover', $cover);
						}
					}
				}
			}

			// wash attributes list (if some attributes are unavailables and if allowed to wash it)
			if (!Product::isAvailableWhenOutOfStock($this->product->out_of_stock) && Configuration::get('PS_DISP_UNAVAILABLE_ATTR') == 0)
			{
				foreach ($groups as &$group)
					foreach ($group['attributes_quantity'] as $key => &$quantity)
						if (!$quantity)
							unset($group['attributes'][$key]);

				foreach ($colors as $key => $color)
					if (!$color['attributes_quantity'])
						unset($colors[$key]);
			}
			foreach ($combinations as $id_product_attribute => $comb)
			{
				$attribute_list = '';
				foreach ($comb['attributes'] as $id_attribute)
					$attribute_list .= '\''.(int)$id_attribute.'\',';
				$attribute_list = rtrim($attribute_list, ',');
				$combinations[$id_product_attribute]['list'] = $attribute_list;
			}
			$this->context->smarty->assign(array(
				'groups' => $groups,
				'combinations' => $combinations,
				'colors' => (count($colors)) ? $colors : false,
				'combinationImages' => $combination_images));
		}
	}

	/**
	 * Get and assign attributes combinations informations
	 */
	protected function assignAttributesCombinations()
	{
		$attributes_combinations = Product::getAttributesInformationsByProduct($this->product->id);
		if (is_array($attributes_combinations) && count($attributes_combinations))
			foreach ($attributes_combinations as &$ac)
				foreach ($ac as &$val)
					$val = str_replace('-', '_', Tools::link_rewrite(str_replace(array(',', '.'), '-', $val)));
		else
			$attributes_combinations = array();
		$this->context->smarty->assign('attributesCombinations', $attributes_combinations);
	}

	public function getProduct()
	{
	    return $this->product;
	}
}