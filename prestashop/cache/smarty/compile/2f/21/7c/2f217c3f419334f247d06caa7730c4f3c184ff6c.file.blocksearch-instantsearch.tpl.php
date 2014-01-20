<?php /* Smarty version Smarty-3.1.14, created on 2014-01-20 23:50:54
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\modules\blocksearch\blocksearch-instantsearch.tpl" */ ?>
<?php /*%%SmartyHeaderCode:133252dd9a3ee72ad4-84150389%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2f217c3f419334f247d06caa7730c4f3c184ff6c' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\blocksearch\\blocksearch-instantsearch.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '133252dd9a3ee72ad4-84150389',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'instantsearch' => 0,
    'blocksearch_type' => 0,
    'search_ssl' => 0,
    'link' => 0,
    'cookie' => 0,
    'ajaxsearch' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dd9a3f14bbf9_42786328',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dd9a3f14bbf9_42786328')) {function content_52dd9a3f14bbf9_42786328($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['instantsearch']->value){?>
	<script type="text/javascript">
	// <![CDATA[
		function tryToCloseInstantSearch() {
			if ($('#old_center_column').length > 0)
			{
				$('#center_column').remove();
				$('#old_center_column').attr('id', 'center_column');
				$('#center_column').show();
				return false;
			}
		}
		
		instantSearchQueries = new Array();
		function stopInstantSearchQueries(){
			for(i=0;i<instantSearchQueries.length;i++) {
				instantSearchQueries[i].abort();
			}
			instantSearchQueries = new Array();
		}
		
		$("#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
").keyup(function(){
			if($(this).val().length > 0){
				stopInstantSearchQueries();
				instantSearchQuery = $.ajax({
					url: '<?php if ($_smarty_tpl->tpl_vars['search_ssl']->value==1){?><?php echo addslashes($_smarty_tpl->tpl_vars['link']->value->getPageLink('search',true));?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink('search');?>
<?php }?>',
					data: {
						instantSearch: 1,
						id_lang: <?php echo $_smarty_tpl->tpl_vars['cookie']->value->id_lang;?>
,
						q: $(this).val()
					},
					dataType: 'html',
					type: 'POST',
					success: function(data){
						if($("#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
").val().length > 0)
						{
							tryToCloseInstantSearch();
							$('#center_column').attr('id', 'old_center_column');
							$('#old_center_column').after('<div id="center_column" class="' + $('#old_center_column').attr('class') + '">'+data+'</div>');
							$('#old_center_column').hide();
							// Button override
							ajaxCart.overrideButtonsInThePage();
							$("#instant_search_results a.close").click(function() {
								$("#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
").val('');
								return tryToCloseInstantSearch();
							});
							return false;
						}
						else
							tryToCloseInstantSearch();
					}
				});
				instantSearchQueries.push(instantSearchQuery);
			}
			else
				tryToCloseInstantSearch();
		});
	// ]]>
	</script>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['ajaxsearch']->value){?>
	<script type="text/javascript">
	// <![CDATA[
    
		$('document').ready( function() {
    			$("#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
").focus(function(){
    			     $(this).parent().addClass('active');
    			}).blur(function(){
    			     $(this).parent().removeClass('active');
    			});
			var search_query_autocomplete = $("#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
")
                .autocomplete(
					'<?php if ($_smarty_tpl->tpl_vars['search_ssl']->value==1){?><?php echo addslashes($_smarty_tpl->tpl_vars['link']->value->getPageLink('search',true));?>
<?php }else{ ?><?php echo addslashes($_smarty_tpl->tpl_vars['link']->value->getPageLink('search'));?>
<?php }?>', {
						minChars: 3,
						max: 7,
						width: $('#search_block_top').outerWidth()-2,
						selectFirst: false,
						scroll: false,
						dataType: "json",
						formatItem: function(data, i, max, value, term) {
							return value;
						},
						parse: function(data) {
						    if($('#header_right').hasClass('span3'))
                                search_query_autocomplete.setOptions({'width':$('#search_block_top').outerWidth()+$('#search_query_top').outerWidth()-2});
                            else
                                search_query_autocomplete.setOptions({'width':$('#search_block_top').outerWidth()-2});
							var mytab = new Array();
							for (var i = 0; i < data.length; i++)
                            if(i==6){
        						data[i].pname = 'searchboxsubmit';
        						data[i].product_link = $('#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
').val();
        						mytab[mytab.length] = { data: data[i], value:  '<div id="ac_search_more"> '+ $("#more_prod_string").html()+' </div>'};
                                break;
							}else
							    mytab[mytab.length] = { data: data[i], value:  ' <img src="'+ data[i].pthumb + '" /><span class="ac_product_name">'  + data[i].pname + ' </span> '};
							return mytab;
						},
						extraParams: {
							ajaxSearch: 1,
							id_lang: <?php echo $_smarty_tpl->tpl_vars['cookie']->value->id_lang;?>

						}
					}
				)
				.result(function(event, data, formatted) {
                    if(data.pname=='searchboxsubmit'){
                        $('#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
').val(data.product_link);
                        $("#searchbox").submit();
                    }else{
					   $('#search_query_<?php echo $_smarty_tpl->tpl_vars['blocksearch_type']->value;?>
').val(data.pname);
					   document.location.href = data.product_link;
                    }
				});
		});
    
	// ]]>
	</script>
<?php }?><?php }} ?>