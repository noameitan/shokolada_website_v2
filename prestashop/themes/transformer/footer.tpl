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

		{if !$content_only}
				</div>
                <!--/ Center -->
				<!-- Right -->
                {if !$st_hide_right_column}
				<div id="right_column" class="span3">
					{$HOOK_RIGHT_COLUMN}
				</div>
                {/if}
				<!--/ Right -->
                
			</div>
        </div>
        </div>
        </div>
<!-- Footer -->
        <footer id="footer">
            {if $HOOK_FOOTER_TOP}
            <section id="footer-top">
			<div class="wide_container">
            <div class="container">
                <div class="row">
                    {$HOOK_FOOTER_TOP}
                </div>
			</div>
            </div>
            </section>
            {/if}
            {if $HOOK_FOOTER}
            <section id="footer-primary">
			<div class="wide_container">
			<div class="container">
                <div class="row">
				    {$HOOK_FOOTER}
                </div>
			</div>
            </div>
            </section>
            {/if}
            {if $HOOK_FOOTER_SECONDARY}
            <section id="footer-secondary">
			<div class="wide_container">
			<div class="container">
                <div class="row">
				    {$HOOK_FOOTER_SECONDARY}
                </div>
			</div>
            </div>
            </section>
            {/if}
            <div id="footer_info">
			<div class="wide_container">
    			<div class="container">
                    <div class="row">
                        <div class="span12">
                        <aside id="copyright_text" class="fl">{if isset($sttheme.copyright_text)}{$sttheme.copyright_text}{/if}</aside>    
                        {if isset($sttheme.footer_img_src) && $sttheme.footer_img_src}            
                        <aside id="paymants_logos" class="fr">
                            <img src="{$sttheme.footer_img_src}" alt="{l s='Payment methods'}" />
                        </aside>
                        {/if}
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </footer>
<!-- Footer -->
    {if isset($sttheme.boxstyle) && $sttheme.boxstyle==2}</div>{/if}
    </div>
    {capture name="rightbar_strightbarcart"}
        {hook h='displayAnywhere' mod='strightbarcart' caller='strightbarcart'} 
    {/capture}
    {capture name="rightbar_stcompare"}
        {hook h='displayAnywhere' mod='stcompare' caller='stcompare'}
    {/capture}
    {capture name="rightbar_productlinknav_prev"}
    {hook h='displayAnywhere' mod='stproductlinknav' nav='prev' caller='stproductlinknav'}
    {/capture}
    {capture name="rightbar_productlinknav_next"}
    {hook h='displayAnywhere' mod='stproductlinknav' nav='next' caller='stproductlinknav'}
    {/capture}
    {capture name="rightbar_bloglinknav_prev"}
    {if $page_name == 'module-stblog-article'}
    {hook h='displayAnywhere' mod='stbloglinknav' nav='prev' caller='stbloglinknav'}
    {/if}
    {/capture}
    {capture name="rightbar_bloglinknav_next"}
    {if $page_name == 'module-stblog-article'}
    {hook h='displayAnywhere' mod='stbloglinknav' nav='next' caller='stbloglinknav'}
    {/if}
    {/capture}
    {assign var="rightbar_i" value=0}
    {if trim($smarty.capture.rightbar_strightbarcart)}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if trim($smarty.capture.rightbar_stcompare)}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if trim($smarty.capture.rightbar_productlinknav_prev)}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if trim($smarty.capture.rightbar_productlinknav_next)}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if trim($smarty.capture.rightbar_bloglinknav_prev)}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if trim($smarty.capture.rightbar_bloglinknav_next)}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if !$st_hide_left_column}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if !$st_hide_right_column}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    {if (!isset($sttheme.scroll_to_top) || (isset($sttheme.scroll_to_top) && $sttheme.scroll_to_top))}{assign var="rightbar_i" value=$rightbar_i+1}{/if}
    
    <div id="rightbar" class="{if !$rightbar_i} hidden {/if}"> 
        <div id="rightbar_inner" class="clearfix rightbar_{$rightbar_i}">
        {$smarty.capture.rightbar_strightbarcart}
        {$smarty.capture.rightbar_stcompare}
        {$smarty.capture.rightbar_productlinknav_prev}
        {$smarty.capture.rightbar_productlinknav_next}
        {$smarty.capture.rightbar_bloglinknav_prev}
        {$smarty.capture.rightbar_bloglinknav_next}
        {if !$st_hide_left_column}
        <div id="switch_left_column_wrap" class="visible-phone">
            <a href="javascript:;" id="switch_left_column" data-column="left_column" class="icon_wrap" title="{l s="Display left column"}"><i class="icon-right-open-1 icon-0x"></i><span class="icon_text">{l s="Left"}</span></a>   
        </div>
        {/if}
        {if !$st_hide_right_column}
        <div id="switch_right_column_wrap" class="visible-phone">
            <a href="javascript:;" id="switch_right_column" data-column="right_column" class="icon_wrap" title="{l s="Display right column"}"><i class="icon-left-open-1 icon-0x"></i><span class="icon_text">{l s="Right"}</span></a>   
        </div>
        {/if}
        {if (!isset($sttheme.scroll_to_top) || (isset($sttheme.scroll_to_top) && $sttheme.scroll_to_top))}
        <div id="to_top_wrap">
            <div id="to_top"><a href="#top_bar" class="icon_wrap disabled" title="{l s="Back to top"}"><i class="icon-up-open-2 icon-0x"></i><span class="icon_text">{l s="Top"}</span></a></div>
        </div>
        {/if}
        </div>  
    </div>
	{/if}
    
    {if $comparator_max_item}
    <div id="compare_message" class="dialog_message">
        <div class="clearfix mar_b10">
            <div id="compare_pro_img" class="fl dialog_pro_img">
            </div>
            <div id="compare_pro_info" class="fr dialog_pro_info">
                <div id="compare_pro_title" class="dialog_pro_title"></div>
            </div>
        </div>
        <p id="compare_add_success" class="success hidden">{l s='has been added to compare.'}</p>
        <p id="compare_remove_success" class="success hidden">{l s='has been removed from compare.'}</p>
        <p id="compare_error" class="warning hidden"></p>
        <div class="dialog_action clearfix">
            <a id="compare_continue" class="fl button" href="javascript:;" rel="nofollow">{l s='Continue shopping'}</a>
            <a class="fr button" href="{$link->getPageLink('products-comparison')|escape:'htmlall':'UTF-8'}" title="{l s='Compare'}" rel="nofollow">{l s='Compare'}</a>
        </div>
    </div>
    <script type="text/javascript">
    // <![CDATA[
    	var st_compare_min_item = '{l s='Please select at least one product' js=1}';
    	var st_compare_max_item = "{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}";
    //]]>
    </script>
    {/if}
    {if $isIntalledBlockWishlist}
        <div id="wishlist_message" class="dialog_message">
            <p id="wishlist_pro_title" class="dialog_pro_title"></p>
            <p id="wishlist_add_success" class="success">{l s='has been added to your wishlist.'}</p>
            <div class="clearfix">
                <a id="wishlist_continue" class="fl button" href="javascript:;" rel="nofollow">{l s='Continue shopping'}</a>
                <a class="fr button" href="{$link->getModuleLink('blockwishlist', 'mywishlist')|escape:'htmlall':'UTF-8'}" title="{l s='My wishlists'}" rel="nofollow">{l s='My wishlists'}</a>
            </div>
        </div>
    {/if}
    {if isset($sttheme.tracking_code) && $sttheme.tracking_code}{$sttheme.tracking_code}{/if}
	</body>
</html>