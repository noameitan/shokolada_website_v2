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
    {if $input.type == 'selector'}
	<div>
	<table class="double_select {$input.class_t}">
  		<tr>
			<td align="center">
				{l s="Button Options"}
			</td>
			<td align="center">
				{l s="Selected Buttons"}
			</td>
		</tr>
		<tr>
			<td style="padding-left:20px;">
				<select multiple class="select_left" id="left_{$input.name|trim:'[]'}">
					{foreach $input.addthis as $k=>$item}
                    {if !in_array($k, $fields_value[$input.name])}
					<option value="{$k}">{$item}</option>
                    {/if}
					{/foreach}
				</select>
				<br /><br />
				<a href="#" class="multiple_select_add">
					{l s='Add'} &gt;&gt;
				</a>
			</td>
			<td>
				<select multiple class="select_right" name="{$input.name}" id="right_{$input.name|trim:'[]'}">
					{foreach $fields_value[$input.name] as $item}
					<option value="{$item}" selected="selected">{$input.addthis.$item}</option>
					{/foreach}
				</select>
				<br /><br />
				<a href="#" class="multiple_select_remove">
					&lt;&lt; {l s='Remove'}
				</a>
			</td>
		</tr>
	</table>
    <table class="double_select {$input.class_t}" style="display:none;">
  		<tr>
			<td align="center">
				{l s="Button Options"}
			</td>
			<td align="center">
				{l s="Selected Buttons"}
			</td>
		</tr>
		<tr>
			<td style="padding-left:20px;">
				<select multiple class="select_left" id="left_{$input.name_specail|trim:'[]'}">
					{foreach $input.addthis_specail as $k=>$item}
                    {if !in_array($k, $fields_value[$input.name_specail])}
					<option value="{$k}">{$item}</option>
                    {/if}
					{/foreach}
				</select>
				<br /><br />
				<a href="#" class="multiple_select_add">
					{l s='Add'} &gt;&gt;
				</a>
			</td>
			<td>
				<select multiple class="select_right" name="{$input.name_specail}" id="right_{$input.name_specail|trim:'[]'}">
					{foreach $fields_value[$input.name_specail] as $item}
					<option value="{$item}" selected="selected">{$input.addthis_specail.$item}</option>
					{/foreach}
				</select>
				<br /><br />
				<a href="#" class="multiple_select_remove">
					&lt;&lt; {l s='Remove'}
				</a>
			</td>
		</tr>
	</table>
	</div>
	<div class="clear">&nbsp;</div>
    {else}
		{$smarty.block.parent}
	{/if}
{/block}

{block name="script"}
$(document).ready(function(){
	$('.multiple_select_add').click(function(){
		return !$('.select_left option:selected', $(this).parent()).remove().appendTo($(this).parents('td').next().children('select'));
	})
	$('.multiple_select_remove').click(function(){
		return !$('.select_right option:selected', $(this).parent()).remove().appendTo($(this).parents('td').prev().children('select'));
	});
    $('.select_left').dblclick(function(){
        $("option:selected",this).appendTo($(this).parents('td').next().children('select'));
    });
    $('.select_right').dblclick(function(){
        $("option:selected",this).appendTo($(this).parents('td').prev().children('select'));
    });
    $('input[name^="style"]').click(function(){
        var dn = $(this).attr('name').replace(/style/ig,'');
        troggleItem($(this).val(), dn);
    });
    
    $('input[name^="style"][value="3"]').each(function(){
        if($(this).attr('checked')){
            var dn = $(this).attr('name').replace(/style/ig,'');
            if (dn){
                $('table.customizing_for_blog').hide();
                $('table.customizing_for_blog').parents('.margin-form').hide();
                $('table.customizing_for_blog').parents('.margin-form').prev().hide();
                troggleShowMore('customizing_for_blog', false);
            }
            else{
                $('table.customizing').hide();
                $('table.customizing').parents('.margin-form').hide();
                $('table.customizing').parents('.margin-form').prev().hide();
                troggleShowMore('customizing', false);
            } 
        }
    });
    $('input[name^="style"][value="0"]').each(function(){
        if($(this).attr('checked')){
            var dn = $(this).attr('name').replace(/style/ig,'');
            if (dn){
                $('table.customizing_for_blog').first().hide();
                $('table.customizing_for_blog').last().show();     
            }else{
                $('table.customizing').first().hide();
                $('table.customizing').last().show();    
            }
        }
    });
    
    function troggleItem(v, dn)
    {
        var tables = $('table.customizing'+dn);
        troggleShowMore('customizing'+dn, true);
        if (v == 0) {
            tables.first().hide();
            tables.last().show();
            tables.parents('.margin-form').show();
            tables.parents('.margin-form').prev().show();
        }else if(v == 3){
            tables.first().hide();
            tables.last().hide();
            tables.parents('.margin-form').hide();
            tables.parents('.margin-form').prev().hide();
            troggleShowMore('customizing'+dn, false);
        }else{
            tables.first().show();
            tables.last().hide();
            tables.parents('.margin-form').show();
            tables.parents('.margin-form').prev().show();
        }
            
    }
    
    function troggleShowMore(c, f)
    {
        var o = $('table.'+c).parents('.margin-form');
        if (f){
            o.next().next().show();
            o.next().next().next().show();
        }else{
            o.next().next().hide();
            o.next().next().next().hide();
        }
    }
});
$('#configuration_form').submit(function()
{
	$('.select_right option').each(function(i){
		$(this).attr("selected", "selected");
	});
});
{/block}