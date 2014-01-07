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
<!-- MODULE st easy content -->
{if $easy_content|@count > 0}
    {foreach $easy_content as $ec}
    <section id="easycontent_{$ec.id_st_easy_content}" class="{if $ec.hide_on_mobile}hidden-phone{/if} easycontent span{if $ec.span}{$ec.span}{else}3{/if} block">
        {if $ec.title}
        <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
        <h4 class="title_block">
            {if $ec.url}<a href="{$ec.url|escape}" title="{$ec.title|escape:html:'UTF-8'}">{/if}
            {$ec.title|escape:html:'UTF-8'}
            {if $ec.url}</a>{/if}
        </h4>
        {/if}
    	<div class="footer_block_content {if !$ec.title}keep_open{/if}">
            {$ec.text|stripslashes}
    	</div>
    </section>
    {/foreach}
{/if}
<!-- MODULE st easy content -->