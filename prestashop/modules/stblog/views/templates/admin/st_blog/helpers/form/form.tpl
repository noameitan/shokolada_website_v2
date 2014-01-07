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
	{if $input.name == "link_rewrite"}
		<script type="text/javascript">
		{if isset($PS_ALLOW_ACCENTED_CHARS_URL) && $PS_ALLOW_ACCENTED_CHARS_URL}
			var PS_ALLOW_ACCENTED_CHARS_URL = 1;
		{else}
			var PS_ALLOW_ACCENTED_CHARS_URL = 0;
		{/if}
		</script>
		{$smarty.block.parent}
	{else}
		{$smarty.block.parent}
	{/if}
{/block}
{block name="input"}
	{if $input.type == 'categories'}
		{include file='./form_category.tpl' categories=$input.values}
	{else}
		{$smarty.block.parent}
	{/if}
{/block}
{block name="input"}
	{if $input.type == 'content'}
	{include file="./textarea_lang.tpl"
    languages=$languages
    input_name='content'
	input_value=$input.html}
    <p class="clear"></p>
    {else}
		{$smarty.block.parent}
	{/if}
{/block}

{block name="input"}
	{if $input.type == 'file' && $input.name == 'image'}
	   {$smarty.block.parent}
       {assign var = "image" value = $object->getCoverUrl()}
       {if $image}
       <br /><br />
       <div>
            <span>{l s="current cover:"}</span><br />
            <img src="{$image}" /><br />
            <a id="{implode(',',StBlogImageClass::getImageIdByType($object->id))}" class="cover_delete" href="#" title='{l s="Delete the cover"}' ><img src="../img/admin/disabled.gif" alt='{l s="Delete the cover"}' />{l s="Delete"}</a>
       </div>
       <script type="text/javascript">
       {literal}
       function afterDeleteCover(data)
	   {
			data = $.parseJSON(data);
			if (data)
			{
				id = data.id;
				if(data.success)
				{
					$("#" + id).parent('div').remove();
                    showSuccessMessage(data.success);
				}
                else
                	showErrorMessage(data.error);
			}
		}
		$('.cover_delete').die().live('click', function(e)
		{
			e.preventDefault();
			id = $(this).attr('id');
			if (confirm("{/literal}{l s='Are you sure to delete the cover?' js=1}{literal}"))
			doAdminAjax({
					"action":"deleteCoverImage",
					"id_st_blog_image":id,
					"id_st_blog" : {/literal}{$object->id_st_blog}{literal},
					"token" : "{/literal}{$token}{literal}",
					"tab" : "AdminStBlog",
					"ajax" : 1 }, afterDeleteCover
			);
		});
        {/literal}
       </script>
       {/if}
    {else}
		{$smarty.block.parent}
	{/if}
{/block}

{block name="other_input"}
    {if $key == 'gallary'}
    {include file="./gallery.tpl" gallery=$field.images}
	{/if}
	{if $key == 'selector'}
    {include file="./select_products.tpl"}
	{/if}
{/block}
{block name="autoload_tinyMCE"}
    {literal}
	tinySetup({
		editor_selector :"autoload_rte",
		plugins : "safari,pagebreak,style,table,advimage,advlink,inlinepopups,media,contextmenu,paste,fullscreen,xhtmlxtras,preview,template",
		theme_advanced_buttons1 : "newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect,|,template",
        template_external_list_url : "{/literal}{$smarty.const._MODULE_DIR_}{literal}stblog/template_list.php"
	});
    {/literal}
{/block}