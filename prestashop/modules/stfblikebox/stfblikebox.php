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

class StFbLikeBox extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
    public static $locale = array(
        array('id'=>'ca_ES', 'name'=>'Catalan'), 
        array('id'=>'cs_CZ', 'name'=>'Czech'), 
        array('id'=>'cy_GB', 'name'=>'Welsh'), 
        array('id'=>'da_DK', 'name'=>'Danish'), 
        array('id'=>'de_DE', 'name'=>'German'), 
        array('id'=>'eu_ES', 'name'=>'Basque'), 
        array('id'=>'en_PI', 'name'=>'English (Pirate)'),
        array('id'=>'en_UD', 'name'=>'English (Upside Down)'),
        array('id'=>'ck_US', 'name'=>'Cherokee'), 
        array('id'=>'es_LA', 'name'=>'Spanish'), 
        array('id'=>'es_CL', 'name'=>'Spanish (Chile)'),
        array('id'=>'es_CO', 'name'=>'Spanish (Colombia)'),
        array('id'=>'es_ES', 'name'=>'Spanish (Spain)'),
        array('id'=>'es_MX', 'name'=>'Spanish (Mexico)'),
        array('id'=>'es_VE', 'name'=>'Spanish (Venezuela)'),
        array('id'=>'fb_FI', 'name'=>'Finnish (test)'),
        array('id'=>'fi_FI', 'name'=>'Finnish'), 
        array('id'=>'fr_FR', 'name'=>'French (France)'),
        array('id'=>'gl_ES', 'name'=>'Galician'), 
        array('id'=>'hu_HU', 'name'=>'Hungarian'), 
        array('id'=>'it_IT', 'name'=>'Italian'), 
        array('id'=>'ja_JP', 'name'=>'Japanese'), 
        array('id'=>'ko_KR', 'name'=>'Korean'), 
        array('id'=>'nb_NO', 'name'=>'Norwegian (bokmal)'),
        array('id'=>'nn_NO', 'name'=>'Norwegian (nynorsk)'),
        array('id'=>'nl_NL', 'name'=>'Dutch'),
        array('id'=>'pl_PL', 'name'=>'Polish'),
        array('id'=>'pt_BR', 'name'=>'Portuguese (Brazil)'),
        array('id'=>'pt_PT', 'name'=>'Portuguese (Portugal)'),
        array('id'=>'ro_RO', 'name'=>'Romanian'),
        array('id'=>'ru_RU', 'name'=>'Russian'),
        array('id'=>'sk_SK', 'name'=>'Slovak'),
        array('id'=>'sl_SI', 'name'=>'Slovenian'),
        array('id'=>'sv_SE', 'name'=>'Swedish'),
        array('id'=>'th_TH', 'name'=>'Thai'),
        array('id'=>'tr_TR', 'name'=>'Turkish'),
        array('id'=>'ku_TR', 'name'=>'Kurdish'),
        array('id'=>'zh_CN', 'name'=>'Simplified Chinese (China)'),
        array('id'=>'zh_HK', 'name'=>'Traditional Chinese (Hong Kong)'), 
        array('id'=>'zh_TW', 'name'=>'Traditional Chinese (Taiwan)'),
        array('id'=>'fb_LT', 'name'=>'Leet Speak'), 
        array('id'=>'af_ZA', 'name'=>'Afrikaans'),
        array('id'=>'sq_AL', 'name'=>'Albanian'),
        array('id'=>'hy_AM', 'name'=>'Armenian'),
        array('id'=>'az_AZ', 'name'=>'Azeri'),
        array('id'=>'be_BY', 'name'=>'Belarusian'),
        array('id'=>'bn_IN', 'name'=>'Bengali'),
        array('id'=>'bs_BA', 'name'=>'Bosnian'),
        array('id'=>'bg_BG', 'name'=>'Bulgarian'),
        array('id'=>'hr_HR', 'name'=>'Croatian'),
        array('id'=>'nl_BE', 'name'=>'Dutch (België)'),
        array('id'=>'en_GB', 'name'=>'English (UK)'),
        array('id'=>'eo_EO', 'name'=>'Esperanto'),
        array('id'=>'et_EE', 'name'=>'Estonian'),
        array('id'=>'fo_FO', 'name'=>'Faroese'),
        array('id'=>'fr_CA', 'name'=>'French (Canada)'),
        array('id'=>'ka_GE', 'name'=>'Georgian'),
        array('id'=>'el_GR', 'name'=>'Greek'),
        array('id'=>'gu_IN', 'name'=>'Gujarati'),
        array('id'=>'hi_IN', 'name'=>'Hindi'),
        array('id'=>'is_IS', 'name'=>'Icelandic'),
        array('id'=>'id_ID', 'name'=>'Indonesian'),
        array('id'=>'ga_IE', 'name'=>'Irish'),
        array('id'=>'jv_ID', 'name'=>'Javanese'),
        array('id'=>'kn_IN', 'name'=>'Kannada'),
        array('id'=>'kk_KZ', 'name'=>'Kazakh'),
        array('id'=>'la_VA', 'name'=>'Latin'),
        array('id'=>'lv_LV', 'name'=>'Latvian'),
        array('id'=>'li_NL', 'name'=>'Limburgish'),
        array('id'=>'lt_LT', 'name'=>'Lithuanian'),
        array('id'=>'mk_MK', 'name'=>'Macedonian'),
        array('id'=>'mg_MG', 'name'=>'Malagasy'),
        array('id'=>'ms_MY', 'name'=>'Malay'),
        array('id'=>'mt_MT', 'name'=>'Maltese'),
        array('id'=>'mr_IN', 'name'=>'Marathi'),
        array('id'=>'mn_MN', 'name'=>'Mongolian'),
        array('id'=>'ne_NP', 'name'=>'Nepali'),
        array('id'=>'pa_IN', 'name'=>'Punjabi'),
        array('id'=>'rm_CH', 'name'=>'Romansh'),
        array('id'=>'sa_IN', 'name'=>'Sanskrit'),
        array('id'=>'sr_RS', 'name'=>'Serbian'),
        array('id'=>'so_SO', 'name'=>'Somali'),
        array('id'=>'sw_KE', 'name'=>'Swahili'),
        array('id'=>'tl_PH', 'name'=>'Filipino'),
        array('id'=>'ta_IN', 'name'=>'Tamil'),
        array('id'=>'tt_RU', 'name'=>'Tatar'),
        array('id'=>'te_IN', 'name'=>'Telugu'),
        array('id'=>'ml_IN', 'name'=>'Malayalam'),
        array('id'=>'uk_UA', 'name'=>'Ukrainian'),
        array('id'=>'uz_UZ', 'name'=>'Uzbek'),
        array('id'=>'vi_VN', 'name'=>'Vietnamese'),
        array('id'=>'xh_ZA', 'name'=>'Xhosa'),
        array('id'=>'zu_ZA', 'name'=>'Zulu'),
        array('id'=>'km_KH', 'name'=>'Khmer'),
        array('id'=>'tg_TJ', 'name'=>'Tajik'),
        array('id'=>'ar_AR', 'name'=>'Arabic'),
        array('id'=>'he_IL', 'name'=>'Hebrew'),
        array('id'=>'ur_PK', 'name'=>'Urdu'),
        array('id'=>'fa_IR', 'name'=>'Persian'),
        array('id'=>'sy_SY', 'name'=>'Syriac'),
        array('id'=>'yi_DE', 'name'=>'Yiddish'),
        array('id'=>'gn_PY', 'name'=>'Guaraní'),
        array('id'=>'qu_PE', 'name'=>'Quechua'),
        array('id'=>'ay_BO', 'name'=>'Aymara'),
        array('id'=>'se_NO', 'name'=>'Northern Sámi'),
        array('id'=>'ps_AF', 'name'=>'Pashto'),
        array('id'=>'tl_ST', 'name'=>'Klingon'),
    );
	public function __construct()
	{
		$this->name          = 'stfblikebox';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
        $this->displayName = $this->l('Facebook Like Box');
        $this->description = $this->l('Adds a Facebook social plugin Like Box');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayFooterTop')
            || !Configuration::updateValue('ST_FB_LB_URL', 'themeforest')
            || !Configuration::updateValue('ST_FB_LB_HEIGHT', 200)
            || !Configuration::updateValue('ST_FB_LB_FACE', 1)
            || !Configuration::updateValue('ST_FB_LB_STREAM', 0)
            || !Configuration::updateValue('ST_FB_LB_HEADER', 0)
            || !Configuration::updateValue('ST_FB_LB_CONNECTIONS', 4)
            || !Configuration::updateValue('ST_FB_LB_LOCALE', 'en_US')
            )
			return false;
		return true;
	}

    public function getContent()
	{
	    $this->initFieldsForm();
		if (isset($_POST['savestfblikebox']))
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
                            Configuration::updateValue('ST_FB_'.strtoupper($field['name']), $value);
                        }
                        else
                            Configuration::updateValue('ST_FB_'.strtoupper($field['name']), $value);
                    }
            if(count($this->validation_errors))
                $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
            else 
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
        }
		$helper = $this->initForm();
        $helper->fields_value['lb_url'] = Configuration::get('ST_FB_LB_URL');
        $helper->fields_value['lb_height'] = (int)Configuration::get('ST_FB_LB_HEIGHT');
        $helper->fields_value['lb_face'] = (int)Configuration::get('ST_FB_LB_FACE');
        $helper->fields_value['lb_stream'] = (int)Configuration::get('ST_FB_LB_STREAM');
        $helper->fields_value['lb_header'] = (int)Configuration::get('ST_FB_LB_HEADER');
        $helper->fields_value['lb_connections'] = (int)Configuration::get('ST_FB_LB_CONNECTIONS');
        $helper->fields_value['lb_locale'] = Configuration::get('ST_FB_LB_LOCALE');
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
					'label' => $this->l('Facebook user name:'),
					'name' => 'lb_url',
                    'size' => 64,
                    'required' => true,
                    'validation' => 'isGenericName',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Height:'),
					'name' => 'lb_height',
                    'required' => true,
                    'desc' => $this->l('The height of the plugin in pixels.'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Show face:'),
					'name' => 'lb_face',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'lb_face_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'lb_face_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('how profile photos in the plugin.'),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('Show stream:'),
					'name' => 'lb_stream',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'lb_stream_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'lb_stream_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('Show the profile stream for the public profile.'),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('Show header:'),
					'name' => 'lb_header',
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'lb_header_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'lb_header_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('Show the "Find us on Facebook" bar at top. Only shown when either stream or connections are present.'),
                    'validation' => 'isBool',
				), 
                array(
					'type' => 'text',
					'label' => $this->l('Connections number:'),
					'name' => 'lb_connections',
                    'required' => true,
                    'validation' => 'isUnsignedInt',
				), 
				array(
					'type' => 'select',
					'label' => $this->l('Locale:'),
					'name' => 'lb_locale',
					'options' => array(
						'query' => self::$locale,
        				'id' => 'id',
        				'name' => 'name',
						'default' => array(
							'value' => 'en_US',
							'label' => 'English (US)'
						)
					),
                    'validation' => 'isAnything',
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
		$helper->name_controller = 'stfblikebox';
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
		$helper->submit_action = 'savestfblikebox';
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
        if(!Configuration::get('ST_FB_LB_URL'))
            return false;
        $this->smarty->assign(array(
			'st_lb_url' => Configuration::get('ST_FB_LB_URL'),
			'st_lb_height' => (int)Configuration::get('ST_FB_LB_HEIGHT'),
			'st_lb_face' => Configuration::get('ST_FB_LB_FACE'),
			'st_lb_stream' => Configuration::get('ST_FB_LB_STREAM'),
			'st_lb_header' => Configuration::get('ST_FB_LB_HEADER'),
            /*
			'st_lb_color_scheme' => Configuration::get('ST_FB_LB_CS'),
			'st_lb_width' => (int)Configuration::get('ST_FB_LB_WIDTH'),
			'st_lb_b_color' => Configuration::get('ST_FB_LB_B_C'),
			'st_lb_bg_color' => Configuration::get('ST_FB_LB_BG_C'),
            */
            'st_lb_connections' => Configuration::get('ST_FB_LB_CONNECTIONS'),
            'st_lb_locale' => Configuration::get('ST_FB_LB_LOCALE'),
		));
        return true;
    }
	public function hookDisplayLeftColumn($params)
	{
	    if(!$this->prepare())
            return false;
		return $this->display(__FILE__, 'stfblikebox.tpl');
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
		return $this->display(__FILE__, 'stfblikebox-footer.tpl');
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