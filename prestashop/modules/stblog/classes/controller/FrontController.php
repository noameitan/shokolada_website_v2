<?php
/*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
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
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

include_once(dirname(__FILE__).'/../../stblog.php');
include_once(dirname(__FILE__).'/../StBlogClass.php');
include_once(dirname(__FILE__).'/../StBlogCategory.php');
include_once(dirname(__FILE__).'/../StBlogImageClass.php');

class StblogModuleFrontController extends ModuleFrontController
{
	public function initContent()
	{
	    parent::initContent();
        
		if ($this->context->getMobileDevice() == false)
		{
		    $page_name = Dispatcher::getInstance()->getController();
            if($page_name == 'category')
    		    if(Configuration::get('ST_BLOG_COLUMN_CATEGORY')==1)
                    $this->display_column_left = true;
                elseif(Configuration::get('ST_BLOG_COLUMN_CATEGORY')==2)
                    $this->display_column_right = true;
                elseif(Configuration::get('ST_BLOG_COLUMN_CATEGORY')==3)
                {
                    $this->display_column_left = true;
                    $this->display_column_right = true;
                }
                
            if($page_name == 'default')
    		    if(Configuration::get('ST_BLOG_COLUMN_HOMEPAGE')==1)
                    $this->display_column_left = true;
                elseif(Configuration::get('ST_BLOG_COLUMN_HOMEPAGE')==2)
                    $this->display_column_right = true;
                elseif(Configuration::get('ST_BLOG_COLUMN_HOMEPAGE')==3)
                {
                    $this->display_column_left = true;
                    $this->display_column_right = true;
                }
            
            if($page_name == 'article')
    		    if(Configuration::get('ST_BLOG_COLUMN_ARTICLE')==1)
                    $this->display_column_left = true;
                elseif(Configuration::get('ST_BLOG_COLUMN_ARTICLE')==2)
                    $this->display_column_right = true;
                elseif(Configuration::get('ST_BLOG_COLUMN_ARTICLE')==3)
                {
                    $this->display_column_left = true;
                    $this->display_column_right = true;
                }
            
		    $this->context->smarty->assign($this->getMetaTags($this->context->language->id, $page_name));
        
			$this->context->smarty->assign(array(
			    'HOOK_LEFT_COLUMN' => Hook::exec('displayStBlogLeftColumn'),
			    'HOOK_RIGHT_COLUMN' => Hook::exec('displayStBlogRightColumn'),
    			'st_hide_left_column' => !$this->display_column_left,
    			'st_hide_right_column' => !$this->display_column_right,
			));
            
		}
	}
    public function getMetaTags($id_lang,$page_name)
    {
        $ret = array(
            'meta_title' => '',
            'meta_description' => '',
            'meta_keywords' => '',
        );
    	if ($page_name == 'category' && ($id_st_blog_category = Tools::getValue('blog_id_category')))
        {
            $sql = 'SELECT `name`,`meta_title`, `meta_description`, `meta_keywords`
				FROM `'._DB_PREFIX_.'st_blog_category_lang`
				WHERE `id_lang` = '.(int)$id_lang.'
					AND `id_st_blog_category` = '.(int)$id_st_blog_category;
    		if ($row = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql))
    		{
    			$ret['meta_title'] = ($row['meta_title'] ? $row['meta_title'] : $row['name']).' - '.Configuration::get('ST_BLOG_META_TITLE',$this->context->language->id);
                $ret['meta_description'] = $row['meta_description'];
                $ret['meta_keywords'] = $row['meta_keywords'];
    		}
        }
		elseif ($page_name == 'article' && ($id_st_blog = Tools::getValue('id_blog')))
        {
            $sql = 'SELECT `name`,`meta_title`, `meta_description`, `meta_keywords`
				FROM `'._DB_PREFIX_.'st_blog_lang`
				WHERE `id_lang` = '.(int)$id_lang.'
					AND `id_st_blog` = '.(int)$id_st_blog;
    		if ($row = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow($sql))
    		{
    			$ret['meta_title'] = ($row['meta_title'] ? $row['meta_title'] : $row['name']).' - '.Configuration::get('ST_BLOG_META_TITLE',$this->context->language->id);
                $ret['meta_description'] = $row['meta_description'];
                $ret['meta_keywords'] = $row['meta_keywords'];
    		}
        }
        
        $ret['meta_title'] =='' && $ret['meta_title'] = Configuration::get('ST_BLOG_META_TITLE', $this->context->language->id);
        $ret['meta_description'] =='' && $ret['meta_description'] = Configuration::get('ST_BLOG_META_KEYWORDS', $this->context->language->id);
        $ret['meta_keywords'] =='' && $ret['meta_keywords'] = Configuration::get('ST_BLOG_META_DESCRIPTION', $this->context->language->id);
        
        return $ret;
    }
    public function getPath($id_st_blog_category, $path = '')
    {
		$id_st_blog_category = (int)$id_st_blog_category;

		$pipe = Configuration::get('PS_NAVIGATION_PIPE');
		if (empty($pipe))
			$pipe = '>';
        
        $module_instanct = new StBlog();
        
		$full_path = '<li typeof="v:Breadcrumb"><a rel="v:url" property="v:title" href="'.Tools::safeOutput($this->context->link->getModuleLink('stblog','default')).'" title="'.htmlentities($module_instanct->l('Blog'), ENT_NOQUOTES, 'UTF-8').'">'.htmlentities($module_instanct->l('Blog'), ENT_NOQUOTES, 'UTF-8').'</a></li><li class="navigation-pipe">'.$pipe.'</li>';
		
		$categories = StBlogCategory::getParentsCategories($id_st_blog_category);        
        foreach($categories as $k=>$category)
		    if($category['id_parent']==0 || $category['is_root_category'])
                unset($categories[$k]);

		$n = 1;
		$n_categories = count($categories);
		foreach ($categories as $category)
		{
		    if($n<$n_categories || !empty($path))
			     $full_path .= '<li typeof="v:Breadcrumb"><a rel="v:url" property="v:title" href="'.Tools::safeOutput($this->context->link->getModuleLink('stblog','category',array('blog_id_category'=>$category['id_st_blog_category'],'rewrite'=>$category['link_rewrite']))).'" title="'.htmlentities($category['name'], ENT_NOQUOTES, 'UTF-8').'">';
            else
                $full_path .= '<li typeof="v:Breadcrumb"><span property="v:title">';
                
			$full_path .= htmlentities($category['name'], ENT_NOQUOTES, 'UTF-8');
            
			$full_path .= ( ($n<$n_categories || !empty($path)) ? '</a></li>' : '</span></li>' );
            
			$full_path .= ($n++ < $n_categories || !empty($path)) ? '<li class="navigation-pipe">'.$pipe.'</li>' : '';
		}

		return $full_path.($path ? '<li typeof="v:Breadcrumb"><span property="v:title">'.$path.'</span></li>' : '');
    }
}
