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

<!-- MODULE Block best sellers -->
<aside id="best-sellers_block_right" class="block">
	<h4 class="title_block"><a href="{$link->getPageLink('best-sales')|escape:'html'}" title="{l s='All best sellers' mod='blockbestsellers'}">{l s='Top sellers' mod='blockbestsellers'}</a></h4>
	<div class="block_content">
	{if $best_sellers|@count > 0}
		<ul class="pro_column_list">
			{foreach from=$best_sellers item=product name=myLoop}
			<li class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if} clearfix">
				<a href="{$product.link|escape:'html'}" title="{$product.legend|escape:'htmlall':'UTF-8'}" class="pro_column_left">
					<img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'thumb_default')|escape:'html'}" alt="{$product.legend|escape:'htmlall':'UTF-8'}" />				
				</a>
				<div class="pro_column_right">
                    <h4 class="s_title_block nohidden">
                    <a href="{$product.link|escape:'html'}" title="{$product.legend|escape:'htmlall':'UTF-8'}">
    					{$product.name|truncate:50:'...'|escape:'htmlall':'UTF-8'}
    				</a>
                    </h4>
					<span class="price">{$product.price}</span>
                </div>
			</li>
		{/foreach}
		</ul>
	{else}
		<p>{l s='No best sellers at this time' mod='blockbestsellers'}</p>
	{/if}
	</div>
</aside>
<!-- /MODULE Block best sellers -->
