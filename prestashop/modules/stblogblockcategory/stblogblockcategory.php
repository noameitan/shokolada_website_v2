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

class StBlogBlockCategory extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
	public function __construct()
	{
		$this->name          = 'stblogblockcategory';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
        $this->displayName = $this->l('Blog Module - Category block');
        $this->description = $this->l('Adds a block featuring blog categories.');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayStBlogLeftColumn')
			|| !$this->registerHook('displayStBlogRightColumn')
			|| !Configuration::updateValue('ST_B_CATEG_MAX_DEPTH', 3)
			|| !Configuration::updateValue('ST_B_CATEG_DHTML', 1)
        )
			return false;
		return true;
	}

    public function getContent()
	{
	    if(!Module::isInstalled('stblog'))
            $this->_html .= $this->displayConfirmation($this->l('Please, install Blog module first.'));
	    if(!Module::isEnabled('stblog'))
            $this->_html .= $this->displayConfirmation($this->l('Please, enable Blog module first.'));
            
	    $this->initFieldsForm();
		if (isset($_POST['savestblogblockcategory']))
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
                        
                        if($field['name']=='limit' && $value>20)
                             $value=20;
                        
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
                            Configuration::updateValue('ST_B_'.strtoupper($field['name']), $value);
                        }
                        else
                            Configuration::updateValue('ST_B_'.strtoupper($field['name']), $value);
                    }
                        
            if(count($this->validation_errors))
                $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
            else 
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
        }

		$helper = $this->initForm();
        $helper->fields_value['categ_max_depth'] = Configuration::get('ST_B_CATEG_MAX_DEPTH');
        $helper->fields_value['categ_dhtml'] = Configuration::get('ST_B_CATEG_DHTML');
        
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    protected function initFieldsForm()
    {
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->displayName,
			),
            'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Maximum depth:'),
					'name' => 'categ_max_depth',
                    'desc' => $this->l('Set the maximum depth of sublevels displayed in this block (0 = infinite)'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Dynamic:'),
					'name' => 'categ_dhtml',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'categ_dhtml_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'categ_dhtml_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('Activate dynamic (animated) mode for sublevels'),
                    'validation' => 'isBool',
				), 
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			)
		);
        
    }
    protected function initForm()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');

		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stblogblockcategory';
		$helper->identifier = $this->identifier;
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
		$helper->submit_action = 'savestblogblockcategory';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			)
		);
		return $helper;
	}

	public function hookDisplayLeftColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
        include_once(_PS_MODULE_DIR_.'stblog/classes/StBlogCategory.php');
            
        $root_categroy = StBlogCategory::getShopCategoryRoot($this->context->language->id);    
        if(!is_array($root_categroy) || !isset($root_categroy['id_st_blog_category']) || !$root_categroy['id_st_blog_category'])
            return false;
        $categories = StBlogCategory::getCategories($root_categroy['id_st_blog_category'],$this->context->language->id);  
         
        if(!is_array($categories) || !count($categories))
            return false;
            
		$blog_id_category = (int)Tools::getValue('blog_id_category');
		$id_blog = (int)Tools::getValue('id_blog');
		
		if ($blog_id_category)
		{
			$this->smarty->assign('currentCategoryId', $blog_id_category);
			$this->context->cookie->last_visited_category_blog = $blog_id_category;
		}
		if ($id_blog)
		{
			$blog = new StBlogClass($id_blog,(int)$this->context->language->id);
            
			if (!isset($this->context->cookie->last_visited_category_blog)
					|| !StBlogClass::idIsOnCategoryId($id_blog, array('0' => array('id_category' => $this->context->cookie->last_visited_category_blog)))
					|| !StBlogCategory::inShopStatic($this->context->cookie->last_visited_category_blog, $this->context->shop))
            {
			     if (isset($blog) && Validate::isLoadedObject($blog))
					$this->context->cookie->last_visited_category_blog = (int)$blog->id_st_blog_category_default;
			}
            
			if (isset($blog) && Validate::isLoadedObject($blog))
			     $this->smarty->assign('currentCategoryId', (int)$blog->id_st_blog_category_default);
		}
        
        $maxdepth = Configuration::get('ST_B_CATEG_MAX_DEPTH');
        if(!$maxdepth || !Validate::isUnsignedInt($maxdepth))
            $maxdepth = 3;
		$this->smarty->assign(array(
            'isDhtml' => Configuration::get('ST_B_CATEG_DHTML') == 1 ? true : false,
            'maxdepth' => $maxdepth,
            'categories' => $categories,
        ));
               
		return $this->display(__FILE__, 'stblogblockcategory.tpl');
	}
	public function hookDisplayRightColumn($params)
	{
        return $this->hookDisplayLeftColumn($params); 
	}
	public function hookDisplayStBlogRightColumn($params)
	{
        return $this->hookDisplayLeftColumn($params); 
	}
	public function hookDisplayStBlogLeftColumn($params)
	{
        return $this->hookDisplayLeftColumn($params); 
	}
}