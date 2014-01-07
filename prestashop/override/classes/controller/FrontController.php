<?php

class FrontController extends FrontControllerCore
{
    public function initContent()
    {
        /*
        $disable_column = array(
            'authentication',
            'order',
            'order-opc',
            'my-account',
            'history',
            'order-slip',
            'addresses',
            'address',
            'identity',
            'discount',
            'module-favoriteproducts-account',
            'module-loyalty-default',
            'pagenotfound',
        );
        */
        $this->display_column_left = false;
        $this->display_column_right = false;
        if(Configuration::get('STSN_DISPLAY_LEFT_CATEGORY') && in_array($this->context->smarty->getTemplateVars('page_name'),array(
                'category',
                'prices-drop',
                'best-sales',
                'new-products',
                'search',
                'supplier',
                'manufacturer',
                'stores',
            ))
        )
            if(Configuration::get('STSN_DISPLAY_LEFT_CATEGORY')==1)
                $this->display_column_left = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_CATEGORY')==2)
                $this->display_column_right = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_CATEGORY')==3)
            {
                $this->display_column_left = true;
                $this->display_column_right = true;
            }
                
        if(Configuration::get('STSN_DISPLAY_LEFT_PRODUCT') && $this->context->smarty->getTemplateVars('page_name')=='product') 
            if(Configuration::get('STSN_DISPLAY_LEFT_PRODUCT')==1)
                $this->display_column_left = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_PRODUCT')==2)
                $this->display_column_right = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_PRODUCT')==3)
            {
                $this->display_column_left = true;
                $this->display_column_right = true;
            }
                
        if(Configuration::get('STSN_DISPLAY_LEFT_HOMEPAGE') && $this->context->smarty->getTemplateVars('page_name')=='index') 
            if(Configuration::get('STSN_DISPLAY_LEFT_HOMEPAGE')==1)
                $this->display_column_left = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_HOMEPAGE')==2)
                $this->display_column_right = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_HOMEPAGE')==3)
            {
                $this->display_column_left = true;
                $this->display_column_right = true;
            }
        if(Configuration::get('STSN_DISPLAY_LEFT_OTHER') && in_array($this->context->smarty->getTemplateVars('page_name'),array(
                'sitemap',
                'contact',
                'stroes',
                'cms',
            ))
        )
            if(Configuration::get('STSN_DISPLAY_LEFT_OTHER')==1)
                $this->display_column_left = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_OTHER')==2)
                $this->display_column_right = true;
            elseif(Configuration::get('STSN_DISPLAY_LEFT_OTHER')==3)
            {
                $this->display_column_left = true;
                $this->display_column_right = true;
            }    
        parent::initContent();
            
		$this->context->smarty->assign(array(
			'st_hide_left_column' => !$this->display_column_left,
			'st_hide_right_column' => !$this->display_column_right,
			'HOOK_TOP_BAR' => Hook::exec('displayTopBar'),
			'HOOK_TOP_LEFT' => Hook::exec('displayTopLeft'),
			'HOOK_TOP_SECONDARY' => Hook::exec('displayTopSecondary'),
			'HOOK_FOOTER_TOP' => Hook::exec('displayFooterTop'),
			'HOOK_FOOTER_SECONDARY' => Hook::exec('displayFooterSecondary'),
            'isIntalledBlockWishlist'=> Module::isInstalled('blockwishlist'),
            'comparator_max_item' => (int)Configuration::get('PS_COMPARATOR_MAX_ITEM'),
            'cook_veiwmode' => (isset($this->context->cookie->viewmode) ? $this->context->cookie->viewmode : Configuration::get('STSN_PRODUCT_VIEW')),
            'category_row_product_nbr' => (Configuration::get('STSN_CATE_ROW_PRO_NBR') ? Configuration::get('STSN_CATE_ROW_PRO_NBR') : 3),
		));
        
		if (Configuration::get('PS_COMPARATOR_MAX_ITEM'))
			$this->addJS(_THEME_JS_DIR_.'products-comparison.js');
		$this->addJqueryPlugin('hoverIntent');
        
		if (isset($this->context->cookie->id_compare))
			$this->context->smarty->assign('compareProducts', CompareProduct::getCompareProducts((int)$this->context->cookie->id_compare));
    }
}

