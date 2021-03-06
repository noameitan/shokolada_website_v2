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

{extends file="helpers/list/list_header.tpl"}

{block name=leadin}
<div class="cat_bar2">
	{assign var=i value=0}
	{foreach $categories_tree key=key item=category}
		{if $i++ == 0}
			&nbsp;<img src="../img/admin/home.gif" alt="" />
			{assign var=params_url value=""}
		{else}
			{assign var=params_url value="&id_st_blog_category={$category.id_st_blog_category}&viewcategory"}
		{/if}
		{if $key == 0}
			{$category.name}
		{else}
			<a href="{$currentIndex}{$params_url}&token={$token}">{$category.name}</a>&nbsp;>&nbsp;
		{/if}
	{/foreach}
</div>
{/block}
