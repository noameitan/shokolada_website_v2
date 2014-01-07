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

class StMegaMenuClass extends ObjectModel
{
	/** @var integer banner id*/
	public $id;
	public $id_parent;
	public $id_shop;
	public $nleft;
	public $nright;
	public $level_depth;
	public $shop_id;
	public $id_cms;
	public $id_cms_category;
	public $id_category;
	public $id_supplier;
	public $id_manufacturer;
	public $id_product;
	public $id_icon;
	public $id_st_blog_category;
	public $id_st_blog;
	public $pagename;
	public $spans;
	public $new_window;
	public $position;
	public $active;
	public $txt_color;
	public $txt_color_over;
	public $bg_color;
	public $bg_color_over;
	public $tab_content_bg;
	public $html;
	public $title;
	public $link;
	public $style;
	public $auto_sub;
	public $hide_on_mobile;
	public $alignment;
	
	/**
	 * @see ObjectModel::$definition
	 */
	public static $definition = array(
		'table'     => 'st_mega_menu',
		'primary'   => 'id_st_mega_menu',
		'multilang' => true,
		'fields' => array(
			'id_parent'       => array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt'),
			'id_shop'         => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt', 'required' => true),
			'nleft'           => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'nright'          => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'level_depth'     => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'shop_id'         => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_cms'          => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_cms_category' => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_category'     => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_supplier'     => array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt'),
			'id_manufacturer' => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_product'      => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_icon'         => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_st_blog_category'         => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'id_st_blog'      => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
            'pagename'        => array('type' => self::TYPE_STRING, 'validate' => 'isControllerName'),
			'spans'           => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'new_window'      => array('type' => self::TYPE_INT, 'validate' => 'isBool'),
			'position'        => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'active'          => array('type' => self::TYPE_BOOL, 'validate' => 'isBool'),
			'style'           => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'auto_sub'        => array('type' => self::TYPE_INT, 'validate' => 'isBool'),
			'hide_on_mobile'  => array('type' => self::TYPE_INT, 'validate' => 'isBool'),
			'alignment'       => array('type' => self::TYPE_INT, 'validate' => 'isUnsignedInt'),
			'txt_color'       => array('type' => self::TYPE_STRING, 'size' => 7),
			'txt_color_over'  => array('type' => self::TYPE_STRING, 'size' => 7),
			'bg_color'        => array('type' => self::TYPE_STRING, 'size' => 7),
            'bg_color_over'   => array('type' => self::TYPE_STRING, 'size' => 7),
            'tab_content_bg'  => array('type' => self::TYPE_STRING, 'size' => 7),
			
			// Lang fields
			'html'            => array('type' => self::TYPE_HTML, 'lang' => true, 'validate' => 'isAnything'),
			'title'           => array('type' => self::TYPE_STRING, 'lang' => true,  'size' => 255, 'validate' => 'isGenericName'),
			'link'            => array('type' => self::TYPE_STRING, 'lang' => true, 'size' => 255, 'validate' => 'isAnything'),
		)
	);

    public function delete()
    {
        $sub = self::recurseTree($this->id,2,$this->level_depth,0);
        if($sub && count($sub))
		  $this->deleteRec($sub);

		return parent::delete();
    }

    public function deleteRec($sub)
    {
        foreach($sub as $v)
        {
            if(isset($v['children']) && $v['children'] && count($v['children']))
                $this->deleteRec($v['children']);
            Db::getInstance()->execute('
			DELETE FROM `'._DB_PREFIX_.'st_mega_menu`
			WHERE `id_st_mega_menu`='.(int)$v['id_st_mega_menu']);
            Db::getInstance()->execute('
			DELETE FROM `'._DB_PREFIX_.'st_mega_menu_lang`
			WHERE `id_st_mega_menu`='.(int)$v['id_st_mega_menu']);
        }
        
    }

    public static function justifyTree(&$tree, &$n)
	{
		$left = $n++;
		foreach ($tree as $v)
		{
            if(isset($v['children']) && is_array($v['children']) && count($v['children']))
                self::justifyTree($v['children'], $n);
            
            $right = (int)$n++;
    		Db::getInstance()->execute('
    			UPDATE '._DB_PREFIX_.'st_mega_menu
    			SET nleft = '.(int)$left.', nright = '.(int)$right.'
    			WHERE id_st_mega_menu = '.(int)$v['id_st_mega_menu']);
	    }
	}
    
    public static function getById($id_st_mega_menu,$id_lang)
    {
        return Db::getInstance()->getRow('
            SELECT smm.*,smml.`html`,smml.`title`,smml.`link`
            FROM `'._DB_PREFIX_.'st_mega_menu` smm
            LEFT JOIN `'._DB_PREFIX_.'st_mega_menu_lang` smml ON smm.`id_st_mega_menu`=smml.`id_st_mega_menu`
            WHERE smml.`id_lang`='.(int)$id_lang.
            ' AND smm.`id_st_mega_menu`='.(int)$id_st_mega_menu.
            ' '.Shop::addSqlRestrictionOnLang('smm')
        );
    }
	
    public static function getSub($id_parent,$active=0,$id_lang,$custom_content)
    {
        return Db::getInstance()->executeS('
            SELECT smm.*,smml.`html`,smml.`title`,smml.`link`
            FROM `'._DB_PREFIX_.'st_mega_menu` smm
            LEFT JOIN `'._DB_PREFIX_.'st_mega_menu_lang` smml ON smm.`id_st_mega_menu`=smml.`id_st_mega_menu`
            WHERE smml.`id_lang`='.(int)$id_lang.
            ' AND smm.`id_parent`='.(int)$id_parent.
            ($active ? ' AND smm.`active`=1 ' : '').
            ($custom_content==1 ? ' AND smm.`spans`=0 ' : ($custom_content==2 ? ' AND smm.`spans`>0 ' : ' AND (smm.`spans`=0 OR (smm.`spans`>0 AND (smml.`html`!="" || smm.`id_product`>0)))')).
            ' '.Shop::addSqlRestrictionOnLang('smm').'
            ORDER BY smm.`position`');
    }

    public static function recurseTree($id_parent,$max_depth=2,$current_depth=0,$active=0,$id_lang = null,$custom_content=0)
    {
        $id_lang = is_null($id_lang) ? Context::getContext()->language->id : (int)$id_lang;

		if (!(int)$id_lang)
			$id_lang = _USER_ID_LANG_;
            
        $tree = self::getSub($id_parent,$active,$id_lang,$custom_content);
        if (($current_depth < $max_depth) && $tree && count($tree))
            foreach($tree as &$v)
            {
                if($v['id_category'] && isset($v['auto_sub']) && $v['auto_sub'])
                {
                    $category = new Category($v['id_category']);
                    $sub_categories = $category->recurseLiteCategTree(2,$current_depth);
                    if(is_array($sub_categories['children']) && count($sub_categories['children']))
                    {
                        $clone_v = $v;
                        unset($clone_v['id_st_mega_menu'],$clone_v['id_parent']);
                        $clone_v['style'] = 0;
                        $v['children'] = self::recurseCategories($clone_v,$sub_categories['children'],$current_depth+1);
                    }
                    $custom_content_child = self::getSub($v['id_st_mega_menu'],$active,$id_lang,2);
                    if(is_array($custom_content_child) && count($custom_content_child))
                    {
                        foreach($custom_content_child as $m => $n)
                            if($n['html']=='' && !$n['id_product'])
                                unset($custom_content_child[$m]);                                
                        $v['children'] = isset($v['children']) ? array_merge($v['children'],$custom_content_child) : $custom_content_child;
                    }
                }
                else
                    $v['children'] = self::recurseTree($v['id_st_mega_menu'],$max_depth,$current_depth+1,$active,$id_lang,$custom_content);
            }
        return $tree;
    }
    public static function recurseCategories($parent,$sub_categories,$current_depth)
    {
        $tree = array();
        foreach($sub_categories as $v)
        {
            $tmp = $parent;
            $tmp['id_category'] = $v['id'];
            $tmp['level_depth'] = $current_depth;
            if(is_array($v['children']) && count($v['children']))
                $tmp['children'] = self::recurseCategories($parent,$v['children'],$current_depth+1);
            $tree[] = $tmp;
        }
        return $tree;
    }
    
    public static function getTypes()
    {
        $module = new StMegaMenu();
		return array(
			1 => $module->l('Category', 'StMegaMenu'),
			2 => $module->l('Product', 'StMegaMenu'),
			3 => $module->l('CMS', 'StMegaMenu'),
			4 => $module->l('Manufacturer', 'StMegaMenu'),
			5 => $module->l('Supplier', 'StMegaMenu'),
			6 => $module->l('Shop', 'StMegaMenu'),
			7 => $module->l('Link', 'StMegaMenu'),
			8 => $module->l('CMS category', 'StMegaMenu'),
			9 => $module->l('ICON', 'StMegaMenu'),
			10 => $module->l('Blog category', 'StMegaMenu'),
			11 => $module->l('Blog', 'StMegaMenu'),
			12 => $module->l('Permanent link', 'StMegaMenu'),
		);
    }
    public static function getTopParent($id_st_mega_menu)
    {
        $menu = new StMegaMenuClass($id_st_mega_menu);
        if($menu->id_parent)
            return StMegaMenuClass::getTopParent($menu->id_parent);
        else
            return $id_st_mega_menu;
    }
    public static function getSecondaryParent($id_st_mega_menu)
    {
        $menu = new StMegaMenuClass($id_st_mega_menu);
        if($menu->level_depth > 0)
            return StMegaMenuClass::getSecondaryParent($menu->id_parent);
        else
            return $id_st_mega_menu;
    }
    public static function getCustomContenNbr($id_st_mega_menu)
    {
        return Db::getInstance()->getValue('
            SELECT count(0)
            FROM `'._DB_PREFIX_.'st_mega_menu` as smm
            WHERE smm.`spans`>0
            AND smm.`id_parent`='.(int)$id_st_mega_menu
        );
    }
    public static function deleteCustomContent($id_st_mega_menu)
    {
        $res = true;
        $menus = Db::getInstance()->executeS('
            SELECT smm.`id_st_mega_menu`
            FROM `'._DB_PREFIX_.'st_mega_menu` as smm
            WHERE smm.`spans`>0
            AND smm.`id_parent`='.(int)$id_st_mega_menu
        );
        $menu_ids = array();
        if(count($menus))
            foreach($menus as $v)
                $menu_ids[] = $v['id_st_mega_menu'];
        if(count($menu_ids))
        {
            $res &= Db::getInstance()->execute('
    			DELETE FROM `'._DB_PREFIX_.'st_mega_menu`
    			WHERE `id_st_mega_menu` in ('.implode(',',$menu_ids).')');
            $res &= Db::getInstance()->execute('
    			DELETE FROM `'._DB_PREFIX_.'st_mega_menu_lang`
    			WHERE `id_st_mega_menu` in ('.implode(',',$menu_ids).')');
        }
        return $res;
    }
	public function copyFromPost()
	{
		/* Classical fields */
		foreach ($_POST AS $key => $value)
			if (key_exists($key, $this) AND $key != 'id_'.$this->table)
				$this->{$key} = $value;
		/* Multilingual fields */
		if (sizeof($this->fieldsValidateLang))
		{
			$languages = Language::getLanguages(false);
			foreach ($languages AS $language)
				foreach ($this->fieldsValidateLang AS $field => $validation)
					if (isset($_POST[$field.'_'.(int)($language['id_lang'])]))
						$this->{$field}[(int)($language['id_lang'])] = $_POST[$field.'_'.(int)($language['id_lang'])];
		}
	}
    public static function getCustomCss()
    {
        return Db::getInstance()->executeS('
            SELECT `id_st_mega_menu`,`txt_color`,`txt_color_over`,`bg_color`,`bg_color_over`,`tab_content_bg`
            FROM `'._DB_PREFIX_.'st_mega_menu`
            WHERE `id_parent`= 0 
            AND (`txt_color`!="" || `txt_color_over`!="" || `bg_color`!="" || `bg_color_over`!="" || `tab_content_bg`!="")
            AND `active`=1');
    }
}