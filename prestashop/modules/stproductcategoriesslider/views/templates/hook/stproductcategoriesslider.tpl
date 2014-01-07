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
{capture name="column_slider"}{if $column_slider}_column{/if}{/capture}
{if isset($product_categories) && count($product_categories)}
    {foreach $product_categories as $p_c}
        <section class="product_categories_slider_block{$smarty.capture.column_slider} block products_block {if !$column_slider} section {/if} {if $hide_mob} hidden-phone {/if}">
            <h4 class="title_block mar_b1">
                <a href="{$link->getCategoryLink($p_c.id_category, $p_c.link_rewrite)|escape:'html'}" title="{$p_c.name|escape:'htmlall':'UTF-8'}">{$p_c.name|escape:'htmlall':'UTF-8'}</a>
            </h4>            
	        {if isset($p_c.products) AND $p_c.products}
            <div id="product_categories-itemslider{$smarty.capture.column_slider}_{$p_c.id_category}" class="flexslider product_categories-itemslider{$smarty.capture.column_slider}">
                {if $column_slider}
            	{include file="$tpl_dir./product-slider-list.tpl" products=$p_c.products }
                {else}
            	{include file="$tpl_dir./product-slider.tpl" products=$p_c.products }
                {/if}
        	</div>
            <script type="text/javascript">
            //<![CDATA[
            {literal}
            jQuery(function($) {
                $('#product_categories-itemslider{/literal}{$smarty.capture.column_slider}{literal}_{/literal}{$p_c.id_category}{literal} .sliderwrap').flexslider({
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
            		controlsContainer: "#product_categories-itemslider{/literal}{$smarty.capture.column_slider}_{$p_c.id_category}{literal} .nav_top_right",
    		        itemWidth: 280,
                    minItems: getFlexSliderSize({/literal}{if $column_slider}1{else}{$slider_items}{/if}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal}),
                    maxItems: getFlexSliderSize({/literal}{if $column_slider}1{else}{$slider_items}{/if}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal}),
    		        move: {/literal}{$pro_cate_move}{literal},
                    prevText: '<i class="icon-left-open-3"></i>',
                    nextText: '<i class="icon-right-open-3"></i>',
                    productSlider:true
                });
                var product_categories_{/literal}{$p_c.id_category}{literal}_flexslider_rs{/literal}{$smarty.capture.column_slider}{literal};
                $(window).resize(function(){
                    clearTimeout(product_categories_{/literal}{$p_c.id_category}{literal}_flexslider_rs{/literal}{$smarty.capture.column_slider}{literal});
                    var rand_s = parseInt(Math.random()*200 + 300);
                    product_categories_{/literal}{$p_c.id_category}{literal}_flexslider_rs{/literal}{$smarty.capture.column_slider}{literal} = setTimeout(function() {
                        var flexSliderSize = getFlexSliderSize({/literal}{if $column_slider}1{else}{$slider_items}{/if}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal});
                        var flexslide_object = $('#product_categories-itemslider{/literal}{$smarty.capture.column_slider}{literal}_{/literal}{$p_c.id_category}{literal} .sliderwrap').data('flexslider');
                        if(flexSliderSize && flexslide_object != null )
                            flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
                	}, rand_s);
                });
            });
            {/literal} 
            //]]>
            </script>
        	{else}
        		<p>{l s='No products' mod='stproductcategoriesslider'}</p>
        	{/if}
        </section>
    {/foreach}
{/if}
<!-- /MODULE Product categories slider -->