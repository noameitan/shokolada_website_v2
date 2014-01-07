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

$('document').ready(function(){
	reloadProductComparison();
});
var removeProductComparison = function(idProduct)
{
	$.ajax({
		url: 'index.php?controller=products-comparison&ajax=1&action=remove&id_product=' + idProduct,
		async: false,
		cache: false,
		success: function(data){
		    if (data === '1')
        	   removeProductCompareList(idProduct);
            }
	});	
    return false;
};
var removeProductCompareList = function(idProduct)
{
    if(!$('#rightbar_compare').size())
        return false;
    
    var dom_compare_quantity = $('#rightbar_compare .compare_quantity');
    var nbr = parseInt(dom_compare_quantity.html(),10);
    if(isNaN(nbr))
        nbr=0;
    var curr_nbr = nbr-1;
    if(curr_nbr>0)
    {
        $('#no_products_to_compare').hide();
        dom_compare_quantity.html(curr_nbr).show();
        if(curr_nbr>1)
        {
            $('.compare_product_txt_s').show();
            $('.compare_product_txt').hide();
        }else{
            $('.compare_product_txt_s').hide();
            $('.compare_product_txt').show();
        }
    }
    else
    {
        $('#rightbar_compare .compare_quantity').html(0).hide();
        $('.compare_product_txt_s,.compare_product_txt').hide();
        $('#no_products_to_compare').show();
    }
};

var addProductCompareList = function(idProduct,pro_name,pro_link)
{
    if(!$('#rightbar_compare').size())
        return false;
    
    var dom_compare_quantity = $('#rightbar_compare .compare_quantity');
    var nbr = parseInt(dom_compare_quantity.html(),10);
    if(isNaN(nbr))
        nbr=0;
    var curr_nbr = nbr+1;
        
    dom_compare_quantity.html(curr_nbr).show();
    if(curr_nbr>1)
    {
        $('.compare_product_txt_s').show();
        $('.compare_product_txt').hide();
    }else{
        $('.compare_product_txt_s').hide();
        $('.compare_product_txt').show();
    }
    $('#no_products_to_compare').hide();
    /*
    $("#rightbar_compare .rightbar_fly_num").css("top", 28).fadeIn().animate({
		"top": 0
	}, 800, function() {
		$(this).fadeOut();
	});
    */
};

reloadProductComparison = function() {
	$('a.cmp_remove').click(function(){

		var idProduct = $(this).attr('rel').replace('ajax_id_product_', '');

		$.ajax({
  			url: 'index.php?controller=products-comparison&ajax=1&action=remove&id_product=' + idProduct,
 			async: false,
  			success: function(){
            	return true;
            }
		});	
	});
    $('.add_to_compare').click(function(){
        var idProduct = $(this).attr('data-product-id');
        if(parseInt(idProduct)!=idProduct)
            return false;
		var that = $(this);
        
        var pro_name = $(this).attr('data-product-name');
        var pro_link = $(this).attr('data-product-link');
        var pro_cover = $(this).attr('data-product-cover');
        
        $('#compare_pro_img').empty().html('<img src="'+pro_cover+'" />');
        $('#compare_pro_title').empty().html(pro_name);
        $('#compare_add_success,#compare_remove_success,#compare_error').addClass('hidden');
        
        art.dialog({
            id: 'compare_dialog',
            fixed: true,
            opacity: 0.5,
            lock: true
        });       
        $('#compare_continue').unbind('click').click(function(){
            art.dialog({id: 'compare_dialog'}).close();
        });
		if(that.hasClass('active'))
        {
			$.ajax({
	  			url: 'index.php?controller=products-comparison&ajax=1&action=remove&id_product=' + idProduct,
	 			async: true,
	  			success: function(data){
	  				if (data === '1')
 					{
 						that.removeClass('active');
                        $('#compare_remove_success').removeClass('hidden');
        	            removeProductCompareList(idProduct);
 					}
                    art.dialog({id: 'compare_dialog'}).content(document.getElementById('compare_message'));
	    		},
	    		error: function(){
	    			
	    		}
			});	
		}
		else
		{
			$.ajax({
	  			url: 'index.php?controller=products-comparison&ajax=1&action=add&id_product=' + idProduct,
	 			async: true,
	  			success: function(data){
	  				if (data === '0')
	  				{
                        $('#compare_error').removeClass('hidden').html(st_compare_max_item);
                    }
                    else
                    {
                        that.addClass('active');
                        $('#compare_add_success').removeClass('hidden');
                        addProductCompareList(idProduct,pro_name,pro_link);
                    }
                    art.dialog({id: 'compare_dialog'}).content(document.getElementById('compare_message'));
	  			},
	    		error: function(){
	    		     
	    		}
			});	
		} 
    });
}
