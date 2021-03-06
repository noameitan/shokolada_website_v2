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
<!-- St Blog featured articles -->
{if $nbComments}
<section id="comments" class="block section">
	<h4 class="title_block"><span>{$nbComments}&nbsp;{if $nbComments<=1}{l s='Comment' mod='stblogcomments'}{else}{l s='Comments' mod='stblogcomments'}{/if}</span></h4>
	<ul class="st_blog_comment_list">
		{foreach $comments as $comment}
			{include file='./comment-tree-branch.tpl' node=$comment reply_ready=($too_early == false AND ($logged OR $allow_guests)) }
        {/foreach}
    </ul>
</section>
{/if}	
<section id="st_blog_comment_reply_block" class="block section">
	<h4 class="title_block"><span>{l s='Leave a Comment' mod='stblogcomments'}</span></h4>
	<div class="st_blog_comment_reply">
        {if ($too_early == false AND ($logged OR $allow_guests))}
        <form name="st_blog_comment_form" action="{$link->getModuleLink('stblogcomments','default',['action'=>'add_comment','secure_key'=>$secure_key])}">
            {if $allow_guests == true && $logged == 0}
            <div id="comment_input" class="row-fluid">
                <p class="span4"><input name="customer_name" type="text" placeholder="{l s='Name (required)' mod='stblogcomments'}" value="" /></p>
                <p class="span4"><input name="customer_email" type="text" placeholder="{l s='Email' mod='stblogcomments'}" value="" /></p>
            </div>
            {/if}
            <div id="comment_textarea" class="row-fluid">
                <textarea id="comment_content" name="content" rows="30" cols="6" class="span8" autocomplete="off"></textarea>
            </div>
            <input name="id_blog" type="hidden" value="{$id_blog_comment_form}" />
            <input id="blog_comment_parent_id" name="id_parent" type="hidden" value="0" />
            <div>
                <input type="submit" name="st_blog_comment_submit" id="st_blog_comment_submit" value="{l s='Post comment' mod='stblogcomments'}" class="button mar_r4" />
                <a href="javascript:;" id="cancel_comment_reply_link" class="go hidden">{l s='Cancel reply' mod='stblogcomments'}</a>
            </div>
        </form>
        {elseif ($too_early == false AND !$logged AND !$allow_guests) }
        {l s='You must be' mod='stblogcomments'}&nbsp;<a href="{$link->getPageLink('my-account', true)|escape:'htmlall'}" rel="nofollow" title="{l s='logged in' mod='stblogcomments'}" class="go">{l s='logged in' mod='stblogcomments'}</a>&nbsp;{l s='to post a comment' mod='stblogcomments'}.
        {elseif $too_early == true}
        {l s='You should wait %1$d seconds before posting a new comment.' sprintf=[$delay] mod='stblogcomments'}
        {/if}
    </div>
</section>
<div id="st_blog_thank_comment" class="hidden">
    <div class="mar_b1">
        <p>{l s='Thank you for comment.' mod='stblogcomments'}</p>
        {if $moderate}
        <p>{l s='Your comment may be awaiting moderation before being published.' mod='stblogcomments'}</p>
        {/if}
    </div>
    <div class="text-center"><a href="javascript:;" id="st_blog_thank_comment_close" class="button">{l s='Close' mod='stblogcomments'}</a></div>
</div>
<!-- /St Blog featured articles  -->