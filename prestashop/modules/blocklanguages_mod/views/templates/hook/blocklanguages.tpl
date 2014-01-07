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

<!-- Block languages module -->
{if count($languages) > 1}
<dl id="languages_block_top" class="fl dropdown_wrap">
	{* @todo fix display current languages, removing the first foreach loop *}
{foreach from=$languages key=k item=language name="languages"}
	{if $language.iso_code == $lang_iso}
		<dt class="dropdown_tri">
            <div class="dropdown_tri_inner">
                <img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code}" width="16" height="11" class="mar_r4" />{$language.name}<b></b>
            </div>
		</dt>
	{/if}
{/foreach}
    <dd class="dropdown_list">
		<ul id="first-languages" class="countries_ul">
		{foreach from=$languages key=k item=language name="languages"}
            {if $language.iso_code != $lang_iso}
			<li>
				{assign var=indice_lang value=$language.id_lang}
				{if isset($lang_rewrite_urls.$indice_lang)}
					<a href="{$lang_rewrite_urls.$indice_lang|escape:'html'}" title="{$language.name}" rel="nofollow">
				{else}
					<a href="{$link->getLanguageLink($language.id_lang)|escape:'html'}" title="{$language.name}" rel="nofollow">

				{/if}
				    <img src="{$img_lang_dir}{$language.id_lang}.jpg" alt="{$language.iso_code}" width="16" height="11" class="mar_r4" />{$language.name}
				</a>
			</li>
            {/if}
		{/foreach}
		</ul>
	</dd>
</dl>
{/if}
<!-- /Block languages module -->
