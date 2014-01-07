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

var stquickview = (function(jQuery) {
	if (!jQuery) {
		return null
	}
	return {
	   currentRequests: {},
       callerElement: '',
	   load: function(options) {
			var that = this;
			if (!options.reqName || !this.currentRequests[options.reqName]) {
				this.currentRequests[options.reqName] = true;
                art.dialog.open(options.url, {
                    width: 788,
                    height: options.height,
                    id: options.selector,
                    opacity: 0.5,
                    lock: true,
                    cache: false,
                    init: function(){
						that.currentRequests[options.reqName] = false;
                    }
                },false);
            }
	   },
	   bindEvents: function(options) {
			jQuery(options.buttonLinkSelector).click(function(e) {
                if($(window).width()<=768)
                    return false;
			    stquickview.callerElement = this;
				stquickview.load({
				    containerId: "QuickViewDialog",
					url: this.href,
					height: options.height
				});
				return false
			});
		},
		close: function() {
		}
    }
})(jQuery);
var quickViewOptions = {
	buttonLinkSelector: ".st_quickview",
	height: 460
};
jQuery(function($){
    stquickview.bindEvents(quickViewOptions);
});