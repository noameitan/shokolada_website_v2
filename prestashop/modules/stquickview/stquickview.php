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

class StQuickView extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
    
    public static $moduleRoutes = array(
        'module-stquickview-default' => array(
            'controller' =>  'default',
            'rule' =>        'module/stquickview/default/{id_product}',
            'keywords' => array(
                'id_product'            =>   array('regexp' => '[0-9]+', 'param' => 'id_product'),
            ),
            'params' => array(
                'fc' => 'module',
                'module' => 'stquickview',
            )
        ),
    );
    public static $moduleRoutes_154 = array(
        'module-stquickview-default' => array(
            'controller' =>  'default',
            'rule' =>        'module/{module}/default/{id_product}',
            'keywords' => array(
                'id_product'            =>   array('regexp' => '[0-9]+', 'param' => 'id_product'),
				'module' =>			array('regexp' => '[_a-zA-Z0-9_-]+', 'param' => 'module'),
				'controller' =>		array('regexp' => '[_a-zA-Z0-9_-]+', 'param' => 'controller'),
            ),
            'params' => array(
                'fc' => 'module',
            )
        ),
    );
	public function __construct()
	{
		$this->name          = 'stquickview';
		$this->tab           = 'front_office_features';
		$this->version       = '1.1';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
        $this->displayName = $this->l('Product Quick View');
        $this->description = $this->l('Uses ajax to load product details.');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayAnywhere')
			|| !$this->registerHook('displayHeader')
            || !$this->registerHook('moduleRoutes')
            || !Configuration::updateValue('ST_QW_HEIGHT', 470)
            || !Configuration::updateValue('ST_QW_SHOW_SHORT_DESC', 1)

        )
			return false;
		return true;
	}

    public function getContent()
	{
	    $this->initFieldsForm();
		if (isset($_POST['savestquickview']))
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
                            Configuration::updateValue('ST_QW_'.strtoupper($field['name']), $value);
                        }
                        else
                            Configuration::updateValue('ST_QW_'.strtoupper($field['name']), $value);
                    }
            
            
            if(count($this->validation_errors))
                $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
            else 
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
        }

		$helper = $this->initForm();
        $helper->fields_value['height'] = (int)Configuration::get('ST_QW_HEIGHT');
        $helper->fields_value['show_short_desc'] = (int)Configuration::get('ST_QW_SHOW_SHORT_DESC');
        
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
					'label' => $this->l('Height(px):'),
					'name' => 'height',
                    'validation' => 'isUnsignedInt',
                    'desc' => $this->l('default: 470'),
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Show short description:'),
					'name' => 'show_short_desc',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'show_short_desc_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'show_short_desc_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
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
		$helper->name_controller = 'stquickview';
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
		$helper->submit_action = 'savestquickview';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			)
		);
		return $helper;
	}
    public function hookDisplayHeader()
    {
		$this->context->controller->addJS($this->_path.'views/js/stquickview.js');
		$this->smarty->assign(array(
            'qw_height' => (int)Configuration::get('ST_QW_HEIGHT'),
        ));
		return $this->display(__FILE__, 'stquickview_header.tpl');
    }
	public function hookDisplayAnywhere($params)
	{
	    if(!isset($params['caller']) || $params['caller']!=$this->name)
            return false;
	    if(!isset($params['id_product']) || !Validate::isInt($params['id_product']))
            return false;
            
        $this->context->smarty->assign(array(
			'id_product' => (int)$params['id_product'],
		));
        
		return $this->display(__FILE__, 'stquickview_button.tpl');
    }
	public function hookModuleRoutes($params)
    {
        return version_compare(_PS_VERSION_,'1.5.5','<') ? self::$moduleRoutes_154 : self::$moduleRoutes;
    }
}