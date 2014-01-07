<?php

if (!defined('_PS_VERSION_'))
	exit;

function upgrade_module_1_9_2($object)
{
    $result = true;
    
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `id_st_blog`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `id_st_blog` int(10) unsigned NOT NULL DEFAULT 0'))
    		$result &= false;
        
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `pagename`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `pagename` varchar(255) DEFAULT NULL'))
    		$result &= false;
            
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `tab_content_bg`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `tab_content_bg` varchar(7) DEFAULT NULL'))
    		$result &= false;
            
    $field = Db::getInstance()->executeS('Describe `'._DB_PREFIX_.'st_mega_menu` `bg_color_over`');  
   
    if(!is_array($field) || !count($field))
        if (!Db::getInstance()->Execute('ALTER TABLE `'._DB_PREFIX_.'st_mega_menu` ADD `bg_color_over` varchar(7) DEFAULT NULL'))
    		$result &= false;
        
    return $result;
}
