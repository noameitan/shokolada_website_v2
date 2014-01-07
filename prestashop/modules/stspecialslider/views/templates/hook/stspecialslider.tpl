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

<!-- MODULE special slider -->
{capture name="column_slider"}{if $column_slider}_column{/if}{/capture}
<section id="special-products_block_center{$smarty.capture.column_slider}" class="block products_block {if !$column_slider} section {/if} {if $hide_mob} hidden-phone {/if}">
	<h4 class="title_block"><a href="{$link->getPageLink('prices-drop')|escape:'html'}" title="{l s='Price drops' mod='stspecialslider'}">{l s='Price Drops' mod='stspecialslider'}</a></h4>
    <script type="text/javascript">
    //<![CDATA[
    var special_itemslider_options{$smarty.capture.column_slider};
    //]]>
    </script>
	{if isset($products) AND $products}
    <div id="special-itemslider{$smarty.capture.column_slider}" class="flexslider">
    	{if $column_slider}
    	{include file="$tpl_dir./product-slider-list.tpl"}
        {else}
    	{include file="$tpl_dir./product-slider.tpl"}
        {/if}
	</div>
    
    <script type="text/javascript">
    //<![CDATA[
    {literal}
    jQuery(function($) {
        special_itemslider_options{/literal}{$smarty.capture.column_slider}{literal} = {
    		easing: "{/literal}{$slider_easing}{literal}",
            useCSS: false,
    		slideshow: {/literal}{$slider_slideshow}{literal},
            slideshowSpeed: {/literal}{$slider_s_speed}{literal},
    		animationSpeed: {/literal}{$slider_a_speed}{literal},
    		pauseOnHover: {/literal}{$slider_pause_on_hover}{literal},
            direction: "horizontal",
            animation: "slide",
            animationLoop: {/literal}{$slider_loop}{literal},
    		controlNav: false,
    		controlsContainer: "#special-itemslider{/literal}{$smarty.capture.column_slider}{literal} .nav_top_right",
    		itemWidth: 280,
            minItems: getFlexSliderSize({/literal}{if $column_slider}1{else}{$slider_items}{/if}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal}),
            maxItems: getFlexSliderSize({/literal}{if $column_slider}1{else}{$slider_items}{/if}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal}),
    		move: {/literal}{$slider_move}{literal},
            prevText: '<i class="icon-left-open-3"></i>',
            nextText: '<i class="icon-right-open-3"></i>',
            productSlider:true
        };
        $('#special-itemslider{/literal}{$smarty.capture.column_slider}{literal} .sliderwrap').flexslider(special_itemslider_options{/literal}{$smarty.capture.column_slider}{literal});
        var special_flexslider_rs{/literal}{$smarty.capture.column_slider}{literal};
        $(window).resize(function(){
            clearTimeout(special_flexslider_rs{/literal}{$smarty.capture.column_slider}{literal});
            var rand_s = parseInt(Math.random()*200 + 300);
            special_flexslider_rs{/literal}{$smarty.capture.column_slider}{literal} = setTimeout(function() {
                var flexSliderSize = getFlexSliderSize({/literal}{if $column_slider}1{else}{$slider_items}{/if}{literal},{/literal}{if isset($is_homepage_secondary_left) && $is_homepage_secondary_left}true{else}false{/if}{literal});
                var flexslide_object = $('#special-itemslider{/literal}{$smarty.capture.column_slider}{literal} .sliderwrap').data('flexslider');
                if(flexSliderSize && flexslide_object != null )
                    flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
        	}, rand_s);
        });
    });
    {/literal} 
    //]]>
    </script>
	{else}
		<p class="warning">{l s='No Special products' mod='stspecialslider'}</p>
	{/if}
</section>
<!-- /MODULE special slider  -->