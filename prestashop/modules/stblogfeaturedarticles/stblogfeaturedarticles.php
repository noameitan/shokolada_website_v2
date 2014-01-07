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

class StBlogFeaturedArticles extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
    public static $per_nbr = array(
		array('id' => 2, 'name' => '2'),
		array('id' => 3, 'name' => '3'),
		array('id' => 4, 'name' => '4'),
    );
	public function __construct()
	{
		$this->name          = 'stblogfeaturedarticles';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
        $this->displayName = $this->l('Blog Module - Featured articles');
        $this->description = $this->l('Display featured articles on your store.');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayStBlogLeftColumn')
			|| !$this->registerHook('displayStBlogRightColumn')
			|| !$this->registerHook('displayStBlogHome')
			|| !$this->registerHook('displayHomeBottom')
			|| !$this->registerHook('displayHeader')
			|| !Configuration::updateValue('ST_B_FEATURED_A_NBR', 5)
			|| !Configuration::updateValue('ST_B_FEATURED_A_NBR_COL', 4)
			|| !Configuration::updateValue('ST_B_FEATURED_A_NBR_HOME', 4)
			|| !Configuration::updateValue('ST_B_FEATURED_A_PER_NBR_HOME', 4)
			|| !Configuration::updateValue('ST_B_FEATURED_A_NBR_FOOTER', 3)
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
		if (isset($_POST['savestblogfeaturedarticles']))
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
        $helper->fields_value['featured_a_nbr'] = Configuration::get('ST_B_FEATURED_A_NBR');
        $helper->fields_value['featured_a_nbr_col'] = Configuration::get('ST_B_FEATURED_A_NBR_COL');
        $helper->fields_value['featured_a_nbr_home'] = Configuration::get('ST_B_FEATURED_A_NBR_HOME');
        $helper->fields_value['featured_a_per_nbr_home'] = Configuration::get('ST_B_FEATURED_A_PER_NBR_HOME');
        $helper->fields_value['featured_a_nbr_footer'] = Configuration::get('ST_B_FEATURED_A_NBR_FOOTER');
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
					'label' => $this->l('Blog homepage:'),
					'name' => 'featured_a_nbr',
					'desc' => $this->l('Define the number of recent articles to be displayed in blog homepage.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Stroe homepage.'),
					'name' => 'featured_a_nbr_home',
					'desc' => $this->l('Define the number of recent articles to be displayed in stroe homepage.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'select',
					'label' => $this->l('Articles per row in stroe homepage.'),
        			'name' => 'featured_a_per_nbr_home',
                    'options' => array(
        				'query' => self::$per_nbr,
        				'id' => 'id',
        				'name' => 'name',
        			),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Left/right column:'),
					'name' => 'featured_a_nbr_col',
					'desc' => $this->l('Define the number of recent articles to be displayed in left/right column.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Footer:'),
					'name' => 'featured_a_nbr_footer',
					'desc' => $this->l('Define the number of recent articles to be displayed in footer.'),
                    'validation' => 'isUnsignedInt',
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
		$helper->name_controller = 'stblogfeaturedarticles';
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
		$helper->submit_action = 'savestblogfeaturedarticles';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			)
		);
		return $helper;
	}

    public function hookDisplayHeader($params)
    {
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
            
		$this->context->controller->addCSS(($this->_path).'views/css/stblogfeaturedarticles.css');
    }
    
    private function _prepareHook($ext='')
    {
        include_once(_PS_MODULE_DIR_.'stblog/classes/StBlogClass.php');
        include_once(_PS_MODULE_DIR_.'stblog/classes/StBlogCategory.php');
        include_once(_PS_MODULE_DIR_.'stblog/classes/StBlogImageClass.php');
        
        $ext = $ext ? '_'.strtoupper($ext) : '';
        $nbr = Configuration::get('ST_B_FEATURED_A_NBR'.$ext);
        
        if(!$nbr)
            $nbr = 4;
        
        $root_category = StBlogCategory::getShopCategoryRoot((int)$this->context->language->id);
        if(!is_array($root_category) || !isset($root_category['id_st_blog_category']))
            return false;
        $category = new StBlogCategory($root_category['id_st_blog_category'], (int)$this->context->language->id);
		$blogs = $category->getBlogs((int)$this->context->language->id, 1, $nbr);
        /*
        if(!$blogs)
            return false;
        */    
		$this->smarty->assign(array(
            'blogs' => $blogs,
            'imageSize' => StBlogImageClass::$imageTypeDef,
            'featured_a_per_nbr_home' => Configuration::get('ST_B_FEATURED_A_PER_NBR_HOME'),
            'display_viewcount' => Configuration::get('ST_BLOG_DISPLAY_VIEWCOUNT'),
        ));
        return true;
    }
    
	public function hookDisplayLeftColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
                
        if(!$this->_prepareHook('col'))    
            return false; 
            
		return $this->display(__FILE__, 'stblogfeaturedarticles-column.tpl');
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
    public function hookDisplayStBlogHome($params)
    {
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
            
        if(!$this->_prepareHook())    
            return false; 
                        
		return $this->display(__FILE__, 'stblogfeaturedarticles.tpl');
    }
    public function hookDisplayStBlogHomeTop($params)
    {
        return $this->hookDisplayStBlogHome($params); 
    }
    public function hookDisplayStBlogHomeBottom($params)
    {
        return $this->hookDisplayStBlogHome($params); 
    }
    public function hookDisplayHome($params)
    {
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
             
        if(!$this->_prepareHook('home'))    
            return false; 
                        
		return $this->display(__FILE__, 'stblogfeaturedarticles-home.tpl'); 
    }
    public function hookDisplayHomeTop($params)
    {
        return $this->hookDisplayHome($params); 
    }
    public function hookDisplayHomeBottom($params)
    {
        return $this->hookDisplayHome($params); 
    }
    public function hookDisplayFooter($params)
    {
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
             
        if(!$this->_prepareHook('footer'))    
            return false; 
            
		return $this->display(__FILE__, 'stblogfeaturedarticles-footer.tpl');
    }
    public function hookDisplayFooterTop($params)
    {
        return $this->hookDisplayFooter($params);         
    }
    public function hookDisplayFooterSecondary($params)
    {
        return $this->hookDisplayFooter($params);         
    }
}