$(function() {
	$('input[@type=radio].star').rating();
	$('.auto-submit-star').rating();

    var is_success = false;
	$('.open-comment-form').click(function(){
        art.dialog({
            'id':'art_comment_form',
            opacity: 0.5,
            lock: true,
            close: function(){
                if(is_success)
                    window.location.reload(true);
                return true;
            },
            'content' : document.getElementById('new_comment_form')
        }); 
	});
	$('.usefulness_btn').click(function() {
	    art.dialog({
            id : 'art_usefulness',
            opacity: 0.5,
            lock: true
        });
	    if(!$(this).hasClass('logged'))
        {
            art.dialog({id: 'art_usefulness'}).content(comment_actions_login_first);
            return false;
        }
		var id_product_comment = $(this).data('id-product-comment');
		var is_usefull = $(this).data('is-usefull');
		//var parent = $(this).parent();
        var curr_number = parseInt($(this).find('span').text(),10);
        curr_number = curr_number>0 ? curr_number+1 : 1;
        var that = $(this);
		$.ajax({
			url: productcomments_controller_url + '?rand=' + new Date().getTime(),
			data: {
				id_product_comment: id_product_comment,
				action: 'comment_is_usefull',
				value: is_usefull
			},
			type: 'POST',
			headers: { "cache-control": "no-cache" },
			success: function(result){
			    if(result==1)
                {
                    that.find('span').html(curr_number);
                    art.dialog({id: 'art_usefulness'}).content(comment_success_msg).time(2);
                }
                else
                    art.dialog({id: 'art_usefulness'}).content(comment_actions_failure);
                /*
				parent.fadeOut('slow', function() {
					parent.remove();
				});
                */
			}
		});
	});

	$('span.report_btn').click(function() {
		if (confirm(confirm_report_message))
		{
			var idProductComment = $(this).data('id-product-comment');
			var parent = $(this).parent();

			$.ajax({
				url: productcomments_controller_url + '?rand=' + new Date().getTime(),
				data: {
					id_product_comment: idProductComment,
					action: 'report_abuse'
				},
				type: 'POST',
				headers: { "cache-control": "no-cache" },
				success: function(result){
					if(result==1)
                    {
                        art.dialog({
                            id : 'art_reprot',
                            time : 2,
                            content : comment_success_msg
                        });
        				parent.fadeOut('slow', function() {
        					parent.remove();
        				});
                    }
                    else
                        art.dialog({
                            id : 'art_reprot',
                            content : comment_actions_failure
                        });
                    /*
                    */
				}
			});
		}
	});

	$('#submitNewMessage').click(function(e) {
		// Kill default behaviour
		e.preventDefault();

		// Form element

		url_options = parseInt(productcomments_url_rewrite) ? '?' : '&';
		$.ajax({
			url: productcomments_controller_url + url_options + 'action=add_comment&secure_key=' + secure_key + '&rand=' + new Date().getTime(),
			data: $('#id_new_comment_form').serialize(),
			type: 'POST',
			headers: { "cache-control": "no-cache" },
			dataType: "json",
			success: function(data){
				if (data.result)
				{
                    is_success = true;
					art.dialog({id: 'art_comment_form'}).content(document.getElementById('thank_comment_msg'));
                    $('#thank_comment_close').click(function(){
                        art.dialog({id: 'art_comment_form'}).close();
                    });
				}
				else
				{
					$('#new_comment_form_error ul').html('');
					$.each(data.errors, function(index, value) {
						$('#new_comment_form_error ul').append('<li>'+value+'</li>');
					});
					$('#new_comment_form_error').slideDown('slow');
				}
			}
		});
		return false;
	});
});

function productcommentRefreshPage() {
    window.location.reload();
}