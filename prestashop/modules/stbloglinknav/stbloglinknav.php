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

class StBlogLinkNav extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    public $validation_errors = array();
	public function __construct()
	{
		$this->name          = 'stbloglinknav';
		$this->tab           = 'front_office_features';
		$this->version       = '1.0';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;
		
		parent::__construct();
		
        $this->displayName = $this->l('Blog Module - Next and previous links');
        $this->description = $this->l('This module adds Next and Previous links on the blog page.');
	}

	public function install()
	{
		if (!parent::install() 
			|| !$this->registerHook('displayAnywhere')
            || !$this->registerHook('displayStBlogArticleFooter')
        )
			return false;
		return true;
	}

    private function _prepareHook($nav)
    {
        $id_blog = (int)Tools::getValue('id_blog');
		if (!$id_blog)
			return false;
            
        include_once(_PS_MODULE_DIR_.'stblog/classes/StBlogClass.php');
        include_once(_PS_MODULE_DIR_.'stblog/classes/StBlogCategory.php');
        
        $id_lang = (int)$this->context->language->id;
        
        $blog = new StBlogClass($id_blog, $id_lang);
        if(!Validate::isLoadedObject($blog))
            return false;
        
        if (!isset($this->context->cookie->last_visited_category_blog) || !StBlogClass::idIsOnCategoryId($id_blog, array('0' => array('id_category' => $this->context->cookie->last_visited_category_blog))))
		  $this->context->cookie->last_visited_category_blog = (int)($blog->id_st_blog_category_default);
          
        $curr_position = $blog->getPositionInCategory();
        if(!Validate::isUnsignedInt($curr_position))
            return false;
            
        $sql = 'SELECT b.*, st_blog_shop.*, bl.`content`, bl.`content_short`, bl.`link_rewrite`, bl.`meta_title`, bl.`name`, bl.`video`
			FROM `'._DB_PREFIX_.'st_blog_category_blog` cb
			LEFT JOIN `'._DB_PREFIX_.'st_blog` b
				ON cb.`id_st_blog` = b.`id_st_blog`
			'.Shop::addSqlAssociation('st_blog', 'b').'
			LEFT JOIN `'._DB_PREFIX_.'st_blog_lang` bl
				ON (b.`id_st_blog` = bl.`id_st_blog`
				AND bl.`id_lang` = '.(int)$id_lang.')
			WHERE st_blog_shop.`id_shop` = '.(int)$this->context->shop->id.'
				AND cb.`id_st_blog_category` = '.(int)$this->context->cookie->last_visited_category_blog.' 
				AND st_blog_shop.`active` = 1
                AND cb.`position` '.($nav=='next' ? '>' : '<').$curr_position.'
                GROUP BY st_blog_shop.`id_st_blog`
                ORDER BY cb.`position` ASC';
    
        if($blog = Db::getInstance()->getRow($sql))
            return $blog;
        else
            return false;
    }
    
    public function hookDisplayAnywhere($params)
    {
	    if(!Module::isInstalled('stblog') || !Module::isEnabled('stblog'))
            return false;
        
	    if(!isset($params['caller']) || $params['caller']!=$this->name)
            return false;
            
		$module_name = '';
		if (Validate::isModuleName(Tools::getValue('module')))
			$module_name = Tools::getValue('module');
            
        if(Tools::getValue('fc') != 'module' || $module_name != 'stblog' || Dispatcher::getInstance()->getController() != 'article')
            return false;
            
        if(isset($params['nav']) && ($params['nav']=='prev' || $params['nav']=='next'))
        {
            $blog = $this->_prepareHook($params['nav']);
        	if(!$blog)
                return false;
            
    		$this->smarty->assign(array(
                'nav_blog' => $blog,
                'nav'=>$params['nav'],
            ));
		    return $this->display(__FILE__, 'stbloglinknav-rightbar.tpl');
        }
        else
            return false;
    }
    
    public function hookDisplayStBlogArticleFooter($params)
    {
        $prev_blog = $this->_prepareHook('prev');
        $next_blog = $this->_prepareHook('next');
		$this->smarty->assign(array(
            'prev_blog' => $prev_blog,
            'next_blog'=>$next_blog,
        ));
		return $this->display(__FILE__, 'stbloglinknav.tpl');
    }
}