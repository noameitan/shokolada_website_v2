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

require (dirname(__FILE__).'/StEasyContentClass.php');

class StEasyContent extends Module
{
    public  $fields_list;
    public  $fields_value;
    public  $fields_form;
	private $_html = '';
    public static $location = array(
        18 => array('id' =>18 , 'name' => 'Page top secondary'),
        1 => array('id' =>1 , 'name' => 'Homepage'),
        16 => array('id' =>16 , 'name' => 'Homepage top'),
        17 => array('id' =>17 , 'name' => 'Homepage bottom'),
        14 => array('id' =>14 , 'name' => 'Homepage left'),
        15 => array('id' =>15 , 'name' => 'Homepage right'),
        2 => array('id' =>2 , 'name' => 'Left column'),
        10 => array('id' =>10 , 'name' => 'Right column'),
        13 => array('id' =>13 , 'name' => 'Footer top'),
        3 => array('id' =>3 , 'name' => 'Footer'),
        12 => array('id' =>12 , 'name' => 'Footer secondary'),
        4 => array('id' =>4 , 'name' => 'Product secondary column'),
        5 => array('id' =>5 , 'name' => 'Category no products'),
        6 => array('id' =>6 , 'name' => '404 page not found'),
        9 => array('id' =>9 , 'name' => 'Website maintenance'),
        11 => array('id' =>11 , 'name' => 'Shopping cart is empty'),
        19 => array('id' =>19 , 'name' => 'Blog homepage'),
        20 => array('id' =>20 , 'name' => 'Blog homepage top'),
        21 => array('id' =>21 , 'name' => 'Blog homepage bottom'),
        22 => array('id' =>22 , 'name' => 'Blog left column'),
        23 => array('id' =>23 , 'name' => 'Blog right column'),
        24 => array('id' =>24 , 'name' => 'Footer product'),
        25 => array('id' =>25 , 'name' => 'Header Category'),
        26 => array('id' =>26 , 'name' => 'Footer Category'),
        27 => array('id' =>27 , 'name' => 'Top left-hand side of the page(slogan)'),
    );
    
    public static $span = array(
        array('id' =>3 , 'name' => '25%'),
        array('id' =>6 , 'name' => '50%'),
        array('id' =>9 , 'name' => '75%'),
        array('id' =>12 , 'name' => '100%'),
    );
    
	function __construct()
	{
		$this->name          = 'steasycontent';
		$this->tab           = 'front_office_features';
		$this->version       = '1.2.9';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('Custom Content Block');
		$this->description = $this->l('Create content blocks and place them everywhere in your shop.');
	}
    
	function install()
	{
		$res = parent::install() &&
			$this->installDB() &&
            $this->registerHook('displayTopSecondary') &&
			$this->registerHook('displayLeftColumn') &&
			$this->registerHook('displayRightColumn') &&
			$this->registerHook('displayFooter') &&
			$this->registerHook('displayFooterTop') &&
			$this->registerHook('displayFooterSecondary') &&
			$this->registerHook('displayHome') &&
			$this->registerHook('displayHomeTop') &&
			$this->registerHook('displayHomeBottom') &&
			$this->registerHook('displayHomeSecondaryLeft') &&
			$this->registerHook('displayHomeSecondaryRight') &&
            $this->registerHook('displayProductSecondaryColumn') &&
            $this->registerHook('displayFooterProduct') &&
            $this->registerHook('displayCategoryHeader') &&
            $this->registerHook('displayCategoryFooter') &&
			$this->registerHook('displayAnywhere') &&
            $this->registerHook('actionShopDataDuplication') &&
			$this->registerHook('displayStBlogHome') &&
			$this->registerHook('displayStBlogHomeTop') &&
			$this->registerHook('displayStBlogHomeBottom') &&
			$this->registerHook('displayStBlogLeftColumn') && 
			$this->registerHook('displayStBlogRightColumn') && 
			$this->registerHook('displayTopLeft');
		if ($res)
			foreach(Shop::getShops(false) as $shop)
				$res &= $this->sampleData($shop['id_shop']);
        $this->clearEasyContentCache();
        return $res;
	}

	public function installDB()
	{
		$return = (bool)Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_easy_content` (
				`id_st_easy_content` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                `location` int(10) unsigned NOT NULL DEFAULT 0, 
                `span` tinyint(2) unsigned NOT NULL DEFAULT 0, 
                `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT 0, 
                `active` tinyint(1) unsigned NOT NULL DEFAULT 1, 
                `position` int(10) unsigned NOT NULL DEFAULT 0,
				PRIMARY KEY (`id_st_easy_content`)
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_easy_content_lang` (
				`id_st_easy_content` INT UNSIGNED NOT NULL AUTO_INCREMENT,
				`id_lang` int(10) unsigned NOT NULL ,
                `title` varchar(255) DEFAULT NULL,
    			`url` varchar(255) DEFAULT NULL,
				`text` text NOT NULL,
				PRIMARY KEY (`id_st_easy_content`, `id_lang`)
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_easy_content_shop` (
				`id_st_easy_content` int(10) UNSIGNED NOT NULL,
                `id_shop` int(11) NOT NULL,      
                PRIMARY KEY (`id_st_easy_content`,`id_shop`),    
                KEY `id_shop` (`id_shop`)   
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		return $return;
	}
    public function sampleData($id_shop)
    {
        $return = true;
        $path = _MODULE_DIR_.$this->name;
		$samples = array(
			array('text' => '<div class="row hidden-phone"><div class="span5"><div class="text-right" style="padding: 3em 0 2em 0;"><h1 style="font-size: 2.2em; font-family: \'Fjalla One\';">WELCOME TO THE</h1><h1 style="font-size: 2.2em; font-family: \'Fjalla One\';"><span style="color: #00a161;">TRANSFORMER</span> DEMO STORE</h1></div></div><div class="span6"><div style="padding: 3em 0 2em 0;"><p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="button" href="#" title="Buy this theme">Buy this theme</a></div></div></div>', 'title' => '', 'url' => '', 'location' => 16, 'active'=>1, 'span'=>0),
			array('text' => '<p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store. </p><p>This is a custom block edited from admin panel.You can insert any content here.</p><p>Any orders placed through this store will not be honored or fulfilled</p><a class="go" href="http://www.sunnytoo.com/" target="_blank" title="Buy this theme">Buy this theme</a>', 'title' => 'About us', 'url' => '', 'location' => 13, 'active'=>1, 'span'=>0),
			array('text' => '<div class="mar_b4">Call Us +001 123 123 <br /> Fax +001 123 123</div><div class="mar_b4">support@sunnytoo.com <br /> support@sunnytoo.com</div><div class="mar_b4">Skype: contact_us <br /> skype_support</div><div class="mar_b4">From Monday to Friday <br /> 9:00 a.m. to 5:00 p.m.</div>', 'title' => 'Contact Us', 'url' => '', 'location' => 13, 'active'=>1, 'span'=>0),
			array('text' => '<h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-credit-card icon-large"> </em>Payment</h6><p class="color_999">We accept Visa, MasterCard and American Express.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-truck icon-large"> </em>Free shipping</h6><p class="color_999">All orders over $100 free super fast delivery.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-trophy icon-large"> </em>Best priec guarantee</h6><p class="color_999">The best choice for high quality at good prices.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-flight icon-large"> </em>Shipping</h6><p class="color_999">We ship to over 100 countries worldwide through fast and reliable delivery partners.</p>', 'title' => 'Why Shop at Transformer', 'url' => '', 'location' => 4, 'active'=>1, 'span'=>0),
			array('text' => '<h1 style="font-size: 10em;line-height: 1em; font-style: italic;">404</h1>', 'title' => '', 'url' => '', 'location' => 6, 'active'=>1, 'span'=>0),
            array('text' => '<p><span class="font_3x">PrestaShop</span> comes complete with over 310 features that have been carefully developed to assist business owners in increasing sales with <span class="font_1x">virtually little effort</span>. All features are integrated in the software and are <span class="font_3x">100% free</span>.This is a custom block, You can insert any content here.</p>', 'title' => '', 'url' => '', 'location' => 13, 'active'=>0, 'span'=>12),
            array('text' => '<p><span class="contact_item_large"><em class="icon-phone-squared icon-1x"></em>call +001 123 123</span><span class="contact_item_large"><em class="icon-mail-1 icon-1x" style="margin-top: -4px;"></em>example@mail.com</span></p>', 'title' => '', 'url' => '', 'location' => 3, 'active'=>0, 'span'=>6),
            array('text' => '<div class="text-center" style="padding: 2em 0;"><h1>Welcome to the Transformer theme demo store</h1><p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><p><a class="button" href="#">Buy this theme</a></p></div>', 'title' => '', 'url' => '', 'location' => 16, 'active'=>0, 'span'=>0),
            array('text' => '<div style="padding-left: 10px;">The Best E-Commerce Experience</div>', 'title' => '', 'url' => '', 'location' => 27, 'active'=>0, 'span'=>0),
		);
		
		foreach($samples as $k=>$sample)
		{
			$module = new StEasyContentClass();
			foreach (Language::getLanguages(false) as $lang)
            {
				$module->text[$lang['id_lang']] = $sample['text'];
				$module->title[$lang['id_lang']] = $sample['title'];
				$module->url[$lang['id_lang']] = $sample['url'];
            }
			$module->location = $sample['location'];
			$module->active = $sample['active'];
			$module->span = $sample['span'];
			$module->position = $k;
			$return &= $module->add();
            if($return && $module->id)
            {
    			Db::getInstance()->insert('st_easy_content_shop', array(
    				'id_st_easy_content' => (int)$module->id,
    				'id_shop' => (int)$id_shop,
    			));
            }
		}
		return $return;
    }

	public function uninstall()
	{
	    $this->clearEasyContentCache();
		// Delete configuration
		return $this->uninstallDB() && parent::uninstall();
	}

	public function uninstallDB()
	{
		return Db::getInstance()->execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'st_easy_content`,`'._DB_PREFIX_.'st_easy_content_lang`,`'._DB_PREFIX_.'st_easy_content_shop`');
	}
    
	public function getContent()
	{
		$this->context->controller->addJS($this->_path. 'views/js/admin.js');
		$id_st_easy_content = (int)Tools::getValue('id_st_easy_content');
		if (isset($_POST['savesteasycontent']))
		{
			if ($id_st_easy_content)
				$easy_content = new StEasyContentClass((int)$id_st_easy_content);
			else
				$easy_content = new StEasyContentClass();
                
			$easy_content->copyFromPost();
            
            $error = array();
            $defaultLanguage = new Language((int)(Configuration::get('PS_LANG_DEFAULT')));
            if(!$easy_content->text[$defaultLanguage->id])
                $error[] = $this->displayError($this->l('The field "Content" is required at least in '.$defaultLanguage->name));

			if (!count($error) && $easy_content->validateFields(false) && $easy_content->validateFieldsLang(false))
            {
                if($easy_content->save())
                {
                    Db::getInstance()->execute('DELETE FROM '._DB_PREFIX_.'st_easy_content_shop WHERE id_st_easy_content='.(int)$easy_content->id);
                    if (!Shop::isFeatureActive())
            		{
            			Db::getInstance()->insert('st_easy_content_shop', array(
            				'id_st_easy_content' => (int)$easy_content->id,
            				'id_shop' => (int)Context::getContext()->shop->id,
            			));
            		}
            		else
            		{
            			$assos_shop = Tools::getValue('checkBoxShopAsso_st_easy_content');
            			if (empty($assos_shop))
            				return false;
            			foreach ($assos_shop as $id_shop => $row)
            				Db::getInstance()->insert('st_easy_content_shop', array(
            					'id_st_easy_content' => (int)$easy_content->id,
            					'id_shop' => (int)$id_shop,
            				));
            		}
                    $this->_html .= $this->displayConfirmation($this->l('Easy Content').' '.($id_st_easy_content ? $this->l('updated') : $this->l('added')));
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during easy Content').' '.($id_st_easy_content ? $this->l('updating') : $this->l('creation')));
            }
			else
                $this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
            $this->clearEasyContentCache();
		}
	    if ((Tools::isSubmit('statussteasycontent')))
        {
            $easy_content = new StEasyContentClass((int)$id_st_easy_content);
            if($easy_content->id && $easy_content->toggleStatus())
            {
                $this->clearEasyContentCache();
                //$this->_html .= $this->displayConfirmation($this->l('The status has been updated successfully.')); 
			    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            } 
            else
                $this->_html .= $this->displayError($this->l('An error occurred while updating the status.'));
        }
		
		if (Tools::isSubmit('updatesteasycontent') || Tools::isSubmit('addsteasycontent'))
		{
			$helper = $this->initForm();
			return $this->_html.$helper->generateForm($this->fields_form);
		}
		else if (Tools::isSubmit('deletesteasycontent'))
		{
			$easy_content = new StEasyContentClass((int)$id_st_easy_content);
			if ($easy_content->id)
                $easy_content->delete();
            $this->clearEasyContentCache();
			Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
		}
		else
		{
			$helper = $this->initList();
			return $this->_html.$helper->generateList(StEasyContentClass::getListContent((int)$this->context->language->id), $this->fields_list);
		}
	}

	protected function initForm()
	{
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->displayName,
			),
			'input' => array(
				array(
					'type' => 'select',
					'label' => $this->l('Hook into:'),
					'name' => 'location',
					'id' => 'easy_content_location',
                    'required' => true,
					'onchange' => 'checkEasyContetHookInto(this.value);',
					'options' => array(
						'query' => self::$location,
        				'id' => 'id',
        				'name' => 'name',
						'default' => array(
							'value' => 0,
							'label' => $this->l('--')
						)
					),
                    'hint' => '<img src="'.$this->_path.'views/img/hook_into_hint.jpg" />',
				),
				array(
					'type' => 'select',
					'label' => $this->l('Block width:'),
					'name' => 'span',
					'id' => 'easy_content_span',
					'options' => array(
						'query' => self::$span,
        				'id' => 'id',
        				'name' => 'name',
						'default' => array(
							'value' => 0,
							'label' => $this->l('--')
						)
					),
                    'desc' => $this->l('Only for Footer top,Footer,Footer secondary'),
				),
                array(
					'type' => 'text',
					'label' => $this->l('Title:'),
					'name' => 'title',
					'lang' => true,
					'size' => 64,
				),
				array(
					'type' => 'text',
					'label' => $this->l('Link:'),
					'name' => 'url',
					'lang' => true,
					'size' => 64,
				),
				array(
					'type' => 'textarea',
					'label' => $this->l('Content:'),
					'lang' => true,
					'name' => 'text',
					'cols' => 40,
					'rows' => 10,
					'autoload_rte' => true,
                    'required' => true,
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Hide content on mobile devices:'),
					'name' => 'hide_on_mobile',
                    'default_value' => 0,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'hide_on_mobile_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'hide_on_mobile_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
                    'desc' => $this->l('if set to Yes, slideshow will be hidden on mobile devices (if screen width is less than 768 pixels).'),
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
			)
		);

		if (Shop::isFeatureActive())
		{
			$this->fields_form[0]['form']['input'][] = array(
				'type' => 'shop',
				'label' => $this->l('Shop association:'),
				'name' => 'checkBoxShopAsso',
			);
		}

        $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'steasycontent';
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
		$helper->submit_action = 'savesteasycontent';
		$helper->table = StEasyContentClass::$definition['table'];
		$helper->identifier = StEasyContentClass::$definition['primary'];
                
        $id_st_easy_content = (int)Tools::getValue('id_st_easy_content');
		$easy_content = new StEasyContentClass($id_st_easy_content);
        if($easy_content->id)
        {
            $helper->id = $easy_content->id;
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_easy_content');
        }
        $helper->fields_value = $this->getFieldsValueSt($easy_content);  
        
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
    
    public static function displayLocation($value, $tr)
	{
	    if(isset(self::$location[$value]))
		   $result =  self::$location[$value]['name'];
        else
        {
            $module = new StEasyContent();
            $result = $module->l('--');
        }
        return $result;
	}
	
	protected function initList()
	{
		$this->fields_list = array(
			'id_st_easy_content' => array(
				'title' => $this->l('Id'),
				'width' => 120,
				'type' => 'text',
			),
			'title' => array(
				'title' => $this->l('Title'),
				'width' => 140,
				'type' => 'text',
			),
			'location' => array(
				'title' => $this->l('Hook into'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayLocation',
				'callback_object' => 'StEasyContent',
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
		$helper->identifier = 'id_st_easy_content';
		$helper->actions = array('edit', 'delete');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&add'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new')
		);

		$helper->title = $this->displayName;
		$helper->table = $this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
	}
    
    private function _prepareHook($location)
    {
        $easy_content = StEasyContentClass::getListContent($this->context->language->id,$location,1);
        if(!$easy_content)
            return false;
		$this->smarty->assign(array('easy_content' => $easy_content));
        return true;
    }
	/**
	* Returns module content for left column
	*
	* @param array $params Parameters
	* @return string Content
	*
	*/
	public function hookDisplayLeftColumn($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(2)))
    		if(!$this->_prepareHook(2))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(2));
	}
    
	public function hookDisplayRightColumn($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(10)))
    		if(!$this->_prepareHook(10))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(10));
	}
    
	public function hookDisplayFooterTop($params)
	{
		if (!$this->isCached('steasycontent-footer.tpl', $this->stGetCacheId(13,'location','steasycontent-footer')))
    		if(!$this->_prepareHook(13))
                return false;
		return $this->display(__FILE__, 'steasycontent-footer.tpl', $this->stGetCacheId(13,'location','steasycontent-footer'));
	}

	public function hookDisplayFooter($params)
	{
		if (!$this->isCached('steasycontent-footer.tpl', $this->stGetCacheId(3,'location','steasycontent-footer')))
    		if(!$this->_prepareHook(3))
                return false;
		return $this->display(__FILE__, 'steasycontent-footer.tpl', $this->stGetCacheId(3,'location','steasycontent-footer'));
	}

	public function hookDisplayFooterSecondary($params)
	{
		if (!$this->isCached('steasycontent-footer.tpl', $this->stGetCacheId(12,'location','steasycontent-footer')))
    		if(!$this->_prepareHook(12))
                return false;
		return $this->display(__FILE__, 'steasycontent-footer.tpl', $this->stGetCacheId(12,'location','steasycontent-footer'));
	}

	public function hookDisplayTopSecondary($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(18)))
    		if(!$this->_prepareHook(18))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(18));
	}
    
	public function hookDisplayHome($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(1)))
    		if(!$this->_prepareHook(1))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(1));
	}
    
	public function hookDisplayHomeTop($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(16)))
    		if(!$this->_prepareHook(16))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(16));
	}
    
	public function hookDisplayHomeBottom($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(17)))
    		if(!$this->_prepareHook(17))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(17));
	}

	public function hookDisplayHomeSecondaryLeft($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(14)))
    		if(!$this->_prepareHook(14))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(14));
	}

	public function hookDisplayHomeSecondaryRight($params)
	{
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(15)))
    		if(!$this->_prepareHook(15))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(15));
	}

    public function hookDisplayProductSecondaryColumn($params)
    {
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(4)))
    		if(!$this->_prepareHook(4))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(4));
    }
    public function hookDisplayFooterProduct($params)
    {
        if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(24)))
            if(!$this->_prepareHook(24,1))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(24));
    }
    public function hookDisplayCategoryHeader($params)
    {
        if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(25)))
            if(!$this->_prepareHook(25,1))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(25));
    }
    public function hookDisplayCategoryFooter($params)
    {
        if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(26)))
            if(!$this->_prepareHook(26,1))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(26));
    }
    
    public function hookDisplayTopLeft($params)
    {
        if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(27)))
            if(!$this->_prepareHook(27,1))
                return false;
        $this->smarty->assign('is_inline_content',true);
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(27));
    }
    
    public function hookDisplayAnywhere($params)
    {
	    if(!isset($params['caller']) || $params['caller']!=$this->name)
            return false;
        if(isset($params['identify']) && Validate::isInt($params['identify']))
        {
    		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId($params['identify'],'id')))
            {
                $easy_content = StEasyContentClass::getById($this->context->language->id,$params['identify']);
                if(!$easy_content)
                    return false;
        		$this->smarty->assign(array('easy_content' => $easy_content));
            }
		    return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId($params['identify'],'id'));
        }
        elseif(isset($params['location']) && array_key_exists($params['location'],self::$location))
        {
    		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId($params['location'])))
        		if(!$this->_prepareHook($params['location']))
                    return false;
		    return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId($params['location']));
        }
        else
            return false;
    }
	public function hookDisplayStBlogHome($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(19)))
    		if(!$this->_prepareHook(19))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(19));
	}
    
	public function hookDisplayStBlogHomeTop($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(20)))
    		if(!$this->_prepareHook(20))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(20));
	}
    
	public function hookDisplayStBlogHomeBottom($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(21)))
    		if(!$this->_prepareHook(21))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(21));
	}

	public function hookDisplayStBlogLeftColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(22)))
    		if(!$this->_prepareHook(22))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(22));
	}
	public function hookDisplayStBlogRightColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('steasycontent.tpl', $this->stGetCacheId(23)))
    		if(!$this->_prepareHook(23))
                return false;
		return $this->display(__FILE__, 'steasycontent.tpl', $this->stGetCacheId(23));
	}
    
	public function hookActionShopDataDuplication($params)
	{
        Db::getInstance()->execute('
        INSERT IGNORE INTO '._DB_PREFIX_.'st_easy_content_shop (id_st_easy_content, id_shop)
        SELECT id_st_easy_content, '.(int)$params['new_id_shop'].'
        FROM '._DB_PREFIX_.'st_easy_content_shop
        WHERE id_shop = '.(int)$params['old_id_shop']);
        $this->clearEasyContentCache();
    }
	protected function stGetCacheId($key,$type='location',$name = null)
	{
		$cache_id = parent::getCacheId($name);
		return $cache_id.'_'.$key.'_'.$type;
	}
	private function clearEasyContentCache()
	{
		$this->_clearCache('steasycontent.tpl');
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(1));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(2));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(4));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(10));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(14));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(15));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(16));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(17));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(18));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(19));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(20));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(21));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(22));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(23));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(24));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(25));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(26));
		$this->_clearCache('steasycontent.tpl', $this->stGetCacheId(27));
		$this->_clearCache('steasycontent-footer.tpl');
		$this->_clearCache('steasycontent-footer.tpl',$this->stGetCacheId(13,'location','steasycontent-footer'));
		$this->_clearCache('steasycontent-footer.tpl',$this->stGetCacheId(3,'location','steasycontent-footer'));
		$this->_clearCache('steasycontent-footer.tpl',$this->stGetCacheId(12,'location','steasycontent-footer'));
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