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
{extends file="helpers/form/form.tpl"}
{block name="input"}
	{if $input.type == 'file' && $input.name == 'default_avatar'}
	   {$smarty.block.parent}
       {assign var = 'type' value = "small"}
       {assign var = "image" value = StBlogCommentClass::getAvatar(0, $type)}
       {assign var = 'token' value = Tools::getAdminTokenLite('AdminStBlogComment')}
       <div>
            <br />
            <span>{l s="Current default avatar:"}</span><br />
            <img id="img_avatar" src="{$image}" /><br />
       {if $image && !preg_match('/stblogcomments/', $image)}
            <a class="avatar_delete" href="#" title='{l s="delete the avatar"}' ><img src="/img/admin/disabled.gif" alt='{l s="delete the avatar"}' />{l s="delete"}</a>

       <script type="text/javascript">
       {literal}
		$('.avatar_delete').die().live('click', function(e)
		{
			e.preventDefault();
            $.getJSON('{/literal}{$base_uri}{literal}/modules/stblogcomments/ajax.php?action=delete_bkavatar&type={/literal}{$type}{literal}'+'&ts='+new Date().getTime(),
                function(data){
                    if(data.success)
    				{
    					$("#img_avatar").attr('src', data.new_src);
                        $(".avatar_delete").hide();
                        showSuccessMessage(data.success);
    				}
                    else
                    	showErrorMessage(data.error);
                    }
            ); 
            return false;
		});
        {/literal}
       </script>
       {/if}
       </div>
    {else}
		{$smarty.block.parent}
	{/if}
{/block}