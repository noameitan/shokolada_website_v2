/*
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
*/
jQuery(function($){
    //manageLinksStatus();
    $('select[name="links"]').change(function(){
        manageLinksStatus();
    });
    $('input[name="content"]').click(function(){
        var v = $(this).val();
        if(v==1)
        {
            $('textarea[name^="html_"]').val('').attr("disabled",true); 
            $('#product_name').val('').attr("disabled",false); 
            $('#id_product').val(''); 
            $('#curr_product_name').empty();
        }
        else
        {
            $('textarea[name^="html_"]').val('').attr("disabled",false); 
            $('#product_name').val('').attr("disabled",true); 
            $('#id_product').val(''); 
            $('#curr_product_name').empty();
        }
    });
     $('#product_name').autocomplete('ajax_products_list.php', {
        minChars: 1,
        autoFill: true,
        max:20,
        matchContains: true,
        mustMatch:true,
        scroll:false,
        cacheLength:0,
        formatItem: function(item) {
        return item[1]+' - '+item[0];
        }
    }).result(function(event, data, formatted) {
		if (data == null)
			return false;
		var productId = data[1];
		var productName = data[0];
		$('#curr_product_name').html(productName + '(ID: ' + productId + ')');
		$('#id_product').val(productId);
    }); 
    if($('#id_product').size() && $('#id_product').val()>0)
        $('textarea[name^="html_"]').val('').attr("disabled",true); 
});
var manageLinksStatus = function()
{
    var value = $('select[name="links"]').val();
                        
    if(value=='')
    {
        $('input[name^="title_"],input[name^="link_"]').val('').attr("disabled",false); 
        $('select[name="links"]').find("option[value^='2_']").val('2_0').text('Choose ID product');
    }
    else if(value.substr(0,2) == "2_")
    {
        var id_product = prompt('Set ID product');
		if (id_product == null || id_product == "" || isNaN(id_product))
			return;
		$('select[name="links"]').find("option[value^='2_']").val('2_'+id_product).text('Product ID '+id_product);
        $('input[name^="title_"],input[name^="link_"]').val('').attr("disabled",true); 
    }
    else
    {
        $('input[name^="title_"],input[name^="link_"]').val('').attr("disabled",true); 
        $('select[name="links"]').find("option[value^='2_']").val('2_0').text('Choose ID product');
    }
}