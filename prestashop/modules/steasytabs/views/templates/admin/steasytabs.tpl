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
<input type="hidden" name="submitted_tabs[]" value="ModuleSteasytabs" />
<h4>{l s='Easy tabs' mod='steasytabs'}</h4>
<div class="separation"></div>
<table cellpadding="5">
{* global information *}
	<tr>
		<td class="col-left">
			{include file="controllers/products/multishop/checkbox.tpl" field="easytabs_title" type="default" multilang="true"}
			<label>{l s='Title:' mod='steasytabs'}</label>
		</td>
		<td style="padding-bottom:5px;" class="translatable">
		{foreach from=$languages item=language}
			<div class="lang_{$language.id_lang}" style="{if !$language.is_default}display: none;{/if} float: left;">
					<input size="43" type="text"
					id="easytabs_title_{$language.id_lang}" name="easytabs_title_{$language.id_lang}"
					value="{$steasytabs->title[$language.id_lang]|htmlentitiesUTF8|default:''}"/><sup> *</sup>
				<span class="hint" name="help_box">{l s='Invalid characters:' mod='steasytabs'} <>;=#{}<span class="hint-pointer">&nbsp;</span>
				</span>
			</div>
		{/foreach}
		</td>
	</tr>
	<tr>
		<td class="col-left">
			{include file="controllers/products/multishop/checkbox.tpl" field="easytabs_content" type="tinymce" multilang="true"}
			<label>{l s='Content:' mod='steasytabs'}</label>
		</td>
		<td style="padding-bottom:5px;">
<div class="translatable">
{foreach from=$languages item=language}
<div class="lang_{$language.id_lang}" style="{if !$language.is_default}display:none;{/if}float: left;">
	<textarea cols="100" rows="10" id="easytabs_content_{$language.id_lang}" 
		name="easytabs_content_{$language.id_lang}" 
		class="st_easy_tabs_autoload_rte" >{if isset($steasytabs->content[$language.id_lang])}{$steasytabs->content[$language.id_lang]|htmlentitiesUTF8}{/if}</textarea>
	<span class="counter" max="{if isset($max)}{$max}{else}none{/if}"></span>
	<span class="hint">{$hint|default:''}<span class="hint-pointer">&nbsp;</span></span>
</div>
{/foreach}
</div>
<script type="text/javascript">
	var iso = '{$iso_tiny_mce}';
	var pathCSS = '{$smarty.const._THEME_CSS_DIR_}';
	var ad = '{$ad}';
</script>
			<p class="clear"></p>
		</td>
	</tr>
	<tr>
		<td class="col-left">
			{include file="controllers/products/multishop/checkbox.tpl" field="easytabs_active" type="default"}
			<label>{l s='Active:' mod='steasytabs'}</label>
		</td>
		<td>
			<input type="checkbox" name="easytabs_active" id="easytabs_active" style="padding-top: 5px;" {if $steasytabs->active}checked="checked"{/if} value="1" />
		</td>
	</tr>
</table>
<br />
<script type="text/javascript">
{literal}    
    tabs_manager.onLoad("ModuleSteasytabs", function(){
        tinySetup({
			editor_selector :"st_easy_tabs_autoload_rte",
			theme_advanced_buttons1 : "newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
			theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,,|,forecolor,backcolor",
			theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,media,|,ltr,rtl,|,fullscreen",
			theme_advanced_buttons4 : "styleprops,|,cite,abbr,acronym,del,ins,attribs,pagebreak",
            setup : function(ed) {
				ed.onInit.add(function(ed)
				{
					if (typeof ProductMultishop.load_tinymce[ed.id] != 'undefined')
					{
						if (typeof ProductMultishop.load_tinymce[ed.id])
							ed.hide();
						else
							ed.show();
					}
				});
			}
		});
    });
jQuery(document).ready(function($){
	if(display_multishop_checkboxes)
    {
        $.each(languages, function(k, v)
    	{
    		ProductMultishop.checkField($('input[name=\'multishop_check[easytabs_title]['+v.id_lang+']\']').prop('checked'), 'easytabs_title_'+v.id_lang);
    		ProductMultishop.checkField($('input[name=\'multishop_check[easytabs_content]['+v.id_lang+']\']').prop('checked'), 'easytabs_content_'+v.id_lang, 'tinymce');
    	});
    	ProductMultishop.checkField($('input[name=\'multishop_check[easytabs_active]\']').prop('checked'), 'easytabs_active');   
    }     
});
{/literal}
</script>
