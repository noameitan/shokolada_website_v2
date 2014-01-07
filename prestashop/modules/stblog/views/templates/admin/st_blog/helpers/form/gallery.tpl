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
{if isset($gallery)}
	<h4 class="tab" style="display:none;">{l s='Images'} (<span id="countImage">{$gallery.count}</span>)</h4>
	<h4>{if $gallery.id_st_blog}{l s='Edit this blog gallery'}{else}{l s='Add new gallery to this blog'}{/if}</h4>	<div class="separation"></div><br />

	<table cellpadding="5" style="width:100%">
		<tr>
			<td class="col-left"><label class="file_upload_label">{l s='File:'}</label></td>
			<td style="padding-bottom:5px;">
                {if empty($gallery.id_st_blog)}
                    <div>{l s="You must save the blog before adding gallery."}</div>
                {/if}
				<div id="file-uploader" {if empty($gallery.id_st_blog)}style="display:none;"{/if}>
					<noscript>
						<p>{l s='Please enable JavaScript to use file uploader:'}</p>
					</noscript>
				</div>
				<div id="progressBarImage" class="progressBarImage"></div>
				<div id="showCounter" style="display:none;"><span id="imageUpload">0</span><span id="imageTotal">0</span></div>
					<p class="preference_description" style="clear: both;">
						{l s='Format:'} JPG, GIF, PNG. {l s='Filesize:'} {$gallery.max_image_size|string_format:"%.2f"} {l s='MB max.'} {l s='Width>870px, Height>348px.'}
					</p>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">
				<input type="hidden" name="resizer" value="auto" />
					{if Tools::getValue('id_image')}<input type="hidden" name="id_image" value="{Tools::getValue('id_image')|intval}" />{/if}
			</td>
		</tr>
		<tr><td colspan="2" style="padding-bottom:10px;"><div class="separation"></div></td></tr>
		<tr>
			<td colspan="2">
				<table cellspacing="0" cellpadding="0" class="table tableDnD" id="imageTable">
						<thead>
						<tr class="nodrag nodrop"> 
							<th style="width: 100px;">{l s='Image'}</th>
							<th>{l s='Position'}</th>
							{if $gallery.shops}
							{foreach from=$gallery.shops item=shop}
								<th>{$shop.name}</th>
							{/foreach}
							{/if}
							<th>{l s='Action'}</th>
						</tr>
						</thead>
						<tbody id="imageList">
						</tbody>
				</table>
			</td>
		</tr>
	</table>

	<table id="lineType" style="display:none;">
		<tr id="image_id">
			<td style="padding: 4px;">
				<a href="image_path" class="fancybox">
					<img src="en-default" alt="image_id" title="image_id" width="60" height="60" />
				</a>
			</td>
			<td id="td_image_id" class="pointer dragHandle center positionImage">
				image_position
			</td>
			{if $gallery.shops}
				{foreach from=$gallery.shops item=shop}
						<td class="center">
						<input type="checkbox" class="image_shop" name="id_image" id="{$shop.id_shop}image_id" value="{$shop.id_shop}" />
						</td>
				{/foreach}
			{/if}
			<td class="center">
				<a href="#" class="delete_gallery_image" >
					<img src="../img/admin/delete.gif" alt="{l s='Delete this image'}" title="{l s='Delete this image'}" />
				</a>
			</td>
		</tr>
	</table>

	<script type="text/javascript">
        var ThickboxI18nImage = "{l s='Image'}";
		var ThickboxI18nOf = "{l s='of'}";
		var ThickboxI18nClose = "{l s='Close'}";
		var ThickboxI18nOrEscKey = "{l s='(or "Esc")'}";
		var ThickboxI18nNext = "{l s='Next >'}";
		var ThickboxI18nPrev = "{l s='< Previous'}";
        
		var tb_pathToImage = "../img/loadingAnimation.gif";
		var upbutton = '{l s='Upload an image'}';
		var token = '{$gallery.token}';
		var come_from = '{$gallery.table}';
		var success_add =  '{l s='The image has been successfully added.'}';
		var id_tmp = 0;
		var current_shop_id = {$gallery.current_shop_id|intval};
		{literal}
		//Ready Function
		$(document).ready(function(){
			{/literal}
			{foreach from=$gallery.images item=image}
				assoc = {literal}"{"{/literal};
				{if $gallery.shops}
					{foreach from=$gallery.shops item=shop}
						assoc += '"{$shop.id_shop}" : {if $gallery.object->isAssociatedToGalleryShop($image.id_image, $shop.id_shop)}1{else}0{/if},';
					{/foreach}
				{/if}
				if (assoc != {literal}"{"{/literal})
				{
					assoc = assoc.slice(0, -1);
					assoc += {literal}"}"{/literal};
					assoc = jQuery.parseJSON(assoc);
				}
				else
					assoc = false;
				imageLine({$image.id_image}, "{$image.image}", {$image.position}, assoc);
			{/foreach}
			{literal}
			$("#imageTable").tableDnD(
			{
				onDrop: function(table, row) {
				current = $(row).attr("id");
				stop = false;
				image_up = "{";
				$("#imageList").find("tr").each(function(i) {
					$("#td_" +  $(this).attr("id")).html(i + 1);
					if (!stop || (i + 1) == 2)
						image_up += '"' + $(this).attr("id") + '" : ' + (i + 1) + ',';
				});
				image_up = image_up.slice(0, -1);
				image_up += "}";
				updateImagePosition(image_up);
				}
			});
			var filecheck = 1;
			var uploader = new qq.FileUploader(
			{
				element: document.getElementById("file-uploader"),
				action: "ajax-tab.php",
				debug: false,
				params: {
					id_st_blog : {/literal}{$gallery.id_st_blog}{literal},
					token : "{/literal}{$token}{literal}",
					tab : "AdminStBlog",
					action : 'addImage',
					ajax: 1
				},
				onComplete: function(id, fileName, responseJSON)
				{
					var percent = ((filecheck * 100) / nbfile);
					$("#progressBarImage").progressbar({value: percent});
					if (percent != 100)
					{
						$("#imageUpload").html(parseInt(filecheck));
						$("#imageTotal").html(" / " + parseInt(nbfile) + " {/literal}{l s='Images'}{literal}");
						$("#progressBarImage").show();
						$("#showCounter").show();
					}
					else
					{
						$("#progressBarImage").progressbar({value: 0});
						$("#progressBarImage").hide();
						$("#showCounter").hide();
						nbfile = 0;
						filecheck = 0;
					}
					if (responseJSON.status == 'ok')
					{
						imageLine(responseJSON.id, responseJSON.path, responseJSON.position, responseJSON.shops)
						$("#imageTable tr:last").after(responseJSON.html);
						$("#countImage").html(parseInt($("#countImage").html()) + 1);
						$("#img" + id).remove();
						$("#imageTable").tableDnDUpdate();
						showSuccessMessage(responseJSON.name + " " + success_add);
					}
					else
						showErrorMessage(responseJSON.error);
					filecheck++;
				},
				onSubmit: function(id, filename)
				{
					$("#imageTable").show();
					$("#listImage").append("<li id='img"+id+"'><div class=\"float\" >" + filename + "</div></div><a style=\"margin-left:10px\"href=\"javascript:delQueue(" + id +");\"><img src=\"../img/admin/disabled.gif\" alt=\"\" border=\"0\"></a><p class=\"errorImg\"></p></li>");
				}
			});

			/**
			 * on success function 
			 */
			function afterDeleteGalleryImage(data)
			{
				data = $.parseJSON(data);
				if (data)
				{
					id = data.id;
					if(data.success)
					{
						$("#" + id).remove();
                        showSuccessMessage(data.success);
					}
                    else
                    	showErrorMessage(data.error);
				}
			}

			$('.delete_gallery_image').die().live('click', function(e)
			{
				e.preventDefault();
				id = $(this).parent().parent().attr('id');
				if (confirm("{/literal}{l s='Are you sure?' js=1}{literal}"))
				doAdminAjax({
						"action":"deleteGalleryImage",
						"id_image":id,
						"id_st_blog" : {/literal}{$gallery.id_st_blog}{literal},
						"token" : "{/literal}{$gallery.token}{literal}",
						"tab" : "AdminStBlog",
						"ajax" : 1 }, afterDeleteGalleryImage
				);
			});
			
			$('.image_shop').die().live('click', function()
			{
				active = false;
				if ($(this).attr("checked"))
					active = true;
				id = $(this).parent().parent().attr('id');
				id_shop = $(this).attr("id").replace(id, "");
				doAdminAjax(
				{
					"action":"UpdateGalleryImageShopAsso",
					"id_image":id,
					"id_shop": id_shop,
					"active":active,
					"token" : "{/literal}{$token}{literal}",
					"tab" : "AdminStBlog",
					"ajax" : 1 
				});
			});
			
			//function	
			function updateImagePosition(json)
			{
				doAdminAjax(
				{
					"action":"updateImagePosition",
					"json":json,
					"token" : "{/literal}{$gallery.token}{literal}",
					"tab" : "AdminStBlog",
					"ajax" : 1
				});
	
			}
			
			function delQueue(id)
			{
				$("#img" + id).fadeOut("slow");
				$("#img" + id).remove();
			}
			
			function imageLine(id, path, position, shops)
			{
				line = $("#lineType").html();
				line = line.replace(/image_id/g, id);
                line = line.replace(/en-default/g, path);
                line = line.replace(/image_path/g, path);
				line = line.replace(/image_position/g, position);
				line = line.replace(/<tbody>/gi, "");
				line = line.replace(/<\/tbody>/gi, "");
				if (shops != false)
				{
					$.each(shops, function(key, value){
						if (value == 1)
							line = line.replace('id="' + key + '' + id + '"','id="' + key + '' + id + '" checked=checked');
					});
				}
				$("#imageList").append(line);
			}
			$('.fancybox').fancybox();
		});
		{/literal}
	</script>
{/if}
