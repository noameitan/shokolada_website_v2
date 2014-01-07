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
    $('.st_tabs a').click(function(){
        $(this).parent().addClass('selected').siblings().removeClass('selected');
        var fieldset_arr = $(this).attr('data-fieldset').split(',');
        var fieldset_dom = $('form.stthemeeditor fieldset');
        fieldset_dom.removeClass('selected');
        $.each(fieldset_arr,function(i,n){
            fieldset_dom.eq(n).addClass('selected');
        });
    });
    $('.st_tabs a:first').trigger('click');
    
    $('.fontOptions').trigger('change');
    $('.delete_image').click(function(){
        var self = $(this);
        $.getJSON(stthemeeditor_base_uri+'modules/stthemeeditor/stthemeeditor-ajax.php?action=delete_image&identi='+self.attr('id')+'&ts='+new Date().getTime(),
            function(json){
                if(json.r)
                {
                    self.parent().remove();
                }
                else
                    alert('Error');
            }
        ); 
        return false;
    });
    $('input[name="logo_position"]').change(function(){
        if($(this).val()==1)
            $('input[name="logo_height"]').removeAttr('disabled');
        else
            $('input[name="logo_height"]').attr('disabled', true);
    });
});
var handle_font_change = function(that,systemFonts)
{
    var systemFontsArr = systemFonts.split(',');
    var selected_font = $(that).val();
    var identi = $(that).attr('id');
    if(!$('#'+identi+'_link').size())
        $('head').append('<link id="'+identi+'_link" rel="stylesheet" type="text/css" href="" />');
    if($.inArray(selected_font, systemFontsArr)<0)
        $('link#'+identi+'_link').attr({href:'http://fonts.googleapis.com/css?family=' + selected_font.replace(' ', '+')});
    $('#'+identi+'_example').css('font-family',selected_font);
    
};