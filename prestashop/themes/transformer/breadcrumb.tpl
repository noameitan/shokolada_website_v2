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

<!-- Breadcrumb -->
{if isset($smarty.capture.path)}{assign var='path' value=$smarty.capture.path}{/if}
<section class="breadcrumb"  xmlns:v="http://rdf.data-vocabulary.org/#">
    <ul itemprop="breadcrumb">
	<li typeof="v:Breadcrumb"><a href="{$base_dir}" title="{l s='return to Home'}" rel="v:url" property="v:title">{l s='Home'}</a></li>
	{if isset($path) AND $path}
		<li class="navigation-pipe" {if isset($category) && isset($category->id_category) && $category->id_category == 1}style="display:none;"{/if}>{$navigationPipe|escape:html:'UTF-8'}</li>
		{if !$path|strpos:'li>'}
			<li typeof="v:Breadcrumb" class="navigation_page">{$path}</li>
		{else}
			{$path}
		{/if}
	{/if}
    </ul>
</section>
<!-- /Breadcrumb -->