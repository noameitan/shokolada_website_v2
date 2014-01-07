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

include_once(dirname(__FILE__).'/StBrandsSliderClass.php');
class StBrandsSlider extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
    public static $easing = array(
		array('id' => 0, 'name' => 'swing'),
		array('id' => 1, 'name' => 'easeInQuad'),
		array('id' => 2, 'name' => 'easeOutQuad'),
		array('id' => 3, 'name' => 'easeInOutQuad'),
		array('id' => 4, 'name' => 'easeInCubic'),
		array('id' => 5, 'name' => 'easeOutCubic'),
		array('id' => 6, 'name' => 'easeInOutCubic'),
		array('id' => 7, 'name' => 'easeInQuart'),
		array('id' => 8, 'name' => 'easeOutQuart'),
		array('id' => 9, 'name' => 'easeInOutQuart'),
		array('id' => 10, 'name' => 'easeInQuint'),
		array('id' => 11, 'name' => 'easeOutQuint'),
		array('id' => 12, 'name' => 'easeInOutQuint'),
		array('id' => 13, 'name' => 'easeInSine'),
		array('id' => 14, 'name' => 'easeOutSine'),
		array('id' => 15, 'name' => 'easeInOutSine'),
		array('id' => 16, 'name' => 'easeInExpo'),
		array('id' => 17, 'name' => 'easeOutExpo'),
		array('id' => 18, 'name' => 'easeInOutExpo'),
		array('id' => 19, 'name' => 'easeInCirc'),
		array('id' => 20, 'name' => 'easeOutCirc'),
		array('id' => 21, 'name' => 'easeInOutCirc'),
		array('id' => 22, 'name' => 'easeInElastic'),
		array('id' => 23, 'name' => 'easeOutElastic'),
		array('id' => 24, 'name' => 'easeInOutElastic'),
		array('id' => 25, 'name' => 'easeInBack'),
		array('id' => 26, 'name' => 'easeOutBack'),
		array('id' => 27, 'name' => 'easeInOutBack'),
		array('id' => 28, 'name' => 'easeInBounce'),
		array('id' => 29, 'name' => 'easeOutBounce'),
		array('id' => 30, 'name' => 'easeInOutBounce'),
	);
    public static $sort_by = array(
        1 => array('id' =>1 , 'name' => 'Product Name: A to Z'),
        2 => array('id' =>2 , 'name' => 'Product Name: Z to A'),
        3 => array('id' =>3 , 'name' => 'Random'),
    );
    public static $items = array(
		array('id' => 1, 'name' => '1'),
		array('id' => 2, 'name' => '2'),
		array('id' => 3, 'name' => '3'),
		array('id' => 4, 'name' => '4'),
		array('id' => 5, 'name' => '5'),
		array('id' => 6, 'name' => '6'),
		array('id' => 7, 'name' => '7'),
    );
	public function __construct()
	{
		$this->name          = 'stbrandsslider';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
		$this->displayName = $this->l('Brand Slider');
		$this->description = $this->l('Brand slider on the home page.');
	}

	public function install()
	{
		if (!parent::install() 
            || !$this->installDB()
            || !$this->initData()
			|| !$this->registerHook('displayHomeBottom')
			|| !$this->registerHook('actionObjectManufacturerDeleteAfter')
			|| !$this->registerHook('actionObjectManufacturerUpdateAfter')
            || !Configuration::updateValue('BRANDS_SLIDER_NBR', 10)
            || !Configuration::updateValue('BRANDS_SLIDER_EASING', 0)
            || !Configuration::updateValue('BRANDS_SLIDER_SLIDESHOW', 0)
            || !Configuration::updateValue('BRANDS_SLIDER_S_SPEED', 7000)
            || !Configuration::updateValue('BRANDS_SLIDER_A_SPEED', 400)
            || !Configuration::updateValue('BRANDS_SLIDER_PAUSE_ON_HOVER', 1)
            || !Configuration::updateValue('BRANDS_SLIDER_LOOP', 0)
            || !Configuration::updateValue('BRANDS_SLIDER_MOVE', 0)
            || !Configuration::updateValue('BRANDS_SLIDER_ORDER', 1)
            || !Configuration::updateValue('BRANDS_SLIDER_ITEMS', 6)
            )
			return false;
        $this->clearBrandsSliderCache();
		return true;
	}

	public function uninstall()
	{
        $this->clearBrandsSliderCache();
		if (!parent::uninstall() 
            || !$this->uninstallDB()
        )
			return false;
		return true;
	}
    private function installDB()
	{
		return Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_brands_slider` (
                 `id_manufacturer` int(10) NOT NULL,  
                 `id_shop` int(11) NOT NULL,                   
                PRIMARY KEY (`id_manufacturer`,`id_shop`),    
                KEY `id_shop` (`id_shop`)       
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
	}
	private function uninstallDB()
	{
		return Db::getInstance()->execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'st_brands_slider`');
	}  
    private function initData()
    {
        $res = true;
        $manufacturers = Manufacturer::getManufacturers(false, (int)$this->context->language->id);
        if (is_array($manufacturers) && count($manufacturers))
        {
            foreach($manufacturers as $k => $v)
                if($k<10)
                    $res &= Db::getInstance()->insert('st_brands_slider', array(
        					'id_manufacturer' => (int)$v['id_manufacturer'],
        					'id_shop' => (int)$this->context->shop->id,
        				));
                else
                    break;
        }
        return $res;
    }
    public function getContent()
	{
	    $this->initFieldsForm();
		if (isset($_POST['savestbrandsslider']))
		{
		    StBrandsSliderClass::deleteByShop((int)$this->context->shop->id);
    		$manufacturers = Manufacturer::getManufacturers(false, (int)$this->context->language->id);
            $res = true;
            if (is_array($manufacturers) && count($manufacturers))
            {
                foreach ($manufacturers as $v)
    				if (isset($_POST['manufacturers_'.$v['id_manufacturer']]) && $_POST['manufacturers_'.$v['id_manufacturer']])
   					{
   					    $res &= Db::getInstance()->insert('st_brands_slider', array(
        					'id_manufacturer' => (int)$v['id_manufacturer'],
        					'id_shop' => (int)$this->context->shop->id,
        				));
   					}
            }  
            if($res)
            {
                foreach($this->fields_form as $form)
                    foreach($form['form']['input'] as $field)
                        if(isset($field['validation']))
                        {
                            $errors = array();       
                            $value = Tools::getValue($field['name']);
                            if (isset($field['required']) && $field['required'] && $value==false && (string)$value != '0')
            						$errors[] = sprintf(Tools::displayError('Field "%s" is required.'), $field['label']);
                            elseif($value)
                            {
            					if (!Validate::$field['validation']($value))
            						$errors[] = sprintf(Tools::displayError('Field "%s" is invalid.'), $field['label']);
                            }
            				// Set default value
            				if ($value === false && isset($field['default_value']))
            					$value = $field['default_value'];
                                
                            if(count($errors))
                            {
                                $this->validation_errors = array_merge($this->validation_errors, $errors);
                            }
                            elseif($value==false)
                            {
                                switch($field['validation'])
                                {
                                    case 'isUnsignedId':
                                    case 'isUnsignedInt':
                                    case 'isInt':
                                    case 'isBool':
                                        $value = 0;
                                    break;
                                    default:
                                        $value = '';
                                    break;
                                }
                                Configuration::updateValue('BRANDS_SLIDER_'.strtoupper($field['name']), $value);
                            }
                            else
                                Configuration::updateValue('BRANDS_SLIDER_'.strtoupper($field['name']), $value);
                        }
                if(count($this->validation_errors))
                    $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
                else 
                    $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
            }
            else
                $this->_html .= $this->displayError($this->l('Cannot update settings'));
                
            $this->clearBrandsSliderCache();            
        }
		$helper = $this->initForm();
        $helper->fields_value['nbr'] = Configuration::get('BRANDS_SLIDER_NBR');
        $helper->fields_value['easing'] = Configuration::get('BRANDS_SLIDER_EASING');
        $helper->fields_value['slideshow'] = Configuration::get('BRANDS_SLIDER_SLIDESHOW');
        $helper->fields_value['s_speed'] = Configuration::get('BRANDS_SLIDER_S_SPEED');
        $helper->fields_value['a_speed'] = Configuration::get('BRANDS_SLIDER_A_SPEED');
        $helper->fields_value['pause_on_hover'] = Configuration::get('BRANDS_SLIDER_PAUSE_ON_HOVER');
        $helper->fields_value['loop'] = Configuration::get('BRANDS_SLIDER_LOOP');
        $helper->fields_value['move'] = Configuration::get('BRANDS_SLIDER_MOVE');
        $helper->fields_value['order'] = Configuration::get('BRANDS_SLIDER_ORDER');
        $helper->fields_value['items'] = Configuration::get('BRANDS_SLIDER_ITEMS');
        
        $manufacturers_checked = StBrandsSliderClass::getByShop((int)$this->context->shop->id);
        if($manufacturers_checked)
            foreach($manufacturers_checked as $v)
                $helper->fields_value['manufacturers_'.$v['id_manufacturer']] = 1; 
                    
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    public function initFieldsForm()
    {
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->displayName,
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Define the number of brands to be displayed:'),
					'name' => 'nbr',
                    'required' => true,
                    'desc' => $this->l('Define the number of brands that you would like to display on homepage (default: 8).'),
                    'validation' => 'isUnsignedInt',
				),
                array(
                    'type' => 'select',
    				'label' => $this->l('Sort order:'),
    				'name' => 'order',
    				'options' => array(
    					'query' => self::$sort_by,
        				'id' => 'id',
        				'name' => 'name',
    				),
                    'validation' => 'isUnsignedInt',
                    //'desc' => $this->l('If you choose "RANDOM" smarty cache will be disabled'),
                ),
				array(
					'type' => 'checkbox',
					'label' => $this->l('Brands/Manufacturers:'),
					'name' => 'manufacturers',
					'lang' => true,
					'values' => array(
						'query' => Manufacturer::getManufacturers(false, (int)$this->context->language->id),
						'id' => 'id_manufacturer',
						'name' => 'name'
					)
				),
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			),
		);
        $this->fields_form[1]['form'] = array(
			'legend' => array(
				'title' => $this->l('Slider configuration'),
			),
			'input' => array(
                array(
					'type' => 'select',
        			'label' => $this->l('The number of columns:'),
        			'name' => 'items',
                    'options' => array(
        				'query' => self::$items,
        				'id' => 'id',
        				'name' => 'name',
        			),
                    'desc' => array(
                        $this->l('Set number of columns for default screen resolution(980px).'),
                    ),
                    'validation' => 'isUnsignedInt',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('Autoplay:'),
					'name' => 'slideshow',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'slide_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'slide_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'text',
					'label' => $this->l('Time:'),
					'name' => 's_speed',
                    'default_value' => 7000,
                    'desc' => $this->l('The period, in milliseconds, between the end of a transition effect and the start of the next one.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Transition period:'),
					'name' => 'a_speed',
                    'default_value' => 400,
                    'desc' => $this->l('The period, in milliseconds, of the transition effect.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Pause On Hover:'),
					'name' => 'pause_on_hover',
                    'default_value' => 1,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'pause_on_hover_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'pause_on_hover_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				),
                array(
					'type' => 'select',
        			'label' => $this->l('Easing method:'),
        			'name' => 'easing',
                    'options' => array(
        				'query' => self::$easing,
        				'id' => 'id',
        				'name' => 'name',
        			),
                    'desc' => $this->l('The type of easing applied to the transition animation'),
                    'validation' => 'isUnsignedInt',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('Loop:'),
					'name' => 'loop',
                    'default_value' => 0,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'loop_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'loop_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('"No" if you want to perform the animation once; "Yes" to loop the animation'),
                    'validation' => 'isBool',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Move:'),
					'name' => 'move',
                    'default_value' => 0,
					'class' => 't',
					'values' => array(
						array(
							'id' => 'move_on',
							'value' => 1,
							'label' => $this->l('1 item')),
						array(
							'id' => 'move_off',
							'value' => 0,
							'label' => $this->l('All visible items')),
					),
                    'validation' => 'isBool',
				),
			),
		);
    }
    protected function initForm()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');

		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'savestbrandsslider';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savestbrandsslider';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
		);
		return $helper;
	}
	public function hookDisplayHome($params)
	{
		if (Configuration::get('BRANDS_SLIDER_ORDER')==3 || !$this->isCached('stbrandsslider.tpl', $this->getCacheId()))
            $this->_prepareHook();
        if(Configuration::get('BRANDS_SLIDER_ORDER')==3)
            return $this->display(__FILE__, 'stbrandsslider.tpl');
        else
		    return $this->display(__FILE__, 'stbrandsslider.tpl', $this->getCacheId());
	}
    public function hookDisplayHomeBottom($params)
    {
        return $this->hookDisplayHome($params);
    }
    public function hookDisplayHomeSecondaryRight($params)
    {
        return $this->hookDisplayLeftColumn($params);
    }
    public function hookDisplayRightColumn($params)
    {
        return $this->hookDisplayLeftColumn($params);
    }
    public function hookDisplayLeftColumn($params)
    {
		if (Configuration::get('BRANDS_SLIDER_ORDER')==3 || !$this->isCached('stbrandsslider-column.tpl', $this->getCacheId()))
            $this->_prepareHook();
        if(Configuration::get('BRANDS_SLIDER_ORDER')==3)
            return $this->display(__FILE__, 'stbrandsslider-column.tpl');
        else
		    return $this->display(__FILE__, 'stbrandsslider-column.tpl', $this->getCacheId());
    }
	public function hookDisplayProductSecondaryColumn($params)
	{
        return $this->hookDisplayLeftColumn($params);
	}
    
    public function hookDisplayCategoryFooter($params)
    {
        return $this->hookDisplayHome($params);
    }
    
    public function hookDisplayFooterProduct($params)
    {
        return $this->hookDisplayHome($params);
    }
    
    public function hookDisplayFooterTop($params)
    {
        $this->smarty->assign('brandsslider_footer',true);
        return $this->hookDisplayHome($params);
    }
    public function hookDisplayFooter($params)
    {
        $this->smarty->assign('brandsslider_footer',true);
        return $this->hookDisplayHome($params);
    }
    public function hookDisplayFooterSecondary($params)
    {
        $this->smarty->assign('brandsslider_footer',true);
        return $this->hookDisplayHome($params);
    }
    
    private function _prepareHook()
    {
        $brands = $this->getManufacturers(Configuration::get('BRANDS_SLIDER_NBR'), $this->context->shop->id,$this->context->language->id);
		$this->smarty->assign(array(
            'brands' => $brands,
			'manufacturerSize' => Image::getSize(ImageType::getFormatedName('manufacturer')),
            'brand_slider_easing' => self::$easing[Configuration::get('BRANDS_SLIDER_EASING')]['name'],
            'brand_slider_slideshow' => Configuration::get('BRANDS_SLIDER_SLIDESHOW'),
            'brand_slider_s_speed' => Configuration::get('BRANDS_SLIDER_S_SPEED'),
            'brand_slider_a_speed' => Configuration::get('BRANDS_SLIDER_A_SPEED'),
            'brand_slider_pause_on_hover' => Configuration::get('BRANDS_SLIDER_PAUSE_ON_HOVER'),
            'brand_slider_loop' => Configuration::get('BRANDS_SLIDER_LOOP'),
            'brand_slider_move' => Configuration::get('BRANDS_SLIDER_MOVE'),
            'brand_slider_items' => Configuration::get('BRANDS_SLIDER_ITEMS'),
        ));
    }
    public function hookActionObjectManufacturerDeleteAfter($params)
    {
        $this->clearBrandsSliderCache();
    }
    public function hookActionObjectManufacturerUpdateAfter($params)
    {
        $this->clearBrandsSliderCache();
    }
	private function clearBrandsSliderCache()
	{
		$this->_clearCache('stbrandsslider.tpl');
		$this->_clearCache('stbrandsslider-column.tpl');
	}
    
	public function getManufacturers($nbr, $id_shop , $id_lang = 0 )
	{
		if (!$id_lang)
			$id_lang = (int)Configuration::get('PS_LANG_DEFAULT');
		if (!$id_shop)
			$id_shop = (int)$this->context->shop->id;

		$sql = 'SELECT m.*, ml.`description`, ml.`short_description`
			FROM `'._DB_PREFIX_.'st_brands_slider` sbs
            LEFT JOIN `'._DB_PREFIX_.'manufacturer` m ON m.`id_manufacturer` = sbs.`id_manufacturer` 
			LEFT JOIN `'._DB_PREFIX_.'manufacturer_lang` ml ON (
				m.`id_manufacturer` = ml.`id_manufacturer`
				AND ml.`id_lang` = '.(int)$id_lang.'
			)
			'.Shop::addSqlAssociation('manufacturer', 'm');
			$sql .= ' WHERE sbs.`id_shop` = '.$id_shop.' AND m.`active` = 1 
            GROUP BY m.id_manufacturer ';
            switch(Configuration::get('BRANDS_SLIDER_ORDER'))
            {
                case 1:
                    $sql .= ' ORDER BY m.`name` ASC ';
                break;
                case 2:
                    $sql .= ' ORDER BY m.`name` DESC ';
                break;
                case 3:
                    $sql .= ' ORDER BY RAND() ';
                break;
                default:
                    $sql .= ' ORDER BY m.`name` ASC ';
                break;
            }
            $sql .= ($nbr ? ' LIMIT '.$nbr : '');

		$manufacturers = Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($sql);
		if ($manufacturers === false)
			return false;

		$total_manufacturers = count($manufacturers);
		$rewrite_settings = (int)Configuration::get('PS_REWRITING_SETTINGS');

		for ($i = 0; $i < $total_manufacturers; $i++)
			if ($rewrite_settings)
				$manufacturers[$i]['link_rewrite'] = Tools::link_rewrite($manufacturers[$i]['name']);
			else
				$manufacturers[$i]['link_rewrite'] = 0;
		return $manufacturers;
	}
}