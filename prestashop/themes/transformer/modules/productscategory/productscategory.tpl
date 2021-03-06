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

{if isset($categoryProducts) && count($categoryProducts) > 0 && $categoryProducts !== false}
<section id="productscategory-products_block_center" class="products_block block section">
	<h4 class="title_block"><span>{$categoryProducts|@count} {l s='other products in the same category' mod='productscategory'}</span></h4>
    <div id="productscategory-itemslider" class="flexslider">    
        <div class="nav_top_right"></div>
        <div class="sliderwrap products_slider">
            <ul class="slides">
        	{foreach $categoryProducts as $product}
        		<li class="ajax_block_product {if $product@first}first_item{elseif $product@last}last_item{else}item{/if}">
                    {capture name="new_on_sale"}
                        {if isset($product.new) && $product.new == 1}<span class="new"><i>{l s='New' mod='productscategory'}</i></span>{/if}{if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}<span class="on_sale"><i>{l s='Sale' mod='productscategory'}</i></span>{/if}
                    {/capture}
                    {capture name="pro_link"}{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, $product.ean13)|escape:'html'}{/capture}
                    <div class="pro_first_box">
                        <a href="{$smarty.capture.pro_link}" title="{$product.name|escape:html:'UTF-8'}" class="product_image"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')}" alt="{$product.name|escape:html:'UTF-8'}" />{$smarty.capture.new_on_sale}</a>
                    </div>
                    <div class="pro_second_box">
                    {if isset($sttheme.length_of_product_name) && $sttheme.length_of_product_name==1}
                        {assign var="length_of_product_name" value=70}
                    {else}
                        {assign var="length_of_product_name" value=35}
                    {/if}
        			<p class="s_title_block {if isset($sttheme.length_of_product_name) && $sttheme.length_of_product_name} nohidden {/if}"><a href="{$smarty.capture.pro_link}" title="{$product.name|escape:'htmlall':'UTF-8'}">{if isset($sttheme.length_of_product_name) && $sttheme.length_of_product_name==2}{$product.name|escape:'htmlall':'UTF-8'}{else}{$product.name|escape:'htmlall':'UTF-8'|truncate:$length_of_product_name:'...'}{/if}</a></p>
                    {if $ProdDisplayPrice AND $product.show_price == 1 AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}
    				<div class="price_container">
    					<span class="price">{convertPrice price=$product.displayed_price}</span>
    				</div>
    				{else}
    				{/if}  
                    </div>
        		</li>
        	{/foreach}
        	</ul>
        </div>
	</div>
    {hook h='displayAnywhere' function="getCarouselJavascript" identify='productscategory' mod='stthemeeditor' caller='stthemeeditor'}
</section>
{/if}