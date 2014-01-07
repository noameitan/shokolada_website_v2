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

{capture name=path}{l s='Top sellers'}{/capture}


<h1 class="heading">{l s='Top sellers'}</h1>

{if $products}
	<div class="content_sortPagiBar">
        <div class="paginationBar clearfix">
		    {include file="$tpl_dir./pagination.tpl"}
        </div>
		<div class="sortPagiBar clearfix">
			{include file="./product-view.tpl"}
			{include file="./product-sort.tpl"}
			{include file="./nbr-product-page.tpl"}
		</div>
	</div>

    {if isset($cook_veiwmode) && $cook_veiwmode!=''}
        {assign var='viewmode' value=$cook_veiwmode}
    {else}
        {assign var='viewmode' value='grid_view'}
    {/if}
    <div id="viewmode" class="{$viewmode} grid_view_{$category_row_product_nbr}col">
	{include file="./product-list.tpl" products=$products}
    </div>

	<div class="content_sortPagiBar">
		<div class="sortPagiBar sortPagiBarBottom clearfix">
			{include file="./product-view.tpl" paginationId='bottom'}
			{include file="./product-sort.tpl" paginationId='bottom'}
			{include file="./nbr-product-page.tpl" paginationId='bottom'}
		</div>
        <div class="paginationBar paginationBarBottom clearfix">
		    {include file="$tpl_dir./pagination.tpl" paginationId='bottom'}
        </div>
	</div>
	{else}
	<p class="warning">{l s='No top sellers for the moment.'}</p>
{/if}