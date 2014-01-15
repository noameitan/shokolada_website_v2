<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 16:24:37
         compiled from "D:\wamp\www\1561\prestashop\modules\steasytabs\views\templates\admin\steasytabs.tpl" */ ?>
<?php /*%%SmartyHeaderCode:571952d69a25981da4-70524880%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd86c8ab9baeae3a3aaa07979c72c028e0a512f71' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\steasytabs\\views\\templates\\admin\\steasytabs.tpl',
      1 => 1389102210,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '571952d69a25981da4-70524880',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'languages' => 0,
    'language' => 0,
    'steasytabs' => 0,
    'max' => 0,
    'hint' => 0,
    'iso_tiny_mce' => 0,
    'ad' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d69a25c7bb65_86911773',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d69a25c7bb65_86911773')) {function content_52d69a25c7bb65_86911773($_smarty_tpl) {?>
<input type="hidden" name="submitted_tabs[]" value="ModuleSteasytabs" />
<h4><?php echo smartyTranslate(array('s'=>'Easy tabs','mod'=>'steasytabs'),$_smarty_tpl);?>
</h4>
<div class="separation"></div>
<table cellpadding="5">

	<tr>
		<td class="col-left">
			<?php echo $_smarty_tpl->getSubTemplate ("controllers/products/multishop/checkbox.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('field'=>"easytabs_title",'type'=>"default",'multilang'=>"true"), 0);?>

			<label><?php echo smartyTranslate(array('s'=>'Title:','mod'=>'steasytabs'),$_smarty_tpl);?>
</label>
		</td>
		<td style="padding-bottom:5px;" class="translatable">
		<?php  $_smarty_tpl->tpl_vars['language'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['language']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['languages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['language']->key => $_smarty_tpl->tpl_vars['language']->value){
$_smarty_tpl->tpl_vars['language']->_loop = true;
?>
			<div class="lang_<?php echo $_smarty_tpl->tpl_vars['language']->value['id_lang'];?>
" style="<?php if (!$_smarty_tpl->tpl_vars['language']->value['is_default']){?>display: none;<?php }?> float: left;">
					<input size="43" type="text"
					id="easytabs_title_<?php echo $_smarty_tpl->tpl_vars['language']->value['id_lang'];?>
" name="easytabs_title_<?php echo $_smarty_tpl->tpl_vars['language']->value['id_lang'];?>
"
					value="<?php echo (($tmp = @smarty_modifier_htmlentitiesUTF8($_smarty_tpl->tpl_vars['steasytabs']->value->title[$_smarty_tpl->tpl_vars['language']->value['id_lang']]))===null||$tmp==='' ? '' : $tmp);?>
"/><sup> *</sup>
				<span class="hint" name="help_box"><?php echo smartyTranslate(array('s'=>'Invalid characters:','mod'=>'steasytabs'),$_smarty_tpl);?>
 <>;=#{}<span class="hint-pointer">&nbsp;</span>
				</span>
			</div>
		<?php } ?>
		</td>
	</tr>
	<tr>
		<td class="col-left">
			<?php echo $_smarty_tpl->getSubTemplate ("controllers/products/multishop/checkbox.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('field'=>"easytabs_content",'type'=>"tinymce",'multilang'=>"true"), 0);?>

			<label><?php echo smartyTranslate(array('s'=>'Content:','mod'=>'steasytabs'),$_smarty_tpl);?>
</label>
		</td>
		<td style="padding-bottom:5px;">
<div class="translatable">
<?php  $_smarty_tpl->tpl_vars['language'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['language']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['languages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['language']->key => $_smarty_tpl->tpl_vars['language']->value){
$_smarty_tpl->tpl_vars['language']->_loop = true;
?>
<div class="lang_<?php echo $_smarty_tpl->tpl_vars['language']->value['id_lang'];?>
" style="<?php if (!$_smarty_tpl->tpl_vars['language']->value['is_default']){?>display:none;<?php }?>float: left;">
	<textarea cols="100" rows="10" id="easytabs_content_<?php echo $_smarty_tpl->tpl_vars['language']->value['id_lang'];?>
" 
		name="easytabs_content_<?php echo $_smarty_tpl->tpl_vars['language']->value['id_lang'];?>
" 
		class="st_easy_tabs_autoload_rte" ><?php if (isset($_smarty_tpl->tpl_vars['steasytabs']->value->content[$_smarty_tpl->tpl_vars['language']->value['id_lang']])){?><?php echo smarty_modifier_htmlentitiesUTF8($_smarty_tpl->tpl_vars['steasytabs']->value->content[$_smarty_tpl->tpl_vars['language']->value['id_lang']]);?>
<?php }?></textarea>
	<span class="counter" max="<?php if (isset($_smarty_tpl->tpl_vars['max']->value)){?><?php echo $_smarty_tpl->tpl_vars['max']->value;?>
<?php }else{ ?>none<?php }?>"></span>
	<span class="hint"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['hint']->value)===null||$tmp==='' ? '' : $tmp);?>
<span class="hint-pointer">&nbsp;</span></span>
</div>
<?php } ?>
</div>
<script type="text/javascript">
	var iso = '<?php echo $_smarty_tpl->tpl_vars['iso_tiny_mce']->value;?>
';
	var pathCSS = '<?php echo @constant('_THEME_CSS_DIR_');?>
';
	var ad = '<?php echo $_smarty_tpl->tpl_vars['ad']->value;?>
';
</script>
			<p class="clear"></p>
		</td>
	</tr>
	<tr>
		<td class="col-left">
			<?php echo $_smarty_tpl->getSubTemplate ("controllers/products/multishop/checkbox.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('field'=>"easytabs_active",'type'=>"default"), 0);?>

			<label><?php echo smartyTranslate(array('s'=>'Active:','mod'=>'steasytabs'),$_smarty_tpl);?>
</label>
		</td>
		<td>
			<input type="checkbox" name="easytabs_active" id="easytabs_active" style="padding-top: 5px;" <?php if ($_smarty_tpl->tpl_vars['steasytabs']->value->active){?>checked="checked"<?php }?> value="1" />
		</td>
	</tr>
</table>
<br />
<script type="text/javascript">
    
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

</script>
<?php }} ?>