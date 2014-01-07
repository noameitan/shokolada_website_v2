<?php

class ProductController extends ProductControllerCore
{
    public function initContent()
	{
		parent::initContent();
        if(!$this->display_column_left && !$this->display_column_right && Configuration::get('STSN_PRODUCT_SECONDARY'))
            $this->context->smarty->assign(array(   
    			'HOOK_PRODUCT_SECONDARY_COLUMN' => Hook::exec('displayProductSecondaryColumn'),     
    		));
        $this->context->smarty->assign(array(
            'pack_row_product_nbr' => (Configuration::get('STSN_PACK_ROW_PRO_NBR') ? Configuration::get('STSN_PACK_ROW_PRO_NBR') : 4),
            'show_brand_logo' => Configuration::get('STSN_SHOW_BRAND_LOGO'),
			'currency_iso_code' => $this->context->currency->iso_code,
        ));
	}
}

