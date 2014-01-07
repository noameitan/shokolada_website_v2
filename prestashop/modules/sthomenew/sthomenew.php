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

class StHomeNew extends Module
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
    public static $items = array(
		array('id' => 2, 'name' => '2'),
		array('id' => 3, 'name' => '3'),
		array('id' => 4, 'name' => '4'),
		array('id' => 5, 'name' => '5'),
		array('id' => 6, 'name' => '6'),
    );
    public static $sort_by = array(
        1 => array('id' =>1 , 'name' => 'Date add: Desc'),
        2 => array('id' =>2 , 'name' => 'Date add: Asc'),
        3 => array('id' =>3 , 'name' => 'Date update: Desc'),
        4 => array('id' =>4 , 'name' => 'Date update: Asc'),
        5 => array('id' =>5 , 'name' => 'Product Name: A to Z'),
        6 => array('id' =>6 , 'name' => 'Product Name: Z to A'),
        7 => array('id' =>7 , 'name' => 'Price: Lowest first'),
        8 => array('id' =>8 , 'name' => 'Price: Highest first'),
        9 => array('id' =>9 , 'name' => 'Product ID: Asc'),
        10 => array('id' =>10 , 'name' => 'Product ID: Desc'),
    );
	function __construct()
	{
		$this->name           = 'sthomenew';
		$this->tab            = 'front_office_features';
		$this->version        = '1.6.5';
		$this->author         = 'SUNNYTOO.COM';
		$this->need_instance  = 0;

		parent::__construct();

		$this->displayName = $this->l('New Products Slider');
		$this->description = $this->l('Display new products on homepage.');
	}

	function install()
	{
		if (!Configuration::updateValue('ST_HOMENEW_NBR', 8) 
            || !parent::install() 
			|| !$this->registerHook('addproduct')
			|| !$this->registerHook('updateproduct')
			|| !$this->registerHook('deleteproduct')
            || !$this->registerHook('displayHome')
            || !$this->registerHook('displayAnywhere')
            || !Configuration::updateValue('ST_HOMENEW_EASING', 0)
            || !Configuration::updateValue('ST_HOMENEW_SLIDESHOW', 0)
            || !Configuration::updateValue('ST_HOMENEW_S_SPEED', 7000)
            || !Configuration::updateValue('ST_HOMENEW_A_SPEED', 400)
            || !Configuration::updateValue('ST_HOMENEW_PAUSE_ON_HOVER', 1)
            || !Configuration::updateValue('ST_HOMENEW_LOOP', 0)
            || !Configuration::updateValue('ST_HOMENEW_MOVE', 0)
            || !Configuration::updateValue('ST_HOMENEW_ITEMS', 4)
            || !Configuration::updateValue('ST_HOMENEW_NBR_COL', 8) 
            || !Configuration::updateValue('ST_HOMENEW_EASING_COL', 0)
            || !Configuration::updateValue('ST_HOMENEW_SLIDESHOW_COL', 0)
            || !Configuration::updateValue('ST_HOMENEW_S_SPEED_COL', 7000)
            || !Configuration::updateValue('ST_HOMENEW_A_SPEED_COL', 400)
            || !Configuration::updateValue('ST_HOMENEW_PAUSE_ON_HOVER_COL', 1)
            || !Configuration::updateValue('ST_HOMENEW_LOOP_COL', 0)
            || !Configuration::updateValue('ST_HOMENEW_MOVE_COL', 0)
            || !Configuration::updateValue('ST_HOMENEW_ITEMS_COL', 1)
            || !Configuration::updateValue('ST_HOMENEW_SOBY', 1)
            || !Configuration::updateValue('ST_HOMENEW_SOBY_COL', 1)
            || !Configuration::updateValue('ST_HOMENEW_HIDE_MOB', 0)
            || !Configuration::updateValue('ST_HOMENEW_HIDE_MOB_COL', 0)
            || !Configuration::updateValue('ST_HOMENEW_NBR_FOT', 4) 
            || !Configuration::updateValue('ST_HOMENEW_SOBY_FOT', 1)
        )
			return false;
	    $this->clearSliderCache();
		return true;
	}
    
    public function uninstall()
	{
	    $this->clearSliderCache();
		return parent::uninstall();
	}
        
    public function getContent()
	{
	    $this->initFieldsForm();
		if (isset($_POST['savesthomenew']))
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
                            Configuration::updateValue('ST_HOMENEW_'.strtoupper($field['name']), $value);
                        }
                        else
                            Configuration::updateValue('ST_HOMENEW_'.strtoupper($field['name']), $value);
                    }
            if(count($this->validation_errors))
                $this->_html .= $this->displayError(implode('<br/>',$this->validation_errors));
            else 
            {
	            $this->clearSliderCache();
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));  
            }    
        }
		$helper = $this->initForm();
        $helper->fields_value['nbr'] = Configuration::get('ST_HOMENEW_NBR');
        $helper->fields_value['easing'] = Configuration::get('ST_HOMENEW_EASING');
        $helper->fields_value['slideshow'] = Configuration::get('ST_HOMENEW_SLIDESHOW');
        $helper->fields_value['s_speed'] = Configuration::get('ST_HOMENEW_S_SPEED');
        $helper->fields_value['a_speed'] = Configuration::get('ST_HOMENEW_A_SPEED');
        $helper->fields_value['pause_on_hover'] = Configuration::get('ST_HOMENEW_PAUSE_ON_HOVER');
        $helper->fields_value['loop'] = Configuration::get('ST_HOMENEW_LOOP');
        $helper->fields_value['move'] = Configuration::get('ST_HOMENEW_MOVE');
        $helper->fields_value['items'] = Configuration::get('ST_HOMENEW_ITEMS');
        $helper->fields_value['soby'] = Configuration::get('ST_HOMENEW_SOBY');
        $helper->fields_value['hide_mob'] = Configuration::get('ST_HOMENEW_HIDE_MOB');
                    
        $helper->fields_value['nbr_col'] = Configuration::get('ST_HOMENEW_NBR_COL');
        $helper->fields_value['easing_col'] = Configuration::get('ST_HOMENEW_EASING_COL');
        $helper->fields_value['slideshow_col'] = Configuration::get('ST_HOMENEW_SLIDESHOW_COL');
        $helper->fields_value['s_speed_col'] = Configuration::get('ST_HOMENEW_S_SPEED_COL');
        $helper->fields_value['a_speed_col'] = Configuration::get('ST_HOMENEW_A_SPEED_COL');
        $helper->fields_value['pause_on_hover_col'] = Configuration::get('ST_HOMENEW_PAUSE_ON_HOVER_COL');
        $helper->fields_value['loop_col'] = Configuration::get('ST_HOMENEW_LOOP_COL');
        $helper->fields_value['move_col'] = Configuration::get('ST_HOMENEW_MOVE_COL');
        $helper->fields_value['items_col'] = Configuration::get('ST_HOMENEW_ITEMS_COL');
        $helper->fields_value['soby_col'] = Configuration::get('ST_HOMENEW_SOBY_COL');
        $helper->fields_value['hide_mob_col'] = Configuration::get('ST_HOMENEW_HIDE_MOB_COL');
        
        $helper->fields_value['nbr_fot'] = Configuration::get('ST_HOMENEW_NBR_FOT');
        $helper->fields_value['soby_fot'] = Configuration::get('ST_HOMENEW_SOBY_FOT');
        
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    public function initFieldsForm()
    {
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Slider on homepage'),
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Define the number of products to be displayed:'),
					'name' => 'nbr',
                    'default_value' => 8,
                    'required' => true,
                    'desc' => $this->l('Define the number of products that you would like to display on homepage (default: 8).'),
                    'validation' => 'isUnsignedInt',
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
					'type' => 'select',
        			'label' => $this->l('Sort by:'),
        			'name' => 'soby',
                    'options' => array(
        				'query' => self::$sort_by,
        				'id' => 'id',
        				'name' => 'name',
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
        $this->fields_form[1]['form'] = array(
			'legend' => array(
				'title' => $this->l('Slider on sidebar'),
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Define the number of products to be displayed:'),
					'name' => 'nbr_col',
                    'default_value' => 8,
                    'required' => true,
                    'desc' => $this->l('Define the number of products that you would like to display on sidebar (default: 8).'),
                    'validation' => 'isUnsignedInt',
				),
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
					'type' => 'select',
        			'label' => $this->l('Sort by:'),
        			'name' => 'soby_col',
                    'options' => array(
        				'query' => self::$sort_by,
        				'id' => 'id',
        				'name' => 'name',
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
        
        $this->fields_form[2]['form'] = array(
			'legend' => array(
				'title' => $this->l('Slider on footer'),
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Define the number of products to be displayed:'),
					'name' => 'nbr_fot',
                    'default_value' => 4,
                    'required' => true,
                    'desc' => $this->l('Define the number of products that you would like to display on footer (default: 4).'),
                    'validation' => 'isUnsignedInt',
				),
                array(
					'type' => 'select',
        			'label' => $this->l('Sort by:'),
        			'name' => 'soby_fot',
                    'options' => array(
        				'query' => self::$sort_by,
        				'id' => 'id',
        				'name' => 'name',
        			),
                    'validation' => 'isUnsignedInt',
				), 
			),
		);
    }
    protected function initForm()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');

		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'sthomenew';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savesthomenew';
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
		);
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
	    if (!$this->isCached('sthomenew.tpl', $this->stGetCacheId(0)))
    	    if(!$this->_prepareHook(0))
                return false;
		return $this->display(__FILE__, 'sthomenew.tpl', $this->stGetCacheId(0));
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
    private function _prepareHook($col=0)
    {
        $ext = $col ? '_COL' : '';
        $nbr = Configuration::get('ST_HOMENEW_NBR'.$ext);
        ($nbr===false && $col) && $nbr = Configuration::get('ST_HOMENEW_NBR');
        
        if(!$nbr)
            return false;
        
        $order_by = 'date_add';
        $order_way = 'DESC';
        
        $soby = (int)Configuration::get('ST_HOMENEW_SOBY'.$ext);
        switch($soby)
        {
            case 1:
                $order_by = 'date_add';
                $order_way = 'DESC';
            break;
            case 2:
                $order_by = 'date_add';
                $order_way = 'ASC';
            break;
            case 3:
                $order_by = 'date_upd';
                $order_way = 'DESC';
            break;
            case 4:
                $order_by = 'date_upd';
                $order_way = 'ASC';
            break;
            case 5:
                $order_by = 'name';
                $order_way = 'ASC';
            break;
            case 6:
                $order_by = 'name';
                $order_way = 'DESC';
            break;
            case 7:
                $order_by = 'price';
                $order_way = 'ASC';
            break;
            case 8:
                $order_by = 'price';
                $order_way = 'DESC';
            break;
            case 9:
                $order_by = 'id_product';
                $order_way = 'ASC';
            break;
            case 10:
                $order_by = 'id_product';
                $order_way = 'DESC';
            break;
            default:
            break;
        }
        
        $products = Product::getNewProducts((int)($this->context->language->id), 0, (int)$nbr,false , $order_by, $order_way);
        
        if(is_array($products) && count($products))
        {
            $module_stquickview = Module::getInstanceByName('stquickview');
			if ($module_stquickview && $module_stquickview->id)
				$id_module_stquickview = $module_stquickview->id;
                
            $module_stthemeeditor = Module::getInstanceByName('stthemeeditor');
			if ($module_stthemeeditor && $module_stthemeeditor->id)
				$id_module_stthemeeditor = $module_stthemeeditor->id;
                
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
		/*
        if (!$newProducts)
			return false;
		*/
        
        $easing = Configuration::get('ST_HOMENEW_EASING'.$ext);
        ($easing===false && $col) && $easing = Configuration::get('ST_HOMENEW_EASING');
        
        $slideshow = Configuration::get('ST_HOMENEW_SLIDESHOW'.$ext);
        ($slideshow===false && $col) && $slideshow = Configuration::get('ST_HOMENEW_SLIDESHOW');
        
        $s_speed = Configuration::get('ST_HOMENEW_S_SPEED'.$ext);
        ($s_speed===false && $col) && $s_speed = Configuration::get('ST_HOMENEW_S_SPEED');
        
        $a_speed = Configuration::get('ST_HOMENEW_A_SPEED'.$ext);
        ($a_speed===false && $col) && $a_speed = Configuration::get('ST_HOMENEW_A_SPEED');
        
        $pause_on_hover = Configuration::get('ST_HOMENEW_PAUSE_ON_HOVER'.$ext);
        ($pause_on_hover===false && $col) && $pause_on_hover = Configuration::get('ST_HOMENEW_PAUSE_ON_HOVER');
        
        $loop = Configuration::get('ST_HOMENEW_LOOP'.$ext);
        ($loop===false && $col) && $loop = Configuration::get('ST_HOMENEW_LOOP');
        
        $move = Configuration::get('ST_HOMENEW_MOVE'.$ext);
        ($move===false && $col) && $move = Configuration::get('ST_HOMENEW_MOVE');
        
        $items = Configuration::get('ST_HOMENEW_ITEMS'.$ext);
        ($items===false && $col) && $items = Configuration::get('ST_HOMENEW_ITEMS');
        
        $hide_mob = Configuration::get('ST_HOMENEW_HIDE_MOB'.$ext);
        ($hide_mob===false && $col) && $hide_mob = Configuration::get('ST_HOMENEW_HIDE_MOB');
        
        $this->smarty->assign(array(
			'products' => $products,
			'add_prod_display' => Configuration::get('PS_ATTRIBUTE_CATEGORY_DISPLAY'),
			'homeSize' => Image::getSize(ImageType::getFormatedName('home')),
			'mediumSize' => Image::getSize(ImageType::getFormatedName('medium')),
			'thumbSize' => Image::getSize(ImageType::getFormatedName('thumb')),
            'slider_easing' => self::$easing[$easing]['name'],
            'slider_slideshow' => $slideshow,
            'slider_s_speed' => $s_speed,
            'slider_a_speed' => $a_speed,
            'slider_pause_on_hover' => $pause_on_hover,
            'slider_loop' => $loop,
            'slider_move' => $move,
            'slider_items' => $items,
			'column_slider' => $col,
			'hide_mob' => (int)$hide_mob,
		));
        return true;
    }
    
	public function hookDisplayLeftColumn($params)
	{
	    if (!$this->isCached('sthomenew.tpl', $this->stGetCacheId(1)))
    	    if(!$this->_prepareHook(1))
                return false;
		return $this->display(__FILE__, 'sthomenew.tpl', $this->stGetCacheId(1));
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
	public function hookDisplayStBlogLeftColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
        return $this->hookDisplayLeftColumn($params);
	}
	public function hookDisplayStBlogRightColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
        return $this->hookDisplayLeftColumn($params);
	}
    public function hookDisplayFooter($params)
    {
	    if (!$this->isCached('sthomenew-footer.tpl', $this->getCacheId()))
	    {
            $nbr = Configuration::get('ST_HOMENEW_NBR_FOT');    
            $nbr = $nbr ? (int)$nbr : 4;
            
            $order_by = 'date_add';
            $order_way = 'DESC';
            
            $soby = (int)Configuration::get('ST_HOMENEW_SOBY_FOT');
            switch($soby)
            {
                case 1:
                    $order_by = 'date_add';
                    $order_way = 'DESC';
                break;
                case 2:
                    $order_by = 'date_add';
                    $order_way = 'ASC';
                break;
                case 3:
                    $order_by = 'date_upd';
                    $order_way = 'DESC';
                break;
                case 4:
                    $order_by = 'date_upd';
                    $order_way = 'ASC';
                break;
                case 5:
                    $order_by = 'name';
                    $order_way = 'ASC';
                break;
                case 6:
                    $order_by = 'name';
                    $order_way = 'DESC';
                break;
                case 7:
                    $order_by = 'price';
                    $order_way = 'ASC';
                break;
                case 8:
                    $order_by = 'price';
                    $order_way = 'DESC';
                break;
                case 9:
                    $order_by = 'id_product';
                    $order_way = 'ASC';
                break;
                case 10:
                    $order_by = 'id_product';
                    $order_way = 'DESC';
                break;
                default:
                break;
            }
            
            $products = Product::getNewProducts((int)($this->context->language->id), 0, (int)$nbr,false , $order_by, $order_way);
            
            $this->smarty->assign(array(
    			'products' => $products,
    			'add_prod_display' => Configuration::get('PS_ATTRIBUTE_CATEGORY_DISPLAY'),
    			'thumbSize' => Image::getSize(ImageType::getFormatedName('thumb')),
    		));
	    }
		return $this->display(__FILE__, 'sthomenew-footer.tpl', $this->getCacheId());
    }
    public function hookDisplayFooterTop($params)
    {
        return $this->hookDisplayFooter($params);
    }
    public function hookDisplayFooterSecondary($params)
    {
        return $this->hookDisplayFooter($params);        
    }
    public function hookAddProduct($params)
	{
	   $this->clearSliderCache();
	}

	public function hookUpdateProduct($params)
	{
	   $this->clearSliderCache();
	}

	public function hookDeleteProduct($params)
	{
	   $this->clearSliderCache();
	}
	private function clearSliderCache()
	{
		$this->_clearCache('sthomenew.tpl');
		$this->_clearCache('sthomenew-footer.tpl');
		$this->_clearCache('sthomenew.tpl',$this->stGetCacheId(0));
		$this->_clearCache('sthomenew.tpl',$this->stGetCacheId(1));
    }
	protected function stGetCacheId($key,$name = null)
	{
		$cache_id = parent::getCacheId($name);
		return $cache_id.'_'.$key;
	}
}