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

{include file="$tpl_dir./errors.tpl"}

{if isset($category)}
	{if $category->id AND $category->active}
        {if $display_category_title}
		<h1 class="heading">
			{strip}
				{$category->name|escape:'htmlall':'UTF-8'}
				{if isset($categoryNameComplement)}
					{$categoryNameComplement|escape:'htmlall':'UTF-8'}
				{/if}
			{/strip}
		</h1>
		{/if}
        
        {if isset($HOOK_CATEGORY_HEADER) && $HOOK_CATEGORY_HEADER}{$HOOK_CATEGORY_HEADER}{/if}
		
		{if $scenes || ($display_category_desc && $category->description) || ($display_category_image && $category->id_image)}
		<div class="content_scene_cat mar_b1">
			{if $scenes}
				<!-- Scenes -->
				{include file="$tpl_dir./scenes.tpl" scenes=$scenes}
			{else}
				<!-- Category image -->
				{if $display_category_image && $category->id_image}
				<div class="align_center mar_b1">
					<img src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'category_default')|escape:'html'}" alt="{$category->name|escape:'htmlall':'UTF-8'}" title="{$category->name|escape:'htmlall':'UTF-8'}" id="categoryImage" width="{$categorySize.width}" height="{$categorySize.height}" />
				</div>
				{/if}
			{/if}
            
			{if $display_category_desc && $category->description}
				<div class="cat_desc">
				{if (!isset($sttheme.display_cate_desc_full) || !$sttheme.display_cate_desc_full) && strlen($category->description) > 120}
                    {if isset($description_short)}
                    <div id="category_description_short">{$description_short}</div>
                    {else}
					<div id="category_description_short" style="height:1.5em;overflow:hidden;">{$category->description}</div>
                    {/if}
					<div id="category_description_full" style="display:none">{$category->description}</div>
					<a href="#" onclick="$('#category_description_short').hide(); $('#category_description_full').show(); $(this).hide(); return false;" class="lnk_more go">{l s='More'}</a>
				{else}
					<div>{$category->description}</div>
				{/if}
				</div>
			{/if}
		</div>
		{/if}
		{if $display_subcategory && isset($subcategories)}
		<!-- Subcategories -->
		<div id="subcategories">
			<h4 class="heading hidden">{l s='Subcategories'}</h4>
			<ul class="inline_list {if $display_subcategory==1}subcate_grid_view clearfix li_fl subcate_grid_view_{if isset($sttheme.categories_per_row) && $sttheme.categories_per_row}{$sttheme.categories_per_row}{else}5{/if} {else}subcate_list_view{/if}">
			{foreach from=$subcategories item=subcategory}
				<li class="clearfix">
					<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$subcategory.name|escape:'htmlall':'UTF-8'}" class="img">
						{if $subcategory.id_image}
							<img src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'category_default')|escape:'html'}" alt="{$subcategory.name|escape:'htmlall':'UTF-8'}" width="{$categorySize.width}" height="{$categorySize.height}" />
						{else}
							<img src="{$img_cat_dir}default-category_default.jpg" alt="" width="{$categorySize.width}" height="{$categorySize.height}" />
						{/if}
					</a>
					<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" class="cat_name">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
					{if $subcategory.description}
						<div class="cat_desc">{$subcategory.description}</div>
					{/if}
				</li>
			{/foreach}
			</ul>
		</div>
		{/if}

        {if $category->id == 1 OR $nb_products == 0}
	       <p class="warning">{l s='There are no products in  this category'}</p>
           {hook h='displayAnywhere' location="5" mod='steasycontent' caller='steasycontent'}
        {/if}
        
		{if $products}
			<div class="content_sortPagiBar">
                <div class="paginationBar clearfix">
            		<div class="resumecat category-product-count hidden-phone fl">
            			{include file="$tpl_dir./category-count.tpl"}
            		</div>
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
            		<div class="resumecat category-product-count hidden-phone fl">
            			{include file="$tpl_dir./category-count.tpl"}
            		</div>
				    {include file="$tpl_dir./pagination.tpl" paginationId='bottom'}
                </div>
			</div>
		{/if}
        {if isset($HOOK_CATEGORY_FOOTER) && $HOOK_CATEGORY_FOOTER}{$HOOK_CATEGORY_FOOTER}{/if}
	{elseif $category->id}
		<p class="warning">{l s='This category is currently unavailable.'}</p>
	{/if}
{/if}