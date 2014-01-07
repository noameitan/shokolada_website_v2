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
<script type="text/javascript">
var productcomments_controller_url = '{$productcomments_controller_url}';
var confirm_report_message = '{l s='Are you sure you want report this comment?' mod='productcomments' js=1}';
var secure_key = '{$secure_key}';
var productcomments_url_rewrite = '{$productcomments_url_rewriting_activated}';

var comment_actions_login_first = "{l s='Please login first!' mod='productcomments'}";
var comment_actions_failure = "{l s='An error occurred. Maybe a network problem or you already set.' mod='productcomments'}";
var comment_success_msg = "{l s='Success! Thank you!' mod='productcomments'}";

var productcomment_added = '{l s='Your comment has been added!' mod='productcomments' js=1}';
var productcomment_added_moderation = '{l s='Your comment has been added and will be available once approved by a moderator' mod='productcomments' js=1}';
var productcomment_title = '{l s='New comment' mod='productcomments' js=1}';
var productcomment_ok = '{l s='OK' mod='productcomments' js=1}';
{if isset($moderation_active)}
var moderation_active = {$moderation_active};
{/if}
</script>

<div id="idTab5" class="product_accordion">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <div class="product_accordion_title visible-phone">
        {l s='Comments' mod='productcomments'}
    </div>
	<div id="product_comments_block_tab" class="pa_content">
	{if $comments}
		{foreach from=$comments item=comment}
			{if $comment.content}
			<div class="comment">
            <div class="row-fluid">
				<div class="comment_author span2">
					<span class="hidden">{l s='Grade' mod='productcomments'}&nbsp;</span>
                    {if isset($comment['grade']) && $comment['grade']>0}
                    <div class="rating_box">
                    {for $foo=1 to round($comment['grade'])}
                        <i class="icon-star-1 icon-small light"></i>
                    {/for}
                    {if round($comment['grade'])<5}
                        {for $foo=round($comment['grade'])+1 to 5}
                            <i class="icon-star-1 icon-small"></i>
                        {/for}
                    {/if}
                    </div>
                    {/if}
					<div class="comment_author_infos">
						<strong>{$comment.customer_name|escape:'html':'UTF-8'}</strong>
						<time>{dateFormat date=$comment.date_add|escape:'html':'UTF-8' full=0}</time>
					</div>
				</div>
				<div class="comment_details {if isset($displayLeftProduct) && $displayLeftProduct}span4{else}span7{/if}">
					<div class="title_block">{$comment.title}</div>
					<p>{$comment.content|escape:'html':'UTF-8'|nl2br}</p>
				</div>
                <div class="comment_actions span3">
						<div class="comment_usefull_title">{l s='Was this review useful?' mod='productcomments'}</div>
                        <p class="comment_usefull">
                            <a href="javascript:;" class="{if $logged == 1} logged {/if}{if !$comment.customer_advice} usefulness_btn {/if}" data-is-usefull="1" data-id-product-comment="{$comment.id_product_comment}" title="{l s='yes' mod='productcomments'}"><i class="icon-thumbs-up-1"></i>(<span>{$comment.total_useful}</span>)</a>
                            <a href="javascript:;" class="{if $logged == 1} logged {/if}{if !$comment.customer_advice} usefulness_btn {/if} useful_down" data-is-usefull="0" data-id-product-comment="{$comment.id_product_comment}" title="{l s='no' mod='productcomments'}"><i class="icon-thumbs-down-1"></i>(<span>{$comment.total_advice-$comment.total_useful}</span>)</a>
                        </p>
					{if $logged == 1}
						{if !$comment.customer_report}
						<div class="comment_report_abuse">
                            <span class="report_btn" data-id-product-comment="{$comment.id_product_comment}">{l s='Report abuse' mod='productcomments'}</span>
                        </div>
						{/if}
					{/if}
                </div>
            </div>
			</div>
			{/if}
		{/foreach}
        {if (!$too_early AND ($logged OR $allow_guests))}
		<p class="align_center">
			<a id="new_comment_tab_btn" class="open-comment-form" href="#new_comment_form">{l s='Write your review' mod='productcomments'} !</a>
		</p>
        {/if}
	{else}
		{if (!$too_early AND ($logged OR $allow_guests))}
		<p class="align_center">
			<a id="new_comment_tab_btn" class="open-comment-form" href="#new_comment_form">{l s='Be the first to write your review' mod='productcomments'} !</a>
		</p>
		{else}
		<p class="align_center">{l s='No customer comments for the moment.' mod='productcomments'}</p>
		{/if}
	{/if}	
	</div>
</div>
{if isset($product) && $product}
<!-- Fancybox -->
<div style="display: none;">
	<div id="new_comment_form">
        <form id="id_new_comment_form" action="#">
			<h2 class="title">{l s='Write your review' mod='productcomments'}</h2>
            {if isset($product) && $product}
			<div class="product clearfix">
				<img src="{$link->getImageLink($product->link_rewrite, $productcomment_cover, 'medium_default')|escape:'html'}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$product->name|escape:html:'UTF-8'}" class="hidden-phone" />
                <h5 class="product_name">{$product->name}</h5>
				<div class="product_desc">
					{$product->description_short}
				</div>
			</div>
            {/if}
			<div class="new_comment_form_content">
				<h4>{l s='Write your review' mod='productcomments'}</h4>

				<div id="new_comment_form_error" class="error mar_b6" style="display: none;">
					<ul></ul>
				</div>

				{if $criterions|@count > 0}
					<ul id="criterions_list">
					{foreach from=$criterions item='criterion'}
						<li>
							<label>{$criterion.name|escape:'html':'UTF-8'}:</label>
							<div class="star_content">
								<input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="1" />
								<input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="2" />
								<input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="3" checked="checked" />
								<input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="4" />
								<input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="5" />
							</div>
							<div class="clearfix"></div>
						</li>
					{/foreach}
					</ul>
				{/if}

				<label for="comment_title">{l s='Title' mod='productcomments'}: <sup class="required">*</sup></label>
				<input id="comment_title" name="title" type="text" value=""/>

				<label for="content">{l s='Comment' mod='productcomments'}: <sup class="required">*</sup></label>
				<textarea id="content" name="content"></textarea>

				{if $allow_guests == true && $logged == 0}
				<label>{l s='Your name' mod='productcomments'}: <sup class="required">*</sup></label>
				<input id="commentCustomerName" name="customer_name" type="text" value=""/>
				{/if}

				<div id="new_comment_form_footer">
					<input id="id_product_comment_send" name="id_product" type="hidden" value='{$id_product_comment_form}' />
					<p class="fl required"><sup>*</sup> {l s='Required fields' mod='productcomments'}</p>
					<p class="fr">
						<button id="submitNewMessage" name="submitMessage" type="submit">{l s='Send' mod='productcomments'}</button>&nbsp;
						{l s='or' mod='productcomments'}&nbsp;<a href="#" onclick="art.dialog({literal}{'id':'art_comment_form'}{/literal}).close();">{l s='Cancel' mod='productcomments'}</a>
					</p>
					<div class="clearfix"></div>
				</div>
			</div>
		</form><!-- /end new_comment_form_content -->
	</div> 
    <div id="thank_comment_msg" class="hidden">
        <div class="mar_b1">
            <p>{l s='Thank you for comment.' mod='productcomments'}</p>
            {if isset($moderation_active)}
                {if $moderation_active}
                    {l s='Your comment has been added and will be available once approved by a moderator' mod='productcomments'}
                {else}
                    {l s='Your comment has been added!' mod='productcomments'}
                {/if}
            {else}
                {l s='Your comment may be awaiting moderation before being published.' mod='productcomments'}
            {/if}
        </div>
        <div class="text-center"><a href="javascript:;" id="thank_comment_close" class="button">{l s='Close' mod='productcomments'}</a></div>
    </div>
</div>
<!-- End fancybox -->
{/if}
