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
<aside id="brands_slider-column" class="block">
    <h4 class="title_block">{l s='Brands' mod='stbrandsslider'}</h4>
    <div id="brands-itemslider-column" class="flexslider">
    	<div class="nav_top_right"></div>
        <div class="sliderwrap">
            <ul class="slides">
            	{foreach $brands as $brand}
                    {if $brand@first || $brand@index is div by $brand_slider_items}
                    <li>
                    {/if}
                    	<a href="{$link->getmanufacturerLink($brand.id_manufacturer, $brand.link_rewrite)}">
                            <img src="{$img_manu_dir}{$brand.id_manufacturer|escape:'htmlall':'UTF-8'}-manufacturer_default.jpg" alt="{$brand.name|escape:html:'UTF-8'}" width="{$manufacturerSize.width}" height="{$manufacturerSize.height}" />
                        </a>
                    {if $brand@last || $brand@iteration is div by $brand_slider_items}
                    </li>
                    {/if}
                {/foreach}
            </ul>
        </div>
    </div>
</aside>

<script type="text/javascript">
//<![CDATA[
{literal}
jQuery(function($) {
    $('#brands-itemslider-column .sliderwrap').flexslider({
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
        directionNav: true,
		controlsContainer: "#brands-itemslider-column .nav_top_right",
		maxItems: 1,
        prevText: '<i class="icon-left-open-3"></i>',
        nextText: '<i class="icon-right-open-3"></i>'
    });
});
{/literal} 
//]]>
</script>
{/if}
<!-- /Block brands slider module -->