<?php

if (!defined('_PS_VERSION_'))
	exit;

function upgrade_module_2_5_9($object)
{
    $result = true;
    
    $result &= Configuration::updateValue('STSN_DEADINGS_COLOR', '');
    $result &= Configuration::updateValue('STSN_F_TOP_H_COLOR', '');
    $result &= Configuration::updateValue('STSN_FOOTER_H_COLOR', '');
    $result &= Configuration::updateValue('STSN_F_SECONDARY_H_COLOR', '');
    $result &= Configuration::updateValue('STSN_MENU_MOB_ITEMS1_COLOR', '');
    $result &= Configuration::updateValue('STSN_MENU_MOB_ITEMS2_COLOR', '');
    $result &= Configuration::updateValue('STSN_MENU_MOB_ITEMS3_COLOR', '');
    $result &= Configuration::updateValue('STSN_MENU_MOB_ITEMS1_BG', '');
    $result &= Configuration::updateValue('STSN_MENU_MOB_ITEMS2_BG', '');
    $result &= Configuration::updateValue('STSN_MENU_MOB_ITEMS3_BG', '');
    $result &= Configuration::updateValue('STSN_MEGAMENU_POSITION', 0);
    $result &= Configuration::updateValue('STSN_CART_ICON', 0);
    $result &= Configuration::updateValue('STSN_WISHLIST_ICON', 0);
    $result &= Configuration::updateValue('STSN_COMPARE_ICON', 0);
    $result &= Configuration::updateValue('STSN_DISPLAY_CATE_DESC_FULL', 0);
    $result &= Configuration::updateValue('STSN_PRO_TAB_COLOR', '');
    $result &= Configuration::updateValue('STSN_PRO_TAB_ACTIVE_COLOR', '');
    $result &= Configuration::updateValue('STSN_PRO_TAB_BG', '');
    $result &= Configuration::updateValue('STSN_PRO_TAB_ACTIVE_BG', '');
    $result &= Configuration::updateValue('STSN_PRO_TAB_CONTENT_BG', '');
    
	return $result;
}
