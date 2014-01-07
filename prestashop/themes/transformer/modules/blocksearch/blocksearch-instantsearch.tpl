{if $instantsearch}
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
		
		$("#search_query_{$blocksearch_type}").keyup(function(){
			if($(this).val().length > 0){
				stopInstantSearchQueries();
				instantSearchQuery = $.ajax({
					url: '{if $search_ssl == 1}{$link->getPageLink('search', true)|addslashes}{else}{$link->getPageLink('search')}{/if}',
					data: {
						instantSearch: 1,
						id_lang: {$cookie->id_lang},
						q: $(this).val()
					},
					dataType: 'html',
					type: 'POST',
					success: function(data){
						if($("#search_query_{$blocksearch_type}").val().length > 0)
						{
							tryToCloseInstantSearch();
							$('#center_column').attr('id', 'old_center_column');
							$('#old_center_column').after('<div id="center_column" class="' + $('#old_center_column').attr('class') + '">'+data+'</div>');
							$('#old_center_column').hide();
							// Button override
							ajaxCart.overrideButtonsInThePage();
							$("#instant_search_results a.close").click(function() {
								$("#search_query_{$blocksearch_type}").val('');
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
{/if}
{if $ajaxsearch}
	<script type="text/javascript">
	// <![CDATA[
    {literal}
		$('document').ready( function() {
    			$("#search_query_{/literal}{$blocksearch_type}{literal}").focus(function(){
    			     $(this).parent().addClass('active');
    			}).blur(function(){
    			     $(this).parent().removeClass('active');
    			});
			var search_query_autocomplete = $("#search_query_{/literal}{$blocksearch_type}{literal}")
                .autocomplete(
					'{/literal}{if $search_ssl == 1}{$link->getPageLink('search', true)|addslashes}{else}{$link->getPageLink('search')|addslashes}{/if}{literal}', {
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
        						data[i].product_link = $('#search_query_{/literal}{$blocksearch_type}{literal}').val();
        						mytab[mytab.length] = { data: data[i], value:  '<div id="ac_search_more"> '+ $("#more_prod_string").html()+' </div>'};
                                break;
							}else
							    mytab[mytab.length] = { data: data[i], value:  ' <img src="'+ data[i].pthumb + '" /><span class="ac_product_name">'  + data[i].pname + ' </span> '};
							return mytab;
						},
						extraParams: {
							ajaxSearch: 1,
							id_lang: {/literal}{$cookie->id_lang}{literal}
						}
					}
				)
				.result(function(event, data, formatted) {
                    if(data.pname=='searchboxsubmit'){
                        $('#search_query_{/literal}{$blocksearch_type}{literal}').val(data.product_link);
                        $("#searchbox").submit();
                    }else{
					   $('#search_query_{/literal}{$blocksearch_type}{literal}').val(data.pname);
					   document.location.href = data.product_link;
                    }
				});
		});
    {/literal}
	// ]]>
	</script>
{/if}