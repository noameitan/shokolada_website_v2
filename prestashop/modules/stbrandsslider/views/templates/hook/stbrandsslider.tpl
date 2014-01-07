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
<!-- Block brands slider module -->
{if isset($brands) && count($brands)}
<section id="brands_slider" class="block section {if isset($brandsslider_footer)} span12 {/if}">
    <h4 class="title_block"><span>{l s='Product Brands' mod='stbrandsslider'}</span></h4>
    <div id="brands-itemslider" class="flexslider">
    	<div class="nav_top_right"></div>
        <div class="sliderwrap">
            <ul class="slides">
            	{foreach $brands as $brand}
                <li>
            	<a href="{$link->getmanufacturerLink($brand.id_manufacturer, $brand.link_rewrite)}">
                    <img src="{$img_manu_dir}{$brand.id_manufacturer|escape:'htmlall':'UTF-8'}-manufacturer_default.jpg" alt="{$brand.name|escape:html:'UTF-8'}" width="{$manufacturerSize.width}" height="{$manufacturerSize.height}" />
                </a>
                </li>
                {/foreach}
            </ul>
        </div>
    </div>
</section>

<script type="text/javascript">
//<![CDATA[
{literal}
jQuery(function($) {
    $('#brands-itemslider .sliderwrap').flexslider({
		easing: "{/literal}{$brand_slider_easing}{literal}",
        {/literal}{if $brand_slider_easing!='swing'}{literal}
        useCSS: false,
        {/literal}{/if}{literal}
		slideshow: {/literal}{$brand_slider_slideshow}{literal},
        slideshowSpeed: {/literal}{$brand_slider_s_speed}{literal},
		animationSpeed: {/literal}{$brand_slider_a_speed}{literal},
		pauseOnHover: {/literal}{$brand_slider_pause_on_hover}{literal},
        direction: "horizontal",
        animation: "slide",
		animationLoop: {/literal}{$brand_slider_loop}{literal},
		controlNav: false,
		controlsContainer: "#brands-itemslider .nav_top_right",
		itemWidth: 164,
        minItems: getFlexSliderSize({/literal}{$brand_slider_items}{literal}),
        maxItems: getFlexSliderSize({/literal}{$brand_slider_items}{literal}),
    	move: {/literal}{$brand_slider_move}{literal},
        prevText: '<i class="icon-left-open-3"></i>',
        nextText: '<i class="icon-right-open-3"></i>'
    });
    var brands_flexslider_rs;
    $(window).resize(function(){
        clearTimeout(brands_flexslider_rs);
        var rand_s = parseInt(Math.random()*200 + 300);
        brands_flexslider_rs = setTimeout(function() {
            var flexSliderSize = getFlexSliderSize({/literal}{$brand_slider_items}{literal});
            var flexslide_object = $('#brands-itemslider .sliderwrap').data('flexslider');
            if(flexSliderSize && flexslide_object != null )
                flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
    	}, rand_s);
    });
});
{/literal} 
//]]>
</script>
{/if}
<!-- /Block brands slider module -->