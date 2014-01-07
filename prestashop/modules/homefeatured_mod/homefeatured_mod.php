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

class HomeFeatured_mod extends Module
{
	private $_html = '';
    public $fields_form;
    public $fields_value;
    public static $sort_by = array(
        1 => array('id' =>1 , 'name' => 'Product Name: A to Z'),
        2 => array('id' =>2 , 'name' => 'Product Name: Z to A'),
        3 => array('id' =>3 , 'name' => 'Price: Lowest first'),
        4 => array('id' =>4 , 'name' => 'Price: Highest first'),
        5 => array('id' =>5 , 'name' => 'Product ID: Asc'),
        6 => array('id' =>6 , 'name' => 'Product ID: Desc'),
        7 => array('id' =>7 , 'name' => 'Random'),
        8 => array('id' =>8 , 'name' => 'Position: Asc'),
        9 => array('id' =>9 , 'name' => 'Position: Desc'),
    );
	function __construct()
	{
		$this->name = 'homefeatured_mod';
		$this->tab = 'front_office_features';
		$this->version = '1.1.5';
		$this->author = 'PrestaShop';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('Featured products on the homepage mod.');
		$this->description = $this->l('Displays featured products in the middle of your homepage.');
	}

	function install()
	{
		if (!Configuration::updateValue('HOME_FEATURED_NBR_MOD', 6) 
            || !Configuration::updateValue('HOME_FEATURED_SOBY', 6) 
            || !parent::install() 
			|| !$this->registerHook('addproduct')
			|| !$this->registerHook('updateproduct')
			|| !$this->registerHook('deleteproduct')
            || !$this->registerHook('displayHomeSecondaryLeft')
        )
			return false;
		$this->_clearCache('homefeatured.tpl');
		return true;
	}
    public function uninstall()
	{
		$this->_clearCache('homefeatured.tpl');
		return parent::uninstall();
	}
    
    public function getContent()
	{
		if (isset($_POST['savehomefeatured_mod']))
		{
            $error = array();
			$nbr = (int)(Tools::getValue('nbr'));
			if (!$nbr OR $nbr <= 0 OR !Validate::isInt($nbr))
				$error[] = $this->l('An invalid number of products has been specified.');
            if (count($error) 
                || !Configuration::updateValue('HOME_FEATURED_NBR_MOD', $nbr)
                || !Configuration::updateValue('HOME_FEATURED_SOBY', (int)Tools::getValue('soby'))
            )
                $this->_html .= count($errors) ? implode('',$error) : $this->displayError($this->l('Cannot update settings'));
            else
            {
		        $this->_clearCache('homefeatured.tpl');
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));  
            }          
        }
		$helper = $this->initForm();
        $helper->fields_value['nbr'] = Configuration::get('HOME_FEATURED_NBR_MOD');
        $helper->fields_value['soby'] = Configuration::get('HOME_FEATURED_SOBY');
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    protected function initForm()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');

		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Settings'),
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Define the number of products to be displayed:'),
					'name' => 'nbr',
                    'default_value' => 10,
                    'desc' => array(
                        $this->l('To add products to your homepage, simply add them to the "home" category.'),
                        $this->l('Define the number of products that you would like to display on homepage (default: 6).'),
                    ),
				),
                array(
					'type' => 'select',
        			'label' => $this->l('Sort by:'),
        			'name' => 'soby',
                    'options' => array(
        				'query' => self::$sort_by,
        				'id' => 'id',
        				'name' => 'name',
        			),
				), 
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			)
		);

		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'homefeatured_mod';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savehomefeatured_mod';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			)
		);
		return $helper;
	}
    
	public function hookDisplayHome($params)
	{
	    $is_random = Configuration::get('HOME_FEATURED_SOBY')==7;
	    if ($is_random || !$this->isCached('homefeatured.tpl', $this->getCacheId()))
    		if(!$this->_prepareHook())
                return false;
                
		return $is_random ? $this->display(__FILE__, 'homefeatured.tpl') : $this->display(__FILE__, 'homefeatured.tpl', $this->getCacheId());
	}
    
    public function hookDisplayHomeSecondaryLeft($params)
	{
	    return $this->hookDisplayHome($params);
    }
    private function _prepareHook()
    {
		$nb = $random_number_products =(int)(Configuration::get('HOME_FEATURED_NBR_MOD'));
        
        $order_by = 'id_product';
        $order_way = 'DESC';
        $random = false;
        switch(Configuration::get('HOME_FEATURED_SOBY'))
        {
            case 1:
                $order_by = 'name';
                $order_way = 'ASC';
            break;
            case 2:
                $order_by = 'name';
                $order_way = 'DESC';
            break;
            case 3:
                $order_by = 'price';
                $order_way = 'ASC';
            break;
            case 4:
                $order_by = 'price';
                $order_way = 'DESC';
            break;
            case 5:
                $order_by = 'id_product';
                $order_way = 'ASC';
            break;
            case 7:
                $order_by = null;
                $order_way = null;
                $random = true;
            break;
            case 8:
                $order_by = 'position';
                $order_way = 'ASC';
            break;
            case 8:
                $order_by = 'position';
                $order_way = 'DESC';
            break;
            default:
            break;
        }
        $category = new Category(Context::getContext()->shop->getCategory(), (int)Context::getContext()->language->id);
		$products = $category->getProducts((int)Context::getContext()->language->id, 1, ($nb ? $nb : 10), $order_by, $order_way, false, true, $random, $random_number_products);
        
        /*
        if(!$products)
            return false;
		*/
        $this->smarty->assign(array(
			'products' => $products,
			'add_prod_display' => Configuration::get('PS_ATTRIBUTE_CATEGORY_DISPLAY'),
			'homeSize' => Image::getSize(ImageType::getFormatedName('home')),
            'mediumSize' => Image::getSize(ImageType::getFormatedName('medium')),
		));
        return true;
    }
    public function hookAddProduct($params)
	{
		$this->_clearCache('homefeatured.tpl');
	}

	public function hookUpdateProduct($params)
	{
		$this->_clearCache('homefeatured.tpl');
	}

	public function hookDeleteProduct($params)
	{
		$this->_clearCache('homefeatured.tpl');
	}
}
