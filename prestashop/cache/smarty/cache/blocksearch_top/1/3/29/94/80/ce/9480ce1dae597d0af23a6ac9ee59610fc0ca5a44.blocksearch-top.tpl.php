<?php /*%%SmartyHeaderCode:1636352cc08b288ab98-36472880%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9480ce1dae597d0af23a6ac9ee59610fc0ca5a44' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\blocksearch\\blocksearch-top.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
    '2f217c3f419334f247d06caa7730c4f3c184ff6c' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\blocksearch\\blocksearch-instantsearch.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1636352cc08b288ab98-36472880',
  'variables' => 
  array (
    'hook_mobile' => 0,
    'link' => 0,
    'search_query' => 0,
    'ENT_QUOTES' => 0,
    'sttheme' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b2b64ef0_66793648',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b2b64ef0_66793648')) {function content_52cc08b2b64ef0_66793648($_smarty_tpl) {?><!-- block seach mobile -->
<!-- Block search module TOP -->
<div id="search_block_top">
	<form method="get" action="http://localhost/1561/prestashop/index.php?controller=search" id="searchbox">
		<div id="searchbox_inner">
			<label for="search_query_top"><!-- image on background --></label>
			<input type="hidden" name="controller" value="search" />
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input class="search_query" type="text" id="search_query_top" name="search_query" placeholder="חפש" value="" autocomplete="off" /><a href="javascript:;" title="חפש" rel="nofollow" id="submit_searchbox" class="icon_wrap"><i class="icon-search-1 icon-0x"></i><span class="icon_text">חפש</span></a>
            <div class="hidden" id="more_prod_string">More products »</div>
    	</div>
    </form>
    <script type="text/javascript">
    // <![CDATA[
    
    jQuery(function($){
        $('#submit_searchbox').click(function(){
            var search_query_top_val = $.trim($('#search_query_top').val());
            if(search_query_top_val=='' || search_query_top_val==$.trim($('#search_query_top').attr('placeholder')))
            {
                $('#search_query_top').focusout();
                return false;
            }
            $('#searchbox').submit();
        });
        if(!isPlaceholer())
        {
            $('#search_query_top').focusin(function(){
                if ($(this).val()==$(this).attr('placeholder'))
                    $(this).val('');
            }).focusout(function(){
                if ($(this).val()=='')
                    $(this).val($(this).attr('placeholder'));
            });
        }
    });
    
    //]]>
    </script>
</div>
	<script type="text/javascript">
	// <![CDATA[
    
		$('document').ready( function() {
    			$("#search_query_top").focus(function(){
    			     $(this).parent().addClass('active');
    			}).blur(function(){
    			     $(this).parent().removeClass('active');
    			});
			var search_query_autocomplete = $("#search_query_top")
                .autocomplete(
					'http://localhost/1561/prestashop/index.php?controller=search', {
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
        						data[i].product_link = $('#search_query_top').val();
        						mytab[mytab.length] = { data: data[i], value:  '<div id="ac_search_more"> '+ $("#more_prod_string").html()+' </div>'};
                                break;
							}else
							    mytab[mytab.length] = { data: data[i], value:  ' <img src="'+ data[i].pthumb + '" /><span class="ac_product_name">'  + data[i].pname + ' </span> '};
							return mytab;
						},
						extraParams: {
							ajaxSearch: 1,
							id_lang: 3
						}
					}
				)
				.result(function(event, data, formatted) {
                    if(data.pname=='searchboxsubmit'){
                        $('#search_query_top').val(data.product_link);
                        $("#searchbox").submit();
                    }else{
					   $('#search_query_top').val(data.pname);
					   document.location.href = data.product_link;
                    }
				});
		});
    
	// ]]>
	</script>

<!-- /Block search module TOP -->
<?php }} ?>