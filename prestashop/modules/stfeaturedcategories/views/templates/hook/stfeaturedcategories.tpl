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
<!-- Featured categories -->
{if isset($featured_categories) && is_array($featured_categories) && count($featured_categories)}
<section id="featured_categories_block" class="block section">
	<h4 class="title_block mar_b1"><span>{l s='Featured categories' mod='stfeaturedcategories'}</span></h4>
    <ul class="featured_categories_list {if isset($is_homepage_secondary_left)} fc_cate_hs {else} fc_cate_home {/if} clearfix">
    {foreach $featured_categories as $category}
        <li>
            {if $f_c_image}
            <a href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$category.name|escape:'htmlall':'UTF-8'}" class="fc_cat_image">
            {if $category.id_image}
				<img src="{$link->getCatImageLink($category.link_rewrite, $category.id_image, 'category_default')|escape:'html'}" alt="{$category.name|escape:'htmlall':'UTF-8'}" width="{$categorySize.width}" height="{$categorySize.height}" />
			{else}
				<img src="{$img_cat_dir}default-category_default.jpg" alt="" width="{$categorySize.width}" height="{$categorySize.height}" />
			{/if}
            </a>
            {/if}
            <p class="fc_cat_name s_title_block"><a href="{$link->getCategoryLink($category.id_category, $category.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$category.name|escape:'htmlall':'UTF-8'}">{$category.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</a></p>
            {if isset($category['children']) && count($category['children'])}
            <dl>
                {foreach $category['children'] as $subcate}
                    {if $subcate@index < $f_c_number}
                        <dd><a href="{$link->getCategoryLink($subcate.id_category, $subcate.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$subcate.name|escape:'htmlall':'UTF-8'}">{$subcate.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</a></dd>
                    {/if}
                {/foreach}
            </dl>
            {/if}
        </li>
    {/foreach}
    </ul>
</section>
{/if}
<!--/ Featured categories -->