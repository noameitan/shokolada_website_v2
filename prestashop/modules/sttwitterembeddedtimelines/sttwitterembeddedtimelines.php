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

class StTwitterEmbeddedTimelines extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
	public function __construct()
	{
		$this->name          = 'sttwitterembeddedtimelines';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
        $this->displayName = $this->l('Twitter Embedded Timelines');
        $this->description = $this->l('Display the recent tweets of a twitter user');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayFooterTop')
            || !Configuration::updateValue('ST_TW_NAME', '')
            || !Configuration::updateValue('ST_TW_WIDGET_ID', '')
            || !Configuration::updateValue('ST_TW_BLOCK_TITLE', array('1'=>'Twitter feed'))
            || !Configuration::updateValue('ST_TW_HEIGHT', 0)
            || !Configuration::updateValue('ST_TW_LINK_COLOR', '#00A161')
            || !Configuration::updateValue('ST_TW_THEME', 'light')
            || !Configuration::updateValue('ST_TW_NOHEADER', 1)
            || !Configuration::updateValue('ST_TW_NOFOOTER', 1)
            || !Configuration::updateValue('ST_TW_NOBORDERS', 1)
            || !Configuration::updateValue('ST_TW_NOSCROLLBAR', 1)
            || !Configuration::updateValue('ST_TW_TRANSPARENT', 1)
            || !Configuration::updateValue('ST_TW_BORDER_COLOR', '')
            || !Configuration::updateValue('ST_TW_LANGUAGE', '')
            || !Configuration::updateValue('ST_TW_LIMIT', 2)
            || !Configuration::updateValue('ST_TW_LANGUAGE', '')
            || !Configuration::updateValue('ST_TW_SCREEN_NAME', '')
            || !Configuration::updateValue('ST_TW_SHOW_REPLIES', 0)

        )
			return false;
		return true;
	}

    public function getContent()
	{
	    $this->initFieldsForm();
		if (isset($_POST['savesttwitterembeddedtimelines']))
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
                            Configuration::updateValue('ST_TW_'.strtoupper($field['name']), $value);
                        }
                        else
                            Configuration::updateValue('ST_TW_'.strtoupper($field['name']), $value);
                    }
            
            $this->updateBlockTitle();
            
            if(count($this->validation_errors))
                $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
            else 
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
        }

		$helper = $this->initForm();
        $helper->fields_value['name'] = Configuration::get('ST_TW_NAME');
        $helper->fields_value['widget_id'] = Configuration::get('ST_TW_WIDGET_ID');
        $helper->fields_value['height'] = (int)Configuration::get('ST_TW_HEIGHT');
        $helper->fields_value['link_color'] = Configuration::get('ST_TW_LINK_COLOR');
        $helper->fields_value['theme'] = Configuration::get('ST_TW_THEME');
        $helper->fields_value['noheader'] = (int)Configuration::get('ST_TW_NOHEADER');
        $helper->fields_value['nofooter'] = (int)Configuration::get('ST_TW_NOFOOTER');
        $helper->fields_value['noborders'] = (int)Configuration::get('ST_TW_NOBORDERS');
        $helper->fields_value['noscrollbar'] = (int)Configuration::get('ST_TW_NOSCROLLBAR');
        $helper->fields_value['transparent'] = (int)Configuration::get('ST_TW_TRANSPARENT');
        $helper->fields_value['border_color'] = Configuration::get('ST_TW_BORDER_COLOR');
        $helper->fields_value['limit'] = (int)Configuration::get('ST_TW_LIMIT');
        $helper->fields_value['language'] = Configuration::get('ST_TW_LANGUAGE');
        $helper->fields_value['screen_name'] = Configuration::get('ST_TW_SCREEN_NAME');
        $helper->fields_value['show_replies'] = (int)Configuration::get('ST_TW_SHOW_REPLIES');
        
		$languages = Language::getLanguages(false);
		foreach ($languages as $language)
        {
            $helper->fields_value['block_title'][$language['id_lang']] = Configuration::get('ST_TW_BLOCK_TITLE', $language['id_lang']);
        }
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    public function updateBlockTitle() {
		$languages = Language::getLanguages();
		$result = array();
        $defaultLanguage = new Language((int)(Configuration::get('PS_LANG_DEFAULT')));
		foreach ($languages as $language)
			$result[$language['id_lang']] = Tools::getValue('block_title_' . $language['id_lang']) ? Tools::getValue('block_title_'.$language['id_lang']) : Tools::getValue('block_title_'.$defaultLanguage->id);
            
        Configuration::updateValue('ST_TW_BLOCK_TITLE', $result);
	}
    protected function initFieldsForm()
    {
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->displayName,
			),
            'description' => '<a href="https://dev.twitter.com/docs/embedded-timelines#customization" target="_blank">'.$this->l('The customisation documentation.').'</a>', 
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Twitter user name:'),
					'name' => 'name',
                    'size' => 64,
                    'validation' => 'isGenericName',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Widget ID:'),
					'name' => 'widget_id',
                    'size' => 64,
                    'desc' => '<a href="https://twitter.com/settings/widgets" target="_blank">'.$this->l('Create your own embedded timeline.').'</a>',
                    'validation' => 'isAnything',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Block title:'),
					'name' => 'block_title',
                    'size' => 64,
                    'lang' => true,
				),
                array(
					'type' => 'text',
					'label' => $this->l('Height:'),
					'name' => 'height',
                    'validation' => 'isUnsignedInt',
				),
				 array(
					'type' => 'color',
					'label' => $this->l('Link color:'),
					'name' => 'link_color',
					'class' => 'color',
					'size' => 20,
                    'validation' => 'isColor',
			     ),
                 array(
					'type' => 'select',
        			'label' => $this->l('Theme:'),
        			'name' => 'theme',
                    'options' => array(
        				'query' => array(
                            array('id' => 'dark', 'name' => 'dark'),
		                    array('id' => 'light', 'name' => 'light'),
                        ),
        				'id' => 'id',
        				'name' => 'name',
        			),
                    'validation' => 'isGenericName',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('No header:'),
					'name' => 'noheader',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'noheader_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'noheader_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('No Footer:'),
					'name' => 'nofooter',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'nofooter_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'nofooter_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('No Borders:'),
					'name' => 'noborders',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'noborders_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'noborders_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
				 array(
					'type' => 'color',
					'label' => $this->l('Border color:'),
					'name' => 'border_color',
					'class' => 'color',
					'size' => 20,
                    'validation' => 'isColor',
			     ),
                array(
					'type' => 'radio',
					'label' => $this->l('No scrollbar:'),
					'name' => 'noscrollbar',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'noscrollbar_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'noscrollbar_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('Transparent:'),
					'name' => 'transparent',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'transparent_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'transparent_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'text',
					'label' => $this->l('Tweet limit:'),
					'name' => 'limit',
                    'default_value' => 2,
                    'required' => true,
                    'validation' => 'isUnsignedInt',
                    'desc' => $this->l('The timeline will render the specified number of Tweets from the timeline, expanding the height of the widget to display all Tweets without scrolling. Since the widget is of a fixed size, it will not poll for updates when using this option.'),
				), 
                array(
					'type' => 'text',
					'label' => $this->l('Language:'),
					'name' => 'language',
                    'size' => 64,
                    'desc' => '<a href="http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes" target="_blank">ISO_639-1</a> eg. EN,FR',
                    'validation' => 'isLanguageIsoCode',
				),  
                array(
					'type' => 'text',
					'label' => $this->l('Screen name:'),
					'name' => 'screen_name',
                    'size' => 64,
                    'desc' => $this->l('Whose timeline you want to display.'),
                    'validation' => 'isGenericName',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Show replies:'),
					'name' => 'show_replies',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'show_replies_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'show_replies_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'validation' => 'isBool',
                    'desc' => $this->l('You have to fill the screen name for the show replies attribute to take effect'),
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
		$helper->name_controller = 'sttwitterembeddedtimelines';
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
		$helper->submit_action = 'savesttwitterembeddedtimelines';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			)
		);
		return $helper;
	}
    public function prepare()
    {
        if(!Configuration::get('ST_TW_NAME') || !Configuration::get('ST_TW_WIDGET_ID'))
            return false;
        $this->smarty->assign(array(
            'name' => Configuration::get('ST_TW_NAME'),
            'widget_id' => Configuration::get('ST_TW_WIDGET_ID'),
            'tw_block_title' => Configuration::get('ST_TW_BLOCK_TITLE', $this->context->language->id),
            'height' => (int)Configuration::get('ST_TW_HEIGHT'),
            'link_color' => Configuration::get('ST_TW_LINK_COLOR'),
            'theme' => Configuration::get('ST_TW_THEME'),
            'noheader' => (int)Configuration::get('ST_TW_NOHEADER'),
            'nofooter' => (int)Configuration::get('ST_TW_NOFOOTER'),
            'noborders' => (int)Configuration::get('ST_TW_NOBORDERS'),
            'noscrollbar' => (int)Configuration::get('ST_TW_NOSCROLLBAR'),
            'transparent' => (int)Configuration::get('ST_TW_TRANSPARENT'),
            'border_color' => Configuration::get('ST_TW_BORDER_COLOR'),
            'limit' => (int)Configuration::get('ST_TW_LIMIT'),
            'language' => Configuration::get('ST_TW_LANGUAGE'),
            'screen_name' => Configuration::get('ST_TW_SCREEN_NAME'),
            'show_replies' => (int)Configuration::get('ST_TW_SHOW_REPLIES'),
		));
        return true;
    }
	public function hookDisplayLeftColumn($params)
	{
	    if(!$this->prepare())
            return false;
		return $this->display(__FILE__, 'sttwitterembeddedtimelines.tpl');
	}
	public function hookDisplayRightColumn($params)
	{
        return $this->hookDisplayLeftColumn($params); 
	}
	public function hookDisplayHomeSecondaryRight($params)
	{
        return $this->hookDisplayLeftColumn($params); 
	}
    public function hookDisplayFooter($params)
    {
	    if(!$this->prepare())
            return false;
		return $this->display(__FILE__, 'sttwitterembeddedtimelines-footer.tpl');
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