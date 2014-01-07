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

<!-- Block Newsletter module-->
<section id="newsletter_block_left" class="block span3">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
	<h4 class="title_block">{l s='Newsletter' mod='blocknewsletter'}</h4>
	<div id="newsletter_form" class="footer_block_content">
	{if isset($msg) && $msg}
		<p class="{if $nw_error}warning_inline warning{else}success_inline success{/if}">{$msg}</p>
	{/if}
		<form action="{$link->getPageLink('index')|escape:'html'}" method="post">
            <div>
	        <label>{l s='Subscribe to our newsletter' mod='blocknewsletter'}</label>
				{* @todo use jquery (focusin, focusout) instead of onblur and onfocus *}
				<input class="inputNew" id="newsletter-input" type="text" name="email" size="18" value="{if isset($value) && $value}{$value}{/if}" placeholder="{if isset($sttheme.newsletter_label) && $sttheme.newsletter_label}{$sttheme.newsletter_label}{else}{l s='Your e-mail' mod='blocknewsletter'}{/if}" />
				<input type="submit" value="{l s='Subscribe' mod='blocknewsletter'}" class="button_mini" name="submitNewsletter" />
                
				<input type="hidden" name="action" value="0" />
            </div>
		</form>
	</div>
</section>
<!-- /Block Newsletter module-->

<script type="text/javascript">
{literal}
jQuery(function($){
    if(!isPlaceholer())
    {
        $('#newsletter-input').focusin(function(){
            if ($(this).val()==$(this).attr('placeholder'))
                $(this).val('');
        }).focusout(function(){
            if ($(this).val()=='')
                $(this).val($(this).attr('placeholder'));
        });
    }
    $('input[name="submitNewsletter"]').click(function(){
        if(!/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/.test($('#newsletter-input').val()))
        {
            art.dialog({
                content: '{/literal}{l s='Please check your email address' mod='blocknewsletter' js=1}{literal}',
                fixed: true,
                opacity: 0.5,
                lock: true
            });
            return false;
        }
        return true;
    });
});
{/literal}
</script>