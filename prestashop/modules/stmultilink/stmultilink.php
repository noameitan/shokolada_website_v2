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

include_once(dirname(__FILE__).'/StMultiLinkGroup.php');
include_once(dirname(__FILE__).'/StMultiLinkClass.php');

class StMultiLink extends Module
{
	/* @var boolean error */
	protected $error = false;
    public static $location = array(
        1 => array('id' =>1 , 'name' => 'Top bar(align right)'),
        9 => array('id' =>9 , 'name' => 'Top bar(align left)'),
        2 => array('id' =>2 , 'name' => 'Left column'),
        4 => array('id' =>4 , 'name' => 'Right column'),
        6 => array('id' =>6 , 'name' => 'Footer top'),
        3 => array('id' =>3 , 'name' => 'Footer'),
        5 => array('id' =>5 , 'name' => 'Footer secondary'),
        7 => array('id' =>7 , 'name' => 'Blog left column'),
        8 => array('id' =>8 , 'name' => 'Blog right column'),
    );

    public  $fields_list;
    public  $fields_list_link;
    public  $fields_value;
    public  $fields_value_link;
    public  $fields_form;
    public  $fields_form_link;
	private $_html = '';
	private $spacer_size = '5';
	private $pattern = '/^(\d+)\_(\d+)$/';
    
	public function __construct()
	{
		$this->name          = 'stmultilink';
		$this->tab           = 'front_office_features';
		$this->version       = '1.7.9';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;

	 	parent::__construct();

		$this->displayName   = $this->l('Custom Links');
		$this->description   = $this->l('This module is used to manage and display collections of links to your shop.');
	}
	
	public function install()
	{
		$res = parent::install() &&
			$this->installDB() &&
			$this->registerHook('displayTopBar') &&
			$this->registerHook('displayLeftColumn') &&
			$this->registerHook('displayRightColumn') &&
			$this->registerHook('displayFooterTop') &&
			$this->registerHook('displayFooter') &&
			$this->registerHook('displayAnywhere') &&
			$this->registerHook('displayFooterSecondary') &&
			$this->registerHook('actionObjectCmsUpdateAfter') &&
			$this->registerHook('actionObjectCmsDeleteAfter') &&
			$this->registerHook('actionObjectSupplierUpdateAfter') &&
			$this->registerHook('actionObjectSupplierDeleteAfter') &&
			$this->registerHook('actionObjectManufacturerUpdateAfter') &&
			$this->registerHook('actionObjectManufacturerDeleteAfter') &&
			$this->registerHook('actionShopDataDuplication') &&
			$this->registerHook('displayStBlogLeftColumn') && 
			$this->registerHook('displayStBlogRightColumn');
		if ($res)
			foreach(Shop::getShops(false) as $shop)
				$res &= $this->sampleData($shop['id_shop']);
        return $res;
	}
    
    private function installDB()
	{
		$return = (bool)Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_multi_link` (                  
              `id_st_multi_link` int(10) NOT NULL AUTO_INCREMENT,   
              `id_cms` int(10) unsigned NOT NULL DEFAULT 0,
              `id_cms_category` int(10) unsigned NOT NULL DEFAULT 0,
              `id_supplier` int(10) unsigned NOT NULL DEFAULT 0,
              `id_manufacturer` int(10) unsigned NOT NULL DEFAULT 0,       
              `pagename` varchar(255) DEFAULT NULL,                       
              `new_window` tinyint(1) NOT NULL,                      
              `id_st_multi_link_group` int(10) NOT NULL,    
              `active` tinyint(1) unsigned NOT NULL,                
              `position` int(10) unsigned NOT NULL DEFAULT 0,  
              PRIMARY KEY (`id_st_multi_link`)     
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_multi_link_lang` (
               `id_st_multi_link` int(10) NOT NULL,    
               `id_lang` int(10) NOT NULL,            
               `name` varchar(255) NOT NULL,    
               `url` varchar(255) DEFAULT NULL,            
               PRIMARY KEY (`id_st_multi_link`,`id_lang`)             
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
            
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_multi_link_group` (                        
                `id_st_multi_link_group` int(10) NOT NULL AUTO_INCREMENT,  
                `location` int(10) unsigned NOT NULL DEFAULT 0,
                `active` tinyint(1) unsigned NOT NULL,    
                `position` int(10) unsigned NOT NULL DEFAULT 0,      
                `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT 0,                
                PRIMARY KEY (`id_st_multi_link_group`)             
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
            
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_multi_link_group_lang` (     
                 `id_st_multi_link_group` int(10) NOT NULL,    
                 `id_lang` int(10) NOT NULL,        
                 `name` varchar(255) DEFAULT NULL,  
                 `url` varchar(255) DEFAULT NULL,                                 
                 PRIMARY KEY (`id_st_multi_link_group`,`id_lang`)    
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
                      
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_multi_link_group_shop` (
                 `id_st_multi_link_group` int(10) NOT NULL,  
                 `id_shop` int(11) NOT NULL,                   
                PRIMARY KEY (`id_st_multi_link_group`,`id_shop`),    
                KEY `id_shop` (`id_shop`)       
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		return $return;
	}
    public function sampleData($id_shop)
    {
        
        $return = true;
		$samples = array(
			array('id_st_multi_link_group' => '', 
                'location' => 1, 
                'name' => $this->l('Help'),
                'url' => '', 
                'active' => 1,
                'hide_on_mobile' => 1,
                'child' => array(
        			array('id_cms' => 0, 'pagename' => 'contact'),
        			array('id_cms' => 1, 'pagename' => ''),
        		),
            ),
			array('id_st_multi_link_group' => '', 
                'location' => 5, 
                'name' => $this->l('Information'),
                'url' => '', 
                'active' => 0,
                'hide_on_mobile' => 0,
                'child' => array(
        			array('id_cms' => 1, 'pagename' => ''),
        			array('id_cms' => 2, 'pagename' => ''),
        			array('id_cms' => 5, 'pagename' => ''),
        		),
            ),
			array('id_st_multi_link_group' => '', 
                'location' => 3, 
                'name' => $this->l('Catalog'),
                'url' => '', 
                'active' => 1,
                'hide_on_mobile' => 0,
                'child' => array(
        			array('id_cms' => 0, 'pagename' => 'prices-drop'),
        			array('id_cms' => 0, 'pagename' => 'new-products'),
        			array('id_cms' => 0, 'pagename' => 'best-sales'),
        		),
            ),
			array('id_st_multi_link_group' => '', 
                'location' => 3, 
                'name' => $this->l('Support'),
                'url' => '', 
                'active' => 1,
                'hide_on_mobile' => 0,
                'child' => array(
        			array('id_cms' => 0, 'pagename' => 'stores'),
        			array('id_cms' => 0, 'pagename' => 'contact'),
        			array('id_cms' => 0, 'pagename' => 'sitemap'),
        		),
            ),
			array('id_st_multi_link_group' => '', 
                'location' => 5, 
                'name' => $this->l('My Account'),
                'url' => '', 
                'active' => 0,
                'hide_on_mobile' => 0,
                'child' => array(
        			array('id_cms' => 0, 'pagename' => 'my-account'),
        			array('id_cms' => 0, 'pagename' => 'history'),
        			array('id_cms' => 0, 'pagename' => 'addresses'),
        		),
            ),
			array('id_st_multi_link_group' => '', 
                'location' => 6, 
                'name' => $this->l('Information'),
                'url' => '', 
                'active' => 0,
                'hide_on_mobile' => 0,
                'child' => array(
        			array('id_cms' => 0, 'pagename' => 'prices-drop'),
        			array('id_cms' => 0, 'pagename' => 'new-products'),
        			array('id_cms' => 0, 'pagename' => 'best-sales'),
        			array('id_cms' => 0, 'pagename' => 'stores'),
        			array('id_cms' => 0, 'pagename' => 'contact'),
        			array('id_cms' => 0, 'pagename' => 'sitemap'),
        			array('id_cms' => 1, 'pagename' => ''),
        			array('id_cms' => 2, 'pagename' => ''),
        			array('id_cms' => 5, 'pagename' => ''),
        		),
            ),
			array('id_st_multi_link_group' => '', 
                'location' => 9, 
                'name' => $this->l('Call +001 1234 4321'),
                'url' => '', 
                'active' => 0,
                'hide_on_mobile' => 0,
                'child' => array(
        		),
            ),
		);
		foreach($samples as $k=>&$sample)
		{
			$module = new StMultiLinkGroup();
			$module->location = (int)$sample['location'];
			$module->active = (int)$sample['active'];
			$module->hide_on_mobile = (int)$sample['hide_on_mobile'];
			$module->position = $k;
			foreach (Language::getLanguages(false) as $lang)
            {
				$module->name[$lang['id_lang']] = $sample['name'];
				$module->url[$lang['id_lang']] = $sample['url'];
            }
            
			$return &= $module->add();
            //
            if($return && $module->id)
            {
                $sample['id_st_multi_link_group'] = $module->id;
    			Db::getInstance()->insert('st_multi_link_group_shop', array(
    				'id_st_multi_link_group' => (int)$module->id,
    				'id_shop' => (int)$id_shop,
    			));
            }
		}
        
        foreach($samples as $sp)
		{
            if(!$sp['id_st_multi_link_group'])
                continue;
		    foreach($sp['child'] as $k=>$v)
    		{
    			$module = new StMultiLinkClass();
    			$module->id_st_multi_link_group = $sp['id_st_multi_link_group'];
    			$module->id_cms = $v['id_cms'];
    			$module->pagename = $v['pagename'];
    			$module->active = 1;
    			$module->position = $k;
    			$return &= $module->add();
    		}
		}
		return $return;
    }
	private function uninstallDB()
	{
		return Db::getInstance()->execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'st_multi_link`,`'._DB_PREFIX_.'st_multi_link_lang`,`'._DB_PREFIX_.'st_multi_link_group`,`'._DB_PREFIX_.'st_multi_link_group_lang`,`'._DB_PREFIX_.'st_multi_link_group_shop`');
	}
	
	public function uninstall()
	{
	    $this->clearMultiLinkCache();
		if (!parent::uninstall() ||
			!$this->uninstallDB())
			return false;
		return true;
	}

    private function _prepareHook($identify,$type=1)
    {
        $link_groups = StMultiLinkGroup::getLinkGroup($identify,$type,$this->context->language->id);
        if(!is_array($link_groups) || !count($link_groups))
            return false;
        foreach($link_groups as &$v)
        {
            $links = StMultiLinkClass::getAll($v['id_st_multi_link_group'],$this->context->language->id,1);  
            $v['links'] = $this->_prepareLinks($links);
        }
        $this->smarty->assign(array(
			'link_groups' => $link_groups,
		));
        return true;
    }
    private function _prepareLinks($links)
    {
        $result = array();
        foreach($links as $m)
        {
            if($info = self::getLinkInfo($m));
                $result[] = $info;
        }
        return $result;
    }
    
    public static function getLinkInfo($m)
    {
        $id_lang = (int)Context::getContext()->language->id;
		$theLink = new Link;
        
        $result = array();
        if($m['pagename'])
        {
            $catalog_mod = (bool)Configuration::get('PS_CATALOG_MODE') || !(bool)Group::getCurrent()->show_prices;
            
			$voucherAllowed = CartRule::isFeatureActive();
			$returnAllowed = (int)(Configuration::get('PS_ORDER_RETURN'));
            
            if($m['pagename'] == 'prices-drop' && !$catalog_mod)
                $link = $theLink->getPageLink($m['pagename']);                
            if($m['pagename'] == 'new-products')
                $link = $theLink->getPageLink($m['pagename']);
            if($m['pagename'] == 'best-sales' && !$catalog_mod)
                $link = $theLink->getPageLink($m['pagename']);
            if($m['pagename'] == 'stores')
                $link = $theLink->getPageLink($m['pagename']);
            if($m['pagename'] == 'contact')
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'sitemap')
                $link = $theLink->getPageLink($m['pagename']);
                
            if($m['pagename'] == 'my-account')
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'history')
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'order-follow' && $returnAllowed)
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'order-slip')
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'addresses')
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'identity')
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'discount' && $voucherAllowed)
                $link = $theLink->getPageLink($m['pagename'], true);
            if($m['pagename'] == 'module-stblog-rss')
                $link = $theLink->getModuleLink('stblog','rss');
            //
            if(!isset($link)) 
                return false;
            //
            $module = new StMultiLink(); 
            
            $information = $module->getInformationLinks();
            foreach($information as $v)
                if($v['id']==$m['pagename'])
                    $result = array(
                        'url' => $link,
                        'title' => $v['title'],
                        'label' => $v['name'],
                        'new_window' => $m['new_window'],
                    );
            $myAccount = $module->getMyAccountLinks();    
            foreach($myAccount as $v)
                if($v['id']==$m['pagename'])
                    $result = array(
                        'url' => $link,
                        'title' => $v['title'],
                        'label' => $v['name'],
                        'new_window' => $m['new_window'],
                    ); 
            $blog = $module->getBlogLinks();    
            foreach($blog as $v)
                if($v['id']==$m['pagename'])
                    $result = array(
                        'url' => $link,
                        'title' => $v['title'],
                        'label' => $v['name'],
                        'new_window' => $m['new_window'],
                    ); 
        }
        elseif($m['id_supplier'])
        {
            $supplier = new Supplier((int)$m['id_supplier'], (int)$id_lang);
			if (Validate::isLoadedObject($supplier))
            {
                $result = array(
                    'url' => $theLink->getSupplierLink((int)$supplier->id, $supplier->link_rewrite),
                    'title' => $supplier->name,
                    'label' => $supplier->name,
                    'new_window' => $m['new_window'],
                ); 
            }
        }
        elseif($m['id_manufacturer'])
        {
            $manufacturer = new Manufacturer((int)$m['id_manufacturer'], (int)$id_lang);
			if (Validate::isLoadedObject($manufacturer))
            {
                if (intval(Configuration::get('PS_REWRITING_SETTINGS')))
					$manufacturer->link_rewrite = Tools::link_rewrite($manufacturer->name, false);
				else
					$manufacturer->link_rewrite = 0;
                
                $result = array(
                    'url' => $theLink->getManufacturerLink((int)$manufacturer->id, $manufacturer->link_rewrite),
                    'title' => $manufacturer->name,
                    'label' => $manufacturer->name,
                    'new_window' => $m['new_window'],
                ); 
            }
        }
        elseif($m['id_cms'])
        {
            $cms = CMS::getLinks((int)$id_lang, array((int)$m['id_cms']));
			if (count($cms))
                $result = array(
                    'url' => $cms[0]['link'],
                    'title' => $cms[0]['meta_title'],
                    'label' => $cms[0]['meta_title'],
                    'new_window' => $m['new_window'],
                ); 
        }
        elseif($m['id_cms_category'])
        {
			$category = new CMSCategory((int)$m['id_cms_category'], (int)$id_lang);
			if (Validate::isLoadedObject($category))
                $result = array(
                    'url' => $category->getLink(),
                    'title' => $category->name,
                    'label' => $category->name,
                    'new_window' => $m['new_window'],
                ); 
        }
        elseif($m['name'])
        {
            $result = array(
                'url' => $m['url'],
                'title' => $m['name'],
                'label' => $m['name'],
                'new_window' => $m['new_window'],
            ); 
        }
        return count($result) ? $result : false;
    }

	public function hookDisplayTopBar($params)
	{
		if (!$this->isCached('stmultilink-top.tpl', $this->stGetCacheId(1,'location','stmultilink-top')))
            if(!$this->_prepareHook(array(1,9),1))
                return false;
		return $this->display(__FILE__, 'stmultilink-top.tpl', $this->stGetCacheId(1,'location','stmultilink-top'));
	}

	public function hookDisplayLeftColumn($params)
	{
		if (!$this->isCached('stmultilink.tpl', $this->stGetCacheId(2)))
            if(!$this->_prepareHook(2,1))
                return false;
		return $this->display(__FILE__, 'stmultilink.tpl', $this->stGetCacheId(2));
	}
	public function hookDisplayRightColumn($params)
	{
		if (!$this->isCached('stmultilink.tpl', $this->stGetCacheId(4)))
            if(!$this->_prepareHook(4,1))
                return false;
		return $this->display(__FILE__, 'stmultilink.tpl', $this->stGetCacheId(4));
	}

	public function hookDisplayFooterTop($params)
	{
		if (!$this->isCached('stmultilink-footer.tpl', $this->stGetCacheId(6,'location','stmultilink-footer')))
            if(!$this->_prepareHook(6,1))
                return false;
		return $this->display(__FILE__, 'stmultilink-footer.tpl', $this->stGetCacheId(6,'location','stmultilink-footer'));
	}
    
	public function hookDisplayFooter($params)
	{
		if (!$this->isCached('stmultilink-footer.tpl', $this->stGetCacheId(3,'location','stmultilink-footer')))
            if(!$this->_prepareHook(3,1))
                return false;
		return $this->display(__FILE__, 'stmultilink-footer.tpl', $this->stGetCacheId(3,'location','stmultilink-footer'));
	}
    
	public function hookDisplayFooterSecondary($params)
	{
		if (!$this->isCached('stmultilink-footer.tpl', $this->stGetCacheId(5,'location','stmultilink-footer')))
            if(!$this->_prepareHook(5,1))
                return false;
		return $this->display(__FILE__, 'stmultilink-footer.tpl', $this->stGetCacheId(5,'location','stmultilink-footer'));
	}
	
    
	public function hookDisplayStBlogLeftColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('stmultilink.tpl', $this->stGetCacheId(7)))
    		if(!$this->_prepareHook(7,1))
                return false;
		return $this->display(__FILE__, 'stmultilink.tpl', $this->stGetCacheId(7));
	}
	public function hookDisplayStBlogRightColumn($params)
	{
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
		if (!$this->isCached('stmultilink.tpl', $this->stGetCacheId(8)))
    		if(!$this->_prepareHook(8,1))
                return false;
		return $this->display(__FILE__, 'stmultilink.tpl', $this->stGetCacheId(8));
	}
    
    
	public function hookDisplayAnywhere($params)
	{
	    if(!isset($params['caller']) || $params['caller']!=$this->name)
            return false;
	    if(!isset($params['identify']) || !Validate::isInt($params['identify']))
            return false;
        
		if (!$this->isCached('stmultilink.tpl', $this->stGetCacheId($params['identify'],'id')))    
        {
            $link_groups = StMultiLinkGroup::getLinkGroup($params['identify'],2,$this->context->language->id);
            if(!$link_groups)
                return false;
            $link_groups['links'] = StMultiLinkClass::getAll($link_groups['id_st_multi_link_group'],$this->context->language->id,1);
            
            $this->smarty->assign(array(
    			'link_groups' => array($link_groups),
    		));
        }
		return $this->display(__FILE__, 'stmultilink.tpl', $this->stGetCacheId($params['identify'],'id'));
    }
    
	public function hookActionShopDataDuplication($params)
	{
		Db::getInstance()->execute('
		INSERT IGNORE INTO '._DB_PREFIX_.'st_multi_link_group_shop (id_st_multi_link_group, id_shop)
		SELECT id_st_multi_link_group, '.(int)$params['new_id_shop'].'
		FROM '._DB_PREFIX_.'st_multi_link_group_shop
		WHERE id_shop = '.(int)$params['old_id_shop']);
        $this->clearMultiLinkCache();
    }
    
	protected function stGetCacheId($key,$type='location',$name = null)
	{
		$cache_id = parent::getCacheId($name);
		return $cache_id.'_'.$key.'_'.$type;
	}
	private function clearMultiLinkCache()
	{
		$this->_clearCache('stmultilink.tpl');
		$this->_clearCache('stmultilink.tpl',$this->stGetCacheId(2,'location','stmultilink'));
		$this->_clearCache('stmultilink.tpl',$this->stGetCacheId(4,'location','stmultilink'));
		$this->_clearCache('stmultilink.tpl',$this->stGetCacheId(7,'location','stmultilink'));
		$this->_clearCache('stmultilink.tpl',$this->stGetCacheId(8,'location','stmultilink'));
		$this->_clearCache('stmultilink-top.tpl');
		$this->_clearCache('stmultilink-top.tpl',$this->stGetCacheId(1,'location','stmultilink-top'));
		$this->_clearCache('stmultilink-footer.tpl');
		$this->_clearCache('stmultilink-footer.tpl',$this->stGetCacheId(3,'location','stmultilink-footer'));
		$this->_clearCache('stmultilink-footer.tpl',$this->stGetCacheId(5,'location','stmultilink-footer'));
		$this->_clearCache('stmultilink-footer.tpl',$this->stGetCacheId(6,'location','stmultilink-footer'));
	}
    
	public function getContent()
	{
		$this->context->controller->addJS(($this->_path).'views/js/admin.js');
        $id_st_multi_link_group = (int)Tools::getValue('id_st_multi_link_group');
        $id_st_multi_link = (int)Tools::getValue('id_st_multi_link');
	    if ((Tools::isSubmit('groupstatusstmultilink')))
        {
            $link_group = new StMultiLinkGroup((int)$id_st_multi_link_group);
            if($link_group->id && $link_group->toggleStatus())
            {
                $this->clearMultiLinkCache();
                //$this->_html .= $this->displayConfirmation($this->l('The status has been updated successfully.'));
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            }
            else
                $this->_html .= $this->displayError($this->l('An error occurred while updating the status.'));
        }
	    if ((Tools::isSubmit('linkstatusstmultilink')))
        {
            $link = new StMultiLinkClass((int)$id_st_multi_link);
            if($link->id && $link->toggleStatus())
            {
                //$this->_html .= $this->displayConfirmation($this->l('The status has been updated successfully.'));  
                $this->clearMultiLinkCache();
			    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_multi_link_group='.$link->id_st_multi_link_group.'&viewstmultilink&token='.Tools::getAdminTokenLite('AdminModules'));
            }
            else
                $this->_html .= $this->displayError($this->l('An error occurred while updating the status.'));
        }
        if (Tools::isSubmit('way') && Tools::isSubmit('id_st_multi_link') && Tools::isSubmit('position'))
		{
		    $link = new StMultiLinkClass((int)$id_st_multi_link);
            if($link->id && $link->updatePosition((int)Tools::getValue('way'), (int)Tools::getValue('position')))
            {
                //$this->_html .= $this->displayConfirmation($this->l('The status has been updated successfully.'));  
                $this->clearMultiLinkCache();
			    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_multi_link_group='.$link->id_st_multi_link_group.'&viewstmultilink&token='.Tools::getAdminTokenLite('AdminModules'));                
            }
            else
                $this->_html .= $this->displayError($this->l('Failed to update the position.'));
		}
		if (isset($_POST['savestmultilinkgroup']))
		{
            if ($id_st_multi_link_group)
				$link_group = new StMultiLinkGroup((int)$id_st_multi_link_group);
			else
				$link_group = new StMultiLinkGroup();
            
    		$link_group->copyFromPost();
            
            $error = array();
            $defaultLanguage = new Language((int)(Configuration::get('PS_LANG_DEFAULT')));
            if(!$link_group->name[$defaultLanguage->id])
                $error[] = $this->displayError($this->l('The field "Link group name" is required at least in '.$defaultLanguage->name));

			if (!count($error) && $link_group->validateFields(false) && $link_group->validateFieldsLang(false))
            {
                if($link_group->save())
                {
		            Db::getInstance()->execute('DELETE FROM '._DB_PREFIX_.'st_multi_link_group_shop WHERE id_st_multi_link_group='.(int)$link_group->id);
                    if (!Shop::isFeatureActive())
            		{
            			Db::getInstance()->insert('st_multi_link_group_shop', array(
            				'id_st_multi_link_group' => (int)$link_group->id,
            				'id_shop' => (int)Context::getContext()->shop->id,
            			));
            		}
            		else
            		{
            			$assos_shop = Tools::getValue('checkBoxShopAsso_st_multi_link_group');
            			if (empty($assos_shop))
            				return false;
            			foreach ($assos_shop as $id_shop => $row)
            				Db::getInstance()->insert('st_multi_link_group_shop', array(
            					'id_st_multi_link_group' => (int)$link_group->id,
            					'id_shop' => (int)$id_shop,
            				));
            		}
                    $this->_html .= $this->displayConfirmation($this->l('Link group').' '.($id_st_multi_link_group ? $this->l('updated') : $this->l('added')));
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during link group').' '.($id_st_multi_link_group ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
            $this->clearMultiLinkCache();
        }
		if (isset($_POST['savestmultilink']))
		{
            if ($id_st_multi_link)
				$link = new StMultiLinkClass((int)$id_st_multi_link);
			else
				$link = new StMultiLinkClass();
            /**/
            
            $link->copyFromPost();
            
            $error = array();
            if(!$link->id_st_multi_link_group)
                $error[] = $this->displayError($this->l('The field "Link group" is required'));
            
            $link->id_cms = $link->id_cms_category = $link->id_supplier = $link->id_manufacturer = 0;
            $link->pagename = '';
            if($links = Tools::getValue('links'))
            {
			     preg_match($this->pattern, $links, $values);
                 if(count($values))
                 {
                    switch($values[1])
                    {
                        case 1:
                            $link->id_cms_category = (int)$values[2];
                        break;
                        case 2:
                            $link->id_cms = (int)$values[2];
                        break;
                        case 3:
                            $link->id_supplier = (int)$values[2];
                        break;
                        case 4:
                            $link->id_manufacturer = (int)$values[2];
                        break;
                    }
                 }
                 else
                    $link->pagename = $links;
                 
                 $languages = Language::getLanguages(false);
                 foreach ($languages as $lang)
                 {
                    $link->name[(int)$lang['id_lang']] = '';
                    $link->url[(int)$lang['id_lang']] = '';
                 }                 
            }
            else
            {
                $defaultLanguage = new Language((int)(Configuration::get('PS_LANG_DEFAULT')));
                if(!$link->name[$defaultLanguage->id])
                    $error[] = $this->displayError($this->l('The field "Name" is required at least in '.$defaultLanguage->name));
                    
            }
			if (!count($error) && $link->validateFields(false) && $link->validateFieldsLang(false))
            {
                /*position*/
                $link->position = $link->checkPostion();
                if($link->save())
                {
                    $this->clearMultiLinkCache();
                    //$this->_html .= $this->displayConfirmation($this->l('Link').' '.($id_st_multi_link ? $this->l('updated') : $this->l('added')));
                    
			        Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_multi_link_group='.$link->id_st_multi_link_group.'&viewstmultilink&token='.Tools::getAdminTokenLite('AdminModules')); 
                    
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during link').' '.($id_st_multi_link ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
        }
        
		if (Tools::isSubmit('addstmultilinkgroup') || (Tools::isSubmit('updatestmultilink') && $id_st_multi_link_group))
		{
            $helper = $this->initForm();
            return $helper->generateForm($this->fields_form);
		}
        elseif(Tools::isSubmit('addstmultilink') || (Tools::isSubmit('updatestmultilink') && $id_st_multi_link))
        {
            $helper = $this->initFormLink();
            return $helper->generateForm($this->fields_form_link);
        }
        elseif(Tools::isSubmit('viewstmultilink'))
        {
			$link_group = new StMultiLinkGroup($id_st_multi_link_group);
            if(!$link_group->isAssociatedToShop())
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
                
			$helper = $this->initListLink();
			return $this->_html.$helper->generateList(StMultiLinkClass::getAll($id_st_multi_link_group,(int)$this->context->language->id), $this->fields_list);
        }
		else if (Tools::isSubmit('deletestmultilink') && $id_st_multi_link)
		{
			$link = new StMultiLinkClass($id_st_multi_link);
            $id_st_multi_link_group = $link->id_st_multi_link_group;
            $link->delete();
            
            $this->clearMultiLinkCache();
			Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_multi_link_group='.$id_st_multi_link_group.'&viewstmultilink&token='.Tools::getAdminTokenLite('AdminModules'));
		}
		else if (Tools::isSubmit('deletestmultilink') && $id_st_multi_link_group)
		{
			$link_group = new StMultiLinkGroup($id_st_multi_link_group);
            $link_group->delete();
            
            $this->clearMultiLinkCache();
			Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
		}
		else
		{
			$helper = $this->initList();
			return $this->_html.$helper->generateList(StMultiLinkGroup::getAll($this->context->language->id), $this->fields_list);
		}
	}

    public static function showApplyTo($value,$row)
    {
	    if(isset(self::$location[$value]))
		   $result =  self::$location[$value]['name'];
        else
        {
            $module = new StMultiLink();
            $result = $module->l('--');
        }
        return $result;
    }
    
	protected function initList()
	{
		$this->fields_list = array(
			'id_st_multi_link_group' => array(
				'title' => $this->l('Id'),
				'width' => 120,
				'type' => 'text',
			),
			'name' => array(
				'title' => $this->l('Name'),
				'width' => 200,
				'type' => 'text',
			),
			'location' => array(
				'title' => $this->l('Display on'),
				'width' => 200,
				'type' => 'text',
				'callback' => 'showApplyTo',
				'callback_object' => 'StMultiLink',
			),
            'active' => array(
				'title' => $this->l('Status'),
				'align' => 'center',
				'active' => 'groupstatus',
				'type' => 'bool',
				'orderby' => false,
				'width' => 25,
            ),
		);

		$helper = new HelperList();
		$helper->shopLinkType = '';
		$helper->simple_header = true;
		$helper->identifier = 'id_st_multi_link_group';
		$helper->actions = array('view', 'edit', 'delete');
		$helper->show_toolbar = true;
		$helper->imageType = 'jpg';
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&addstmultilinkgroup&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new group'),
		);
		$helper->toolbar_btn['newLink'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&addstmultilink&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new link'),
			'class' => 'toolbar-new'
		);

		$helper->title = $this->displayName;
		$helper->table = $this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
	}
    
	protected function initForm()
	{        
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Link Group'),
			),
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Link group name:'),
					'name' => 'name',
                    'required'  => true,
                    'lang' => true,
                    
				),
                array(
					'type' => 'text',
					'label' => $this->l('Link:'),
					'name' => 'url',
                    'size' => 64,
                    'lang' => true,
                    
				),
                array(
					'type' => 'select',
        			'label' => $this->l('Display on:'),
        			'name' => 'location',
                    'options' => array(
						'query' => self::$location,
        				'id' => 'id',
        				'name' => 'name',
						'default' => array(
							'value' => 0,
							'label' => $this->l('--')
						)
        			)
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Hide on mobile devices:'),
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
		$helper->name_controller = 'stmultilink';
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
		$helper->submit_action = 'savestmultilinkgroup';
		$helper->table = StMultiLinkGroup::$definition['table'];
		$helper->identifier = StMultiLinkGroup::$definition['primary'];
        
        $id_st_multi_link_group = (int)Tools::getValue('id_st_multi_link_group');
		$link_group = new StMultiLinkGroup($id_st_multi_link_group);
        if($link_group->id)
        {
            $helper->id = $link_group->id;
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_multi_link_group');
        }
        $helper->fields_value = $this->getFieldsValueSt($link_group);  
        
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&savestmultilinkgroup&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
				'desc' => $this->l('Back to list')
			)
		);
		return $helper;
	}
    
    public static function showLinkGroupName($value,$row)
    {
        $link_group = new StMultiLinkGroup((int)$value,Context::getContext()->language->id);
        return $link_group->id ? $link_group->name : '-';
    }
    
    public static function showLinkName($value,$row)
    {
        $info = self::getLinkInfo($row);
        return $info ? $info['label'] : '-';
    }
    
    public static function showLinkUrl($value,$row)
    {
        $info = self::getLinkInfo($row);
        return $info ? $info['url'] : '-';
    }
    
	protected function initListLink()
	{
		$this->fields_list = array(
			'id_st_multi_link' => array(
				'title' => $this->l('Id'),
				'width' => 120,
				'type' => 'text',
			),
			'name' => array(
				'title' => $this->l('name'),
				'width' => 200,
				'type' => 'text',
				'callback' => 'showLinkName',
				'callback_object' => 'StMultiLink',
			),
			'url' => array(
				'title' => $this->l('url'),
				'width' => 200,
				'type' => 'text',
				'callback' => 'showLinkUrl',
				'callback_object' => 'StMultiLink',
			),
			'id_st_multi_link_group' => array(
				'title' => $this->l('Link group'),
				'width' => 120,
				'type' => 'text',
				'callback' => 'showLinkGroupName',
				'callback_object' => 'StMultiLink',
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
				'active' => 'linkstatus',
				'type' => 'bool',
				'orderby' => false,
				'width' => 25,
            ),
		);

		$helper = new HelperList();
		$helper->shopLinkType = '';
		$helper->simple_header = true;
		$helper->identifier = 'id_st_multi_link';
		$helper->actions = array('edit', 'delete');
		$helper->show_toolbar = true;
		$helper->imageType = 'jpg';
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&addstmultilink&id_st_multi_link_group='.(int)Tools::getValue('id_st_multi_link_group').'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new link')
		);
		$helper->toolbar_btn['back'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Back to list')
		);

		$helper->title = $this->displayName;
		$helper->table = $this->name;
		$helper->orderBy = 'position';
		$helper->orderWay = 'ASC';
	    $helper->position_identifier = 'id_st_multi_link';
        
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
	}
    public function getMyAccountLinks()
    {
        return array(
            array('id'=>'my-account', 'name'=>$this->l('My account'), 'title'=>$this->l('Manage my customer account')),
            array('id'=>'history', 'name'=>$this->l('My orders'), 'title'=>$this->l('My orders')),
            array('id'=>'order-follow', 'name'=>$this->l('My merchandise returns'), 'title'=>$this->l('My returns')),
            array('id'=>'order-slip', 'name'=>$this->l('My credit slips'), 'title'=>$this->l('My credit slips')),
            array('id'=>'addresses', 'name'=>$this->l('My addresses'), 'title'=>$this->l('My addresses')),
            array('id'=>'identity', 'name'=>$this->l('My personal info'), 'title'=>$this->l('Manage my personal information')),
            array('id'=>'discount', 'name'=>$this->l('My vouchers'), 'title'=>$this->l('My vouchers')),
        );
    }
    public function getInformationLinks()
    {
        return array(
            array('id'=>'prices-drop', 'name'=>$this->l('Specials'), 'title'=>$this->l('Specials')),
            array('id'=>'new-products', 'name'=>$this->l('New products'), 'title'=>$this->l('New products')),
            array('id'=>'best-sales', 'name'=>$this->l('Top sellers'), 'title'=>$this->l('Top sellers')),
            array('id'=>'stores', 'name'=>$this->l('Our stores'), 'title'=>$this->l('Our stores')),
            array('id'=>'contact', 'name'=>$this->l('Contact us'), 'title'=>$this->l('Contact us')),
            array('id'=>'sitemap', 'name'=>$this->l('Sitemap'), 'title'=>$this->l('Sitemap')),
        );
    }
    public function getBlogLinks()
    {
        if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return array();
            
        return array(
            array('id'=>'module-stblog-rss', 'name'=>$this->l('RSS feeds for posts'), 'title'=>$this->l('RSS feeds for posts')),
        );
    }
    public function createLinks()
    {
        $id_lang = $this->context->language->id;
        $supplier_arr = array();
		$suppliers = Supplier::getSuppliers(false, $id_lang);
		foreach ($suppliers as $supplier)
            $supplier_arr[] = array('id'=>'3_'.$supplier['id_supplier'],'name'=>$supplier['name']);
            
        $manufacturer_arr = array();
		$manufacturers = Manufacturer::getManufacturers(false, $id_lang);
		foreach ($manufacturers as $manufacturer)
            $manufacturer_arr[] = array('id'=>'4_'.$manufacturer['id_manufacturer'],'name'=>$manufacturer['name']);
  
        $cms_arr = array();
		$this->getCMSOptions($cms_arr, 0, 1, $id_lang);
        
        return array(
            array('name'=>$this->l('Information'),'query'=>$this->getInformationLinks()),
            array('name'=>$this->l('My account'),'query'=>$this->getMyAccountLinks()),
            array('name'=>$this->l('Supplier'),'query'=>$supplier_arr),
            array('name'=>$this->l('Manufacturer'),'query'=>$manufacturer_arr),
            array('name'=>$this->l('CMS'),'query'=>$cms_arr),
            array('name'=>$this->l('Blog'),'query'=>$this->getBlogLinks()),
        );
    }
    
	private function getCMSOptions(&$cms_arr, $parent = 0, $depth = 1, $id_lang = false)
	{
		$id_lang = $id_lang ? (int)$id_lang : (int)Context::getContext()->language->id;

		$categories = $this->getCMSCategories(false, (int)$parent, (int)$id_lang);
		$pages = $this->getCMSPages((int)$parent, false, (int)$id_lang);

		$spacer = str_repeat('&nbsp;', $this->spacer_size * (int)$depth);

		foreach ($categories as $category)
		{
            $cms_arr[] = array('id'=>'1_'.$category['id_cms_category'],'name'=>$spacer.$category['name']);
			$this->getCMSOptions($cms_arr, $category['id_cms_category'], (int)$depth + 1, (int)$id_lang);
		}

		foreach ($pages as $page)
            $cms_arr[] = array('id'=>'2_'.$page['id_cms'],'name'=>$spacer.$page['meta_title']);
	}
	
	private function getCMSCategories($recursive = false, $parent = 1, $id_lang = false)
	{
		$id_lang = $id_lang ? (int)$id_lang : (int)Context::getContext()->language->id;

		if ($recursive === false)
		{
			$sql = 'SELECT bcp.`id_cms_category`, bcp.`id_parent`, bcp.`level_depth`, bcp.`active`, bcp.`position`, cl.`name`, cl.`link_rewrite`
				FROM `'._DB_PREFIX_.'cms_category` bcp
				INNER JOIN `'._DB_PREFIX_.'cms_category_lang` cl
				ON (bcp.`id_cms_category` = cl.`id_cms_category`)
				WHERE cl.`id_lang` = '.(int)$id_lang.'
				AND bcp.`id_parent` = '.(int)$parent;

			return Db::getInstance()->executeS($sql);
		}
		else
		{
			$sql = 'SELECT bcp.`id_cms_category`, bcp.`id_parent`, bcp.`level_depth`, bcp.`active`, bcp.`position`, cl.`name`, cl.`link_rewrite`
				FROM `'._DB_PREFIX_.'cms_category` bcp
				INNER JOIN `'._DB_PREFIX_.'cms_category_lang` cl
				ON (bcp.`id_cms_category` = cl.`id_cms_category`)
				WHERE cl.`id_lang` = '.(int)$id_lang.'
				AND bcp.`id_parent` = '.(int)$parent;

			$results = Db::getInstance()->executeS($sql);
			foreach ($results as $result)
			{
				$sub_categories = $this->getCMSCategories(true, $result['id_cms_category'], (int)$id_lang);
				if ($sub_categories && count($sub_categories) > 0)
					$result['sub_categories'] = $sub_categories;
				$categories[] = $result;
			}

			return isset($categories) ? $categories : false;
		}

	}

	private function getCMSPages($id_cms_category, $id_shop = false, $id_lang = false)
	{
		$id_shop = ($id_shop !== false) ? (int)$id_shop : (int)Context::getContext()->shop->id;
		$id_lang = $id_lang ? (int)$id_lang : (int)Context::getContext()->language->id;

		$sql = 'SELECT c.`id_cms`, cl.`meta_title`, cl.`link_rewrite`
			FROM `'._DB_PREFIX_.'cms` c
			INNER JOIN `'._DB_PREFIX_.'cms_shop` cs
			ON (c.`id_cms` = cs.`id_cms`)
			INNER JOIN `'._DB_PREFIX_.'cms_lang` cl
			ON (c.`id_cms` = cl.`id_cms`)
			WHERE c.`id_cms_category` = '.(int)$id_cms_category.'
			AND cs.`id_shop` = '.(int)$id_shop.'
			AND cl.`id_lang` = '.(int)$id_lang.'
			AND c.`active` = 1
			ORDER BY `position`';

		return Db::getInstance()->executeS($sql);
	}
	protected function initFormLink()
	{        
		$this->fields_form_link[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Link item'),
			),
			'input' => array(
                array(
					'type' => 'select',
        			'label' => $this->l('Link group:'),
        			'name' => 'id_st_multi_link_group',
                    'required' => true,
                    'autocomplete' => false,
                    'options' => array(
        				'query' => StMultiLinkGroup::getAll($this->context->language->id),
        				'id' => 'id_st_multi_link_group',
        				'name' => 'name',
						'default' => array(
							'value' => 0,
							'label' => $this->l('Please select')
						)
        			)
				),
                'links' => array(
					'type' => 'select',
        			'label' => $this->l('Links:'),
        			'name' => 'links',
                    'required' => true,
                    'autocomplete' => false,
                    'options' => array(
                        'optiongroup' => array (
							'query' => $this->createLinks(),
							'label' => 'name'
						),
						'options' => array (
							'query' => 'query',
							'id' => 'id',
							'name' => 'name'
						),
						'default' => array(
							'value' => '',
							'label' => $this->l('Select an option or fill up Label and Link')
						),
        			)
				),
                'name' => array(
					'type' => 'text',
					'label' => $this->l('Label:'),
					'name' => 'name',
                    'lang' => true,
                    'required' => true,
                    'autocomplete' => false,
				),
                'url' => array(
					'type' => 'text',
					'label' => $this->l('Link:'),
					'name' => 'url',
                    'size' => 64,
                    'lang' => true,
                    'autocomplete' => false,
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Open in a new window:'),
					'name' => 'new_window',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 0,
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
		$helper->name_controller = 'stmultilink';
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
		$helper->submit_action = 'savestmultilink';
        
        $id_st_multi_link = (int)Tools::getValue('id_st_multi_link');
        $id_st_multi_link_group = (int)Tools::getValue('id_st_multi_link_group');
		$link = new StMultiLinkClass($id_st_multi_link);
        if($link->id)
        {
            $this->fields_form_link[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_multi_link');
            $isDisabled = $link->pagename || $link->id_cms_category || $link->id_cms || $link->id_supplier || $link->id_manufacturer;
            $this->fields_form_link[0]['form']['input']['name']['disabled'] = $this->fields_form_link[0]['form']['input']['url']['disabled'] = $isDisabled;
        }
        elseif($id_st_multi_link_group)
            $link->id_st_multi_link_group = $id_st_multi_link_group;
        
        $helper->fields_value = $this->getFieldsValueSt($link,"fields_form_link"); 
        if($link->id)
        {
            if($link->pagename)
                $helper->fields_value['links'] = $link->pagename;
            elseif($link->id_cms_category)
                $helper->fields_value['links'] = '1_'.$link->id_cms_category;
            elseif($link->id_cms)
                $helper->fields_value['links'] = '2_'.$link->id_cms;
            elseif($link->id_supplier)
                $helper->fields_value['links'] = '3_'.$link->id_supplier;
            elseif($link->id_manufacturer)
                $helper->fields_value['links'] = '4_'.$link->id_manufacturer;
        }
        
		$helper->toolbar_btn =  array(
			'save' => array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
				'desc' => $this->l('Back to list')
			),
		);
		return $helper;
	}
    
	
	public function hookActionObjectCmsUpdateAfter($params)
	{
		$this->clearMultiLinkCache();
	}
	
	public function hookActionObjectCmsDeleteAfter($params)
	{
		$this->clearMultiLinkCache();
        if(!$params['object']->id)
            return ;
        StMultiLinkClass::deleteByCmsId((int)$params['object']->id);
	}
	
	public function hookActionObjectSupplierUpdateAfter($params)
	{
		$this->clearMultiLinkCache();
	}
	
	public function hookActionObjectSupplierDeleteAfter($params)
	{
		$this->clearMultiLinkCache();
        if(!$params['object']->id)
            return ;
        StMultiLinkClass::deleteBySupplierId((int)$params['object']->id);
	}	

	public function hookActionObjectManufacturerUpdateAfter($params)
	{
		$this->clearMultiLinkCache();
	}
	
	public function hookActionObjectManufacturerDeleteAfter($params)
	{
		$this->clearMultiLinkCache();
        if(!$params['object']->id)
            return ;
        StMultiLinkClass::deleteByManufacturerId((int)$params['object']->id);
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
