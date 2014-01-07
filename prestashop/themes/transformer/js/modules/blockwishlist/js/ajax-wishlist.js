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

/**
 * Update WishList Cart by adding, deleting, updating objects
 *
 * @return void
 */
function WishlistCart(id, action, id_product, id_product_attribute, quantity)
{
    if (action == 'add')
        art.dialog({
            id: 'wishlist_dialog',
            fixed: true,
            opacity: 0.5,
            lock: true
        });  
	$.ajax({
		type: 'GET',
		url:	baseDir + 'modules/blockwishlist/cart.php',
		async: true,
		cache: false,
		//dataType : "json",
		data: 'action=' + action + '&id_product=' + id_product + '&quantity=' + quantity + '&token=' + static_token + '&id_product_attribute=' + id_product_attribute,
        /*
		success: function(data)
		{
			if (action == 'add')
			{
				var $element = $('#bigpic');
				if (!$element.length)
					var $element = $('#wishlist_button');
				var $picture = $element.clone();
				var pictureOffsetOriginal = $element.offset();
				$picture.css({'position': 'absolute', 'top': pictureOffsetOriginal.top, 'left': pictureOffsetOriginal.left});
				var pictureOffset = $picture.offset();
				var wishlistBlockOffset = $('#wishlist_block').offset();

				$picture.appendTo('body');
				$picture.css({ 'position': 'absolute', 'top': $picture.css('top'), 'left': $picture.css('left') })
				.animate({ 'width': $element.attr('width')*0.66, 'height': $element.attr('height')*0.66, 'opacity': 0.2, 'top': wishlistBlockOffset.top + 30, 'left': wishlistBlockOffset.left + 15 }, 1000)
				.fadeOut(800);
			}
			
			if($('#' + id).length != 0)
			{
				$('#' + id).slideUp('normal');
				$('#' + id).html(data);
				$('#' + id).slideDown('normal');
			}
		},
        */
        success: function(data)
        {
            if(data.match("^\{"))
            {  
                data = eval("("+data+")");
                if(data.hasError==1)
                {
                    art.dialog({id: 'wishlist_dialog'}).content('<div class="error">'+data.error+'</div>');
                }
                else if(data.hasError==3)
                {
                    if($('#wishlist_block').size())
                    {
                        $('#wishlist_block_list dl.products').remove();
                        $('#wishlist_no_products').show();
                    }
                }
                else if(data.hasError==2)
                {
                    $(data.products).each(function(index,product){
                        if (product.id != undefined)
                        {
                            if (product.id == id_product)
                			{
                                $('#wishlist_pro_title').empty().html(product.name);
                                art.dialog({id: 'wishlist_dialog'}).content(document.getElementById('wishlist_message'));
                                $('#wishlist_continue').unbind('click').click(function(){
                                    art.dialog({id: 'wishlist_dialog'}).close();
                                });
                			}
                        }
                    });
                    if($('#wishlist_block').size())
                        WishlistDisplayProducts(data.products);
                }
            }
            else
                art.dialog({id: 'wishlist_dialog'}).content('<div class="error">'+data+'</div>');
        }
	});
}

function WishlistDisplayProducts(products)
{
    if(!$('#wishlist_block').size())
        return false;
    $('#wishlist_block_list dl.products').remove();
    if(products.length)
    {
        $('#wishlist_no_products').hide();
        $(products).each(function(index,product){
            var content = '<dl id="wishlist_product_'+product.id+'" class="products">';
            content += '<dt><span class="quantity-formated"><span class="quantity">'+product.quantity+'</span>x</span><a class="cart_block_product_name" href="'+product.link+'" title="'+product.title+'">'+product.name+'</a><a class="ajax_cart_block_remove_link" href="javascript:;" onclick="javascript:WishlistCart(\'wishlist_block_list\', \'delete\', '+product.id+', '+product.id_product_attribute+', 0);" title="'+product.text_remove+'"><i class="icon-trash"></i></a></dt>';
			if(product.attributes_small)
                content += '<dd><a href="'+product.detail_link+'" title="'+product.text_product_detail+'" rel="nofollow">'+product.attributes_small+'</a></dd>';
            content += '</dl>';
		    $('#wishlist_block_list').append(content);
        });
    }
    else
    {
        $('#wishlist_no_products').show();
    }
}

/**
 * Change customer default wishlist
 *
 * @return void
 */
function WishlistChangeDefault(id, id_wishlist)
{
	$.ajax({
		type: 'GET',
		url:	baseDir + 'modules/blockwishlist/cart.php',
		async: true,
		data: 'id_wishlist=' + id_wishlist + '&token=' + static_token,
		cache: false,
		//dataType : "json",
		success: function(data)
		{
            if(data.match("^\{"))
            {
                data = eval("("+data+")");
                if(data.hasError==1)
                {
                    art.dialog({
                        id: 'wishlist_dialog',
                        fixed: true,
                        opacity: 0.5,
                        lock: true
                    }).content('<div class="error">'+data.error+'</div>');
                }
                else if(data.hasError==3)
                {
                    if($('#wishlist_block').size())
                    {
                        $('#wishlist_block_list dl.products').remove();
                        $('#wishlist_no_products').show();
                    }
                }
                else if(data.hasError==2)
                {
                    if($('#wishlist_block').size())
                        WishlistDisplayProducts(data.products);
                }
                
            }
            else
                art.dialog({id: 'wishlist_dialog'}).content('<div class="error">'+data+'</div>');
		}
	});
}

/**
 * Buy Product
 *
 * @return void
 */
function WishlistBuyProduct(token, id_product, id_product_attribute, id_quantity, button, ajax)
{
	if(ajax)
		ajaxCart.add(id_product, id_product_attribute, false, button, 1, [token, id_quantity]);
	else
	{
		$('#' + id_quantity).val(0);
		WishlistAddProductCart(token, id_product, id_product_attribute, id_quantity)
		document.forms['addtocart' + '_' + id_product  + '_' + id_product_attribute].method='POST';
		document.forms['addtocart' + '_' + id_product  + '_' + id_product_attribute].action=baseUri + '?controller=cart';
		document.forms['addtocart' + '_' + id_product  + '_' + id_product_attribute].elements['token'].value = static_token;
		document.forms['addtocart' + '_' + id_product  + '_' + id_product_attribute].submit();
	}
	return (true);
}

function WishlistAddProductCart(token, id_product, id_product_attribute, id_quantity)
{
	if ($('#' + id_quantity).val() <= 0)
		return (false);
	$.ajax({
		type: 'GET',
		url: baseDir + 'modules/blockwishlist/buywishlistproduct.php',
		data: 'token=' + token + '&static_token=' + static_token + '&id_product=' + id_product  + '&id_product_attribute=' + id_product_attribute,
		async: true,
		cache: false, 
		success: function(data)
		{
			if (data)
				alert(data);
			else
			{
				$('#' + id_quantity).val($('#' + id_quantity).val() - 1);
			}
		}
	});
	return (true);
}

/**
 * Show wishlist managment page
 *
 * @return void
 */
function WishlistManage(id, id_wishlist)
{
	$.ajax({
		type: 'GET',
		async: true,
		url: baseDir + 'modules/blockwishlist/managewishlist.php',
		data: 'id_wishlist=' + id_wishlist + '&refresh=' + false,
		cache: false,
		success: function(data)
		{
			$('#' + id).hide();
			$('#' + id).html(data);
			$('#' + id).fadeIn('slow');
		}
	});
}

/**
 * Show wishlist product managment page
 *
 * @return void
 */
function WishlistProductManage(id, action, id_wishlist, id_product, id_product_attribute, quantity, priority)
{
	$.ajax({
		type: 'GET',
		async: true,
		url: baseDir + 'modules/blockwishlist/managewishlist.php',
		data: 'action=' + action + '&id_wishlist=' + id_wishlist + '&id_product=' + id_product + '&id_product_attribute=' + id_product_attribute + '&quantity=' + quantity + '&priority=' + priority + '&refresh=' + true,
		cache: false,
		success: function(data)
		{
			if (action == 'delete')
				$('#wlp_' + id_product + '_' + id_product_attribute).fadeOut('fast');
			else if (action == 'update')
			{
				$('#wlp_' + id_product + '_' + id_product_attribute).fadeOut('fast');
				$('#wlp_' + id_product + '_' + id_product_attribute).fadeIn('fast');
			}
		}
	});
}

/**
 * Delete wishlist
 *
 * @return boolean succeed
 */
function WishlistDelete(id, id_wishlist, msg)
{
	var res = confirm(msg);
	if (res == false)
		return (false);
	$.ajax({
		type: 'GET',
		async: true,
		url: baseDir + 'modules/blockwishlist/mywishlist.php',
		cache: false,
		data: 'deleted&id_wishlist=' + id_wishlist,
		success: function(data)
		{
			$('#' + id).fadeOut('slow');
		}
	});
}

/**
 * Hide/Show bought product
 *
 * @return void
 */
function WishlistVisibility(bought_class, id_button)
{
	if ($('#hide' + id_button).css('display') == 'none')
	{
		$('.' + bought_class).slideDown('fast');
		$('#show' + id_button).hide();
		$('#hide' + id_button).css('display', 'block');
	}
	else
	{
		$('.' + bought_class).slideUp('fast');
		$('#hide' + id_button).hide();
		$('#show' + id_button).css('display', 'block');
	}
}

/**
 * Send wishlist by email
 *
 * @return void
 */
function WishlistSend(id, id_wishlist, id_email)
{
	$.post(baseDir + 'modules/blockwishlist/sendwishlist.php',
	{ token: static_token,
	  id_wishlist: id_wishlist,
	  email1: $('#' + id_email + '1').val(),
	  email2: $('#' + id_email + '2').val(),
	  email3: $('#' + id_email + '3').val(),
	  email4: $('#' + id_email + '4').val(),
	  email5: $('#' + id_email + '5').val(),
	  email6: $('#' + id_email + '6').val(),
	  email7: $('#' + id_email + '7').val(),
	  email8: $('#' + id_email + '8').val(),
	  email9: $('#' + id_email + '9').val(),
	  email10: $('#' + id_email + '10').val() },
	function(data)
	{
		if (data)
			alert(data);
		else
			WishlistVisibility(id, 'hideSendWishlist');
	});
}
