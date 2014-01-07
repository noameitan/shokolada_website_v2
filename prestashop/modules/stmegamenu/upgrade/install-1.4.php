<?php

if (!defined('_PS_VERSION_'))
	exit;

function upgrade_module_1_4($object)
{
    $result = true;
    
	$object->registerHook('actionCategoryAdd');
	$object->registerHook('actionCategoryDelete');
	$object->registerHook('actionCategoryUpdate');
	$object->registerHook('actionProductDelete');
	$object->registerHook('actionProductAdd');
	$object->registerHook('actionProductUpdate');
        
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `auto_sub`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `auto_sub` tinyint(1) unsigned NOT NULL DEFAULT 0'))
    		$result &= false;
        
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `alignment`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT 0,ADD `alignment` tinyint(1) unsigned NOT NULL DEFAULT 0'))
    		$result &= false;
        
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `id_st_blog_category`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `id_st_blog_category` int(10) unsigned NOT NULL DEFAULT 0'))
    		$result &= false;
        
        
    return $result;
}
