<?php /*%%SmartyHeaderCode:90852cc08b4f118d2-11271232%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cb15311beb943035dfdf7665101180bbdbd2955f' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\sthomenew\\views\\templates\\hook\\sthomenew.tpl',
      1 => 1389102170,
      2 => 'file',
    ),
    '66d0c7403a0d2c568217733e20b8c6b3ffeefc6d' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\product-slider.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '90852cc08b4f118d2-11271232',
  'variables' => 
  array (
    'column_slider' => 0,
    'hide_mob' => 0,
    'link' => 0,
    'products' => 0,
    'slider_easing' => 0,
    'slider_slideshow' => 0,
    'slider_s_speed' => 0,
    'slider_a_speed' => 0,
    'slider_pause_on_hover' => 0,
    'slider_loop' => 0,
    'slider_items' => 0,
    'is_homepage_secondary_left' => 0,
    'slider_move' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b59b2e04_53425793',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b59b2e04_53425793')) {function content_52cc08b59b2e04_53425793($_smarty_tpl) {?>
<!-- MODULE Home New Products -->
<section id="new-products_block_center" class="block products_block  section  ">
	<h4 class="title_block"><a href="http://localhost/1561/prestashop/index.php?controller=new-products" title="New products">New products</a></h4>
    <script type="text/javascript">
    //<![CDATA[
    var new_itemslider_options;
    //]]>
    </script>
	    <div id="new-itemslider" class="flexslider">
            	<div class="nav_top_right"></div>
<div class="sliderwrap products_slider">
    <ul class="slides">
			<li class="ajax_block_product first_item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=5&amp;controller=product&amp;id_lang=3" title="iPod touch" class="product_image"><img src="http://localhost/1561/prestashop/img/p/7/7-home_default.jpg" height="312" width="273" alt="iPod touch" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=5&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_5" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=5&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="5" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/7/7-home_default.jpg" data-product-name="iPod touch" data-product-link="http://localhost/1561/prestashop/index.php?id_product=5&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=5&amp;controller=product&amp;id_lang=3" title="iPod touch">iPod touch</a></p>
                            <div class="price_container">
                    <span class="price">
                    285.13 ₪‎
                                        </span>
                                    </div>
                           
            </div>
		</li>
			<li class="ajax_block_product item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=6&amp;controller=product&amp;id_lang=3" title="Belkin Leather Folio for iPod nano - Black / Chocolate" class="product_image"><img src="http://localhost/1561/prestashop/img/p/1/3/13-home_default.jpg" height="312" width="273" alt="Belkin Leather Folio for iPod nano - Black / Chocolate" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=6&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_6" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=6&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="6" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/1/3/13-home_default.jpg" data-product-name="Belkin Leather Folio for iPod nano - Black / Chocolate" data-product-link="http://localhost/1561/prestashop/index.php?id_product=6&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=6&amp;controller=product&amp;id_lang=3" title="Belkin Leather Folio for iPod nano - Black / Chocolate">Belkin Leather Folio for iPod...</a></p>
                            <div class="price_container">
                    <span class="price">
                    29.55 ₪‎
                                        </span>
                                    </div>
                           
            </div>
		</li>
			<li class="ajax_block_product item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=7&amp;controller=product&amp;id_lang=3" title="Shure SE210 Sound-Isolating Earphones for iPod and iPhone" class="product_image"><img src="http://localhost/1561/prestashop/img/p/1/4/14-home_default.jpg" height="312" width="273" alt="Shure SE210 Sound-Isolating Earphones for iPod and iPhone" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=7&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_7" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=7&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="7" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/1/4/14-home_default.jpg" data-product-name="Shure SE210 Sound-Isolating Earphones for iPod and iPhone" data-product-link="http://localhost/1561/prestashop/index.php?id_product=7&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=7&amp;controller=product&amp;id_lang=3" title="Shure SE210 Sound-Isolating Earphones for iPod and iPhone">Shure SE210 Sound-Isolating...</a></p>
                            <div class="price_container">
                    <span class="price">
                    147.01 ₪‎
                                        </span>
                                    </div>
                           
            </div>
		</li>
			<li class="ajax_block_product item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=4&amp;controller=product&amp;id_lang=3" title="MacBook" class="product_image"><img src="http://localhost/1561/prestashop/img/p/6/6-home_default.jpg" height="312" width="273" alt="MacBook" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=4&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_4" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=4&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="4" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/6/6-home_default.jpg" data-product-name="MacBook" data-product-link="http://localhost/1561/prestashop/index.php?id_product=4&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=4&amp;controller=product&amp;id_lang=3" title="MacBook">MacBook</a></p>
                            <div class="price_container">
                    <span class="price">
                    1,381.27 ₪‎
                                        </span>
                                    </div>
                           
            </div>
		</li>
			<li class="ajax_block_product item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=2&amp;controller=product&amp;id_lang=3" title="iPod shuffle" class="product_image"><img src="http://localhost/1561/prestashop/img/p/2/3/23-home_default.jpg" height="312" width="273" alt="iPod shuffle" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=2&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_2" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=2&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="2" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/2/3/23-home_default.jpg" data-product-name="iPod shuffle" data-product-link="http://localhost/1561/prestashop/index.php?id_product=2&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=2&amp;controller=product&amp;id_lang=3" title="iPod shuffle">iPod shuffle</a></p>
                            <div class="price_container">
                    <span class="price">
                    77.94 ₪‎
                                        </span>
                                    </div>
                           
            </div>
		</li>
			<li class="ajax_block_product item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=3&amp;controller=product&amp;id_lang=3" title="MacBook Air" class="product_image"><img src="http://localhost/1561/prestashop/img/p/1/1-home_default.jpg" height="312" width="273" alt="MacBook Air" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=3&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_3" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=3&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="3" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/1/1-home_default.jpg" data-product-name="MacBook Air" data-product-link="http://localhost/1561/prestashop/index.php?id_product=3&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=3&amp;controller=product&amp;id_lang=3" title="MacBook Air">MacBook Air</a></p>
                            <div class="price_container">
                    <span class="price">
                    1,774.93 ₪‎
                                        </span>
                                    </div>
                           
            </div>
		</li>
			<li class="ajax_block_product last_item">
                         
            <div class="pro_first_box">
                <a href="http://localhost/1561/prestashop/index.php?id_product=1&amp;controller=product&amp;id_lang=3" title="iPod Nano" class="product_image"><img src="http://localhost/1561/prestashop/img/p/1/5/15-home_default.jpg" height="312" width="273" alt="iPod Nano" />                <span class="new"><i>New</i></span>            </a>
                
                                                                                                                
                <div class="hover_fly  fly_4 clearfix">
                                                  
												<a class="exclusive ajax_add_to_cart_button" href="http://localhost/1561/prestashop/index.php?controller=cart?qty=1&amp;id_product=1&amp;token=f7a1e43d3dba3316fb55555191e6b38d&amp;add" rel="ajax_id_product_1" title="Add to Cart"><i class="icon-basket icon-1x icon-mar-lr2"></i><span>Add to Cart</span></a>
											                
                                            <a href="http://localhost/1561/prestashop/index.php?fc=module&amp;module=stquickview&amp;id_product=1&amp;controller=default&amp;id_lang=3" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span>Quick view</span></a>
                                                                    				<a href="javascript:;" class="add_to_compare " data-product-id="1" rel="nofollow" data-product-cover="http://localhost/1561/prestashop/img/p/1/5/15-home_default.jpg" data-product-name="iPod Nano" data-product-link="http://localhost/1561/prestashop/index.php?id_product=1&amp;controller=product&amp;id_lang=3" title="Add to Compare"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span>Add to Compare</span></a>
        			                
                    <a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="Add to Wishlist" class="add_to_wishlist"  rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>Add to Wishlist</span></a>
   
                </div>
            </div>
            <div class="pro_second_box">
                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=1&amp;controller=product&amp;id_lang=3" title="iPod Nano">iPod Nano</a></p>
                            <div class="price_container">
                    <span class="price">
                    186.52 ₪‎
                                        </span>
                                            <span class="old_price">196.34 ₪‎</span>
                                                            </div>
                           
            </div>
		</li>
		</ul>
</div>
        	</div>
    
    <script type="text/javascript">
    //<![CDATA[
    
    jQuery(function($) {
        new_itemslider_options = {
    		easing: "swing",
            useCSS: false,
    		slideshow: 0,
            slideshowSpeed: 7000,
    		animationSpeed: 400,
    		pauseOnHover: 1,
            direction: "horizontal",
            animation: "slide",
            animationLoop: 0,
    		controlNav: false,
    		controlsContainer: "#new-itemslider .nav_top_right",
    		itemWidth: 260,
            minItems: getFlexSliderSize(4,false),
            maxItems: getFlexSliderSize(4,false),
    		move: 0,
            prevText: '<i class="icon-left-open-3"></i>',
            nextText: '<i class="icon-right-open-3"></i>',
            productSlider:true
        };
        $('#new-itemslider .sliderwrap').flexslider(new_itemslider_options);
        var new_flexslider_rs;
        $(window).resize(function(){
            clearTimeout(new_flexslider_rs);
            var rand_s = parseInt(Math.random()*200 + 300);
            new_flexslider_rs = setTimeout(function() {
                var flexSliderSize = getFlexSliderSize(4,false);
                var flexslide_object = $('#new-itemslider .sliderwrap').data('flexslider');
                if(flexSliderSize && flexslide_object != null )
                    flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
        	}, rand_s);
        });
    });
     
    //]]>
    </script>
	</section>
<!-- /MODULE Home New Products --><?php }} ?>