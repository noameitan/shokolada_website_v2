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
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<script type="text/javascript">
$(function(){
	$('a[href=#idTab5]').click(function(){
		$('*[id^="idTab"]').addClass('block_hidden_only_for_screen');
		$('div#idTab5').removeClass('block_hidden_only_for_screen');

		$('ul#more_info_tabs a[href^="#idTab"]').removeClass('selected');
		$('a[href="#idTab5"]').addClass('selected');
	});
});
</script>
{if $logged == 1 || $nbComments != 0}
</div><!-- Close the OosHook -->
{assign var='enable_reivew_aggregate' value=(!isset($sttheme.google_rich_snippets) || (isset($sttheme.google_rich_snippets) && $sttheme.google_rich_snippets==1))}
<div id="product_comments_block_extra" class="{if $nbComments!=0 OR ($too_early == false AND ($logged OR $allow_guests))}{else} hidden {/if} " {if $enable_reivew_aggregate} itemtype="http://schema.org/AggregateRating" itemscope="" itemprop="aggregateRating" {/if}>
	{if $nbComments != 0}
	<div class="comments_note">
		<span>{l s='Average grade' mod='productcomments'}&nbsp</span>
        {if isset($averageTotal) && $averageTotal>0}
    		<span class="hidden" {if $enable_reivew_aggregate} itemprop="ratingValue" {/if}>{$averageTotal}</span>
            <div class="rating_box">
            {for $foo=1 to round($averageTotal)}
                <i class="icon-star-1 icon-small light"></i>
            {/for}
            {if round($averageTotal)<5}
                {for $foo=round($averageTotal)+1 to 5}
                    <i class="icon-star-1 icon-small"></i>
                {/for}
            {/if}
            </div>
        {/if}
	</div>
	{/if}

	<div class="comments_advices">
		{if $nbComments != 0}
		<a href="#idTab5" id="comments_anchor">{l s='Read user reviews' mod='productcomments'} (<span {if $enable_reivew_aggregate} itemprop="reviewCount" {/if}>{$nbComments}</span>)</a>
		{/if}
		{if ($too_early == false AND ($logged OR $allow_guests))}
		<a class="open-comment-form" href="#new_comment_form">{l s='Write your review' mod='productcomments'}</a>
		{/if}
	</div>
</div>
<div><!-- new div for the next content if any -->
{/if}
<!--  /Module ProductComments -->
