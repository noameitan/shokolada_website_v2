{*
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
*}

<!-- MODULE Product categories slider -->
{if isset($product_categories) && count($product_categories)}
<div id="pc_slider_block" class="block section {if $hide_mob} hidden-phone {/if}">
<h4 id="pc_slider_tabs" class="title_block clearfix">
    {foreach $product_categories as $p_c}<a href="#carousel_stproductcategoriessldier_{$p_c.id_category}" data_id_category="{$p_c.id_category}" rel="nofollow" title="{$p_c.name|escape:'htmlall':'UTF-8'}">{$p_c.name|escape:'htmlall':'UTF-8'}</a>{if !$p_c@last}<span>/</span>{/if}{/foreach}
</h4>
<script type="text/javascript">
//<![CDATA[
{literal}
var product_categories_itemslider_options = new Array;
{/literal} 
//]]>
</script>
<div id="pc_slider_tabs_contents">
{foreach $product_categories as $p_c}
    <div id="carousel_stproductcategoriessldier_{$p_c.id_category}" class="carousel_stproductcategoriessldier carousel_content">
    <section class="product_categories_slider_block products_block">
        {if isset($p_c.products) AND $p_c.products}
        <div id="product_categories-itemslider_{$p_c.id_category}" class="flexslider">
        	{include file="$tpl_dir./product-slider.tpl" products=$p_c.products }
    	</div>
        <script type="text/javascript">
        //<![CDATA[
        {literal}
        product_categories_itemslider_options[{/literal}{$p_c.id_category}{literal}] = {
    		easing: "{/literal}{$pro_cate_easing}{literal}",
            useCSS: false,
    		slideshow: {/literal}{$pro_cate_slideshow}{literal},
            slideshowSpeed: {/literal}{$pro_cate_s_speed}{literal},
    		animationSpeed: {/literal}{$pro_cate_a_speed}{literal},
    		pauseOnHover: {/literal}{$pro_cate_pause_on_hover}{literal},
            direction: "horizontal",
            animation: "slide",
    		animationLoop: {/literal}{$pro_cate_loop}{literal},
    		controlNav: false,
    		controlsContainer: "#product_categories-itemslider_{/literal}{$p_c.id_category}{literal} .nav_top_right",
            itemWidth: 280,
            minItems: getFlexSliderSize({/literal}{$slider_items}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal}),
            maxItems: getFlexSliderSize({/literal}{$slider_items}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal}),
            move: {/literal}{$pro_cate_move}{literal},
            prevText: '<i class="icon-left-open-3"></i>',
            nextText: '<i class="icon-right-open-3"></i>',
            productSlider:true
        };
        
        var product_categories_{/literal}{$p_c.id_category}{literal}_flexslider_rs;
        jQuery(function($) {
             $(window).resize(function(){
                if($('#carousel_stproductcategoriessldier_{/literal}{$p_c.id_category}{literal}').is(':hidden'))
                    return false;
                clearTimeout(product_categories_{/literal}{$p_c.id_category}{literal}_flexslider_rs);
                var rand_s = parseInt(Math.random()*200 + 300);
                product_categories_{/literal}{$p_c.id_category}{literal}_flexslider_rs = setTimeout(function() {
                    var flexSliderSize = getFlexSliderSize({/literal}{$slider_items}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal});
                    var flexslide_object = $('#product_categories-itemslider_{/literal}{$p_c.id_category}{literal} .sliderwrap').data('flexslider');
                    if(flexSliderSize && flexslide_object != null )
                        flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
            	}, rand_s);
            });
        });
        {/literal} 
        //]]>
        </script>
    	{else}
    		<p class="warning">{l s='No products' mod='stproductcategoriesslider'}</p>
    	{/if}
    </section>
    </div>
{/foreach}
</div>

<script type="text/javascript">
//<![CDATA[
{literal}
jQuery(function($) {
    $("#pc_slider_tabs a").click(function() {
        $("#pc_slider_tabs a").removeClass("selected");
        var data_id_category = $(this).addClass("selected").attr('data_id_category');
        var id_content = $(this).attr("href");
        $(id_content).siblings().hide().end().show();
        if(product_categories_itemslider_options!==undefined && product_categories_itemslider_options.length && product_categories_itemslider_options[data_id_category])
        {
            var flexSliderSize = getFlexSliderSize({/literal}{$slider_items}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal});
            product_categories_itemslider_options[data_id_category]['minItems'] = product_categories_itemslider_options[data_id_category]['maxItems'] = flexSliderSize;
            var flexslide_object = $('#product_categories-itemslider_'+data_id_category+' .sliderwrap').data('flexslider');
            if(flexSliderSize && flexslide_object != null )
                flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
            else
                $('#product_categories-itemslider_'+data_id_category+' .sliderwrap').flexslider(product_categories_itemslider_options[data_id_category]); 
        }       
        return false;        
    });
    $("#pc_slider_tabs a:eq(0)").trigger('click'); 
});
{/literal} 
//]]>
</script>

</div>
{/if}
<!-- /MODULE Product categories slider -->