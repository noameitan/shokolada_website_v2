{*
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
*}
<div class="nav_top_right"></div>
<div class="sliderwrap products_slider">
    <ul class="slides">
	{foreach $products as $product}
		<li class="ajax_block_product {if $product@first}first_item{elseif $product@last}last_item{else}item{/if}">
            {capture name="new_on_sale"}
                {if isset($product.new) && $product.new == 1}<span class="new"><i>{l s='New'}</i></span>{/if}{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}<span class="on_sale"><i>{l s='Sale'}</i></span>{/if}{if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}{if isset($product.reduction) && $product.reduction && isset($sttheme.discount_percentage) && $sttheme.discount_percentage==2}<span class="sale_percentage_sticker img-circle">{if $product.specific_prices && $product.specific_prices.reduction_type=='percentage'}{$product.specific_prices.reduction*100|floatval}%<br />{l s='Off'}{elseif $product.specific_prices && $product.specific_prices.reduction_type=='amount' && $product.specific_prices.reduction|intval !=0}{l s='Save'}<br />{convertPrice price=$product.price_without_reduction-$product.price|floatval}{/if}</span>{/if}{/if}
            {/capture}
            {assign var='pro_image' value=$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')} 
            <div class="pro_first_box">
                <a href="{$product.link|escape:'html'}" title="{$product.name|escape:html:'UTF-8'}" class="product_image"><img src="{$pro_image}" height="{$homeSize.height}" width="{$homeSize.width}" alt="{$product.name|escape:html:'UTF-8'}" />{$smarty.capture.new_on_sale}</a>
                
                {capture name="pro_a_cart"}
                    {if ($product.id_product_attribute == 0 OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND $product.available_for_order AND !isset($restricted_country_mode) AND $product.minimal_quantity == 1 AND $product.customizable != 2 AND !$PS_CATALOG_MODE}          
						{if ($product.quantity > 0 OR $product.allow_oosp)}
						<a class="exclusive ajax_add_to_cart_button" href="{$link->getPageLink('cart')|escape:'html'}?qty=1&amp;id_product={$product.id_product}&amp;token={$static_token}&amp;add" rel="ajax_id_product_{$product.id_product}" title="{l s='Add to Cart'}"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>{l s='Add to Cart'}</span></a>
						{else}
                        <a class="button exclusive view_button" href="{$product.link|escape:'html'}" title="{l s='View'}"><i class="icon-eye-2 icon-1x icon-mar-lr2"></i><span>{l s='View'}</span></a>
						{/if}
					{else}
					{/if}
                {/capture}
                {capture name="pro_a_compare"}
                    {if isset($comparator_max_item) && $comparator_max_item}
        				<a href="javascript:;" class="add_to_compare {if isset($compareProducts) && in_array($product.id_product, $compareProducts)}active{/if}" data-product-id="{$product.id_product}" rel="nofollow" data-product-cover="{$pro_image}" data-product-name="{$product.name|escape:'htmlall':'UTF-8'}" data-product-link="{$product.link|escape:'htmlall':'UTF-8'}" title="{l s='Add to Compare'}"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>{l s='Add to Compare'}</span></a>
        			{/if}
                {/capture}
                {assign var="fly_i" value=1}
                {if trim($smarty.capture.pro_a_cart)}{assign var="fly_i" value=$fly_i+1}{/if}
                {if trim($smarty.capture.pro_a_compare)}{assign var="fly_i" value=$fly_i+1}{/if}
                {if isset($product['pro_a_wishlist']) && $product['pro_a_wishlist']}{assign var="fly_i" value=$fly_i+1}{/if}
                
                <div class="hover_fly {if isset($sttheme.flyout_buttons) && $sttheme.flyout_buttons}hover_fly_static{/if} fly_{$fly_i} clearfix">
                    {$smarty.capture.pro_a_cart}
                    {if isset($product['pro_quick_view']) && $product['pro_quick_view']}
                        {$product.pro_quick_view}
                    {else}
                        <a href="{$product.link|escape:'html'}" class="pro_more_info" rel="nofollow" title="{l s='More info'}"><i class="icon-link icon-1x icon-mar-lr2"></i><span>{l s='More info'}</span></a>
                    {/if}
                    {$smarty.capture.pro_a_compare}
                    {if isset($product['pro_a_wishlist']) && $product['pro_a_wishlist']}{$product.pro_a_wishlist}{/if}   
                </div>
            </div>
            <div class="pro_second_box">
            {if isset($sttheme.length_of_product_name) && $sttheme.length_of_product_name==1}
                {assign var="length_of_product_name" value=70}
            {else}
                {assign var="length_of_product_name" value=35}
            {/if}
			<p class="s_title_block {if isset($sttheme.length_of_product_name) && $sttheme.length_of_product_name} nohidden {/if}"><a href="{$product.link|escape:'html'}" title="{$product.name|escape:'htmlall':'UTF-8'}">{if isset($sttheme.length_of_product_name) && $sttheme.length_of_product_name==2}{$product.name|escape:'htmlall':'UTF-8'}{else}{$product.name|escape:'htmlall':'UTF-8'|truncate:$length_of_product_name:'...'}{/if}</a></p>
            {if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}
                <div class="price_container">
                    <span class="price">
                    {if !$priceDisplay}{convertPrice price=$product.price}
                    {else}
                    {convertPrice price=$product.price_tax_exc}
                    {/if}
                    </span>
                    {if isset($product.reduction) && $product.reduction}
                        <span class="old_price">{convertPrice price=$product.price_without_reduction}</span>
                        {if isset($sttheme.discount_percentage) && $sttheme.discount_percentage==1}
                        <span class="sale_percentage">
                            <i class="icon-tag"></i>-{if $product.specific_prices && $product.specific_prices.reduction_type=='percentage'}{$product.specific_prices.reduction*100|floatval}%{elseif $product.specific_prices && $product.specific_prices.reduction_type=='amount' && $product.specific_prices.reduction|intval !=0}{convertPrice price=$product.price_without_reduction-$product.price|floatval}{/if}
                        </span>
                        {/if}
                    {/if}
                </div>
            {else}
                <!--<div style="height:21px;"></div>-->
            {/if}
            {if isset($product['pro_rating_average']) && $product['pro_rating_average']}{$product.pro_rating_average}{/if}   
            </div>
		</li>
	{/foreach}
	</ul>
</div>