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

{if isset($products)}   
	<!-- Products list -->
	<ul id="product_list" class="clearfix">
	{foreach from=$products item=product name=products}
		<li class="ajax_block_product {if $smarty.foreach.products.first}first_item{elseif $smarty.foreach.products.last}last_item{/if} {if $smarty.foreach.products.index % 2}alternate_item{else}item{/if} clearfix">
            <div class="pro_first_box">
                <a href="{$product.link|escape:'htmlall':'UTF-8'}" class="product_img_link" title="{$product.name|escape:'htmlall':'UTF-8'}">
					<img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')|escape:'html'}" alt="{$product.legend|escape:'htmlall':'UTF-8'}" {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} />
					{if isset($product.new) && $product.new == 1}<span class="new"><i>{l s='New'}</i></span>{/if}{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}<span class="on_sale"><i>{l s='Sale'}</i></span>{/if}
                    {if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                        {if isset($product.reduction) && $product.reduction}
                            {if $product.specific_prices && $product.specific_prices.reduction_type=='percentage'}
                            {hook h='displayAnywhere' function='getSaleStyleCircle' percentage_amount='percentage' reduction=$product.specific_prices.reduction price_without_reduction=$product.price_without_reduction price=$product.price mod='stthemeeditor' caller='stthemeeditor'}
                            {elseif $product.specific_prices && $product.specific_prices.reduction_type=='amount' && $product.specific_prices.reduction|intval !=0}
                            {hook h='displayAnywhere' function='getSaleStyleCircle' percentage_amount='amount' reduction=$product.specific_prices.reduction price_without_reduction=$product.price_without_reduction price=$product.price mod='stthemeeditor' caller='stthemeeditor'}
                            {/if}
                        {/if}
                    {/if}
				</a>
                {capture name="pro_a_cart"}
                    {if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.minimal_quantity <= 1 && $product.customizable != 2 && !$PS_CATALOG_MODE}
    					{if ($product.allow_oosp || $product.quantity > 0)}
    						{if isset($static_token)}
        						<a class="button ajax_add_to_cart_button exclusive" rel="ajax_id_product_{$product.id_product|intval}" href="{$link->getPageLink('cart',false, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;token={$static_token}", false)|escape:'html'}" title="{l s='Add to Cart'}"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>{l s='Add to Cart'}</span></a>
        					{else}
        						<a class="button ajax_add_to_cart_button exclusive" rel="ajax_id_product_{$product.id_product|intval}" href="{$link->getPageLink('cart',false, NULL, "add=1&amp;id_product={$product.id_product|intval}", false)|escape:'html'}" title="{l s='Add to Cart'}"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>{l s='Add to Cart'}</span></a>
        					{/if}				
    					{else}
                            <a class="button exclusive view_button" href="{$product.link|escape:'htmlall':'UTF-8'}" title="{l s='View'}"><i class="icon-eye-2 icon-1x icon-mar-lr2"></i><span>{l s='View'}</span></a>
    					{/if}
    				{/if}
                {/capture}
                {capture name="pro_a_compare"}
                    {if isset($comparator_max_item) && $comparator_max_item}
        				<a href="javascript:;" class="add_to_compare {if isset($compareProducts) && in_array($product.id_product, $compareProducts)}active{/if}" data-product-id="{$product.id_product}" rel="nofollow" data-product-cover="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium_default')}" data-product-name="{$product.name|escape:'htmlall':'UTF-8'}" data-product-link="{$product.link|escape:'htmlall':'UTF-8'}" title="{l s='Add to compare'}"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>{l s='Add to Compare'}</span></a>
        			{/if} 
                {/capture}
                {capture name="pro_a_wishlist"}
                    {hook h='displayAnywhere' function="getAddToWhishlistButton" id_product=$product.id_product show_icon=0 mod='stthemeeditor' caller='stthemeeditor'}    
                {/capture}
                {capture name="pro_quick_view"}
                    {hook h='displayAnywhere' id_product=$product.id_product mod='stquickview' caller='stquickview'}    
                {/capture}
                {assign var="fly_i" value=1}
                {if trim($smarty.capture.pro_a_cart)}{assign var="fly_i" value=$fly_i+1}{/if}
                {if trim($smarty.capture.pro_a_compare)}{assign var="fly_i" value=$fly_i+1}{/if}
                {if trim($smarty.capture.pro_a_wishlist)}{assign var="fly_i" value=$fly_i+1}{/if}
                <div class="hover_fly {hook h='displayAnywhere' function='getFlyoutButtonsClass' mod='stthemeeditor' caller='stthemeeditor'} fly_{$fly_i} clearfix">
                    {$smarty.capture.pro_a_cart}
                    {if trim($smarty.capture.pro_quick_view)}
                        {$smarty.capture.pro_quick_view}
                    {else}
                        <a href="{$product.link|escape:'htmlall':'UTF-8'}" class="pro_more_info" rel="nofollow" title="{l s='More info'}"><i class="icon-link icon-1x icon-mar-lr2"></i><span>{l s='More info'}</span></a>
                    {/if}
                    {$smarty.capture.pro_a_compare}
                    {$smarty.capture.pro_a_wishlist}
                </div>
            </div>
            <div class="pro_second_box">
                <p class="s_title_block {hook h='displayAnywhere' function='getProductNameClass' mod='stthemeeditor' caller='stthemeeditor'}">{if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}<a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.name|escape:'htmlall':'UTF-8'}">{hook h='displayAnywhere' function='getLengthOfProductName' product_name=$product.name mod='stthemeeditor' caller='stthemeeditor'}</a></p>
                {if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
				<div class="price_container">
					{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}<span class="price">{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}</span>
                    {if isset($product.reduction) && $product.reduction}
                        <span class="old_price">{convertPrice price=$product.price_without_reduction}</span>
                        {if $product.specific_prices && $product.specific_prices.reduction_type=='percentage'}
                        {hook h='displayAnywhere' function='getSaleStyleFlag' percentage_amount='percentage' reduction=$product.specific_prices.reduction price_without_reduction=$product.price_without_reduction price=$product.price mod='stthemeeditor' caller='stthemeeditor'}
                        {elseif $product.specific_prices && $product.specific_prices.reduction_type=='amount' && $product.specific_prices.reduction|intval !=0}
                        {hook h='displayAnywhere' function='getSaleStyleFlag' percentage_amount='amount' reduction=$product.specific_prices.reduction price_without_reduction=$product.price_without_reduction price=$product.price mod='stthemeeditor' caller='stthemeeditor'}
                        {/if}
                    {/if}
                    {/if}
				</div>
				{if isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}<div class="product_stock_info mar_b6 text-center">{if ($product.allow_oosp || $product.quantity > 0)}<span class="hidden">{l s='Available'}</span>{elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}<span class="availability">{l s='Product available with different options'}</span>{else}<span class="availability">{l s='Out of stock'}</span>{/if}</div>{/if}
			    {if isset($product.online_only) && $product.online_only}<div class="mar_b6 text-center product_online_only"><span class="online_only">{l s='Online only'}</span></div>{/if}
				{/if}
                {hook h='displayAnywhere' function="getProductRatingAverage" id_product=$product.id_product mod='stthemeeditor' caller='stthemeeditor'}
                {hook h='displayAnywhere' function="getProductAttributes" id_product=$product.id_product mod='stthemeeditor' caller='stthemeeditor'}
                <p class="product_desc"><a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}" >{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}</a></p>
                <div class="act_box">
                    {$smarty.capture.pro_a_cart}
                    <div class="act_box_inner">
                    {$smarty.capture.pro_a_compare}
                    {$smarty.capture.pro_a_wishlist}
                    {if trim($smarty.capture.pro_quick_view)}
                        {$smarty.capture.pro_quick_view}
                    {/if}
                    </div>
                </div>
            </div>
		</li>
	{/foreach}
	</ul>
	<!-- /Products list -->
{/if}