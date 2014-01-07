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
    
require (dirname(__FILE__).'/StFeaturedCategoriesClass.php');

class StFeaturedCategories extends Module
{
	private $_html = '';
    public $fields_list;
    public $fields_form;
    private $_baseUrl;
    private $spacer_size = '5';
    public static $_auto_type = array();
    public $validation_errors = array();
    public  $fields_form_setting;
	
	public function __construct()
	{
		$this->name          = 'stfeaturedcategories';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName   = $this->l('Featured categories');
		$this->description   = $this->l('Displays featured categories in your shop.');
        
        self::$_auto_type[0] = $this->l('No');
        self::$_auto_type[1] = $this->l('Yes');
	}

	public function install()
	{
	    $res = $this->installDB() &&
            parent::install() &&
			$this->registerHook('displayHeader') &&
            $this->registerHook('actionCategoryAdd') &&
			$this->registerHook('actionCategoryDelete') &&
			$this->registerHook('actionCategoryUpdate') &&
			$this->registerHook('displayHomeSecondaryLeft') &&
            Configuration::updateValue('ST_PRO_CATE_F_C_NUMBER', 5);
            Configuration::updateValue('ST_PRO_CATE_F_C_IMAGE', 1);
            
		$this->clearstfeaturedcategoryCache();
		return $res;
	}

	public function installDb()
	{
		$return = true;
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_featured_category` (
				`id_st_featured_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				`id_parent` int(10) NOT NULL DEFAULT 0,
                `level_depth` tinyint(3) unsigned NOT NULL DEFAULT 0,   
				`id_shop` int(10) unsigned NOT NULL,
                `id_category` int(10) unsigned NOT NULL DEFAULT 0,
                `position` int(10) unsigned NOT NULL DEFAULT 0,
                `txt_color` varchar(7) DEFAULT NULL,
                `txt_color_over` varchar(7) DEFAULT NULL,
                `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
                `auto_sub` tinyint(1) unsigned NOT NULL DEFAULT 0,
    			`cover` varchar(255) DEFAULT NULL,
				PRIMARY KEY (`id_st_featured_category`)
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		return $return;
	}

	public function uninstall()
	{
		if (!parent::uninstall() ||
			!$this->uninstallDB())
			return false;
		return true;
	}

	private function uninstallDb()
	{
		$this->clearstfeaturedcategoryCache();
        return Db::getInstance()->execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'st_featured_category`');
	}
           
	public function getContent()
	{
    	$id_st_featured_category = (int)Tools::getValue('id_st_featured_category');
		if (isset($_POST['savestfeaturedcategory']))
        {
            if($id_st_featured_category)
            {
                $category = new StFeaturedCategoriesClass($id_st_featured_category);
                $id_category_old = $category->id_category;
            }
			else
				$category = new StFeaturedCategoriesClass();
            
            $error = array();
            if (!Tools::getValue('id_category'))
                 $error[] = $this->displayError($this->l('Top category is required.'));
            
            $category->id_shop = (int)Shop::getContextShopID();
            
            if (!$category->id_shop)
                $error[] = $this->displayError($this->l('Action denied, please select a store.'));
            
            if (!count($error))
            {                
        		$category->copyFromPost();
        		$category->id_parent = 0;
                $category->level_depth = 0; 

                if ($category->validateFields(false) && $category->validateFieldsLang(false))
                {
                    // Clear auto subcate if parent category was changed.
                    if ($id_st_featured_category && ($id_category_old != $category->id_category || !$category->auto_sub))
                        foreach(StFeaturedCategoriesClass::getSub($id_st_featured_category) AS $sub)
                        {
                            if (!$sub['auto_sub'])
                                continue;
                            $subcate = new StFeaturedCategoriesClass($sub['id_st_featured_category']);
                            $subcate->delete();
                        }
                    if($category->position==0)
                        $category->position = StFeaturedCategoriesClass::getMaximumPosition(0);
                    if($category->save())
                    {
                        if ($category->auto_sub)
                            $this->autoBuildingSubcate($category->id_category,$category->id);
                        $this->_html .= $this->displayConfirmation($this->l('Featured category').' '.($id_st_featured_category ? $this->l('updated') : $this->l('added')));
                        $this->clearstfeaturedcategoryCache();
                    }
                    else
                        $this->_html .= $this->displayError($this->l('An error occurred during Featured category').' '.($id_st_featured_category ? $this->l('updating') : $this->l('creation')));
                }
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
        }
		if (isset($_POST['savesubstfeaturedcategories']))
        {
            if($id_st_featured_category)
				$category = new StFeaturedCategoriesClass($id_st_featured_category);
			else
				$category = new StFeaturedCategoriesClass();
                
            $error = array();
            $category->id_shop = (int)Shop::getContextShopID();
            
            if (!$category->id_shop)
                $error[] = $this->displayError($this->l('Action denied, please select a store.'));
            
            if (!count($error))
            {
        		$category->copyFromPost();
                
                if(!$category->id_parent)
                    $error[] = $this->displayError($this->l('The field "Parent" is required'));
                else
                {
                    $category_parent = new StFeaturedCategoriesClass($category->id_parent);
                    $category->level_depth = $category_parent->level_depth+1;
                }
            }
            
            if (!count($error) && $category->validateFields(false) && $category->validateFieldsLang(false))
            {
                if($category->position==0)
                    $category->position = StFeaturedCategoriesClass::getMaximumPosition($category->id_parent);
                    
                if($category->save())
                {
                    $this->clearstfeaturedcategoryCache();
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_featured_category='.$category->id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during subcategory').' '.($id_st_featured_category ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
        }
        if (isset($_POST['savesettingstfeaturedcategories']))
		{
		    $this->initSettingForm();
            
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
                $this->clearstfeaturedcategoryCache();
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
            }
            
            $helper = $this->initFormSetting();
            $helper->fields_value['f_c_number'] = Configuration::get('ST_PRO_CATE_F_C_NUMBER');
            $helper->fields_value['f_c_image'] = Configuration::get('ST_PRO_CATE_F_C_IMAGE');
            
			return $this->_html.$helper->generateForm($this->fields_form_setting);
		}
        if (Tools::isSubmit('addstfeaturedcategories'))
		{
            $helper = $this->_displayForm(); 
            $this->_html .= $helper->generateForm($this->fields_form);
			return $this->_html;
		}
        elseif (Tools::isSubmit('addsubstfeaturedcategories'))
		{
            if(!Tools::getValue('id_parent'))
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            $helper = $this->initCategoryForm(); 
            $this->_html .= $helper->generateForm($this->fields_form);
			return $this->_html;
		}
        elseif (Tools::isSubmit('updatestfeaturedcategories'))
        {
    		$category = new StFeaturedCategoriesClass((int)$id_st_featured_category);
            if(!Validate::isLoadedObject($category) || $category->id_shop!=(int)Shop::getContextShopID())
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
               
            if($category->id_parent)
            {
                $helper = $this->initCategoryForm(); 
                $this->_html .= $helper->generateForm($this->fields_form);
            }
            elseif(!$category->id_parent)
            {
                $helper = $this->_displayForm(); 
                $this->_html .= $helper->generateForm($this->fields_form);
            }
			return $this->_html; 
        }
        else if (Tools::isSubmit('deletestfeaturedcategories'))
		{
    		$category = new StFeaturedCategoriesClass((int)$id_st_featured_category);
            if(Validate::isLoadedObject($category))
            {                    
                $category->delete();
                $this->clearstfeaturedcategoryCache();
                
                if($category->id_parent)
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_featured_category='.$category->id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            }
            Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
		}
        elseif (Tools::isSubmit('statusstfeaturedcategories'))
		{
            $category = new StFeaturedCategoriesClass($id_st_featured_category);
            if (Validate::isLoadedObject($category))
            {
                $category->troggleStatus();
                $this->clearstfeaturedcategoryCache();
            }
            if($category->id_parent)
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_featured_category='.$category->id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
		}
        elseif (Tools::isSubmit('settingstfeaturedcategories'))
		{
		    $this->initSettingForm();
            $helper = $this->initFormSetting();
            
            $helper->fields_value['f_c_number'] = Configuration::get('ST_PRO_CATE_F_C_NUMBER');
            $helper->fields_value['f_c_image'] = Configuration::get('ST_PRO_CATE_F_C_IMAGE');
            
			return $this->_html.$helper->generateForm($this->fields_form_setting);
		}
        elseif(Tools::isSubmit('viewstfeaturedcategories'))
        {
    		$category = new StFeaturedCategoriesClass((int)$id_st_featured_category);
            if(!Validate::isLoadedObject($category))
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            
            $helper = $this->initCategoryList();
            $list = StFeaturedCategoriesClass::getSub($id_st_featured_category);
            
            // skip delete action for auto-sub
            foreach($list AS $v)
                if ($v['auto_sub'])
                    $helper->list_skip_actions['delete'][] = $v['id_st_featured_category'];
            
            $this->_html .= $helper->generateList($list, $this->fields_list);
            
			return $this->_html;
        }
        else
        {
            $helper = $this->initList();
            $list = StFeaturedCategoriesClass::getSub(0);
			return $this->_html.$helper->generateList($list, $this->fields_list);
        }
            
	}
    
    public function initSettingForm()
    {
		$this->fields_form_setting[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Settings'),
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('The number of subcategory:'),
					'name' => 'f_c_number',
                    'default_value' => 5,
                    'required' => true,
                    'desc' => $this->l('Set number of children to show in the top category.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Show category image:'),
					'name' => 'f_c_image',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'f_c_image_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'f_c_image_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
			),
            'submit' => array(
				'title' => $this->l('Save'),
				'class' => 'button'
			),
		);
    }
    
    protected function initFormSetting()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
        
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stfeaturedcategories';
		$helper->identifier = StFeaturedCategoriesClass::$definition['primary'];
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savesettingstfeaturedcategories';
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

	private function _displayForm()
    {
        $id_lang = $this->context->language->id;
        $category_arr = array();
		$this->getCategoryOption($category_arr, Category::getRootCategory()->id, (int)$id_lang, (int)Shop::getContextShopID(),true);
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Top category'),
			),
			'input' => array(
                array(
					'type' => 'select',
					'label' => $this->l('Top category:'),
					'name' => 'id_category',
                    'required' => true,
					'options' => array(
						'query' => $category_arr,
						'id' => 'id',
						'name' => 'name'
					),
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Automatic building subcategories:'),
					'name' => 'auto_sub',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'auto_sub_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'auto_sub_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Color:'),
					'name' => 'txt_color',
					'class' => 'color',
					'size' => 20,
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Color on hover:'),
					'name' => 'txt_color_over',
					'class' => 'color',
					'size' => 20,
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
				'title' => $this->l(' Save '),
				'class' => 'button'
			)
		);
        
        $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stfeaturedcategories';
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		foreach (Language::getLanguages(false) as $lang)
			$helper->languages[] = array(
				'id_lang' => $lang['id_lang'],
				'iso_code' => $lang['iso_code'],
				'name' => $lang['name'],
				'is_default' => ($default_lang == $lang['id_lang'] ? 1 : 0)
			);

		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
        $helper->shopLinkType = '';
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savestfeaturedcategory';
		$helper->table = StFeaturedCategoriesClass::$definition['table'];
		$helper->identifier = StFeaturedCategoriesClass::$definition['primary'];
        
    	$id_st_featured_category = (int)Tools::getValue('id_st_featured_category');
        if($id_st_featured_category)
            $category = new StFeaturedCategoriesClass((int)$id_st_featured_category);
        else
            $category = new StFeaturedCategoriesClass();
            
        if(Validate::isLoadedObject($category))
        {
            $helper->id = $category->id;
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_featured_category');
        }
        $helper->fields_value = $this->getFieldsValueSt($category);
            
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
    public function getParentList($id_parent)
    {
        $result = array();
        $parents = StFeaturedCategoriesClass::recurseTree($id_parent,1,1,0,$this->context->language->id,1); 
         
        if($parents)
            $parents = $this->_toFlat($parents);          
        foreach ($parents as $parent)
        {
            if($parent['id_category'] && $parent['auto_sub'])
                continue;
            $spacer = str_repeat('&nbsp;', $this->spacer_size * (int)$parent['level_depth']);
            $result[] = array(
                'id' => $parent['id_st_featured_category'],
                'name' => $spacer.$this->displayTitle($parent['title'],$parent),
            );
        }
        return $result;
    }

	protected function initCategoryForm()
	{                
    	$id_st_featured_category = (int)Tools::getValue('id_st_featured_category');
        if($id_st_featured_category)
        {
            $category = new StFeaturedCategoriesClass($id_st_featured_category);
            $id_parent = $category->id_parent;
        }
        else
        {
            $category = new StFeaturedCategoriesClass();
        }
        if(!isset($id_parent) && Tools::getValue('id_parent'))
            $id_parent = (int)Tools::getValue('id_parent');
                
        $id_lang = $this->context->language->id;
        $category_arr = array();
		$this->getCategoryOption($category_arr, Category::getRootCategory()->id, (int)$id_lang, (int)Shop::getContextShopID(),true);
        
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Sub category'),
			),
			'input' => array(
                array(
    				'type' => 'select',
    				'label' => $this->l('Sub category:'),
    				'name' => 'id_category',
                    'required' => true,
    				'options' => array(
    					'query' => $category_arr,
    					'id' => 'id',
    					'name' => 'name'
    		          ),
    		    ),
                array(
					'type' => 'color',
					'label' => $this->l('Color:'),
					'name' => 'txt_color',
					'class' => 'color',
					'size' => 20,
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Color on hover:'),
					'name' => 'txt_color_over',
					'class' => 'color',
					'size' => 20,
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
                array(
					'type' => 'hidden',
					'name' => 'auto_sub',
                    'default_value' => $category->id ? $category->auto_sub : 0,
				),
			),
			'submit' => array(
				'title' => $this->l(' Save '),
				'class' => 'button'
			)
		);
        
        $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stfeaturedcategories';
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		foreach (Language::getLanguages(false) as $lang)
			$helper->languages[] = array(
				'id_lang' => $lang['id_lang'],
				'iso_code' => $lang['iso_code'],
				'name' => $lang['name'],
				'is_default' => ($default_lang == $lang['id_lang'] ? 1 : 0)
			);

		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savesubstfeaturedcategories';
		$helper->table = StFeaturedCategoriesClass::$definition['table'];
		$helper->identifier = StFeaturedCategoriesClass::$definition['primary'];
        
        if($category->id)
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_featured_category');
        $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_parent', 'default_value' => $id_parent);
            
        $helper->fields_value = $this->getFieldsValueSt($category); 
                        
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&savesub'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&id_st_featured_category='.$id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
				'desc' => $this->l('Back to list')
			)
		);
		return $helper;
	}

    private function getCategoryOption(&$category_arr, $id_category = 1, $id_lang = false, $id_shop = false, $recursive = true)
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
		$category_arr[] = array('id'=>(int)$category->id,'name'=>(isset($spacer) ? $spacer : '').$category->name.' ('.$shop->name.')');

		if (isset($children) && is_array($children) && count($children))
			foreach ($children as $child)
			{
				$this->getCategoryOption($category_arr, (int)$child['id_category'], (int)$id_lang, (int)$child['id_shop'],$recursive);
			}
	}

    public static function displayType($value, $row)
	{
	   return self::$_auto_type[(int)$value];
	}
    
    protected function initList()
	{
		$this->fields_list = array(
			'name' => array(
				'title' => $this->l('Category name'),
				'width' => 140,
				'type' => 'text'
			),
			'auto_sub' => array(
				'title' => $this->l('Automatic building subcategories'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayType',
				'callback_object' => 'stfeaturedcategories',
			),
            'active' => array(
    			'title' => $this->l('Displayed'), 
                'width' => 120, 
                'active' => 'status',
    			'align' => 'center',
                'type' => 'bool'
            ),
			'position' => array(
				'title' => $this->l('Position'),
				'width' => 120,
				'type' => 'text',
			),
		);

		if (Shop::isFeatureActive())
			$this->fields_list['id_shop'] = array('title' => $this->l('ID Shop'), 'align' => 'center', 'width' => 25, 'type' => 'int');

		$helper = new HelperList();
        $helper->shopLinkType = '';
		$helper->simple_header = true;
		$helper->identifier = 'id_st_featured_category';
		$helper->actions = array('view', 'edit', 'delete');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&add'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new category')
		);
        $helper->toolbar_btn['edit'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&setting'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Setting'),
		);
		$helper->title = $this->displayName;
		$helper->table = $this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
	}
    public static function displayContent($value, $row)
    {
        if($value)
            return stfeaturedcategory::displayTitle($value, $row);
        else
        {
            $module = new stfeaturedcategory();
            return $module->l('Custom content');
        }
    }
    
    public function initCategoryList()
    {
        $this->fields_list = array(
			'name' => array(
				'title' => $this->l('Category name'),
				'type' => 'text',
			),
            'active' => array(
    			'title' => $this->l('Displayed'), 
                'width' => 120, 
                'active' => 'status',
    			'align' => 'center',
                'type' => 'bool'
            ),
			'position' => array(
				'title' => $this->l('Position'),
				'width' => 120,
				'type' => 'text',
			),
		);

		if (Shop::isFeatureActive())
			$this->fields_list['id_shop'] = array('title' => $this->l('ID Shop'), 'align' => 'center', 'width' => 25, 'type' => 'int');

		$helper = new HelperList();
		$helper->simple_header = true;
        $helper->shopLinkType = '';
		$helper->identifier = 'id_st_featured_category';
		$helper->actions = array('edit', 'delete');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&addsub'.$this->name.'&id_parent='.(int)Tools::getValue('id_st_featured_category').'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add subcategory')
		);
		$helper->toolbar_btn['back'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Back to list')
		);

		$helper->title = $this->l('Sub categories');
		$helper->table = $this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
    }
    
    public function deleteFeaturedCategories($id_category)
    {
        if ($id_category)
        {
            $cats = Db::getInstance('
            SELECT `id_st_featured_category` FROM '._DB_PREFIX_.'st_featured_category
            WHERE `id_category` = '.(int)$id_category.'
            ');
            foreach($cats AS $cat)
            {
                $obj = new StFeaturedCategoriesClass($cat['id_st_featured_category']);
                $obj->delete();
            }
        }
    }
    
    public function updateFeaturedCategory($category)
    {
        if (!Validate::isLoadedObject($category))
            return false;
        
        // is featured category?
        $featured = Db::getInstance()->executeS('
        SELECT * FROM '._DB_PREFIX_.'st_featured_category
        WHERE (`id_category` = '.(int)$category->id.'
        OR `id_category` = '.(int)$category->id_parent.')
        AND `auto_sub` > 0
        ORDER BY id_st_featured_category
        ');
        foreach($featured AS $v)
        {
            if ($v['id_category'] == (int)$category->id)
            {
                $parent = StFeaturedCategoriesClass::getById($v['id_parent']);
                if ($parent['id_category'] != $category->id_parent)
                {
                    $new_parent = Db::getInstance()->executeS('
                    SELECT * FROM '._DB_PREFIX_.'st_featured_category
                    WHERE `id_category` = '.(int)$category->id_parent.'
                    AND `auto_sub` > 0 AND `id_parent` = 0
                    ');
                    $updated = false;
                    if ($new_parent)
                        foreach($new_parent AS $_v)
                        {
                            if (Db::getInstance()->getValue('
                            SELECT COUNT(0) FROM '._DB_PREFIX_.'st_featured_category
                            WHERE `id_category` = '.(int)$v['id_category'].'
                            AND `id_parent` = '.(int)$_v['id_st_featured_category'].'
                            '))
                                continue;
                            
                            $updated = Db::getInstance()->execute('
                            UPDATE '._DB_PREFIX_.'st_featured_category
                            SET `id_parent` = '.(int)$_v['id_st_featured_category'].'
                            WHERE `id_st_featured_category` = '.(int)$v['id_st_featured_category'].'
                            ');
                            break;
                        }
                    
                    if (!$updated)
                    {
                         Db::getInstance()->execute('
                            DELETE FROM '._DB_PREFIX_.'st_featured_category
                            WHERE `id_st_featured_category` = '.(int)$v['id_st_featured_category'].'
                            ');
                    }
                }
            }
            elseif($v['id_category'] == $category->id_parent && !$v['id_parent'])
            {
                $child = Db::getInstance()->getValue('
                SELECT COUNT(0) FROM '._DB_PREFIX_.'st_featured_category
                WHERE `id_category` = '.(int)$category->id.'
                AND `id_parent` = '.(int)$v['id_st_featured_category'].'
                ');
                if (!$child)
                {
                    $id_shop    = (int)Shop::getContextShopID();
                    $cate   = new StFeaturedCategoriesClass();
                    $cate->id_parent = (int)$v['id_st_featured_category'];
                    $cate->level_depth = $v['level_depth']+1;
                    $cate->id_shop = $id_shop;
                    $cate->id_category = (int)$category->id;
                    $cate->position = StFeaturedCategoriesClass::getMaximumPosition((int)$v['id_st_featured_category']);
                    $cate->active = 1;
                    $cate->auto_sub = 1;
                    
                    $cate->save();
               }
            }
        }
    }
    
    public function hookDisplayHeader()
    {
		$this->context->controller->addCSS($this->_path.'views/css/stfeaturedcategories.css');
    }

	public function hookActionCategoryDelete($params)
	{
	    $this->deleteFeaturedCategories($params['category']->id);
		$this->clearstfeaturedcategoryCache();
	}
    
    public function hookActionCategoryAdd($params)
	{
	    $this->updateFeaturedCategory($params['category']);
		$this->clearstfeaturedcategoryCache();
	}
    
	public function hookActionCategoryUpdate($params)
	{
	    $this->updateFeaturedCategory($params['category']);
		$this->clearstfeaturedcategoryCache();
	}
    
    public function hookDisplayHomeTop($params)
    {
        return $this->hookDisplayHome($params);
    }
    public function hookDisplayHomeBottom($params)
    {
        return $this->hookDisplayHome($params);
    }
    
    private function _prepareHook($location= null)
    {
        $featured_categories = StFeaturedCategoriesClass::getAll();
        if(!$featured_categories)
            return false;
		$this->smarty->assign(array(
            'featured_categories' => $featured_categories,
            'f_c_number' => Configuration::get('ST_PRO_CATE_F_C_NUMBER'),
            'f_c_image' => Configuration::get('ST_PRO_CATE_F_C_IMAGE'),
			'categorySize' => Image::getSize(ImageType::getFormatedName('category')),
        ));
        return true;
    }
    
	public function hookDisplayHome($params)
	{
	    if (!$this->isCached('stfeaturedcategories.tpl', $this->getCacheId('stfeaturedcategories')))
    	    if(!$this->_prepareHook())
                return false;
		return $this->display(__FILE__, 'stfeaturedcategories.tpl', $this->getCacheId('stfeaturedcategories'));
	}
    
    private function clearstfeaturedcategoryCache()
    {
        $this->_clearCache('stfeaturedcategories.tpl');
    }
    
	public function hookDisplayHomeSecondaryLeft($params)
	{
        $this->smarty->assign(array(
            'is_homepage_secondary_left' => true,
        ));
        return $this->hookDisplayHome($params); 
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
    
    private function autoBuildingSubcate($id_category,$id_st_featured_category)
    {
        if (!$id_category)
            return false;
        
        $id_lang    = Context::getContext()->language->id;
        $id_shop    = (int)Shop::getContextShopID();
        $subcates   = Category::getChildren($id_category, $id_lang, false);
        $parent     = StFeaturedCategoriesClass::getById($id_st_featured_category);
        
        if (!$id_shop)
            return false;
        
        $ret = true;
        $maximum = StFeaturedCategoriesClass::getMaximumPosition((int)$id_st_featured_category);
        foreach($subcates AS $k => $sub)
        {
            // If sub is exists, skip it.
            $exists = Db::getInstance()->getValue('
            SELECT COUNT(0) FROM '._DB_PREFIX_.'st_featured_category
            WHERE id_parent = '.$id_st_featured_category.'
            AND id_category = '.(int)$sub['id_category'].'
            ');
            if ($exists)
                continue;
            
            $category   = new StFeaturedCategoriesClass();
            $category->id_parent = (int)$id_st_featured_category;
            $category->level_depth = $parent['level_depth']+1;
            $category->id_shop = $id_shop;
            $category->id_category = (int)$sub['id_category'];
            $category->position = $maximum+$k;
            $category->active = 1;
            $category->auto_sub = 1;
            
            $ret &= $category->save();
        }
        
        return $ret;
    }
}
