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
    
require (dirname(__FILE__).'/StMegaMenuClass.php');

class StMegaMenu extends Module
{
	private $_html = '';
    public $fields_list;
    public $fields_form;
    private $_baseUrl;
	private $spacer_size = '5';
    public static $_type = array(
        1 => 'id_category',
        2 => 'id_product',
        3 => 'id_cms',
        4 => 'id_manufacturer',
        5 => 'id_supplier',
        6 => 'shop_id',
        7 => 'title',
        8 => 'id_cms_category',
        9 => 'id_icon',
        10 => 'id_st_blog_category',
        11 => 'id_st_blog',
        12 => 'pagename',
    );
    public static $_layout = array(
        1 => array(
            array(3,3,3,3),
            array(),
        ),
        2 => array(
            array(3,3,3),
            array(3),
        ),
        3 => array(
            array(3,3),
            array(3,3),
        ),
        4 => array(
            array(3),
            array(3,3,3),
        ),
        5 => array(
            array(),
            array(3,3,3,3),
        ),
        6 => array(
            array(3),
            array(6,3),
        ),
        7 => array(
            array(3,3),
            array(6),
        ),
        8 => array(
            array(),
            array(6,6),
        ),
        9 => array(
            array(),
            array(6,3,3),
        ),
        10 => array(
            array(3),
            array(),
        ),
        11 => array(
            array(2,2,2,2,2,2),
            array(),
        ),
        12 => array(
            array(2,2,2,2),
            array(4),
        ),
        13 => array(
            array(2,2,2),
            array(3,3),
        ),
        14 => array(
            array(2,2,2),
            array(6),
        ),
        15 => array(
            array(),
            array(4,4,4),
        ),
        16 => array(
            array(),
            array(6,2,2,2),
        ),
        17 => array(
            array(),
            array(3,3,2,2,2),
        ),
        18 => array(
            array(),
            array(12),
        ),
    );
    public static $_layout_map = array(        
        1 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
            ),
            9 => array(
                3 => 4,
            ),
            12 => array(
                3 => 3,
            ),
        ),
        2 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
            ),
            9 => array(
                3 => 4,
            ),
        ),        
        3 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
            ),
        ),
        4 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
            ),
            9 => array(
                3 => 4,
            ),
        ),
        5 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
            ),
            9 => array(
                3 => 4,
            ),
            12 => array(
                3 => 3,
            ),
        ),        
        6 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
            ),
        ),        
        7 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
        ),   
        8 => array(
            6 => array(
                6 => 12,
            ),
            12 => array(
                6 => 6,
            ),
        ),     
        9 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
            ),
            12 => array(
                3 => 3,
                6 => 6,
            ),
        ),
        11 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                2 => 6,
            ),
            6 => array(
                2 => 4,
            ),
            8 => array(
                2 => 3,
            ),
            10 => array(
                2 => 2,
            ),
            12 => array(
                2 => 2,
            ),
        ),
        12 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                2 => 6,
                4 => 12,
            ),
            6 => array(
                2 => 4,
            ),
            8 => array(
                2 => 3,
            ),
        ),   
        13 => array(
            2 => array(
                2 => 12,
            ),
            3 => array(
                3 => 12,
            ),
            4 => array(
                2 => 6,
            ),
            6 => array(
                2 => 4,
                3 => 6,
            ),
        ),        
        14 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                2 => 6,
            ),
            6 => array(
                2 => 4,
                6 => 12,
            ),
        ),        
        
        15 => array(
            4 => array(
                4 => 12,
            ),
            8 => array(
                4 => 6,
            ),
            12 => array(
                4 => 4,
            ),
        ),
        16 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                4 => 6,
            ),
            6 => array(
                2 => 4,
                6 => 12,
            ),
            8 => array(
                2 => 4,
                6 => 8,
            ),
            10 => array(
                2 => 3,
                6 => 6,
            ),
            12 => array(
                2 => 2,
                6 => 6,
            ),
        ),
        17 => array(
            2 => array(
                2 => 12,
            ),
            3 => array(
                3 => 12,
            ),
            4 => array(
                4 => 6,
            ),
            5 => array(
                2 => 5,
                3 => 7,
            ),
            6 => array(
                2 => 4,
                3 => 6,
            ),
            7 => array(
                2 => 4,
                3 => 4,
            ),
            8 => array(
                2 => 3,
                3 => 3,
            ),
            9 => array(
                2 => 3,
                3 => 3,
            ),
            10 => array(
                2 => 3,
                3 => 3,
            ),
            12 => array(
                2 => 2,
                3 => 3,
            ),
        ),
        18 => array(
            12 => array(
                12 => 12,
            ),
        ),
    );
    public static $_fluid_map = array(
        1 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            9 => array(
                9 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),
        2 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
                9 => 12,
            ),
            12 => array(
                3 => 3,
                9 => 9,
            ),
        ),
        3 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
            ),
            12 => array(
                6 => 6,
            ),
        ),
        4 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
                9 => 12,
            ),
            12 => array(
                3 => 3,
                9 => 9,
            ),
        ),
        5 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            9 => array(
                9 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),        
        6 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
                9 => 12,
            ),
            12 => array(
                3 => 3,
                9 => 9,
            ),
        ),
        
        7 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                3 => 6,
                6 => 12,
            ),
            9 => array(
                3 => 4,
                6 => 8,
            ),
            12 => array(
                6 => 6,
            ),
        ),        
        8 => array(
            6 => array(
                6 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),        
        9 => array(
            3 => array(
                3 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            9 => array(
                9 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),
        11 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                4 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            8 => array(
                8 => 12,
            ),
            10 => array(
                10 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),
        12 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                2 => 6,
                4 => 12,
            ),
            6 => array(
                2 => 4,
                4 => 8,
                6 => 12,
            ),
            8 => array(
                2 => 3,
                4 => 6,
            ),
            10 => array(
                4 => 5,
                6 => 7,
            ),
            12 => array(
                4 => 4,
            ),
        ),        
        13 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                2 => 6,
            ),
            5 => array(
                2 => 5,
                3 => 7,
            ),
            6 => array(
                2 => 4,
                3 => 6,
                6 => 12,
            ),
            7 => array(
                3 => 5,
                4 => 7,
            ),
            8 => array(
                2 => 4,
                6 => 8,
            ),
            10 => array(
                4 => 5,
                6 => 7,
            ),
            12 => array(
                6 => 6,
            ),
        ),
        14 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                4 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            8 => array(
                2 => 4,
                6 => 8,
            ),
            10 => array(
                4 => 5,
                6 => 7,
            ),
            12 => array(
                6 => 6,
            ),
        ),
        15 => array(
            4 => array(
                4 => 12,
            ),
            8 => array(
                8 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),
        16 => array(
            2 => array(
                2 => 12,
            ),
            4 => array(
                4 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            8 => array(
                8 => 12,
            ),
            10 => array(
                10 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),
        17 => array(
            2 => array(
                2 => 12,
            ),
            3 => array(
                3 => 12,
            ),
            4 => array(
                4 => 6,
            ),
            5 => array(
                5 => 12,
            ),
            6 => array(
                6 => 12,
            ),
            7 => array(
                7 => 12,
            ),
            8 => array(
                8 => 12,
            ),
            9 => array(
                9 => 12,
            ),
            10 => array(
                10 => 12,
            ),
            12 => array(
                12 => 12,
            ),
        ),
        18 => array(
            12 => array(
                12 => 12,
            ),
        ),
    );
    protected $stblog_status = true;
	public function __construct()
	{
		$this->name          = 'stmegamenu';
		$this->tab           = 'front_office_features';
		$this->version       = '1.9.2';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName   = $this->l('Megamenu');
		$this->description   = $this->l('Add a menu on top of your shop.');
        
        
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            $this->stblog_status = false;
        if($this->stblog_status)
            require_once (_PS_MODULE_DIR_.'stblog/classes/StBlogCategory.php');
	}

	public function install()
	{
	    $res = $this->installDB() &&
            parent::install() &&
			$this->registerHook('displayHeader') &&
			$this->registerHook('displayTopSecondary') &&
			$this->registerHook('actionObjectCategoryUpdateAfter') &&
			$this->registerHook('actionObjectCategoryDeleteAfter') &&
			$this->registerHook('actionObjectCmsUpdateAfter') &&
			$this->registerHook('actionObjectCmsDeleteAfter') &&
			$this->registerHook('actionObjectSupplierUpdateAfter') &&
			$this->registerHook('actionObjectSupplierDeleteAfter') &&
			$this->registerHook('actionObjectManufacturerUpdateAfter') &&
			$this->registerHook('actionObjectManufacturerDeleteAfter') &&
			$this->registerHook('actionObjectProductUpdateAfter') &&
			$this->registerHook('actionObjectProductDeleteAfter') &&
			$this->registerHook('categoryUpdate') &&
			$this->registerHook('actionCategoryAdd') &&
			$this->registerHook('actionCategoryDelete') &&
			$this->registerHook('actionCategoryUpdate') &&
			$this->registerHook('actionProductDelete') &&
			$this->registerHook('actionProductAdd') &&
			$this->registerHook('actionProductUpdate') &&
			$this->registerHook('actionShopDataDuplication');
		if ($res)
			foreach(Shop::getShops(false) as $shop)
				$res &= $this->sampleData($shop['id_shop']);
		return $res;
	}
    
    
    public function sampleData($id_shop)
    {
        $return = true;
        $path = _MODULE_DIR_.$this->name;
		$samples = array(
			array('id_st_mega_menu' => '', 'id_parent' => 0, 'level_depth' => 0, 'style' => 1, 'id_icon' => 1, 'span' => 0, 'title' => '', 'html' => ''),
			array('id_st_mega_menu' => '','id_parent' => 0, 'level_depth' => 0, 'style' => 15, 'id_icon' => 0, 'span' => 0, 'title' => 'Custom block', 'html' => '', 'child' => array(
                array('level_depth' => 1, 'spans' => 4, 'html' => '<h3 class="ma_level_1">Transformer</h3><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><ol style="margin-bottom:20px;"><li>Fully responsive theme</li><li>Unlimited colors</li><li>Customizable design</li><li>Powerfull theme editor</li><li>Built with HTML5 and CSS3</li><li>Google fonts</li><li>Ajax Wishlist and Compare</li></ol>'),
                array('level_depth' => 1, 'spans' => 4, 'html' => '<p><a href="/" class="ma_level_1" title="mainstore" rel="nofollow">Main Demo</a></p><p><a href="/" title="mainstore" rel="nofollow"><img src="/modules/stmegamenu/views/img/menu_store_1.jpg" alt="Main demo"/></a><p><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="go" href="/" title="Go to Main demo">Go to Main demo</a>'),
                array('level_depth' => 1, 'spans' => 4, 'html' => '<p><a href="/" class="ma_level_1" title="Go to Store 2" rel="nofollow">Store 2</a></p><p><a href="/" title="Store 2"><img src="/modules/stmegamenu/views/img/menu_store_2.jpg" alt="Store 2"/></a></p><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="go" href="/" title="Go to Store 2" rel="nofollow">Go to Store 2</a>'),
            )),
		);		
		foreach($samples as $k=>&$sample)
		{
			$module = new StMegaMenuClass();
			foreach (Language::getLanguages(false) as $lang)
            {
				$module->title[$lang['id_lang']] = $sample['title'];
				$module->url[$lang['id_lang']] = $sample['html'];
            }
			$module->id_parent = $sample['id_parent'];
			$module->level_depth = $sample['level_depth'];
			$module->style = $sample['style'];
			$module->id_icon = $sample['id_icon'];
			$module->span = $sample['span'];
			$module->active = 1;
			$module->position = $k;
			$module->id_shop = (int)$id_shop;
			$return &= $module->add();
            if($return)
                $sample['id_st_mega_menu'] = $module->id;
		}
        foreach($samples as $sp)
		{
            if(!$sp['id_st_mega_menu'] || !isset($sp['child']) || !count($sp['child']))
                continue;
                
		    foreach($sp['child'] as $k=>$v)
    		{
    			$module = new StMegaMenuClass();
                
    			foreach (Language::getLanguages(false) as $lang)
    				$module->html[$lang['id_lang']] = $v['html'];
                                    
    			$module->id_parent = $sp['id_st_mega_menu'];
			    $module->level_depth = $v['level_depth'];
			    $module->spans = $v['spans'];
    			$module->active = 1;
    			$module->position = $k;
			    $module->id_shop = (int)$id_shop;
    			$return &= $module->add();
    		}
		}
		return $return;
    }

	public function installDb()
	{
		$return = true;
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_mega_menu` (
				`id_st_mega_menu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
				`id_parent` int(10) NOT NULL DEFAULT 0,
                `level_depth` tinyint(3) unsigned NOT NULL DEFAULT 0,   
                `nleft` int(10) unsigned NOT NULL DEFAULT 0,            
                `nright` int(10) unsigned NOT NULL DEFAULT 0,  
				`id_shop` int(10) unsigned NOT NULL,      
				`shop_id` int(10) unsigned NOT NULL,          
                `id_cms` int(10) unsigned NOT NULL DEFAULT 0,
                `id_cms_category` int(10) unsigned NOT NULL DEFAULT 0,
                `id_category` int(10) unsigned NOT NULL DEFAULT 0,
                `id_supplier` int(10) unsigned NOT NULL DEFAULT 0,
                `id_manufacturer` int(10) unsigned NOT NULL DEFAULT 0,
                `id_product` int(10) unsigned NOT NULL DEFAULT 0,
                `id_icon` int(10) unsigned NOT NULL DEFAULT 0,
                `id_st_blog_category` int(10) unsigned NOT NULL DEFAULT 0,
                `id_st_blog` int(10) unsigned NOT NULL DEFAULT 0,
                `pagename` varchar(255) DEFAULT NULL,
                `spans` int(10) unsigned NOT NULL DEFAULT 0,
                `position` int(10) unsigned NOT NULL DEFAULT 0,
    			`new_window` TINYINT( 1 ) NOT NULL DEFAULT 0,
                `txt_color` varchar(7) DEFAULT NULL,
                `bg_color` varchar(7) DEFAULT NULL,
                `txt_color_over` varchar(7) DEFAULT NULL,
                `bg_color_over` varchar(7) DEFAULT NULL,
                `tab_content_bg` varchar(7) DEFAULT NULL,
                `height` smallint(7) unsigned DEFAULT NULL,
                `width` smallint(7) unsigned DEFAULT NULL,
                `left` smallint(7) DEFAULT NULL,
                `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
                `style` tinyint(1) unsigned NOT NULL DEFAULT 0,
                `auto_sub` tinyint(1) unsigned NOT NULL DEFAULT 0,
                `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT 0, 
                `alignment` tinyint(1) unsigned NOT NULL DEFAULT 0, 
				PRIMARY KEY (`id_st_mega_menu`)
			) ENGINE='._MYSQL_ENGINE_.' DEFAULT CHARSET=utf8 ;');
		
		$return &= Db::getInstance()->execute('
			CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'st_mega_menu_lang` (
				`id_st_mega_menu` INT UNSIGNED NOT NULL AUTO_INCREMENT,
				`id_lang` int(10) unsigned NOT NULL ,
                `title` varchar(255) DEFAULT NULL,
    			`link` varchar(255) DEFAULT NULL,
    			`html` text,
				PRIMARY KEY (`id_st_mega_menu`, `id_lang`)
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
        return Db::getInstance()->execute('DROP TABLE IF EXISTS `'._DB_PREFIX_.'st_mega_menu`,`'._DB_PREFIX_.'st_mega_menu_lang`');
	}
    
        
	public function getContent()
	{            
		$this->context->controller->addCSS($this->_path. 'views/css/admin.css');
		$this->context->controller->addJS($this->_path. 'views/js/admin.js');
    	$id_st_mega_menu = (int)Tools::getValue('id_st_mega_menu');
		if (isset($_POST['savestmegamenu']))
        {
            if($id_st_mega_menu)
				$menu = new StMegaMenuClass($id_st_mega_menu);
			else
				$menu = new StMegaMenuClass();
                
            $is_style_change = $menu->style != Tools::getValue('style');
            
            $error = array();
            
    		$menu->copyFromPost();
    		$menu->id_parent = 0;
            $menu->level_depth = 0;
            
            $item = Tools::getValue('links');
            if($item)
            {
                $item_arr = explode('_',$item);
                if(count($item_arr)!=2)
                {
                    $this->_html .= $this->displayError($this->l('"Menu item" error'));
    			     return;
                }
                foreach(self::$_type as $k=>$v)
                {
                    if($k==7)
                        continue;
                    if($k==$item_arr[0])
                        $menu->$v = ($k==12 ? $item_arr[1] : (int)$item_arr[1]);
                    else
                        $menu->$v = ($k==12 ? '' : 0);
                }
            }
            else
            {
                foreach(self::$_type as $k=>$v)
                {
                    if($k==7)
                        continue;
                    $menu->$v = ($k==12 ? '' : 0);
                }
                // Check default language
                $default_lang_id = (int)(Configuration::get('PS_LANG_DEFAULT'));
                $defaultLanguage = new Language($default_lang_id);
        		if (!$menu->title[$defaultLanguage->id])
                    $error[] = $this->displayError($this->l('The field "Lable" is required at least in '.$defaultLanguage->name));
                    
                if(!$id_st_mega_menu)
                {
                    $languages = Language::getLanguages(false);
            		foreach ($languages as $language)
                        if(!$menu->title[$language['id_lang']])
            			     $menu->title[$language['id_lang']] = $menu->title[$defaultLanguage->id];
                }
            }
            $menu->id_shop = (int)Shop::getContextShopID();
            if (!count($error) && $menu->validateFields(false) && $menu->validateFieldsLang(false))
            {
                if($menu->save())
                {
		            //custom content
                    $custom_content_nbr = count(self::$_layout[$menu->style][1]);
                    if($is_style_change && $custom_content_nbr)
                    {
                        $custom_content_nbr_curr = StMegaMenuClass::getCustomContenNbr($menu->id);
                        if($custom_content_nbr_curr)
                            StMegaMenuClass::deleteCustomContent($menu->id);
                        for($i=0;$i<$custom_content_nbr;$i++)
                        {
                            $custom_content_menu = new StMegaMenuClass();
                            $custom_content_menu->id_shop = (int)Shop::getContextShopID();
                            $custom_content_menu->id_parent = $menu->id;
                            $custom_content_menu->spans = self::$_layout[$menu->style][1][$i];
                            $custom_content_menu->active = 1;
                            $custom_content_menu->save();
                        }
                    }
                    $this->_html .= $this->displayConfirmation($this->l('Menu tab').' '.($id_st_mega_menu ? $this->l('updated') : $this->l('added')));
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during menu tab').' '.($id_st_mega_menu ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
            $this->clearStMegamenuCache();
        }
		if (isset($_POST['savemenustmegamenu']))
        {
            if($id_st_mega_menu)
				$menu = new StMegaMenuClass($id_st_mega_menu);
			else
				$menu = new StMegaMenuClass();
                
            $error = array();
            
    		$menu->copyFromPost();
            if(!$menu->id_parent)
                $error[] = $this->displayError($this->l('The field "Parent" is required'));
            else
            {
                $menu_parent = new StMegaMenuClass($menu->id_parent);
                $menu->level_depth = $menu_parent->level_depth+1;
            }    
                        
            $item = Tools::getValue('links');
            if($item)
            {
                $item_arr = explode('_',$item);
                if(count($item_arr)!=2)
                {
                    $this->_html .= $this->displayError($this->l('"Menu item" error'));
    			     return;
                }
                foreach(self::$_type as $k=>$v)
                {
                    if($k==7)
                        continue;
                    if($k==$item_arr[0])
                        $menu->$v = ($k==12 ? $item_arr[1] : (int)$item_arr[1]);
                    else
                        $menu->$v = ($k==12 ? '' : 0);
                }
            }
            else
            {
                foreach(self::$_type as $k=>$v)
                {
                    if($k==7)
                        continue;
                    $menu->$v = ($k==12 ? '' : 0);
                }
                // Check default language
                $default_lang_id = (int)(Configuration::get('PS_LANG_DEFAULT'));
                $defaultLanguage = new Language($default_lang_id);
        		if (!$menu->title[$defaultLanguage->id])
                    $error[] = $this->displayError($this->l('The field "Lable" is required at least in '.$defaultLanguage->name));
                    
            }
            $menu->id_shop = (int)Shop::getContextShopID();
            if (!count($error) && $menu->validateFields(false) && $menu->validateFieldsLang(false))
            {
                if($menu->save())
                {
                    $this->clearStMegamenuCache();
                    //$this->_html .= $this->displayConfirmation($this->l('Menu').' '.($id_st_mega_menu ? $this->l('updated') : $this->l('added')));
                    $menu_secondary_id = StMegaMenuClass::getSecondaryParent((int)$menu->id);
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_mega_menu='.$menu_secondary_id.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during menu').' '.($id_st_mega_menu ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
        }
		if (isset($_POST['savecustomcontentstmegamenu']))
        {
            if($id_st_mega_menu)
				$menu = new StMegaMenuClass($id_st_mega_menu);
			else
				$menu = new StMegaMenuClass();
                
            $error = array();
    		$menu->copyFromPost();
            if(Tools::getValue('content')==1)
            {
                if(!$menu->id_product)
                    $error[] = $this->displayError($this->l('The field "Product name" is required'));
                else
                {
        			$languages = Language::getLanguages(false);
        			foreach ($languages AS $language)
                        $menu->html[(int)($language['id_lang'])] = '';
                }
            }
            if(Tools::getValue('content')==0)
            {
                // Check default language
                /*
                $default_lang_id = (int)(Configuration::get('PS_LANG_DEFAULT'));
                $defaultLanguage = new Language($default_lang_id);
        		if (!$menu->html[$defaultLanguage->id])
                    $error[] = $this->displayError($this->l('The field "Custom content" is required at least in '.$defaultLanguage->name));
                */
                //
                $menu->id_product = 0;
            }
            $menu->id_shop = (int)Shop::getContextShopID();
            $menu->active = 1;
            if (!count($error) && $menu->validateFields(false) && $menu->validateFieldsLang(false))
            {
                if($menu->save())
                {
                    $this->clearStMegamenuCache();
                    //$this->_html .= $this->displayConfirmation($this->l('Custom content').' '.($id_st_mega_menu ? $this->l('updated') : $this->l('added')));
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_mega_menu='.$menu->id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
                }
                else
                    $this->_html .= $this->displayError($this->l('An error occurred during custom content').' '.($id_st_mega_menu ? $this->l('updating') : $this->l('creation')));
            }
			else
				$this->_html .= count($error) ? implode('',$error) : $this->displayError($this->l('Invalid value for field(s).'));
        }
        
	    if ((Tools::isSubmit('activestmegamenu')))
        {
    		$menu = new StMegaMenuClass((int)$id_st_mega_menu);
            if(Validate::isLoadedObject($menu) && $menu->toggleStatus())
            {
                $this->clearStMegamenuCache();
                
                if($menu->id_parent)
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_mega_menu='.$menu->id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
                else
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            } 
            else
                $this->_html .= $this->displayError($this->l('An error occurred while updating the status.'));
        }
		
        
        if (Tools::isSubmit('addstmegamenu'))
		{
            $helper = $this->_displayForm(); 
            $this->_html .= $helper->generateForm($this->fields_form);
			return $this->_html;
		}
        elseif (Tools::isSubmit('addmenustmegamenu'))
		{
            if(!Tools::getValue('id_parent'))
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            $helper = $this->initMenuForm(); 
            $this->_html .= $helper->generateForm($this->fields_form);
			return $this->_html;
		}
        elseif (Tools::isSubmit('updatestmegamenu'))
        {
    		$menu = new StMegaMenuClass((int)$id_st_mega_menu);
            if(!Validate::isLoadedObject($menu) || $menu->id_shop!=(int)Shop::getContextShopID())
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            if($menu->id_parent && $menu->spans)
            {
                $helper = $this->initCustomContentForm();
                $this->_html .= $helper->generateForm($this->fields_form);
                
            }
            elseif($menu->id_parent && !$menu->spans)
            {
                $helper = $this->initMenuForm(); 
                $this->_html .= $helper->generateForm($this->fields_form);
            }
            elseif(!$menu->id_parent)
            {
                $helper = $this->_displayForm(); 
                $this->_html .= $helper->generateForm($this->fields_form);
            }
			return $this->_html; 
        }
        else if (Tools::isSubmit('deletestmegamenu'))
		{
    		$menu = new StMegaMenuClass((int)$id_st_mega_menu);
            if(Validate::isLoadedObject($menu))
            {
                if($menu->id_parent)
                    $menu_secondary_id = StMegaMenuClass::getSecondaryParent((int)$menu->id);
                    
                $menu->delete();
                $this->clearStMegamenuCache();
                
                if($menu->id_parent)
                    Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&id_st_mega_menu='.$menu_secondary_id.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            }
            Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
		}
        elseif(Tools::isSubmit('viewstmegamenu'))
        {
    		$menu = new StMegaMenuClass((int)$id_st_mega_menu);
            if(!Validate::isLoadedObject($menu))
                Tools::redirectAdmin(AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'));
            if($menu->id_category && $menu->auto_sub)
            {
                
            }
            elseif(isset(self::$_layout[$menu->style]) && count(self::$_layout[$menu->style][0]))
            {
                $helper = $this->initMenuList();
                $all = StMegaMenuClass::recurseTree($menu->id,1,0,0,$this->context->language->id,1);
                $list = array();
                if($all)
                    $list = $this->_toFlat($all);
                $this->_html .= $helper->generateList($list, $this->fields_list);
            }
            if(isset(self::$_layout[$menu->style]) && count(self::$_layout[$menu->style][1]))
            {
                
                $helper = $this->initCustomContentList();
                $all = StMegaMenuClass::recurseTree($menu->id,1,1,0,$this->context->language->id,2);
                $this->_html .= $helper->generateList($all, $this->fields_list);
            }
			return $this->_html;
        }
        else
        {
            $helper = $this->initList();
            $all = StMegaMenuClass::recurseTree(0,0,0,0,$this->context->language->id,1);
            $list = array();
            if($all)
                $list = $this->_toFlat($all);
			return $this->_html.$helper->generateList($list, $this->fields_list);
        }
            
	}
    private function _toFlat($arr)
    {
        static $tmp=array();
        foreach($arr as $v)
        {
            $tmp[]=$v;
            unset($tmp[count($tmp)-1]['children']);
            if($v['id_category'] && $v['auto_sub'])
            {
                
            }
            else
            {
                if(isset($v['children']) && is_array($v['children']) && count($v['children'])) 
                    $this->_toFlat($v['children']);
            }
        }
        return $tmp;
    }

    public function getMyAccountLinks()
    {
        return array(
            'my-account' => array('id'=>'12_my-account', 'name'=>$this->l('My account'), 'title'=>$this->l('Manage my customer account')),
            'order-follow' => array('id'=>'12_history', 'name'=>$this->l('My orders'), 'title'=>$this->l('My orders')),
            'order-follow' => array('id'=>'12_order-follow', 'name'=>$this->l('My merchandise returns'), 'title'=>$this->l('My returns')),
            'order-slip' => array('id'=>'12_order-slip', 'name'=>$this->l('My credit slips'), 'title'=>$this->l('My credit slips')),
            'addresses' => array('id'=>'12_addresses', 'name'=>$this->l('My addresses'), 'title'=>$this->l('My addresses')),
            'identity' => array('id'=>'12_identity', 'name'=>$this->l('My personal info'), 'title'=>$this->l('Manage my personal information')),
            'discount' => array('id'=>'12_discount', 'name'=>$this->l('My vouchers'), 'title'=>$this->l('My vouchers')),
        );
    }
    
    public function getInformationLinks()
    {
        return array(
            'prices-drop' => array('id'=>'12_prices-drop', 'name'=>$this->l('Specials'), 'title'=>$this->l('Specials')),
            'new-products' => array('id'=>'12_new-products', 'name'=>$this->l('New products'), 'title'=>$this->l('New products')),
            'best-sales' => array('id'=>'12_best-sales', 'name'=>$this->l('Top sellers'), 'title'=>$this->l('Top sellers')),
            'stores' => array('id'=>'12_stores', 'name'=>$this->l('Our stores'), 'title'=>$this->l('Our stores')),
            'contact' => array('id'=>'12_contact', 'name'=>$this->l('Contact us'), 'title'=>$this->l('Contact us')),
            'sitemap' => array('id'=>'12_sitemap', 'name'=>$this->l('Sitemap'), 'title'=>$this->l('Sitemap')),
            'manufacturer' => array('id'=>'12_manufacturer', 'name'=>$this->l('Manufacturers'), 'title'=>$this->l('Manufacturers')),
            'supplier' => array('id'=>'12_supplier', 'name'=>$this->l('Suppliers'), 'title'=>$this->l('Suppliers')),
        );
    }
    
    public function createLinks($icon=true)
    {
        $id_lang = $this->context->language->id;
        $category_arr = array();
		$this->getCategoryOption($category_arr, Category::getRootCategory()->id, (int)$id_lang, (int)Shop::getContextShopID(),true);
        
        $supplier_arr = array();
		$suppliers = Supplier::getSuppliers(false, $id_lang);
		foreach ($suppliers as $supplier)
            $supplier_arr[] = array('id'=>'5_'.$supplier['id_supplier'],'name'=>$supplier['name']);
            
        $manufacturer_arr = array();
		$manufacturers = Manufacturer::getManufacturers(false, $id_lang);
		foreach ($manufacturers as $manufacturer)
            $manufacturer_arr[] = array('id'=>'4_'.$manufacturer['id_manufacturer'],'name'=>$manufacturer['name']);
  
        $cms_arr = array();
		$this->getCMSOptions($cms_arr, 0, 1, $id_lang);
        
        $shop_arr = array();
		if (Shop::isFeatureActive())
		{
			$shops = Shop::getShopsCollection();
			foreach ($shops as $shop)
			{
				if (!$shop->setUrl() && !$shop->getBaseURL())
					continue;
				$shop_arr[] = array('id'=>'6_'.$shop->id,'name'=>$shop->name);
			}	
		}
        $blog_category_arr = array();
        if($this->stblog_status)
		{
            $blog_categories = StBlogCategory::getCategories(0,$id_lang,true);
            $this->getBlogCategoryOption($blog_category_arr,$blog_categories);
        }
        
        $links = array(
            array('name'=>$this->l('Category'),'query'=>$category_arr),
            array('name'=>$this->l('Informations'),'query'=>$this->getInformationLinks()),
            array('name'=>$this->l('My account'),'query'=>$this->getMyAccountLinks()),
            array('name'=>$this->l('CMS'),'query'=>$cms_arr),
            array('name'=>$this->l('Supplier'),'query'=>$supplier_arr),
            array('name'=>$this->l('Manufacturer'),'query'=>$manufacturer_arr),
            array('name'=>$this->l('Blog'),'query'=>$blog_category_arr),
            array('name'=>$this->l('Shops'),'query'=>$shop_arr),
            array('name'=>$this->l('Products'),'query'=>array(
                array('id'=>'2_0', 'name'=>$this->l('Choose ID product')),
            )),
        );
        if($icon)
            array_unshift($links,array('name'=>$this->l('Icon'),'query'=>array(
                array('id'=>'9_1', 'name'=>$this->l('Home icon')),
            )));
        return $links;
    }

	private function _displayForm()
    {
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Tab'),
			),
			'input' => array(
                'links' => array(
					'type' => 'select',
        			'label' => $this->l('Menu item:'),
        			'name' => 'links',
                    'required' => true,
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
							'label' => $this->l('Select an option or fill out Label field')
						),
        			)
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Automatic building submenus using subcategories:'),
					'name' => 'auto_sub',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 0,
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
                    'desc' => $this->l('Only for product cateogries.'),
				), 
                'title' => array(
					'type' => 'text',
					'label' => $this->l('Title:'),
					'name' => 'title',
                    'size' => 64,
                    'lang' => true,
                    'required' => true,
				),
                'link' => array(
					'type' => 'text',
					'label' => $this->l('Link:'),
					'name' => 'link',
                    'size' => 64,
                    'lang' => true,
				),
                array(
					'type' => 'radio',
                    'label' => $this->l('Style:'),
					'name' => 'style',
					'class' => 't',
                    'default_value' => 1,
                    'values' => array(
						array(
							'id' => 'style_1',
							'value' => 1,
							'label' => '<img src="'.$this->_path.'views/img/s_1.jpg" />'),
						array(
							'id' => 'style_2',
							'value' => 2,
							'label' => '<img src="'.$this->_path.'views/img/s_2.jpg" />'),
						array(
							'id' => 'style_3',
							'value' => 3,
							'label' => '<img src="'.$this->_path.'views/img/s_3.jpg" />'),
						array(
							'id' => 'style_4',
							'value' => 4,
							'label' => '<img src="'.$this->_path.'views/img/s_4.jpg" />'),
						array(
							'id' => 'style_5',
							'value' => 5,
							'label' => '<img src="'.$this->_path.'views/img/s_5.jpg" />'),
						array(
							'id' => 'style_6',
							'value' => 6,
							'label' => '<img src="'.$this->_path.'views/img/s_6.jpg" />'),
						array(
							'id' => 'style_7',
							'value' => 7,
							'label' => '<img src="'.$this->_path.'views/img/s_7.jpg" />'),
						array(
							'id' => 'style_8',
							'value' => 8,
							'label' => '<img src="'.$this->_path.'views/img/s_8.jpg" />'),
						array(
							'id' => 'style_9',
							'value' => 9,
							'label' => '<img src="'.$this->_path.'views/img/s_9.jpg" />'),
						array(
							'id' => 'style_10',
							'value' => 10,
							'label' => '<img src="'.$this->_path.'views/img/s_10.jpg" />'),
						array(
							'id' => 'style_11',
							'value' => 11,
							'label' => '<img src="'.$this->_path.'views/img/s_11.jpg" />'),
						array(
							'id' => 'style_12',
							'value' => 12,
							'label' => '<img src="'.$this->_path.'views/img/s_12.jpg" />'),
						array(
							'id' => 'style_13',
							'value' => 13,
							'label' => '<img src="'.$this->_path.'views/img/s_13.jpg" />'),
						array(
							'id' => 'style_14',
							'value' => 14,
							'label' => '<img src="'.$this->_path.'views/img/s_14.jpg" />'),
						array(
							'id' => 'style_15',
							'value' => 15,
							'label' => '<img src="'.$this->_path.'views/img/s_15.jpg" />'),
						array(
							'id' => 'style_16',
							'value' => 16,
							'label' => '<img src="'.$this->_path.'views/img/s_16.jpg" />'),
						array(
							'id' => 'style_17',
							'value' => 17,
							'label' => '<img src="'.$this->_path.'views/img/s_17.jpg" />'),
						array(
							'id' => 'style_18',
							'value' => 18,
							'label' => '<img src="'.$this->_path.'views/img/s_18.jpg" />'),
					),
                    'desc' => $this->l('You can put custom content to blank areas'),
                ),
                array(
					'type' => 'radio',
                    'label' => $this->l('Align:'),
					'name' => 'alignment',
					'class' => 't',
                    'default_value' => 0,
                    'values' => array(
						array(
							'id' => 'alignment_0',
							'value' => 0,
							'label' => '<img src="'.$this->_path.'views/img/a_0.jpg" />'),
						array(
							'id' => 'alignment_1',
							'value' => 1,
							'label' => '<img src="'.$this->_path.'views/img/a_1.jpg" />'),
						array(
							'id' => 'alignment_2',
							'value' => 2,
							'label' => '<img src="'.$this->_path.'views/img/a_2.jpg" />'),
						array(
							'id' => 'alignment_3',
							'value' => 3,
							'label' => '<img src="'.$this->_path.'views/img/a_3.jpg" />'),
						array(
							'id' => 'alignment_4',
							'value' => 4,
							'label' => '<img src="'.$this->_path.'views/img/a_4.jpg" />'),
					),
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
					'type' => 'color',
					'label' => $this->l('Link color:'),
					'name' => 'txt_color',
					'class' => 'color',
					'size' => 20,
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Link hover color:'),
					'name' => 'txt_color_over',
					'class' => 'color',
					'size' => 20,
				),
                array(
					'type' => 'color',
					'label' => $this->l('Link background color:'),
					'name' => 'bg_color',
					'class' => 'color',
					'size' => 20,
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Link hover background color:'),
					'name' => 'bg_color_over',
					'class' => 'color',
					'size' => 20,
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Tab content background color:'),
					'name' => 'tab_content_bg',
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
		$helper->name_controller = 'stmegamenu';
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
		$helper->submit_action = 'savestmegamenu';
		$helper->table = StMegaMenuClass::$definition['table'];
		$helper->identifier = StMegaMenuClass::$definition['primary'];
        
    	$id_st_mega_menu = (int)Tools::getValue('id_st_mega_menu');
        if($id_st_mega_menu)
            $menu = new StMegaMenuClass((int)$id_st_mega_menu);
        else
            $menu = new StMegaMenuClass();
            
        if(Validate::isLoadedObject($menu))
        {
            $helper->id = $menu->id;
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_mega_menu');
        }
        $helper->fields_value = $this->getFieldsValueSt($menu);   
               
        if(Validate::isLoadedObject($menu))
        {
            $menu_arr = StMegaMenuClass::getById($menu->id, $this->context->language->id);
            $type = self::getType($menu_arr);
            if($type!=7)
            {
                $this->fields_form[0]['form']['input']['title']['disabled'] = $this->fields_form[0]['form']['input']['link']['disabled'] = true;
                $field = self::$_type[$type];
                $helper->fields_value['links'] = $type.'_'.$menu->$field;
            }
            else
                $helper->fields_value['links'] = '';
        }
            
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
        $parents = StMegaMenuClass::recurseTree($id_parent,1,1,0,$this->context->language->id,1); 
         
        if($parents)
            $parents = $this->_toFlat($parents);          
        foreach ($parents as $parent)
        {
            if($parent['id_category'] && $parent['auto_sub'])
                continue;
            $spacer = str_repeat('&nbsp;', $this->spacer_size * (int)$parent['level_depth']);
            $result[] = array(
                'id' => $parent['id_st_mega_menu'],
                'name' => $spacer.$this->displayTitle($parent['title'],$parent),
            );
        }
        return $result;
    }

	protected function initMenuForm()
	{                
	   
    	$id_st_mega_menu = (int)Tools::getValue('id_st_mega_menu');
        if($id_st_mega_menu)
        {
            $menu = new StMegaMenuClass($id_st_mega_menu);
            $id_parent = StMegaMenuClass::getSecondaryParent($menu->id_parent);
        }
        else
        {
            $menu = new StMegaMenuClass();
        }
        if(!isset($id_parent) && Tools::getValue('id_parent'))
            $id_parent = (int)Tools::getValue('id_parent');
           
        $parents_arr = $this->getParentList($id_parent);
        $parent = StMegaMenuClass::getById($id_parent,$this->context->language->id);
        if(count($parent))
            array_unshift($parents_arr,array(
               'id' => $parent['id_st_mega_menu'],
                'name' => $this->displayTitle($parent['title'],$parent),
            ));
            
        //unset self
        foreach($parents_arr as $k=>$v)
            if($v['id']==$id_st_mega_menu)
                unset($parents_arr[$k]);
        
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Menu'),
			),
			'input' => array(
                array(
					'type' => 'select',
        			'label' => $this->l('Parent:'),
        			'name' => 'id_parent',
                    'required' => true,
                    'options' => array(
        				'query' => $parents_arr,
        				'id' => 'id',
        				'name' => 'name',
						'default' => array(
							'value' => 0,
							'label' => $this->l('Please select')
						)
        			)
				),
                'links' => array(
					'type' => 'select',
        			'label' => $this->l('Menu item:'),
        			'name' => 'links',
                    'required' => true,
                    'options' => array(
                        'optiongroup' => array (
							'query' => $this->createLinks(false),
							'label' => 'name'
						),
						'options' => array (
							'query' => 'query',
							'id' => 'id',
							'name' => 'name'
						),
						'default' => array(
							'value' => '',
							'label' => $this->l('Select an option or fill out Label field')
						),
        			)
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Automatic building submenus using subcategories:'),
					'name' => 'auto_sub',
					'class' => 't',
					'is_bool' => true,
                    'default_value' => 0,
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
                    'desc' => $this->l('Only for product cateogries.'),
				), 
                'name' => array(
					'type' => 'text',
					'label' => $this->l('Label:'),
					'name' => 'title',
                    'size' => 64,
                    'lang' => true,
                    'required' => true,
				),
                'url' => array(
					'type' => 'text',
					'label' => $this->l('Url:'),
					'name' => 'link',
                    'size' => 64,
                    'lang' => true,
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
					'type' => 'color',
					'label' => $this->l('Link color:'),
					'name' => 'txt_color',
					'class' => 'color',
					'size' => 20,
				), 
                array(
					'type' => 'color',
					'label' => $this->l('Link background color:'),
					'name' => 'bg_color',
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
		$helper->name_controller = 'stmegamenu';
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
		$helper->submit_action = 'savemenustmegamenu';
		$helper->table = StMegaMenuClass::$definition['table'];
		$helper->identifier = StMegaMenuClass::$definition['primary'];
        
        if($menu->id)
            $this->fields_form[0]['form']['input'][] = array('type' => 'hidden', 'name' => 'id_st_mega_menu');
            
        $helper->fields_value = $this->getFieldsValueSt($menu); 
        if($menu->id)
        {
            $menu_arr = StMegaMenuClass::getById($menu->id, $this->context->language->id);
            $type = self::getType($menu_arr);
            if($type!=7)
            {
                $this->fields_form[0]['form']['input']['name']['disabled'] = $this->fields_form[0]['form']['input']['url']['disabled'] = true;
                $field = self::$_type[$type];
                if($type==2)
                {
                    $links_len = count($this->fields_form[0]['form']['input']['links']['options']['optiongroup']['query']);
                    $this->fields_form[0]['form']['input']['links']['options']['optiongroup']['query'][$links_len-1] = array('name'=>$this->l('Products'),'query'=>array(
                        array('id'=>'2_'.$menu->$field, 'name'=>$this->l('Product ID '.$menu->$field)),
                    ));
                }
                $helper->fields_value['links'] = $type.'_'.$menu->$field;
            }
            else
                $helper->fields_value['links'] = '';
        }
        else
            $helper->fields_value['id_parent'] = $id_parent;
                        
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&savemenu'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&id_st_mega_menu='.$id_parent.'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
				'desc' => $this->l('Back to list')
			)
		);
		return $helper;
	}
	protected function initCustomContentForm()
	{               
        $product_name = '';
 	    $id_st_mega_menu = (int)Tools::getValue('id_st_mega_menu');
        $menu = new StMegaMenuClass((int)$id_st_mega_menu);
        if(Validate::isLoadedObject($menu) && $menu->id_product)
        {
            $product = new Product((int)$menu->id_product, false, (int)$this->context->language->id);
                if ($product->id)
                    $product_name = $product->name;
        }
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Custom content'),
			),
			'input' => array(
				array(
					'type' => 'radio',
					'label' => $this->l('Content:'),
					'name' => 'content',
					'class' => 't',
                    'default_value' => 0,
					'values' => array(
						array(
							'id' => 'content_html',
							'value' => 0,
							'label' => $this->l('Html')
						),
						array(
							'id' => 'content_product',
							'value' => 1,
							'label' => $this->l('Product')
						)
					),
				),
				'html' => array(
					'type' => 'textarea',
					'label' => $this->l('Custom content:'),
					'name' => 'html',
					'lang' => true,
					'rows' => 10,
					'cols' => 80,
                    'desc' => array(
                        '<strong>'.$this->l('Bold Text').'</strong> &lt;strong&gt;Bold Text&lt;/strong&gt;',
                        '<em>'.$this->l('Italicized Text').'</em> &lt;em&gt;Italicized Text&lt;/em&gt;',
                        $this->l('Links').' &lt;a href=&quot;URL&quot;&gt;Text&lt;/a&gt;',
                        $this->l('Images').' &lt;img src=&quot;URL&quot;/&gt;',
                        $this->l('Unordered List').' &lt;ul&gt;&lt;li&gt;List Item&lt;/li&gt;&lt;/ul&gt; OR &lt;ul class=&quot;desc&quot;&gt;&lt;li&gt;List Item&lt;/li&gt;&lt;/ul&gt;',
                        $this->l('Ordered List').' &lt;ol&gt;&lt;li&gt;List Item&lt;/li&gt;&lt;/ol&gt;',
                        $this->l('Line Breaks').' &lt;br /&gt;',
                        $this->l('Headings').' &lt;h2&gt;Heading&lt;/h2&gt; &lt;h3&gt;Heading&lt;/h3&gt;&lt;h4&gt;Heading&lt;/h4&gt;',
                        $this->l('Paragraph').' &lt;p&gt;My first paragraph.&lt;/p&gt;',
                    ),
				),
                'product_name' => array(
					'type' => 'text',
					'label' => $this->l('Product name:'),
					'name' => 'product_name',
                    'autocomplete' => false,
                    'desc' => $this->l('Current product').': <span id="curr_product_name">'.$product_name.'</span>',
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
					'type' => 'hidden',
					'name' => 'id_product',
                ),
                array(
					'type' => 'hidden',
					'name' => 'id_st_mega_menu',
                )
			),
			'submit' => array(
				'title' => $this->l(' Save '),
				'class' => 'button'
			)
		);
        
        $default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'stmegamenu';
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
		$helper->submit_action = 'savecustomcontentstmegamenu';
		$helper->table = StMegaMenuClass::$definition['table'];
		$helper->identifier = StMegaMenuClass::$definition['primary'];
        
        $helper->fields_value = $this->getFieldsValueSt($menu);          
        
        if($menu->id_product)
        {
            $helper->fields_value['content'] = 1;
        }
        else
        {
            $this->fields_form[0]['form']['input']['product_name']['disabled'] = true;
            $helper->fields_value['id_product'] = 0;
            $helper->fields_value['content'] = 0;
        }
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&savecustomcontent'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			),
			'back' =>
			array(
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&id_st_mega_menu='.($menu->id ? $menu->id_parent : '').'&view'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
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
		$category_arr[] = array('id'=>'1_'.(int)$category->id,'name'=>(isset($spacer) ? $spacer : '').$category->name.' ('.$shop->name.')');

		if (isset($children) && is_array($children) && count($children))
			foreach ($children as $child)
			{
				$this->getCategoryOption($category_arr, (int)$child['id_category'], (int)$id_lang, (int)$child['id_shop'],$recursive);
			}
	}
    private function getBlogCategoryOption(&$blog_category_arr, $blog_categories)
    {
        foreach($blog_categories as $category)
        {
            $spacer = str_repeat('&nbsp;', $this->spacer_size * (int)$category['level_depth']);
            if($category['id_parent']==0 && $category['is_root_category'])
            {
                $module = new StMegaMenu();
		        $name = $module->l('Blog');
            }
            else
                $name = $category['name'];
                            
            $blog_category_arr[] = array('id'=>'10_'.(int)$category['id_st_blog_category'],'name'=>(isset($spacer) ? $spacer : '').$name);
            
            foreach($this->getBlogPage((int)$category['id_st_blog_category']) AS $blog)
            {
                $blog_category_arr[] = array('id'=>'11_'.(int)$blog['id_st_blog'],'name'=>(isset($spacer) ? $spacer.str_repeat('&nbsp;', $this->spacer_size) : '').$blog['name']);
            }
            
            if(isset($category['child']) && is_array($category['child']) && count($category['child']))
            {
                $this->getBlogCategoryOption($blog_category_arr, $category['child']);
            }
        }
    }
    private function getBlogPage($id_blog_category=0, $id_shop=false, $id_lang=false)
    {
        return StBlogClass::getCategoryBlogs($id_blog_category);
    }
	private function getCMSOptions(&$cms_arr, $parent = 0, $depth = 1, $id_lang = false)
	{
		$id_lang = $id_lang ? (int)$id_lang : (int)Context::getContext()->language->id;

		$categories = $this->getCMSCategories(false, (int)$parent, (int)$id_lang);
		$pages = $this->getCMSPages((int)$parent, false, (int)$id_lang);

		$spacer = str_repeat('&nbsp;', $this->spacer_size * (int)$depth);

		foreach ($categories as $category)
		{
            $cms_arr[] = array('id'=>'8_'.$category['id_cms_category'],'name'=>$spacer.$category['name']);
			$this->getCMSOptions($cms_arr, $category['id_cms_category'], (int)$depth + 1, (int)$id_lang);
		}

		foreach ($pages as $page)
            $cms_arr[] = array('id'=>'3_'.$page['id_cms'],'name'=>$spacer.$page['meta_title']);
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

    public static function getType($row)
    {
        $type = array_flip(self::$_type);
        if($row['shop_id'])
            return $type['shop_id'];
        if($row['id_cms'])
            return $type['id_cms'];
        if($row['id_category'])
            return $type['id_category'];
        if($row['id_supplier'])
            return $type['id_supplier'];
        if($row['id_manufacturer'])
            return $type['id_manufacturer'];
        if($row['id_product'])
            return $type['id_product'];
        if($row['id_cms_category'])
            return $type['id_cms_category'];
        if($row['id_icon'])
            return $type['id_icon'];
        if($row['id_st_blog_category'])
            return $type['id_st_blog_category'];
        if($row['id_st_blog'])
            return $type['id_st_blog'];
        if($row['pagename'])
            return $type['pagename'];
        if($row['title'])
            return $type['title'];
        return false;
    }

    public static function displayTitle($value, $row)
	{
        $id_lang = (int)Context::getContext()->language->id;
		$id_shop = (int)Shop::getContextShopID();
        $spacer = str_repeat('&nbsp;', 5 * (int)$row['level_depth']);
        
        $type_id = self::getType($row);
        switch($type_id)
        {
            case 1:
                $category = new Category((int)$row['id_category'],$id_lang);
                if(Validate::isLoadedObject($category))
                    return $spacer.$category->name;
            break;
            case 2:
                $product = new Product((int)$row['id_product'], false, (int)$id_lang);
                if ($product->id)
                    return $spacer.$product->name;
            break;
            case 3:
                $cms = CMS::getLinks((int)$id_lang, array((int)$row['id_cms']));
				if (count($cms))
					return $spacer.$cms[0]['meta_title'];
            break;
            case 4:
                $manufacturer = new Manufacturer((int)$row['id_manufacturer'], (int)$id_lang);
				if ($manufacturer->id)
				    return $spacer.$manufacturer->name;
            break;
            case 5:
                $supplier = new Supplier((int)$row['id_supplier'], (int)$id_lang);
				if ($supplier->id)
				    return $spacer.$supplier->name;
            break;
            case 6:
                $shop = new Shop((int)$row['shop_id']);
				if (Validate::isLoadedObject($shop))
					return $spacer.$shop->name;
            break;
            case 7:
                return $spacer.$value;
            break;
			case 8:
				$category = new CMSCategory((int)$row['id_cms_category'], (int)$id_lang);
				if ($category->id)
					return $spacer.$category->name;
			break;
			case 9:
				if ($row['id_icon']==1)
                {
                    $module = new StMegaMenu();
					return $module->l('Home icon');
                }
			break;
			case 10:
	            if(Module::isInstalled('stblog') && Module::isEnabled('stblog'))
				{
    				$category = new StBlogCategory((int)$row['id_st_blog_category'],$id_lang);
                    if(Validate::isLoadedObject($category))
                        if ($category->is_root_category)
         			    {
                            $module = new StMegaMenu();
         			        return $spacer.$module->l('Blog');
         			    }
                		else
                            return $spacer.$category->name;
                }
			break;
			case 11:
                if(Module::isInstalled('stblog') && Module::isEnabled('stblog'))
				{
                    $rs = StBlogClass::getBlogInfo((int)$row['id_st_blog'], 'name');
                    return $spacer.$rs['name'];
				}          
			break;
			case 12:
                $module = new StMegaMenu(); 
                $information = $module->getInformationLinks();
                $myAccount = $module->getMyAccountLinks();  
                
                if(array_key_exists($row['pagename'],$information))
                    return $spacer.$information[$row['pagename']]['name'];
                if(array_key_exists($row['pagename'],$myAccount))
                    return $spacer.$myAccount[$row['pagename']]['name'];
			break;
        }
        return false;
	}

    public static function displayType($value, $row)
	{
        $type_id = self::getType($row);
        $types = StMegaMenuClass::getTypes();
		return $types ? $types[$type_id] : '';
	}

    protected function initList()
	{
		$this->fields_list = array(
			'title' => array(
				'title' => $this->l('Title'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayTitle',
				'callback_object' => 'StMegaMenu',
			),
			'id_parent' => array(
				'title' => $this->l('Type'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayType',
				'callback_object' => 'StMegaMenu',
			),
			'position' => array(
				'title' => $this->l('Position'),
				'width' => 140,
				'type' => 'text',
			),
            'active' => array(
				'title' => $this->l('Status'),
				'align' => 'center',
				'active' => 'active',
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
		$helper->identifier = 'id_st_mega_menu';
		$helper->actions = array('view', 'edit', 'delete');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&add'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new tab')
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
            return StMegaMenu::displayTitle($value, $row);
        else
        {
            $module = new StMegaMenu();
            return $module->l('Custom content');
        }
    }
    public static function displayWidth($value, $row)
    {
        return round($row['spans']/3,2).'/4';
    }
    public function initCustomContentList()
    {
        $this->fields_list = array(
			'spans' => array(
				'title' => $this->l('Width'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayWidth',
				'callback_object' => 'StMegaMenu',
			),
			'id_product' => array(
				'title' => $this->l('Content'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayContent',
				'callback_object' => 'StMegaMenu',
			),
		);

		if (Shop::isFeatureActive())
			$this->fields_list['id_shop'] = array('title' => $this->l('ID Shop'), 'align' => 'center', 'width' => 25, 'type' => 'int');

		$helper = new HelperList();
		$helper->shopLinkType = '';
		$helper->simple_header = true;
		$helper->identifier = 'id_st_mega_menu';
		$helper->actions = array('edit');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['back'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Back to list')
		);

		$helper->title = $this->l('Custom content');
		$helper->table = $this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
    }
    public function initMenuList()
    {
        $this->fields_list = array(
			'title' => array(
				'title' => $this->l('Title'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayTitle',
				'callback_object' => 'StMegaMenu',
			),
			'id_parent' => array(
				'title' => $this->l('Type'),
				'width' => 140,
				'type' => 'text',
				'callback' => 'displayType',
				'callback_object' => 'StMegaMenu',
			),
			'position' => array(
				'title' => $this->l('Position'),
				'width' => 140,
				'type' => 'text',
			),
            'active' => array(
				'title' => $this->l('Status'),
				'align' => 'center',
				'active' => 'active',
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
		$helper->identifier = 'id_st_mega_menu';
		$helper->actions = array('edit', 'delete');
		$helper->show_toolbar = true;
		$helper->toolbar_btn['new'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&addmenu'.$this->name.'&id_parent='.(int)Tools::getValue('id_st_mega_menu').'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Add new')
		);
		$helper->toolbar_btn['back'] =  array(
			'href' => AdminController::$currentIndex.'&configure='.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			'desc' => $this->l('Back to list')
		);

		$helper->title = $this->l('Sub menu');
		$helper->table = $this->name;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		return $helper;
    }

    public function hookDisplayHeader()
    {
		$this->context->controller->addCSS($this->_path.'views/css/stmegamenu.css');
		$this->context->controller->addJS($this->_path.'views/js/stmegamenu.js');
		$this->context->controller->addJS($this->_path.'views/js/jquery.accordion.js');
		$this->context->controller->addJqueryPlugin('hoverIntent');
        if (!$this->isCached('header.tpl', $this->getCacheId()))
        {
            $custom_css = '';
            $data = StMegaMenuClass::getCustomCss();
            if(is_array($data) && count($data))
                foreach($data as $v)
                {
                    if($v['txt_color'])
                        $custom_css .= '#st_menu_'.$v['id_st_mega_menu'].' .ma_level_0{color:'.$v['txt_color'].';}';
                    if($v['txt_color_over'])
                        $custom_css .= '#st_menu_'.$v['id_st_mega_menu'].' .ma_level_0:hover, #st_menu_'.$v['id_st_mega_menu'].'.current .ma_level_0{color:'.$v['txt_color_over'].';}';
                    if($v['bg_color'])
                        $custom_css .= '#st_menu_'.$v['id_st_mega_menu'].' .ma_level_0{background-color:'.$v['bg_color'].';}';
                    if($v['bg_color_over'])
                        $custom_css .= '#st_menu_'.$v['id_st_mega_menu'].' .ma_level_0:hover, #st_menu_'.$v['id_st_mega_menu'].'.current .ma_level_0{background-color:'.$v['bg_color_over'].';}';
                    if($v['tab_content_bg'])
                        $custom_css .= '#st_menu_'.$v['id_st_mega_menu'].' .stmenu_sub{background-color:'.$v['tab_content_bg'].';border-color:'.$v['tab_content_bg'].';}';
                }
            $this->smarty->assign('megamenu_custom_css', $custom_css);
        }
		return $this->display(__FILE__, 'header.tpl', $this->getCacheId());
    }

    public function hookDisplayTop($param)
    {
        $this->smarty->assign(array(
            'megamenu_displaytop' => true,
        ));
		return $this->hookDisplayTopSecondary($param);
    }

    public function hookDisplayTopSecondary($param)
	{
		if (!$this->isCached('stmegamenu.tpl', $this->getCacheId()))
        {
	    $all = StMegaMenuClass::recurseTree(0,2,0,1,$this->context->language->id,0);
        $menu_pc = '<ul id="st_mega_menu" class="hidden-tablet hidden-phone clearfix">';
        $menu_mob = '<ul id="stmobilemenu" class="visible-tablet visible-phone">';
        if($all)
    		foreach($all as $v)
            {
                $link = self::getLink($v,0,(isset($v['children']) && $v['children'] && count($v['children'])));
                if(!$link)
                    continue;
                $menu_pc .= '<li id="st_menu_'.$v['id_st_mega_menu'].'" class="sttlevel0 '.(isset($v['alignment']) ? ' m_alignment_'.$v['alignment'].' ' : 'm_alignment_0').'">'.$link.'<div class="stmenu_sub '.($v['style']==10 ? ' style_classic ' : ' style_wide ').'" >';
                $menu_mob_tmp = '';
            
                if(isset($v['children']) && is_array($v['children']) && count($v['children']))
                {
                    if($v['style']==10)
                    {
                        $sub_menu = array();
                        foreach($v['children'] as $m)
                            if(!$m['spans'])
                                $sub_menu[] = $m;
                        if(count($sub_menu))
                        {
                            $menu_pc .= '<div class="row"><div class="span3 stmenu_container">';
                            $menu_mob_tmp .= '<span class="opener">&nbsp;</span>';
                            $this->buildUlClassic($sub_menu,$menu_pc,$menu_mob_tmp,1);
                            $menu_pc .= '</div></div>';
                        }
                    }
                    else
                    {
                        $menu_pc_tmp = '';
                        $count_menu = $count_html = 0;
                        $sub_menu = $sub_html = array();
                        if($lc = count(self::$_layout[$v['style']][0]))
                        {
                            foreach($v['children'] as $m)
                                if(!$m['spans'])
                                    $sub_menu[] = $m;
                            $sub_menu_len = count($sub_menu);
                            $count_menu = array_sum(array_slice(self::$_layout[$v['style']][0], 0, ($sub_menu_len<$lc ? $sub_menu_len : $lc)));
                        }
                        
                        if($lc = count(self::$_layout[$v['style']][1]))
                        {
                            foreach($v['children'] as $m)
                                if($m['spans'] && ($m['id_product'] || $m['html']))
                                {
                                    $sub_html[] = $m;
                                    $count_html += $m['spans'];
                                }
                        }
                        //
                        $pc_sum = $count_menu+$count_html;
                        
                        if(count(self::$_layout[$v['style']][0]) && $count_menu)
                        {
                            $sum_menu = array_sum(self::$_layout[$v['style']][0]);
                            $span_adjust = (isset($v['alignment']) && $v['alignment']) ? self::$_fluid_map[$v['style']][$pc_sum][$count_menu] : $sum_menu;
                            $menu_pc_tmp .= '<div class="span'.$span_adjust.' stmenu_container">';
                            $menu_mob_tmp .= '<span class="opener">&nbsp;</span>';
                            $this->buildUl($sub_menu,$menu_pc_tmp,$menu_mob_tmp,1,$v['style'],self::$_layout_map[$v['style']][$count_menu]);
                            $menu_pc_tmp .= '</div>';
                        }
                        if(count(self::$_layout[$v['style']][1]) && $count_html)
                        {
                            $sum_html = array_sum(self::$_layout[$v['style']][1]);
                            $span_adjust = (isset($v['alignment']) && $v['alignment']) ? self::$_fluid_map[$v['style']][$pc_sum][$count_html] : $sum_html;
                            $menu_pc_tmp .= '<div class="span'.$span_adjust.'"><div class="row-fluid">';
                            (isset($v['hide_on_mobile']) && !$v['hide_on_mobile']) && $menu_mob_tmp .= '<span class="opener">&nbsp;</span>';
                            $this->buildHtml($sub_html,$menu_pc_tmp,$menu_mob_tmp,self::$_layout_map[$v['style']][$count_html]);
                            $menu_pc_tmp .= '</div></div>';
                        }
                        
                        if($pc_sum)
                            $menu_pc .= '<div class="row"><div class="span'.( (isset($v['alignment']) && $v['alignment']) ? $pc_sum : '12' ).'"><div class="container-fluid"><div class="row-fluid">'.$menu_pc_tmp.'</div></div></div></div>';
                    }
                    
                }
                $menu_pc .= '</div></li>';
                if(!isset($v['hide_on_mobile']) || (isset($v['hide_on_mobile']) && !$v['hide_on_mobile']))
                    $menu_mob .= '<li class="stmlevel0">'.self::getLink($v,0).$menu_mob_tmp.'</li>';
            }
        $menu_pc .= '</ul>';
        $menu_mob .= '</ul>';
		$this->smarty->assign(array(
            'menu_pc' => $menu_pc,
            'menu_mob' => $menu_mob, 
        ));
        }
		return $this->display(__FILE__, 'stmegamenu.tpl', $this->getCacheId());
	}
    public function buildHtml($tree,&$pc,&$mob,$map)
    {
        if(is_array($tree) && count($tree))
        {
            $mob .= '<div class="mobile_menu_custom_content">';
            foreach($tree as $v)
            {
                if(!$v['spans'])
                    continue;
                $pc .= '<div class="span'.$map[$v['spans']].' menu_custom_content" style="'.($v['bg_color'] ? 'background-color:'.$v['bg_color'].';' : '').'">';
                $mob_menu = '<div class="menu_custom_content">';
                if($v['id_product'])
                {
                    $pc .= $this->getProductInfo($v['id_product']);
                    $mob_menu .= $this->getProductInfo($v['id_product']);
                }
                else
                {
                    $pc .= $v['html'];
                    $mob_menu .= $v['html'];
                }
                $pc .= '</div>'.PHP_EOL;
                $mob_menu .= '</div>'.PHP_EOL;
                if(isset($v['hide_on_mobile']) && !$v['hide_on_mobile'])
                    $mob .= $mob_menu;
            }
            $mob .= '</div>';
        }
    }
                    
	private function getProductInfo($id, $i=NULL)
	{
	    $res = '';
		$id_lang = (int)$this->context->language->id;
		$id_shop = (int)Shop::getContextShopID();
		
		$product = new Product((int)$id, true, (int)$id_lang);
	
		if (Validate::isLoadedObject($product))
        {
            $cover = Product::getCover($product->id);
            $product_link = $product->getLink();
            $res .= '<div class="menu_product_wrap">
                <a href="'.htmlspecialchars($product_link, ENT_QUOTES, 'UTF-8').'" title="'.htmlspecialchars($product->name, ENT_COMPAT, 'UTF-8').'" class="product_image"><img src="'.$this->context->link->getImageLink($product->link_rewrite, $product->id.'-'.$cover['id_image'], 'home_default').'" alt="'.htmlspecialchars($product->name, ENT_COMPAT, 'UTF-8').'" /></a>
                <p class="s_title_block"><a href="'.htmlspecialchars($product_link, ENT_QUOTES, 'UTF-8').'" title="'.htmlspecialchars($product->name, ENT_COMPAT, 'UTF-8').'">'.htmlspecialchars(Tools::substr($product->name, 0, 30), ENT_COMPAT, 'UTF-8').(Tools::strlen($product->name)>30 ? '...' : '').'</a></p>';
            $catalog_mod = (bool)Configuration::get('PS_CATALOG_MODE') || !(bool)Group::getCurrent()->show_prices;
            if(!$catalog_mod)
                $res .= '<span class="price">'.Tools::displayPrice(Tools::ps_round($product->price*(0.01*$product->tax_rate)+$product->price, 2)).'</span>'.(($product->specificPrice['reduction']) ? ' <span class="old_price">'.Tools::displayPrice($product->getPriceWithoutReduct(false)).'</span>' : '');
            $res .= '</div>';
        }
        return $res;
	}
    
    public function buildUl($tree,&$pc,&$mob,$level=1,$style=0,$map,$timer=0)
    {
        if(is_array($tree) && count($tree))
        {
            $spans = self::$_layout[$style][0][0];
            $spans_nbr = count(self::$_layout[$style][0]);
            
            $pc .= '<ul class="row-fluid sttlevel'.$level.'">';
            $mob .= '<ul class="stmlevel'.$level.'">'; 
                
            foreach($tree as $v)
            {
                $link = self::getLink($v,$level);
                if(!$link)
                    continue;
                    
                if($level==1 && $timer++%$spans_nbr==0 && $timer>1)
                    $pc .= '</ul><ul class="row-fluid sttlevel'.$level.'">';
                    
                $pc .= '<li class="mllevel'.$level.($level==1 ? ' span'.$map[$spans].' ' : '').'" style="'.($v['bg_color'] ? 'background-color:'.$v['bg_color'].';' : '').'" >'.$link; 
                $mob_menu = '<li>'.$link; 
                if(isset($v['children']) && is_array($v['children']) && count($v['children']))
                {
                    $mob_menu .= '<span class="opener">&nbsp;</span>'; 
                    $this->buildUl($v['children'],$pc,$mob_menu,$level+1,$style,$map,$timer); 
                }
                $pc .= "</li>".PHP_EOL;    
                $mob_menu .= "</li>".PHP_EOL;   
                if(!isset($v['hide_on_mobile']) || (isset($v['hide_on_mobile']) && !$v['hide_on_mobile']))
                    $mob .= $mob_menu; 
            } 
            $pc .= '</ul>'.PHP_EOL;
            $mob .= '</ul>'.PHP_EOL;    
        }
    }
    
    public function buildUlClassic($tree,&$pc,&$mob,$level=1)
    {
        if(is_array($tree) && count($tree))
        {
            $pc .= '<ul class="sttlevel'.$level.'">'; 
            $mob .= '<ul class="stmlevel'.$level.'">';
            foreach($tree as $v)
            {
                $link = self::getLink($v,$level);
                if(!$link)
                    continue;
                
                $pc .= '<li class="mllevel'.$level.'" >'.$link; 
                $mob_menu = '<li>'.$link; 
                if(isset($v['children']) && is_array($v['children']) && count($v['children']))
                {
                    $pc .= '<i class="icon-angle-right"></i>'; 
                    $mob_menu .= '<span class="opener">&nbsp;</span>'; 
                    $this->buildUlClassic($v['children'],$pc,$mob_menu,$level+1); 
                }
                $pc .= "</li>".PHP_EOL;    
                $mob_menu .= "</li>".PHP_EOL;      
                if(!isset($v['hide_on_mobile']) || (isset($v['hide_on_mobile']) && !$v['hide_on_mobile']))
                    $mob .= $mob_menu; 
            } 
            $pc .= '</ul>'; 
            $mob .= '</ul>'; 
        }
    }
    public static function getLink($row,$level=0,$is_parent=false)
	{
	    $context = Context::getContext();
	    $user_groups =  ($context->customer->isLogged() ? $context->customer->getGroups() : array(Configuration::get('PS_UNIDENTIFIED_GROUP'))); 
        $id_lang = (int)$context->language->id;
		$id_shop = (int)Shop::getContextShopID();
        $link=$name=$icon=$title='';
        $type_id = self::getType($row);
        switch($type_id)
        {
            case 1:           
                $category = new Category((int)$row['id_category'],$id_lang);
                if(Validate::isLoadedObject($category))
                {
                    $is_intersected = array_intersect($category->getGroups(), $user_groups);
                    if(!empty($is_intersected))
                    {
                        if ($category->level_depth > 1)
                			$link = $category->getLink();
                		else
                			$link = Context::getContext()->link->getPageLink('index');
                        $name = $category->name;
                    }
                }
            break;
            case 2:
                $product = new Product((int)$row['id_product'], true, (int)$id_lang);
                if (Validate::isLoadedObject($product))
                {
                    $link = $product->getLink();
                    $name = $product->name;
                }
            break;
            case 3:
                $cms = CMS::getLinks((int)$id_lang, array((int)$row['id_cms']));
				if (count($cms))
                {
                    $link = $cms[0]['link'];
                    $name = $cms[0]['meta_title'];
                }
            break;
            case 4:
                $manufacturer = new Manufacturer((int)$row['id_manufacturer'], (int)$id_lang);
				if (Validate::isLoadedObject($manufacturer))
                {
                    if (intval(Configuration::get('PS_REWRITING_SETTINGS')))
						$manufacturer->link_rewrite = Tools::link_rewrite($manufacturer->name, false);
					else
						$manufacturer->link_rewrite = 0;
					$theLink = new Link;
                    $link = $theLink->getManufacturerLink((int)$manufacturer->id, $manufacturer->link_rewrite);
					$name = $manufacturer->name;
                }
            break;
            case 5:
                $supplier = new Supplier((int)$row['id_supplier'], (int)$id_lang);
				if (Validate::isLoadedObject($supplier))
                {
                    $theLink = new Link;
					$link = $theLink->getSupplierLink((int)$supplier->id, $supplier->link_rewrite);
                    $name = $supplier->name;
                }
            break;
            case 6:
                $shop = new Shop((int)$row['shop_id']);
				if (Validate::isLoadedObject($shop))
				{
					$link = $shop->getBaseURL();
                    $name = $shop->name;
				}                
            break;
            case 7:
                $link = $row['link'];
                $name = $row['title'];
            break;
			case 8:
				$category = new CMSCategory((int)$row['id_cms_category'], (int)$id_lang);
				if (Validate::isLoadedObject($category))
                {
                    $link = $category->getLink();
                    $name = $category->name;
                }
			break;
			case 9:
				if ($row['id_icon']==1)
                {
                    $link = _PS_BASE_URL_.__PS_BASE_URI__;
                    $name = '';
                    $icon = '<i class="icon-home"></i>';
                }
			break;
			case 10:
	            if(Module::isInstalled('stblog') && Module::isEnabled('stblog'))
				{
				    $category = new StBlogCategory((int)$row['id_st_blog_category'],$id_lang);
                    if(Validate::isLoadedObject($category))
                    {
                        if ($category->is_root_category)
             			{
             			    $link = Context::getContext()->link->getModuleLink('stblog','default');
                            $module = new StMegaMenu();
         			        $name = $module->l('Blog');
             			}
                		else
                        {
                            $link = Context::getContext()->link->getModuleLink('stblog','category',array('blog_id_category'=>$category->id,'rewrite'=>$category->link_rewrite));
                            $name = $category->name;
                		}
                    }
				}
			break;
			case 11:
                if(Module::isInstalled('stblog') && Module::isEnabled('stblog'))
				{
                    $rs = StBlogClass::getBlogInfo((int)$row['id_st_blog'],'bl.`name`, bl.`link_rewrite`');
                    $link = Context::getContext()->link->getModuleLink('stblog','article',array('id_blog'=>(int)$row['id_st_blog'],'rewrite'=>$rs['link_rewrite']));
                    $name = $rs['name'];
				}
			break;
            case 12:
		        $theLink = new Link;
                
                $catalog_mod = (bool)Configuration::get('PS_CATALOG_MODE') || !(bool)Group::getCurrent()->show_prices;
                
    			$voucherAllowed = CartRule::isFeatureActive();
    			$returnAllowed = (int)(Configuration::get('PS_ORDER_RETURN'));
                
                $module = new StMegaMenu(); 
                $information = $module->getInformationLinks();
                $myAccount = $module->getMyAccountLinks();  
                
                if($row['pagename'] == 'prices-drop' && !$catalog_mod)
                    $link = $theLink->getPageLink($row['pagename']); 
                if($row['pagename'] == 'new-products')
                    $link = $theLink->getPageLink($row['pagename']);
                if($row['pagename'] == 'best-sales' && !$catalog_mod)
                    $link = $theLink->getPageLink($row['pagename']);
                if($row['pagename'] == 'stores')
                    $link = $theLink->getPageLink($row['pagename']);
                if($row['pagename'] == 'contact')
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'sitemap')
                    $link = $theLink->getPageLink($row['pagename']);
                if($row['pagename'] == 'manufacturer')
                    $link = $theLink->getPageLink($row['pagename']);
                if($row['pagename'] == 'supplier')
                    $link = $theLink->getPageLink($row['pagename']);
                    
                if($row['pagename'] == 'my-account')
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'history')
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'order-follow' && $returnAllowed)
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'order-slip')
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'addresses')
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'identity')
                    $link = $theLink->getPageLink($row['pagename'], true);
                if($row['pagename'] == 'discount' && $voucherAllowed)
                    $link = $theLink->getPageLink($row['pagename'], true);
                
                if($link)
                {
                    if(array_key_exists($row['pagename'],$information))
                    {
                        $name = $information[$row['pagename']]['name'];
                        $title = $information[$row['pagename']]['title'];
                    }
                    if(array_key_exists($row['pagename'],$myAccount))
                    {
                        $name = $myAccount[$row['pagename']]['name'];
                        $title = $myAccount[$row['pagename']]['title'];
                    }
                }
            break;
        }
        if(!$name && !$icon)
            return '';
        return '<a href="'.($link ? htmlspecialchars($link, ENT_QUOTES, 'UTF-8') : 'javascript:;').'"  style="'.(($row['txt_color'] && $row['id_parent']) ? 'color:'.$row['txt_color'].';':'').(($row['bg_color'] && $row['id_parent']) ? 'background-color:'.$row['bg_color'].';':'').'" '.($row['new_window'] ? ' target="_blank" ':'').' class="ma_level_'.$level.($is_parent ? ' is_parent ' : '').($icon ? ' is_icon_menu ' : '').'" title="'.htmlspecialchars(($title ? $title : $name), ENT_COMPAT, 'UTF-8').'">'.$icon.htmlspecialchars(Tools::substr($name, 0, 30), ENT_COMPAT, 'UTF-8').(Tools::strlen($name)>30 ? '...' : '').($is_parent ? '<i class="icon-down-dir-2"></i>' : '').'</a>';
	}
    
	public function hookActionCategoryAdd($params)
	{
		$this->clearStMegamenuCache();
	}
	public function hookActionCategoryDelete($params)
	{
		$this->clearStMegamenuCache();
	}
	public function hookActionCategoryUpdate($params)
	{
		$this->clearStMegamenuCache();
	}
	public function hookActionProductDelete($params)
	{
		$this->clearStMegamenuCache();
	}
	public function hookActionProductAdd($params)
	{
		$this->clearStMegamenuCache();
	}
	public function hookActionProductUpdate($params)
	{
		$this->clearStMegamenuCache();
	}
	public function hookActionObjectCategoryUpdateAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectCategoryDeleteAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectCmsUpdateAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectCmsDeleteAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectSupplierUpdateAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectSupplierDeleteAfter($params)
	{
		$this->clearStMegamenuCache();
	}	

	public function hookActionObjectManufacturerUpdateAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectManufacturerDeleteAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectProductUpdateAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookActionObjectProductDeleteAfter($params)
	{
		$this->clearStMegamenuCache();
	}
	
	public function hookCategoryUpdate($params)
	{
		$this->clearStMegamenuCache();
	}
    
	public function hookActionShopDataDuplication($params)
	{
		return $this->sampleData($params['new_id_shop']);
    }
    
    private function clearStMegamenuCache()
    {
		$this->_clearCache('header.tpl');
		$this->_clearCache('stmegamenu.tpl');
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
