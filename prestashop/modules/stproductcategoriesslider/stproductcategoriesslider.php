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

include_once(dirname(__FILE__).'/StProductCategoriesSliderClass.php');
class StProductCategoriesSlider extends Module
{
    public  $fields_list;
    public  $fields_form;
    public  $fields_value;
    public $validation_errors = array();
    public  $fields_form_setting;
    
	private $_html = '';
	private $spacer_size = '5';
    public static $sort_by = array(
        1 => array('id' =>1 , 'name' => 'Product position DESC', 'orderBy'=>'position', 'orderWay'=>'DESC' ),
        2 => array('id' =>2 , 'name' => 'Product position ASC', 'orderBy'=>'position', 'orderWay'=>'ASC'),
        3 => array('id' =>3 , 'name' => 'Product Name: A to Z', 'orderBy'=>'name', 'orderWay'=>'ASC'),
        4 => array('id' =>4 , 'name' => 'Product Name: Z to A', 'orderBy'=>'name', 'orderWay'=>'DESC'),
        5 => array('id' =>5 , 'name' => 'Price: Lowest first', 'orderBy'=>'price', 'orderWay'=>'ASC'),
        6 => array('id' =>6 , 'name' => 'Price: Highest first', 'orderBy'=>'price', 'orderWay'=>'DESC'),
    );
        
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
    public static $items = array(
		array('id' => 2, 'name' => '2'),
		array('id' => 3, 'name' => '3'),
		array('id' => 4, 'name' => '4'),
		array('id' => 5, 'name' => '5'),
		array('id' => 6, 'name' => '6'),
    );
    public static $display_on = array(
		array('id' => 1, 'name' => 'Homepage', 'val' => 1),
		array('id' => 2, 'name' => 'Sidebar', 'val' => 2),
		array('id' => 4, 'name' => 'Footer', 'val' => 4),
    );
    
	function __construct()
	{
		$this->name           = 'stproductcategoriesslider';
		$this->tab            = 'front_office_features';
		$this->version        = '1.4.8';
		$this->author         = 'SUNNYTOO.COM';
		$this->need_instance  = 0;

		parent::__construct();

		$this->displayName = $this->l('Product slider for each category');
		$this->description = $this->l('Product slider for each category.');
	}

	function install()
	{
		if (!parent::install() 
            || !$this->installDB()
			|| !$this->registerHook('addproduct')
			|| !$this->registerHook('updateproduct')
			|| !$this->registerHook('deleteproduct')
            || !$this->registerHook('displayHome')
            || !$this->registerHook('displayLeftColumn')
            || !$this->registerHook('displayRightColumn')
            || !$this->registerHook('displayFooterTop')
            || !$this->registerHook('displayAnywhere')
            || !$this->registerHook('actionCategoryDelete')
            || !$this->registerHook('actionObjectCategoryDeleteAfter')
            || !Configuration::updateValue('ST_PRO_CATE_TABS', 0)
            || !Configuration::updateValue('ST_PRO_CATE_EASING', 0)
            || !Configuration::updateValue('ST_PRO_CATE_SLIDESHOW', 0)
            || !Configuration::updateValue('ST_PRO_CATE_S_SPEED', 7000)
            || !Configuration::updateValue('ST_PRO_CATE_A_SPEED', 400)
            || !Configuration::updateValue('ST_PRO_CATE_PAUSE_ON_HOVER', 1)
            || !Configuration::updateValue('ST_PRO_CATE_LOOP', 0)
            || !Configuration::updateValue('ST_PRO_CATE_MOVE', 0)
            || !Configuration::updateValue('ST_PRO_CATE_ITEMS', 4)
            || !Configuration::updateValue('ST_PRO_CATE_EASING_COL', 0)
            || !Configuration::updateValue('ST_PRO_CATE_SLIDESHOW_COL', 0)
            || !Configuration::updateValue('ST_PRO_CATE_S_SPEED_COL', 7000)
            || !Configuration::updateValue('ST_PRO_CATE_A_SPEED_COL', 400)
            || !Configuration::updateValue('ST_PRO_CATE_PAUSE_ON_HOVER_COL', 1)
            || !Configuration::updateValue('ST_PRO_CATE_LOOP_COL', 0)
            || !Configuration::updateValue('ST_PRO_CATE_MOVE_COL', 0)
            || !Configuration::updateValue('ST_PRO_CATE_ITEMS_COL', 4)
            || !Configuration::updateValue('ST_PRO_CATE_HIDE_MOB', 0)
            || !Configuration::updateValue('ST_PRO_CATE_HIDE_MOB_COL', 0)
        )
			return false;
        $this->clearProductCategoriesSliderCache();
		return true;
	}
	public function installDB()
	{
		$return = (bool)Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_product_categories_slider` (
				`id_st_product_categories_slider` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                `id_category` int(10) unsigned NOT NULL DEFAULT 0,
                `id_shop` int(10) unsigned NOT NULL,    
                `product_nbr` int(10) unsigned NOT NULL DEFAULT 0, 
                `product_order` int(10) unsigned NOT NULL DEFAULT 0, 
                `active` tinyint(1) unsigned NOT NULL DEFAULT 1, 
                `position` int(10) unsigned NOT NULL DEFAULT 0,
                `display_on` tinyint(2) unsigned NOT NULL DEFAULT 1,
				PRIMARY KEY (`id_st_product_categories_slider`)
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		return $return;
	}

	public function uninstall()
	{
        $this->clearProductCategoriesSliderCache();
		// Delete configuration
		return $this->uninstallDB() && parent::uninstall();
	}

	public function uninstallDB()
	{
		return Db::getInstance()->execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'st_product_categories_slider`');
	}
    
    public function getContent()
	{
		$id_st_product_categories_slider = (int)Tools::getValue('id_st_product_categories_slider');
		if (isset($_POST['savestproductcategoriesslider']))
		{
            $error = array();
            
			if ($id_st_product_categories_slider)
				$product_categories_slider = new StProductCategoriesSliderClass((int)$id_st_product_categories_slider);
			else
				$product_categories_slider = new StProductCategoriesSliderClass();
                
			$product_categories_slider->copyFromPost();
            $display_on = 0;
            foreach(self::$display_on as $v)
                $display_on += (int)Tools::getValue('display_on_'.$v['id']);
                
            if(!$display_on)
                $error[] = $this->displayError($this->l('The field "Display on" is required'));
                
            $product_categories_slider->display_on = $display_on;
            $product_categories_slider->id_shop = (int)Shop::getContextShopID();
            
            $defaultLanguage = new Language((int)(Configuration::get('PS_LANG_DEFAULT')));
            if(!$product_categories_slider->id_category)
                $error[] = $this->displayError($this->l('The field "Category" is required'));

			if (!count($error) && $product_categories_slider->validateFields(false) && $product_categories_slider->validateFieldsLang(false))
            {
                /*position*/
                $product_categories_slider->position = $product_categories_slider->checkPostion();
                if($product_categories_slider->save())
                {
                    $this->_html .= $this->displayConfirmation($this->l('Product categories slider').' '.($id_st_product_categories_slider ? $this->l('updated') : $this->l('added')));
                    $this->clearProductCategoriesSliderCache();
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during Product categories slider').' '.($id_st_product_categories_slider ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
		}
	    if (Tools::isSubmit('statusstproductcategoriesslider'))
        {
            $product_categories_slider = new StProductCategoriesSliderClass((int)$id_st_product_categories_slider);
            if($product_categories_slider->id && $product_categories_slider->toggleStatus())
            {
                //$this->_html .= $this->displayConfirmation($this->l('The status has been updated successfully.'));  
                $this->clearProductCategoriesSliderCache();
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            }
            else
                $this->_html .= $this->displayError($this->l('An error occurred while updating the status.'));
        }
        if (Tools::isSubmit('way') && Tools::isSubmit('id_st_product_categories_slider') && (Tools::isSubmit('position')))
		{
		    $prduct_categories = new StProductCategoriesSliderClass((int)$id_st_product_categories_slider);
            if($prduct_categories->id && $prduct_categories->updatePosition((int)Tools::getValue('way'), (int)Tools::getValue('position')))
            {
                //$this->_html .= $this->displayConfirmation($this->l('The status has been updated successfully.'));
                $this->clearProductCategoriesSliderCache();
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));    
            }
            else
                $this->_html .= $this->displayError($this->l('Failed to update the position.'));
		}
		if (isset($_POST['savesettingstproductcategoriesslider']))
        {
		    $this->initFieldsForm();
            
            foreach($this->fields_form_setting as $form)
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
                            Configuration::updateValue('ST_PRO_CATE_'.strtoupper($field['name']), $value);
                        }
                        else
                            Configuration::updateValue('ST_PRO_CATE_'.strtoupper($field['name']), $value);
                    }
            if(count($this->validation_errors))
                $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
            else 
            {
                $this->clearProductCategoriesSliderCache();
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
            }
                
        }
		
		if (Tools::isSubmit('updatestproductcategoriesslider') || Tools::isSubmit('addstproductcategoriesslider'))
		{
			$helper = $this->initForm();
			return $this->_html.$helper->generateForm($this->fields_form);
		}
		if (Tools::isSubmit('settingstproductcategoriesslider'))
		{
		    $this->initFieldsForm();
			$helper = $this->initFormSetting();
            
            $helper->fields_value['tabs'] = Configuration::get('ST_PRO_CATE_TABS');
            $helper->fields_value['easing'] = Configuration::get('ST_PRO_CATE_EASING');
            $helper->fields_value['slideshow'] = Configuration::get('ST_PRO_CATE_SLIDESHOW');
            $helper->fields_value['s_speed'] = Configuration::get('ST_PRO_CATE_S_SPEED');
            $helper->fields_value['a_speed'] = Configuration::get('ST_PRO_CATE_A_SPEED');
            $helper->fields_value['pause_on_hover'] = Configuration::get('ST_PRO_CATE_PAUSE_ON_HOVER');
            $helper->fields_value['loop'] = Configuration::get('ST_PRO_CATE_LOOP');
            $helper->fields_value['move'] = Configuration::get('ST_PRO_CATE_MOVE');
            $helper->fields_value['items'] = Configuration::get('ST_PRO_CATE_ITEMS');
            $helper->fields_value['hide_mob'] = Configuration::get('ST_PRO_CATE_HIDE_MOB');
            
            $helper->fields_value['easing_col'] = Configuration::get('ST_PRO_CATE_EASING_COL');
            $helper->fields_value['slideshow_col'] = Configuration::get('ST_PRO_CATE_SLIDESHOW_COL');
            $helper->fields_value['s_speed_col'] = Configuration::get('ST_PRO_CATE_S_SPEED_COL');
            $helper->fields_value['a_speed_col'] = Configuration::get('ST_PRO_CATE_A_SPEED_COL');
            $helper->fields_value['pause_on_hover_col'] = Configuration::get('ST_PRO_CATE_PAUSE_ON_HOVER_COL');
            $helper->fields_value['loop_col'] = Configuration::get('ST_PRO_CATE_LOOP_COL');
            $helper->fields_value['move_col'] = Configuration::get('ST_PRO_CATE_MOVE_COL');
            $helper->fields_value['items_col'] = Configuration::get('ST_PRO_CATE_ITEMS_COL');
            $helper->fields_value['hide_mob_col'] = Configuration::get('ST_PRO_CATE_HIDE_MOB_COL');
            
			return $this->_html.$helper->generateForm($this->fields_form_setting);
		}
		else if (Tools::isSubmit('deletestproductcategoriesslider'))
		{
			$product_categories_slider = new StProductCategoriesSliderClass((int)$id_st_product_categories_slider);
			if ($product_categories_slider->id)
                $product_categories_slider->delete();
            
            $this->clearProductCategoriesSliderCache();
                
			Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
		}
		else
		{
			$helper = $this->initList();
			return $this->_html.$helper->generateList(StProductCategoriesSliderClass::getListContent(), $this->fields_list);
		}
	}
    public static function getCategories()
    {
        $module = new StProductCategoriesSlider();
        $root_category = Category::getRootCategory();
        $category_arr = array();
        $module->getCategoryOption($category_arr,$root_category->id);
        return $category_arr;
    }
    private function getCategoryOption(&$category_arr,$id_category = 1, $id_lang = false, $id_shop = false, $recursive = true,$selected_id_category=0)
	{
		$id_lang = $id_lang ? (int)$id_lang : (int)Context::getContext()->language->id;
		$category = new Category((int)$id_category, (int)$id_lang, (int)$id_shop);

		if (is_null($category->id))
			return;

		if ($recursive)
		{
			$children = Category::getChildren((int)$id_category, (int)$id_lang, true, (int)$id_shop);
			$spacer = str_repeat('&nbsp;', $this->spacer_size * (int)$category->level_depth);
		}

		$shop = (object) Shop::getShop((int)$category->getShopID());
		$category_arr[] = array(
            'id' => $category->id,
            'name' => (isset($spacer) ? $spacer : '').$category->name.' ('.$shop->name.')',
        );
        
		if (isset($children) && count($children))
			foreach ($children as $child)
			{
				$this->getCategoryOption($category_arr,(int)$child['id_category'], (int)$id_lang, (int)$child['id_shop'],$recursive,$selected_id_category);
			}
	}
    public static function getSortBy()
    {
        $sort_by = self::$sort_by;
        if(Configuration::get('PS_CATALOG_MODE'))
            unset($sort_by['5'],$sort_by['6']);                
        return $sort_by;
    }
	protected function initForm()
	{
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Product categories sldier'),
			),
			'input' => array(
				array(
					'type' => 'select',
					'label' => $this->l('Category:'),
					'name' => 'id_category',
                    'required' => true,
					'options' => array(
						'query' => $this->getCategories(),
        				'id' => 'id',
        				'name' => 'name',
						'default' => array(
							'value' => 0,
							'label' => $this->l('please select')
						)
					),
				),
				array(
					'type' => 'checkbox',
					'label' => $this->l('Display on:'),
					'name' => 'display_on',
                    'required' => true,
					'values' => array(
						'query' => self::$display_on,
        				'id' => 'id',
        				'name' => 'name',
					),
				),
                array(
					'type' => 'text',
					'label' => $this->l('Define the number of products to be displayed:'),
					'name' => 'product_nbr',
                    'default_value' => 8,
                    'required' => true,
                    'desc' => $this->l('Define the number of products that you would like to display on homepage (default: 8).'),
				),
                array(
                    'type' => 'select',
					'label' => $this->l('Sort by:'),
					'name' => 'product_order',
                    'required' => true,
					'options' => array(
						'query' => $this->getSortBy(),
        				'id' => 'id',
        				'name' => 'name',
					),
                ),
				array(
					'type' => 'radio',
					'label' => $this->l('Status:'),
					'name' => 'active',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'active_on',
							'value' => 1,
							'label' => $this->l('Enabled')
						),
						array(
							'id' => 'active_off',
							'value' => 0,
							'label' => $this->l('Disabled')
						)
					),
				),
                array(
					'type' => 'text',
					'label' => $this->l('Position:'),
					'name' => 'position',
                    'default_value' => 0,                    
				),
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			),
		);

        $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stproductcategoriesslider';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savestproductcategoriesslider';
        
                
        $id_st_product_categories_slider = (int)Tools::getValue('id_st_product_categories_slider');
		$product_categories_slider = new StProductCategoriesSliderClass($id_st_product_categories_slider);
        if($product_categories_slider->id)
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_product_categories_slider');
        $helper->fields_value = $this->getFieldsValueSt($product_categories_slider); 

        foreach(self::$display_on as $v)
            $helper->fields_value['display_on_'.$v['id']] = $v['id']&$product_categories_slider->display_on;     
                
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
				'desc' => $this->l('Back to list')
			)
		);
		return $helper;
	}
    
    public function initFieldsForm()
    {
		$this->fields_form_setting[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Slider on homepage'),
			),
			'input' => array(
                array(
					'type' => 'radio',
					'label' => $this->l('Tab:'),
					'name' => 'tabs',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'tabs_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'tabs_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
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
							'id' => 'slideshow_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'slideshow_off',
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
                    'required' => true,
                    'desc' => $this->l('The period, in milliseconds, between the end of a transition effect and the start of the next one.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Transition period:'),
					'name' => 'a_speed',
                    'default_value' => 400,
                    'required' => true,
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
                array(
					'type' => 'radio',
					'label' => $this->l('Hide slideshow on mobile devices:'),
					'name' => 'hide_mob',
                    'default_value' => 0,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'hide_mob_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'hide_mob_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('if set to Yes, slider will be hidden on mobile devices (if screen width is less than 768 pixels).'),
                    'validation' => 'isBool',
				),
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			),
		);

		$this->fields_form_setting[1]['form'] = array(
			'legend' => array(
				'title' => $this->l('Slider on sidebar'),
			),
			'input' => array(
                array(
					'type' => 'select',
        			'label' => $this->l('The number of columns:'),
        			'name' => 'items_col',
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
					'name' => 'slideshow_col',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'slideshow_col_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'slideshow_col_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'text',
					'label' => $this->l('Time:'),
					'name' => 's_speed_col',
                    'default_value' => 7000,
                    'required' => true,
                    'desc' => $this->l('The period, in milliseconds, between the end of a transition effect and the start of the next one.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Transition period:'),
					'name' => 'a_speed_col',
                    'default_value' => 400,
                    'required' => true,
                    'desc' => $this->l('The period, in milliseconds, of the transition effect.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Pause On Hover:'),
					'name' => 'pause_on_hover_col',
                    'default_value' => 1,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'pause_on_hover_col_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'pause_on_hover_col_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				),
                array(
					'type' => 'select',
        			'label' => $this->l('Easing method:'),
        			'name' => 'easing_col',
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
					'name' => 'loop_col',
                    'default_value' => 0,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'loop_col_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'loop_col_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('"No" if you want to perform the animation once; "Yes" to loop the animation'),
                    'validation' => 'isBool',
				),
                array(
					'type' => 'hidden',
					'name' => 'move_col',
                    'default_value' => 1,
                    'validation' => 'isBool',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Hide slideshow on mobile devices:'),
					'name' => 'hide_mob_col',
                    'default_value' => 0,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'hide_mob_col_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'hide_mob_col_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('if set to Yes, slider will be hidden on mobile devices (if screen width is less than 768 pixels).'),
                    'validation' => 'isBool',
				),
			),
		);
    }
    protected function initFormSetting()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');

		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stproductcategoriesslider';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savesettingstproductcategoriesslider';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&savesetting'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
				'desc' => $this->l('Back to list')
			)
		);
		return $helper;
	}
    public static function displayCategory($value, $row)
	{
        if(!$value)
            return '-';
        $id_lang = (int)Context::getContext()->language->id;
        $category = new Category((int)$value,$id_lang);
        if($category->id)
            return $category->name;
		return '';
	}
	protected function initList()
	{
		$this->fields_list = array(
			'id_st_product_categories_slider' => array(
				'title' => $this->l('Id'),
				'width' => 120,
				'type' => 'text',
			),
			'id_category' => array(
				'title' => $this->l('Category'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayCategory',
				'callback_object' => 'StProductCategoriesSlider',
			),
            'position' => array(
				'title' => $this->l('Position'),
				'width' => 40,
				'position' => 'position',
				'align' => 'center'
            ),
            'active' => array(
				'title' => $this->l('Status'),
				'align' => 'center',
				'active' => 'status',
				'type' => 'bool',
				'orderby' => false,
				'width' => 25,
            ),
		);

		if (Shop::isFeatureActive())
			$this->fields_list['id_shop'] = array('title' => $this->l('ID Shop'), 'align' => 'center', 'width' => 25, 'type' => 'int');

		$helper = new HelperList();
		$helper->shopLinkType = '';
		$helper->simple_header = true;
		$helper->identifier = 'id_st_product_categories_slider';
		$helper->actions = array('edit', 'delete');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&add'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new')
		);
		$helper->toolbar_btn['edit'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&setting'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Setting'),
		);
		$helper->title = $this->displayName;
		$helper->table = $this->name;
		$helper->orderBy = 'position';
		$helper->orderWay = 'ASC';
	    $helper->position_identifier = 'id_st_product_categories_slider';
        
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
	}
    public function hookDisplayHomeTop($params)
    {
        return $this->hookDisplayHome($params);
    }
    public function hookDisplayHomeBottom($params)
    {
        return $this->hookDisplayHome($params);
    }
	public function hookDisplayHome($params)
	{
        if(Configuration::get('ST_PRO_CATE_TABS'))
        {
    	    if (!$this->isCached('stproductcategoriesslider_tab.tpl', $this->stGetCacheId(0)))
        	    if(!$this->_prepareHook(0,1))
                    return false;
    		return $this->display(__FILE__, 'stproductcategoriesslider_tab.tpl', $this->stGetCacheId(0));
        }
        else
        {
    	    if (!$this->isCached('stproductcategoriesslider.tpl', $this->stGetCacheId(0)))
        	    if(!$this->_prepareHook(0,1))
                    return false;
    		return $this->display(__FILE__, 'stproductcategoriesslider.tpl', $this->stGetCacheId(0));
        }
	}
	public function hookDisplayHomeSecondaryLeft($params)
	{
        $this->smarty->assign(array(
            'is_homepage_secondary_left' => true,
        ));
        return $this->hookDisplayHome($params); 
    }
    
	public function hookDisplayAnywhere($params)
	{
	    if(!isset($params['caller']) || $params['caller']!=$this->name)
            return false;
	    if(isset($params['function']) && method_exists($this,$params['function']))
            return call_user_func(array($this,$params['function']));
    }
    
	public function hookDisplayLeftColumn($params)
	{
	    if (!$this->isCached('stproductcategoriesslider.tpl', $this->stGetCacheId(1)))
    	    if(!$this->_prepareHook(1,2))
                return false;
		return $this->display(__FILE__, 'stproductcategoriesslider.tpl', $this->stGetCacheId(1));
	}
	public function hookDisplayRightColumn($params)
    {
        return $this->hookDisplayLeftColumn($params);
    }
    
	public function hookDisplayHomeSecondaryRight($params)
    {
        return $this->hookDisplayLeftColumn($params);
    }
    
	public function hookDisplayProductSecondaryColumn($params)
	{
        return $this->hookDisplayLeftColumn($params);
	}
    
    private function _prepareHook($col=0,$display_on=0)
    {
        $ext = $col ? '_COL' : '';
            
        $categories = StProductCategoriesSliderClass::getListContent(1,$display_on);   
        if(!is_array($categories) || !count($categories))     
            return false;
        $product_categories = array(); 
        
        $module_stquickview = Module::getInstanceByName('stquickview');
		if ($module_stquickview && $module_stquickview->id)
			$id_module_stquickview = $module_stquickview->id;
            
        $module_stthemeeditor = Module::getInstanceByName('stthemeeditor');
		if ($module_stthemeeditor && $module_stthemeeditor->id)
			$id_module_stthemeeditor = $module_stthemeeditor->id;
            
        foreach($categories as $v)
        {
    		$category = new Category((int)$v['id_category'], (int)$this->context->language->id);
            $products = $category->getProducts($this->context->language->id, 1, (int)$v['product_nbr'], self::$sort_by[$v['product_order']]['orderBy'], self::$sort_by[$v['product_order']]['orderWay']);
            
            if(is_array($products) && count($products))
            {
                foreach($products as &$product)
                {
                    if(isset($id_module_stquickview))
                        $product['pro_quick_view'] = Hook::exec('displayAnywhere', array('id_product'=>$product['id_product'],'caller'=>'stquickview'), $id_module_stquickview);
                    if(isset($id_module_stthemeeditor))
                    {
                        $product['pro_a_wishlist'] = Hook::exec('displayAnywhere', array('function'=>'getAddToWhishlistButton','id_product'=>$product['id_product'],'show_icon'=>0,'caller'=>'stthemeeditor'), $id_module_stthemeeditor);
                        $product['pro_rating_average'] = Hook::exec('displayAnywhere', array('function'=>'getProductRatingAverage','id_product'=>$product['id_product'],'caller'=>'stthemeeditor'), $id_module_stthemeeditor);
                    }
                }
            }
            
            $product_categories[] = array(
                'id_category' => $category->id,
                'link_rewrite' => $category->link_rewrite,
                'name'  => $category->name,
                'products' => $products,
            );
        }
        
        $easing = Configuration::get('ST_PRO_CATE_EASING'.$ext);
        ($easing===false && $col) && $easing = Configuration::get('ST_PRO_CATE_EASING');
        
        $slideshow = Configuration::get('ST_PRO_CATE_SLIDESHOW'.$ext);
        ($slideshow===false && $col) && $slideshow = Configuration::get('ST_PRO_CATE_SLIDESHOW');
        
        $s_speed = Configuration::get('ST_PRO_CATE_S_SPEED'.$ext);
        ($s_speed===false && $col) && $s_speed = Configuration::get('ST_PRO_CATE_S_SPEED');
        
        $a_speed = Configuration::get('ST_PRO_CATE_A_SPEED'.$ext);
        ($a_speed===false && $col) && $a_speed = Configuration::get('ST_PRO_CATE_A_SPEED');
        
        $pause_on_hover = Configuration::get('ST_PRO_CATE_PAUSE_ON_HOVER'.$ext);
        ($pause_on_hover===false && $col) && $pause_on_hover = Configuration::get('ST_PRO_CATE_PAUSE_ON_HOVER');
        
        $loop = Configuration::get('ST_PRO_CATE_LOOP'.$ext);
        ($loop===false && $col) && $loop = Configuration::get('ST_PRO_CATE_LOOP');
        
        $move = Configuration::get('ST_PRO_CATE_MOVE'.$ext);
        ($move===false && $col) && $move = Configuration::get('ST_PRO_CATE_MOVE');
        
        $items = Configuration::get('ST_PRO_CATE_ITEMS'.$ext);
        ($items===false && $col) && $items = Configuration::get('ST_PRO_CATE_ITEMS');
        
        $hide_mob = Configuration::get('ST_PRO_CATE_HIDE_MOB'.$ext);
        ($hide_mob===false && $col) && $hide_mob = Configuration::get('ST_PRO_CATE_HIDE_MOB');
                
        $this->smarty->assign(array(
            'product_categories'=>$product_categories,
		    'add_prod_display' => Configuration::get('PS_ATTRIBUTE_CATEGORY_DISPLAY'),
		    'homeSize' => Image::getSize(ImageType::getFormatedName('home')),
    		'mediumSize' => Image::getSize(ImageType::getFormatedName('medium')),
    		'thumbSize' => Image::getSize(ImageType::getFormatedName('thumb')),
            'pro_cate_easing' => self::$easing[$easing]['name'],
            'pro_cate_slideshow' => $slideshow,
            'pro_cate_s_speed' => $s_speed,
            'pro_cate_a_speed' => $a_speed,
            'pro_cate_pause_on_hover' => $pause_on_hover,
            'pro_cate_loop' => $loop,
            'pro_cate_move' => $move,
            'slider_items' => $items,
			'column_slider' => $col,
			'hide_mob' => (int)$hide_mob,
        ));
        return true;
    }
    
    
    public function hookDisplayFooter($params)
    {
	    if (!$this->isCached('stproductcategoriesslider-footer.tpl', $this->getCacheId()))
	    {
            $categories = StProductCategoriesSliderClass::getListContent(1,4);   
            if(!is_array($categories) || !count($categories))     
                return false;
            $product_categories = array(); 
                
            foreach($categories as $v)
            {
        		$category = new Category((int)$v['id_category'], (int)$this->context->language->id);
                $products = $category->getProducts($this->context->language->id, 1, (int)$v['product_nbr'], self::$sort_by[$v['product_order']]['orderBy'], self::$sort_by[$v['product_order']]['orderWay']);
                
                $product_categories[] = array(
                    'id_category' => $category->id,
                    'link_rewrite' => $category->link_rewrite,
                    'name'  => $category->name,
                    'products' => $products,
                );
            }
            
            $this->smarty->assign(array(
                'product_categories'=>$product_categories,
    			'add_prod_display' => Configuration::get('PS_ATTRIBUTE_CATEGORY_DISPLAY'),
    			'thumbSize' => Image::getSize(ImageType::getFormatedName('thumb')),
    		));
	    }
		return $this->display(__FILE__, 'stproductcategoriesslider-footer.tpl', $this->getCacheId());
    }
    public function hookDisplayFooterTop($params)
    {
        return $this->hookDisplayFooter($params);
    }
    public function hookDisplayFooterSecondary($params)
    {
        return $this->hookDisplayFooter($params);        
    }
    
    public function hookActionObjectCategoryDeleteAfter($params)
    {
        $this->clearProductCategoriesSliderCache();
        
        if(!$params['object']->id)
            return ;
        $res = StProductCategoriesSliderClass::deleteByCategoryId($params['object']->id);
        return $res;
    }
	public function hookActionCategoryDelete($params)
	{
		return $this->hookActionObjectCategoryDeleteAfter($params);
	}
    public function hookActionObjectCategoryUpdateAfter($params)
    {
    }
    
    public function hookAddProduct($params)
	{
        $this->clearProductCategoriesSliderCache();
	}

	public function hookUpdateProduct($params)
	{
        $this->clearProductCategoriesSliderCache();
	}

	public function hookDeleteProduct($params)
	{
        $this->clearProductCategoriesSliderCache();
    }
    
	protected function stGetCacheId($key,$name = null)
	{
		$cache_id = parent::getCacheId($name);
		return $cache_id.'_'.$key;
	}
	private function clearProductCategoriesSliderCache()
	{
		$this->_clearCache('stproductcategoriesslider_tab.tpl');
		$this->_clearCache('stproductcategoriesslider_tab.tpl',$this->stGetCacheId(0));
		$this->_clearCache('stproductcategoriesslider.tpl');
		$this->_clearCache('stproductcategoriesslider.tpl',$this->stGetCacheId(0));
		$this->_clearCache('stproductcategoriesslider.tpl',$this->stGetCacheId(1));
		$this->_clearCache('stproductcategoriesslider-footer.tpl');
	}
    
	/**
	 * Return the list of fields value
	 *
	 * @param object $obj Object
	 * @return array
	 */
	public function getFieldsValueSt($obj,$fields_form="fields_form")
	{
		foreach ($this->$fields_form as $fieldset)
			if (isset($fieldset['form']['input']))
				foreach ($fieldset['form']['input'] as $input)
					if (!isset($this->fields_value[$input['name']]))
						if (isset($input['type']) && $input['type'] == 'shop')
						{
							if ($obj->id)
							{
								$result = Shop::getShopById((int)$obj->id, $this->identifier, $this->table);
								foreach ($result as $row)
									$this->fields_value['shop'][$row['id_'.$input['type']]][] = $row['id_shop'];
							}
						}
						elseif (isset($input['lang']) && $input['lang'])
							foreach (Language::getLanguages(false) as $language)
							{
								$fieldValue = $this->getFieldValueSt($obj, $input['name'], $language['id_lang']);
								if (empty($fieldValue))
								{
									if (isset($input['default_value']) && is_array($input['default_value']) && isset($input['default_value'][$language['id_lang']]))
										$fieldValue = $input['default_value'][$language['id_lang']];
									elseif (isset($input['default_value']))
										$fieldValue = $input['default_value'];
								}
								$this->fields_value[$input['name']][$language['id_lang']] = $fieldValue;
							}
						else
						{
							$fieldValue = $this->getFieldValueSt($obj, $input['name']);
							if ($fieldValue===false && isset($input['default_value']))
								$fieldValue = $input['default_value'];
							$this->fields_value[$input['name']] = $fieldValue;
						}

		return $this->fields_value;
	}
    
	/**
	 * Return field value if possible (both classical and multilingual fields)
	 *
	 * Case 1 : Return value if present in $_POST / $_GET
	 * Case 2 : Return object value
	 *
	 * @param object $obj Object
	 * @param string $key Field name
	 * @param integer $id_lang Language id (optional)
	 * @return string
	 */
	public function getFieldValueSt($obj, $key, $id_lang = null)
	{
		if ($id_lang)
			$default_value = ($obj->id && isset($obj->{$key}[$id_lang])) ? $obj->{$key}[$id_lang] : false;
		else
			$default_value = isset($obj->{$key}) ? $obj->{$key} : false;

		return Tools::getValue($key.($id_lang ? '_'.$id_lang : ''), $default_value);
	}
}