jQuery(function($) {
    if(!isPlaceholer())
    {
        $('#comment_input input').each(function(){
            $(this).focusin(function(){
                if ($(this).val()==$(this).attr('placeholder'))
                    $(this).val('');
            }).focusout(function(){
                if ($(this).val()=='')
                    $(this).val($(this).attr('placeholder'));
            });
        });
    }
	$('form[name=st_blog_comment_form]').submit(function(e) {
        e.preventDefault();
        var is_success = false;
		// Form element
        art.dialog({
            id: 'blog_comment_dialog',
            close: function(){
                if(is_success)
                    window.location.reload(true);
                return true;
            },
            fixed: true,
            opacity: 0.5,
            lock: true
        });
        
		$.ajax({
			url: $('form[name=st_blog_comment_form]').attr('action'),
			type: 'POST',
			headers: { "cache-control": "no-cache" },
            dataType: 'json',
            data: $('form[name=st_blog_comment_form]').serialize(),
            cache: false,
			success: function(json){
				if (json.r)
				{
				    is_success = true;
					art.dialog({id: 'blog_comment_dialog'}).content(document.getElementById('st_blog_thank_comment'));
                    $('#st_blog_thank_comment_close').click(function(){
                        art.dialog({id: 'blog_comment_dialog'}).close();
                    });
                    
				}
				else
				{
					art.dialog({id: 'blog_comment_dialog'}).content('<div class="error">'+json.m+'</div>')
				}
			}
		});
		return false;
	});
    $('.comment_reply_link').click(function(){
        var id_st_blog_comment = $(this).attr('data-id-st-blog-comment');
        if(id_st_blog_comment)
            stblogcomments.move_to(id_st_blog_comment);
    });
    $('#cancel_comment_reply_link').click(function(){
        stblogcomments.move_back();
    });
});
var stblogcomments = {
    'move_to' : function(id_st_blog_comment)
    {
        $('#comment-'+id_st_blog_comment+' > .comment_node').after($('#st_blog_comment_reply_block').get(0));
        $('#blog_comment_parent_id').val(id_st_blog_comment);
        $('#cancel_comment_reply_link').show();
    },
    'move_back' : function()
    {
        $('#comments').after($('#st_blog_comment_reply_block').get(0));
        $('#cancel_comment_reply_link').hide();
        $('#blog_comment_parent_id').val(0);
    }
}