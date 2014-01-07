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
<!-- block seach mobile -->
{if isset($hook_mobile)}
<div class="input_search" data-role="fieldcontain">
	<form method="get" action="{$link->getPageLink('search')|escape:'html'}" id="searchbox">
		<input type="hidden" name="controller" value="search" />
		<input type="hidden" name="orderby" value="position" />
		<input type="hidden" name="orderway" value="desc" />
		<input class="search_query" type="search" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{if isset($search_query)}{$search_query|escape:'htmlall':'UTF-8'|stripslashes}{else}{if isset($smarty.get.search_query)}{$smarty.get.search_query|htmlentities:$ENT_QUOTES:'utf-8'|stripslashes}{/if}{/if}" />
	</form>
</div>
{else}
<!-- Block search module TOP -->
<div id="search_block_top">
	<form method="get" action="{$link->getPageLink('search')|escape:'html'}" id="searchbox">
		<div id="searchbox_inner">
			<label for="search_query_top"><!-- image on background --></label>
			<input type="hidden" name="controller" value="search" />
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input class="search_query" type="text" id="search_query_top" name="search_query" placeholder="{if isset($sttheme.search_label) && $sttheme.search_label}{$sttheme.search_label}{else}{l s='Search' mod='blocksearch'}{/if}" value="{if isset($search_query)}{$search_query|escape:'htmlall':'UTF-8'|stripslashes}{else}{if isset($smarty.get.search_query)}{$smarty.get.search_query|htmlentities:$ENT_QUOTES:'utf-8'|stripslashes}{/if}{/if}" autocomplete="off" /><a href="javascript:;" title="{l s='Search' mod='blocksearch'}" rel="nofollow" id="submit_searchbox" class="icon_wrap"><i class="icon-search-1 icon-0x"></i><span class="icon_text">{l s='Search' mod='blocksearch'}</span></a>
            <div class="hidden" id="more_prod_string">{l s='More products »' mod='blocksearch'}</div>
    	</div>
    </form>
    <script type="text/javascript">
    // <![CDATA[
    {literal}
    jQuery(function($){
        $('#submit_searchbox').click(function(){
            var search_query_top_val = $.trim($('#search_query_top').val());
            if(search_query_top_val=='' || search_query_top_val==$.trim($('#search_query_top').attr('placeholder')))
            {
                $('#search_query_top').focusout();
                return false;
            }
            $('#searchbox').submit();
        });
        if(!isPlaceholer())
        {
            $('#search_query_top').focusin(function(){
                if ($(this).val()==$(this).attr('placeholder'))
                    $(this).val('');
            }).focusout(function(){
                if ($(this).val()=='')
                    $(this).val($(this).attr('placeholder'));
            });
        }
    });
    {/literal}
    //]]>
    </script>
</div>
{include file="$tpl_dir./modules/blocksearch/blocksearch-instantsearch.tpl"}
{/if}
<!-- /Block search module TOP -->
