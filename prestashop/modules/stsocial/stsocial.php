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

class StSocial extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
	public function __construct()
	{
		$this->name          = 'stsocial';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
		$this->displayName = $this->l('Social networking block');
		$this->description = $this->l('Allows you to add information about your brand\'s social networking sites.');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayHeader')
			|| !$this->registerHook('displayFooter')
            || !Configuration::updateValue('ST_SOCIAL_COLOR', '#666666')
            || !Configuration::updateValue('ST_SOCIAL_HOVER_COLOR', '#00A161')
            || !Configuration::updateValue('ST_SOCIAL_BG', '')
            || !Configuration::updateValue('ST_SOCIAL_HOVER_BG', '')
            || !Configuration::updateValue('ST_SOCIAL_FACEBOOK', 'http://www.facebook.com/prestashop')
            || !Configuration::updateValue('ST_SOCIAL_TWITTER', 'http://www.twitter.com/prestashop')
            || !Configuration::updateValue('ST_SOCIAL_RSS', '')
            || !Configuration::updateValue('ST_SOCIAL_YOUTUBE', 'http://www.youtube.com/prestashop')
            || !Configuration::updateValue('ST_SOCIAL_PINTEREST', 'http://www.pinterest.com/prestashop')
            || !Configuration::updateValue('ST_SOCIAL_GOOGLE', '')
            || !Configuration::updateValue('ST_SOCIAL_WORDPRESS', '')
            || !Configuration::updateValue('ST_SOCIAL_DRUPAL', '')
            || !Configuration::updateValue('ST_SOCIAL_VIMEO', '')
            || !Configuration::updateValue('ST_SOCIAL_FLICKR', '')
            || !Configuration::updateValue('ST_SOCIAL_DIGG', '')
            || !Configuration::updateValue('ST_SOCIAL_EBAY', '')
            || !Configuration::updateValue('ST_SOCIAL_AMAZON', '')
            || !Configuration::updateValue('ST_SOCIAL_INSTAGRAM', '') 
            || !Configuration::updateValue('ST_SOCIAL_LINKEDIN', '')
            || !Configuration::updateValue('ST_SOCIAL_NEW_WINDOW', '')
            )
			return false;
		$this->_clearCache('stsocial.tpl');  
		$this->_clearCache('stsocial_column.tpl');   
		return true;
	}
	
	public function uninstall()
	{
		$this->_clearCache('stsocial.tpl');  
		$this->_clearCache('stsocial_column.tpl');   
		return parent::uninstall();
	}

                
    public function getContent()
	{
		if (isset($_POST['savestsocial']))
		{
            if (!Configuration::updateValue('ST_SOCIAL_COLOR', Tools::getValue('social_color'))
                || !Configuration::updateValue('ST_SOCIAL_HOVER_COLOR', Tools::getValue('social_hover_color'))
                || !Configuration::updateValue('ST_SOCIAL_BG', Tools::getValue('social_bg'))
                || !Configuration::updateValue('ST_SOCIAL_HOVER_BG', Tools::getValue('social_hover_bg'))
                || !Configuration::updateValue('ST_SOCIAL_FACEBOOK', Tools::getValue('facebook_url'))
                || !Configuration::updateValue('ST_SOCIAL_TWITTER', Tools::getValue('twitter_url'))
                || !Configuration::updateValue('ST_SOCIAL_RSS', Tools::getValue('rss_url'))
                || !Configuration::updateValue('ST_SOCIAL_YOUTUBE', Tools::getValue('youtube_url'))
                || !Configuration::updateValue('ST_SOCIAL_PINTEREST', Tools::getValue('pinterest_url'))
                || !Configuration::updateValue('ST_SOCIAL_GOOGLE', Tools::getValue('google_url'))
                || !Configuration::updateValue('ST_SOCIAL_WORDPRESS', Tools::getValue('wordpress_url'))
                || !Configuration::updateValue('ST_SOCIAL_DRUPAL', Tools::getValue('drupal_url'))
                || !Configuration::updateValue('ST_SOCIAL_VIMEO', Tools::getValue('vimeo_url'))
                || !Configuration::updateValue('ST_SOCIAL_FLICKR', Tools::getValue('flickr_url'))
                || !Configuration::updateValue('ST_SOCIAL_DIGG', Tools::getValue('digg_url'))
                || !Configuration::updateValue('ST_SOCIAL_EBAY', Tools::getValue('eaby_url'))
                || !Configuration::updateValue('ST_SOCIAL_AMAZON', Tools::getValue('amazon_url'))
                || !Configuration::updateValue('ST_SOCIAL_INSTAGRAM', Tools::getValue('instagram_url'))
                || !Configuration::updateValue('ST_SOCIAL_LINKEDIN', Tools::getValue('linkedin_url'))
                || !Configuration::updateValue('ST_SOCIAL_NEW_WINDOW', (int)Tools::getValue('new_window'))
            )
                $this->_html .= $this->displayError($this->l('Cannot update settings'));
            else
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));
            	
			$this->_clearCache('stsocial.tpl');  
			$this->_clearCache('stsocial_column.tpl');            
        }
		$helper = $this->initForm();
        $helper->fields_value['social_color'] = Configuration::get('ST_SOCIAL_COLOR');
        $helper->fields_value['social_hover_color'] = Configuration::get('ST_SOCIAL_HOVER_COLOR');
        $helper->fields_value['social_bg'] = Configuration::get('ST_SOCIAL_BG');
        $helper->fields_value['social_hover_bg'] = Configuration::get('ST_SOCIAL_HOVER_BG');
        $helper->fields_value['facebook_url'] = Configuration::get('ST_SOCIAL_FACEBOOK');
        $helper->fields_value['twitter_url'] = Configuration::get('ST_SOCIAL_TWITTER');
        $helper->fields_value['rss_url'] = Configuration::get('ST_SOCIAL_RSS');
        $helper->fields_value['youtube_url'] = Configuration::get('ST_SOCIAL_YOUTUBE');
        $helper->fields_value['pinterest_url'] = Configuration::get('ST_SOCIAL_PINTEREST');
        $helper->fields_value['google_url'] = Configuration::get('ST_SOCIAL_GOOGLE');
        $helper->fields_value['wordpress_url'] = Configuration::get('ST_SOCIAL_WORDPRESS');
        $helper->fields_value['drupal_url'] = Configuration::get('ST_SOCIAL_DRUPAL');
        $helper->fields_value['vimeo_url'] = Configuration::get('ST_SOCIAL_VIMEO');
        $helper->fields_value['flickr_url'] = Configuration::get('ST_SOCIAL_FLICKR');
        $helper->fields_value['digg_url'] = Configuration::get('ST_SOCIAL_DIGG');
        $helper->fields_value['eaby_url'] = Configuration::get('ST_SOCIAL_EBAY');
        $helper->fields_value['amazon_url'] = Configuration::get('ST_SOCIAL_AMAZON');
        $helper->fields_value['instagram_url'] = Configuration::get('ST_SOCIAL_INSTAGRAM');
        $helper->fields_value['linkedin_url'] = Configuration::get('ST_SOCIAL_LINKEDIN');
        $helper->fields_value['new_window'] = Configuration::get('ST_SOCIAL_NEW_WINDOW');
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    protected function initForm()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');

		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->displayName,
			),
			'input' => array(
				 array(
					'type' => 'color',
					'label' => $this->l('Icon text color:'),
					'name' => 'social_color',
					'class' => 'color',
					'size' => 20,
			     ),
				 array(
					'type' => 'color',
					'label' => $this->l('Icon hover color:'),
					'name' => 'social_hover_color',
					'class' => 'color',
					'size' => 20,
			     ),
				 array(
					'type' => 'color',
					'label' => $this->l('Icon background:'),
					'name' => 'social_bg',
					'class' => 'color',
					'size' => 20,
			     ),
				 array(
					'type' => 'color',
					'label' => $this->l('Icon hover background:'),
					'name' => 'social_hover_bg',
					'class' => 'color',
					'size' => 20,
			     ),
                array(
					'type' => 'radio',
					'label' => $this->l('Open in a new window:'),
					'name' => 'new_window',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'new_window_on',
							'value' => 1,
							'label' => $this->l('Yes')),
						array(
							'id' => 'new_window_off',
							'value' => 0,
							'label' => $this->l('No')),
					),
				), 
                array(
					'type' => 'text',
					'label' => $this->l('Your Facebook Link:'),
					'name' => 'facebook_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Twitter Link:'),
					'name' => 'twitter_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your RSS Link:'),
					'name' => 'rss_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Youtube Link:'),
					'name' => 'youtube_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Pinterest Link:'),
					'name' => 'pinterest_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Google Link:'),
					'name' => 'google_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Wordpress Link:'),
					'name' => 'wordpress_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Drupal Link:'),
					'name' => 'drupal_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Vimeo Link:'),
					'name' => 'vimeo_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Flickr Link:'),
					'name' => 'flickr_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Digg Link:'),
					'name' => 'digg_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Ebay Link:'),
					'name' => 'eaby_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Amazon Link:'),
					'name' => 'amazon_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your Instagram Link:'),
					'name' => 'instagram_url',
				),
                array(
					'type' => 'text',
					'label' => $this->l('Your LinkedIn Link:'),
					'name' => 'linkedin_url',
				),
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			)
		);

		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'savestsocial';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savestsocial';
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
		$this->context->controller->addCSS($this->_path.'views/css/stsocial.css');
        $this->smarty->assign(array(
    			'social_color' => Configuration::get('ST_SOCIAL_COLOR'),
    			'social_hover_color' => Configuration::get('ST_SOCIAL_HOVER_COLOR'),
    			'social_bg' => Configuration::get('ST_SOCIAL_BG'),
    			'social_hover_bg' => Configuration::get('ST_SOCIAL_HOVER_BG'),
    		));
		return $this->display(__FILE__, 'header.tpl');
    }
    

    private function _prepareHook()
    {
        $this->smarty->assign(array(
			'facebook_url' => Configuration::get('ST_SOCIAL_FACEBOOK'),
			'twitter_url' => Configuration::get('ST_SOCIAL_TWITTER'),
			'rss_url' => Configuration::get('ST_SOCIAL_RSS'),
			'youtube_url' => Configuration::get('ST_SOCIAL_YOUTUBE'),
			'pinterest_url' => Configuration::get('ST_SOCIAL_PINTEREST'),
			'google_url' => Configuration::get('ST_SOCIAL_GOOGLE'),
			'wordpress_url' => Configuration::get('ST_SOCIAL_WORDPRESS'),
			'drupal_url' => Configuration::get('ST_SOCIAL_DRUPAL'),
			'vimeo_url' => Configuration::get('ST_SOCIAL_VIMEO'),
			'flickr_url' => Configuration::get('ST_SOCIAL_FLICKR'),
			'digg_url' => Configuration::get('ST_SOCIAL_DIGG'),
			'eaby_url' => Configuration::get('ST_SOCIAL_EBAY'),
			'amazon_url' => Configuration::get('ST_SOCIAL_AMAZON'),
			'instagram_url' => Configuration::get('ST_SOCIAL_INSTAGRAM'),
			'linkedin_url' => Configuration::get('ST_SOCIAL_LINKEDIN'),
			'social_new_window' => Configuration::get('ST_SOCIAL_NEW_WINDOW'),
		));
        return true;
    }
    
    public function hookDisplayFooter($params)
    {
		if (!$this->isCached('stsocial.tpl', $this->getCacheId('stsocial')))
            $this->_prepareHook();
		return $this->display(__FILE__, 'stsocial.tpl', $this->getCacheId('stsocial'));
    }
    
    public function hookDisplayFooterSecondary($params)
    {
        return $this->hookDisplayFooter($params);
    }
    
    public function hookDisplayFooterTop($params)
    {
        return $this->hookDisplayFooter($params);
    }

	public function hookDisplayLeftColumn($params)
	{
		if (!$this->isCached('stsocial-column.tpl', $this->getCacheId('stsocial-column')))
            $this->_prepareHook();
		return $this->display(__FILE__, 'stsocial-column.tpl', $this->getCacheId('stsocial-column'));
	}
	public function hookDisplayRightColumn($params)
	{
	   return $this->hookDisplayLeftColumn($params);
	}
	public function hookDisplayStBlogLeftColumn($params)
	{
	   return $this->hookDisplayLeftColumn($params);
	}
	public function hookDisplayStBlogRightColumn($params)
	{
	   return $this->hookDisplayLeftColumn($params);
	}
	public function hookDisplayTopBar($params)
	{
		if (!$this->isCached('stsocial-topbar.tpl', $this->getCacheId('stsocial-topbar')))
            $this->_prepareHook();
		return $this->display(__FILE__, 'stsocial-topbar.tpl', $this->getCacheId('stsocial-topbar'));
	}
}