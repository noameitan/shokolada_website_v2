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

<!-- MODULE Home Featured Products -->
<section id="featured-products_block_center" class="block products_block section">
	<h4 class="title_block mar_b1"><span>{l s='Featured Products' mod='homefeatured_mod'}</span></h4>
    
	{if isset($products) AND $products}
    <ul id="featured_itemlist" class="pro_itemlist clearfix">
        {foreach $products as $product}
		<li class="ajax_block_product {if $product@first}first_item{elseif $product@last}last_item{else}item{/if}">
			<div class="itemlist_left">
                <a href="{$product.link|escape:'html'}" title="{$product.name|escape:html:'UTF-8'}" class="product_image"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium_default')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$product.name|escape:html:'UTF-8'}" /></a>
            </div>
            <div class="itemlist_right">
    			<p class="s_title_block"><a href="{$product.link|escape:'html'}" title="{$product.name|escape:'htmlall':'UTF-8'}">{$product.name|truncate:40:'...'|escape:'htmlall':'UTF-8'}</a></p>
                {if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}
                    <div class="price_container mar_b10">
                        <span class="price">
                        {if !$priceDisplay}{convertPrice price=$product.price}
                        {else}
                        {convertPrice price=$product.price_tax_exc}
                        {/if}
                        </span>
                        {if isset($product.reduction) && $product.reduction}
                            <span class="old_price">{convertPrice price=$product.price_without_reduction}</span>
                            {if isset($sttheme.discount_percentage) && $sttheme.discount_percentage}
                            <span class="sale_percentage">
                                <i class="icon-tag"></i>-{if $product.specific_prices.reduction_type=='percentage'}{$product.specific_prices.reduction*100|floatval}{elseif $product.specific_prices.reduction_type=='amount'}{($product.specific_prices.reduction/$product.price_without_reduction*100)|string_format:"%d"}{/if}%
                            </span>
                            {/if}
                        {/if}
                    </div>
                {else}
                    <!--<div style="height:21px;"></div>-->
                {/if}  
                <div class="itemlist_action">
                    {if ($product.id_product_attribute == 0 OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND $product.available_for_order AND !isset($restricted_country_mode) AND $product.minimal_quantity == 1 AND $product.customizable != 2 AND !$PS_CATALOG_MODE}          
						{if ($product.quantity > 0 OR $product.allow_oosp)}
						<a class="exclusive ajax_add_to_cart_button" href="{$link->getPageLink('cart')|escape:'html'}?qty=1&amp;id_product={$product.id_product}&amp;token={$static_token}&amp;add" rel="ajax_id_product_{$product.id_product}" title="{l s='Add to Cart' mod='homefeatured_mod'}"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>{l s='Add to Cart' mod='homefeatured_mod'}</span></a>
						{else}
                        <a class="button exclusive view_button" href="{$product.link|escape:'html'}" title="{l s='View' mod='homefeatured_mod'}"><i class="icon-eye-2 icon-1x icon-mar-lr2"></i><span>{l s='View' mod='homefeatured_mod'}</span></a>
						{/if}
					{else}
						<!--<div style="height:23px;"></div>-->
                    {/if}
                </div>
            </div>
        </li>
        {/foreach}
	</ul>
	{else}
		<p class="warning">{l s='No featured products' mod='homefeatured_mod'}</p>
	{/if}
</section>
<!-- /MODULE Home Featured Products -->