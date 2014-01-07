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
function getFlexSliderSize(item,is_hsl) {
    var chart = {
        'a':{//1170 870
            'a':{'1':1,'2':2,'3':3,'4':4,'5':5,'6':6,'7':7,'8':8},
            'b':{'1':1,'2':2,'3':2,'4':3,'5':4,'6':5,'7':6,'8':7},
            'c':{'1':1,'2':2,'3':2,'4':2,'5':4,'6':5,'7':5,'8':6}
        },
        'b':{//940 700
            'a':{'1':1,'2':2,'3':3,'4':4,'5':5,'6':6,'7':7,'8':8},
            'b':{'1':1,'2':2,'3':2,'4':3,'5':4,'6':5,'7':6,'8':7},
            'c':{'1':1,'2':2,'3':2,'4':2,'5':3,'6':4,'7':4,'8':5}
        },
        'c':{//724 538
            'a':{'1':1,'2':2,'3':3,'4':3,'5':4,'6':5,'7':6,'8':7},
            'b':{'1':1,'2':2,'3':2,'4':2,'5':3,'6':4,'7':5,'8':6},
            'c':{'1':1,'2':1,'3':2,'4':2,'5':3,'6':3,'7':4,'8':4}
        },
        'd':{//580
            'a':{'1':1,'2':2,'3':2,'4':3,'5':3,'6':4,'7':5,'8':5},
            'b':{'1':1,'2':2,'3':2,'4':2,'5':3,'6':4,'7':5,'8':5},
            'c':{'1':1,'2':2,'3':2,'4':3,'5':3,'6':4,'7':5,'8':6}
        },
        'e':{//440
            'a':{'1':1,'2':1,'3':2,'4':2,'5':2,'6':3,'7':4,'8':4},
            'b':{'1':1,'2':2,'3':2,'4':2,'5':2,'6':3,'7':4,'8':4},
            'c':{'1':1,'2':2,'3':2,'4':2,'5':2,'6':3,'7':3,'8':4}
        },
        'f':{//300
            'a':{'1':1,'2':1,'3':1,'4':1,'5':1,'6':2,'7':3,'8':3},
            'b':{'1':1,'2':1,'3':1,'4':1,'5':1,'6':2,'7':3,'8':3},
            'c':{'1':1,'2':1,'3':1,'4':1,'5':1,'6':2,'7':2,'8':3}
        }
    };
    var ab = ($('#left_column').size() || $('#right_column').size()) ? 'b' : 'a';
	if(is_hsl)
		ab = 'b';
    var ww = 'b';
    if(st_responsive)
    {
        var window_width = $(window).innerWidth();
        if(window_width>=1200 && st_responsive_max==1)
            ww = 'a';
        else if(window_width>=980)
            ww = 'b';
        else if(window_width>=768)
		{
            ww = 'c';
			ab = 'a';
		}
        else if(window_width>=640)
            ww = 'd';
        else if(window_width>=480)
            ww = 'e';
        else
            ww = 'f';
    }
    return eval('chart.'+ww+'.'+ab+'['+item+']');
}
var window_width,$fluidEl;
var verifMailREGEX = /^([\w+-]+(?:\.[\w+-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
jQuery(function($){
    window_width = $(window).width();
    $('#to_top').click(function() {
    	$('body,html').animate({
    		scrollTop: 0
    	}, 'fast');
		return false;
    }); 
    $('.dropdown_wrap').hover(function(){
        if($(this).find('.dropdown_list ul li').size())
            $(this).addClass('open');
    },function(){
        $(this).removeClass('open');
    });
    $(".sortPagiBar select").selectBox();
    $('#footer .opener,.product_accordion .opener').click(function(){
        $(this).parent().toggleClass('open');
        return false;
    }); 
    $(".viewmode a").click(function(){
        var vm = "grid_view";
        if ($(this).hasClass("list_view"))
            vm = "list_view";
        else if( $(this).hasClass("grid_view"))
            vm = "grid_view";
        
        if (!$("#viewmode").hasClass(vm))
        {
            $.getJSON(baseDir+'modules/stthemeeditor/stthemeeditor-ajax.php?action=changeviewmode&vm='+vm+'&_ts='+new Date().getTime(),
                function(json){
                    if(json.r)
                    {
                        $("#viewmode").fadeOut('fast',function(){
                            $('.viewmode a').removeClass('active').parent().find('.'+vm).addClass('active');
                            $(this).removeClass('list_view grid_view').addClass(vm).fadeIn('fast');
                        });
                    }
                }
            ); 
        }
        return false;
    });

    $('#switch_left_column,#switch_right_column').toggle(function(){
        var column = $(this).attr('data-column');
        var that_left_column = $('#'+column);
        if(!that_left_column.size())
        {
            $(this).hide();
            return false;
        }
        //
        $('#left_column,#right_column').removeClass('opened');
        $('#switch_left_column i').removeClass('icon-left-open-1').addClass('icon-right-open-1');
        $('#switch_right_column i').removeClass('icon-right-open-1').addClass('icon-left-open-1');
        
        var that_center_column = $('#center_column');
        if(that_left_column.height()>that_center_column.height())
            that_center_column.height(that_left_column.height());
        $('#'+column).addClass('opened');
        if(column=='left_column')
            $(this).find('i').removeClass('icon-right-open-1').addClass('icon-left-open-1');
        else
            $(this).find('i').removeClass('icon-left-open-1').addClass('icon-right-open-1');
        var center_column_offset = $('#center_column').offset();
        //if(center_column_offset.top+that_left_column.height() < $(window).scrollTop())            
        	$('body,html').animate({
        		scrollTop: center_column_offset.top-20
        	}, 'fast');
        return false;
    },function(){
        var column = $(this).attr('data-column');
        if(!$('#'+column).size())
            return false;
        $('#'+column).removeClass('opened');
        if(column=='left_column')
            $(this).find('i').removeClass('icon-left-open-1').addClass('icon-right-open-1');
        else
            $(this).find('i').removeClass('icon-right-open-1').addClass('icon-left-open-1');
        $('#center_column').height('auto');
        return false;
    });
    to_top_wrap_master($(window).scrollTop() > 300);
});
$(window).scroll(function() {
    to_top_wrap_master($(this).scrollTop() > 300);
});

function to_top_wrap_master($statu)
{
    if($statu)
        $('#to_top_wrap .icon_wrap').removeClass('disabled');
    else
       $('#to_top_wrap .icon_wrap').addClass('disabled'); 
}

$(window).resize(function() {
    window_width = $(window).width();
});

function isPlaceholer(){
    var input = document.createElement('input');
    return "placeholder" in input;
} 

function pug() {
	if (!arguments || typeof arguments[0] != 'object') {
		return
	};
	var param = arguments[0],
	url = arguments[1] || window.location.href;
	for (var i in param) {
		if (!i) {
			continue
		};
		var name = i,
		val = param[i];
		var reg = new RegExp('([\\?&])((' + name + '\=)([\\w\-]+))(&?)', 'i');
		var omatch = url.match(reg);
		if (!val && omatch) { (omatch[5] && omatch[2]) ? url = url.replace(omatch[2] + '&', '') : (omatch[1] && omatch[2]) ? url = url.replace(omatch[0], '') : ''
		}
		if (val && !omatch) {
			url.indexOf('?') > -1 ? url += '&' + name + '=' + val: url += '?' + name + '=' + val
		}
		if (val && omatch && val != omatch[4]) {
			url = url.replace(omatch[2], omatch[3] + val)
		}
	};
	if (!arguments[1] && window.location.href != url) {
		if (location.hash != '') {
			url = url.replace(location.hash, '');
			url += location.hash
		}
		window.location.href = url
	} else {
		return url
	}
};
/*
 * jQuery FlexSlider v2.1
 * http://www.woothemes.com/flexslider/
 *
 * Copyright 2012 WooThemes
 * Free to use under the GPLv2 license.
 * http://www.gnu.org/licenses/gpl-2.0.html
 *
 * Contributing author: Tyler Smith (@mbmufffin)
 */

;(function ($) {

  //FlexSlider: Object Instance
  $.flexslider = function(el, options) {
    var slider = $(el),
        vars = $.extend({}, $.flexslider.defaults, options),
        namespace = vars.namespace,
        touch = ("ontouchstart" in window) || window.DocumentTouch && document instanceof DocumentTouch,
        eventType = (touch) ? "touchend" : "click",
        vertical = vars.direction === "vertical",
        reverse = vars.reverse,
        carousel = (vars.itemWidth > 0),
        fade = vars.animation === "fade",
        asNav = vars.asNavFor !== "",
        methods = {};
    
    // Store a reference to the slider object
    $.data(el, "flexslider", slider);
    
    // Privat slider methods
    methods = {
      init: function() {
        slider.animating = false;
        slider.currentSlide = vars.startAt;
        slider.animatingTo = slider.currentSlide;
        slider.atEnd = (slider.currentSlide === 0 || slider.currentSlide === slider.last);
        slider.containerSelector = vars.selector.substr(0,vars.selector.search(' '));
        slider.slides = $(vars.selector, slider);
        slider.container = $(slider.containerSelector, slider);
        slider.count = slider.slides.length;
        // SYNC:
        slider.syncExists = $(vars.sync).length > 0;
        // SLIDE:
        if (vars.animation === "slide") vars.animation = "swing";
        slider.prop = (vertical) ? "top" : "marginLeft";
        slider.args = {};
        // SLIDESHOW:
        slider.manualPause = false;
        // TOUCH/USECSS:
        slider.transitions = !vars.video && !fade && vars.useCSS && (function() {
          var obj = document.createElement('div'),
              props = ['perspectiveProperty', 'WebkitPerspective', 'MozPerspective', 'OPerspective', 'msPerspective'];
          for (var i in props) {
            if ( obj.style[ props[i] ] !== undefined ) {
              slider.pfx = props[i].replace('Perspective','').toLowerCase();
              slider.prop = "-" + slider.pfx + "-transform";
              return true;
            }
          }
          return false;
        }());
        // CONTROLSCONTAINER:
        if (vars.controlsContainer !== "") slider.controlsContainer = $(vars.controlsContainer).length > 0 && $(vars.controlsContainer);
        // MANUAL:
        if (vars.manualControls !== "") slider.manualControls = $(vars.manualControls).length > 0 && $(vars.manualControls);
        
        // RANDOMIZE:
        if (vars.randomize) {
          slider.slides.sort(function() { return (Math.round(Math.random())-0.5); });
          slider.container.empty().append(slider.slides);
        }
        
        slider.doMath();
        
        // ASNAV:
        if (asNav) methods.asNav.setup();
        
        // INIT
        slider.setup("init");
        
        // CONTROLNAV:
        if (vars.controlNav) methods.controlNav.setup();
        
        // DIRECTIONNAV:
        if (vars.directionNav) methods.directionNav.setup();
        
        // KEYBOARD:
        if (vars.keyboard && ($(slider.containerSelector).length === 1 || vars.multipleKeyboard)) {
          $(document).bind('keyup', function(event) {
            var keycode = event.keyCode;
            if (!slider.animating && (keycode === 39 || keycode === 37)) {
              var target = (keycode === 39) ? slider.getTarget('next') :
                           (keycode === 37) ? slider.getTarget('prev') : false;
              slider.flexAnimate(target, vars.pauseOnAction);
            }
          });
        }
        // MOUSEWHEEL:
        if (vars.mousewheel) {
          slider.bind('mousewheel', function(event, delta, deltaX, deltaY) {
            event.preventDefault();
            var target = (delta < 0) ? slider.getTarget('next') : slider.getTarget('prev');
            slider.flexAnimate(target, vars.pauseOnAction);
          });
        }
        
        // PAUSEPLAY
        if (vars.pausePlay) methods.pausePlay.setup();
        
        // SLIDSESHOW
        if (vars.slideshow) {
          if (vars.pauseOnHover) {
            slider.hover(function() {
              if (!slider.manualPlay && !slider.manualPause) 
				{vars.pauseOn(slider);slider.pause();}
            }, function() {
              if (!slider.manualPause && !slider.manualPlay)
				{vars.pauseOff(slider);slider.play();}
            });
          }
          // initialize animation
          (vars.initDelay > 0) ? setTimeout(slider.play, vars.initDelay) : slider.play();
        }
        
        // TOUCH
        if (touch && vars.touch) methods.touch();
        
        // FADE&&SMOOTHHEIGHT || SLIDE:
        if (!fade || (fade && vars.smoothHeight)) $(window).bind("resize focus", methods.resize);
        
        
        // API: start() Callback
        setTimeout(function(){
          vars.start(slider);
        }, 200);
      },
      asNav: {
        setup: function() {
          slider.asNav = true;
          slider.animatingTo = Math.floor(slider.currentSlide/slider.move);
          slider.currentItem = slider.currentSlide;
          slider.slides.removeClass(namespace + "active-slide").eq(slider.currentItem).addClass(namespace + "active-slide");
          slider.slides.click(function(e){
            e.preventDefault();
            var $slide = $(this),
                target = $slide.index();
            if (!$(vars.asNavFor).data('flexslider').animating && !$slide.hasClass('active')) {
              slider.direction = (slider.currentItem < target) ? "next" : "prev";
              slider.flexAnimate(target, vars.pauseOnAction, false, true, true);
            }
          });
        }
      },
      controlNav: {
        setup: function() {
          if (!slider.manualControls) {
            methods.controlNav.setupPaging();
          } else { // MANUALCONTROLS:
            methods.controlNav.setupManual();
          }
        },
        setupPaging: function() {
          var type = (vars.controlNav === "thumbnails") ? 'control-thumbs' : 'control-paging',
              j = 1,
              item;
          
          slider.controlNavScaffold = $('<ol class="'+ namespace + 'control-nav ' + namespace + type + '"></ol>');
          
          if (slider.pagingCount > 1) {
            for (var i = 0; i < slider.pagingCount; i++) {
              item = (vars.controlNav === "thumbnails") ? '<img src="' + slider.slides.eq(i).attr("data-thumb") + '"/>' : '<a>' + j + '</a>';
              slider.controlNavScaffold.append('<li>' + item + '</li>');
              j++;
            }
          }
          
          // CONTROLSCONTAINER:
          (slider.controlsContainer) ? $(slider.controlsContainer).append(slider.controlNavScaffold) : slider.append(slider.controlNavScaffold);
          methods.controlNav.set();
          
          methods.controlNav.active();
        
          slider.controlNavScaffold.delegate('a, img', eventType, function(event) {
            event.preventDefault();
            var $this = $(this),
                target = slider.controlNav.index($this);

            if (!$this.hasClass(namespace + 'active')) {
              slider.direction = (target > slider.currentSlide) ? "next" : "prev";
              slider.flexAnimate(target, vars.pauseOnAction);
            }
          });
          // Prevent iOS click event bug
          if (touch) {
            slider.controlNavScaffold.delegate('a', "click touchstart", function(event) {
              event.preventDefault();
            });
          }
        },
        setupManual: function() {
          slider.controlNav = slider.manualControls;
          methods.controlNav.active();
          
          slider.controlNav.live(eventType, function(event) {
            event.preventDefault();
            var $this = $(this),
                target = slider.controlNav.index($this);
                
            if (!$this.hasClass(namespace + 'active')) {
              (target > slider.currentSlide) ? slider.direction = "next" : slider.direction = "prev";
              slider.flexAnimate(target, vars.pauseOnAction);
            }
          });
          // Prevent iOS click event bug
          if (touch) {
            slider.controlNav.live("click touchstart", function(event) {
              event.preventDefault();
            });
          }
        },
        set: function() {
          var selector = (vars.controlNav === "thumbnails") ? 'img' : 'a';
          slider.controlNav = $('.' + namespace + 'control-nav li ' + selector, (slider.controlsContainer) ? slider.controlsContainer : slider);
        },
        active: function() {
          slider.controlNav.removeClass(namespace + "active").eq(slider.animatingTo).addClass(namespace + "active");
        },
        update: function(action, pos) {
          if (slider.pagingCount > 1 && action === "add") {
            slider.controlNavScaffold.append($('<li><a>' + slider.count + '</a></li>'));
          } else if (slider.pagingCount === 1) {
            slider.controlNavScaffold.find('li').remove();
          } else {
            slider.controlNav.eq(pos).closest('li').remove();
          }
          methods.controlNav.set();
          (slider.pagingCount > 1 && slider.pagingCount !== slider.controlNav.length) ? slider.update(pos, action) : methods.controlNav.active();
        }
      },
      directionNav: {
        setup: function() {
          var directionNavScaffold = $('<ul class="' + namespace + 'direction-nav"><li><a class="' + namespace + 'prev" href="#">' + vars.prevText + '</a></li><li><a class="' + namespace + 'next" href="#">' + vars.nextText + '</a></li></ul>');
        
          // CONTROLSCONTAINER:
          if (slider.controlsContainer) {
            $(slider.controlsContainer).append(directionNavScaffold);
            slider.directionNav = $('.' + namespace + 'direction-nav li a', slider.controlsContainer);
          } else {
            slider.append(directionNavScaffold);
            slider.directionNav = $('.' + namespace + 'direction-nav li a', slider);
          }
        
          methods.directionNav.update();
        
          slider.directionNav.bind(eventType, function(event) {
            event.preventDefault();
            var target = ($(this).hasClass(namespace + 'next')) ? slider.getTarget('next') : slider.getTarget('prev');
            slider.flexAnimate(target, vars.pauseOnAction);
          });
          // Prevent iOS click event bug
          if (touch) {
            slider.directionNav.bind("click touchstart", function(event) {
              event.preventDefault();
            });
          }
        },
        update: function() {
          var disabledClass = namespace + 'disabled';
          if (slider.pagingCount === 1) {
            slider.directionNav.addClass(disabledClass);
          } else if (!vars.animationLoop) {
            if (slider.animatingTo === 0) {
              slider.directionNav.removeClass(disabledClass).filter('.' + namespace + "prev").addClass(disabledClass);
            } else if (slider.animatingTo === slider.last) {
              slider.directionNav.removeClass(disabledClass).filter('.' + namespace + "next").addClass(disabledClass);
            } else {
              slider.directionNav.removeClass(disabledClass);
            }
          } else {
            slider.directionNav.removeClass(disabledClass);
          }
        }
      },
      pausePlay: {
        setup: function() {
          var pausePlayScaffold = $('<div class="' + namespace + 'pauseplay"><a></a></div>');
        
          // CONTROLSCONTAINER:
          if (slider.controlsContainer) {
            slider.controlsContainer.append(pausePlayScaffold);
            slider.pausePlay = $('.' + namespace + 'pauseplay a', slider.controlsContainer);
          } else {
            slider.append(pausePlayScaffold);
            slider.pausePlay = $('.' + namespace + 'pauseplay a', slider);
          }

          methods.pausePlay.update((vars.slideshow) ? namespace + 'pause' : namespace + 'play');

          slider.pausePlay.bind(eventType, function(event) {
            event.preventDefault();
            if ($(this).hasClass(namespace + 'pause')) {
              slider.manualPause = true;
              slider.manualPlay = false;
              slider.pause();
            } else {
              slider.manualPause = false;
              slider.manualPlay = true;
              slider.play();
            }
          });
          // Prevent iOS click event bug
          if (touch) {
            slider.pausePlay.bind("click touchstart", function(event) {
              event.preventDefault();
            });
          }
        },
        update: function(state) {
          (state === "play") ? slider.pausePlay.removeClass(namespace + 'pause').addClass(namespace + 'play').text(vars.playText) : slider.pausePlay.removeClass(namespace + 'play').addClass(namespace + 'pause').text(vars.pauseText);
        }
      },
      touch: function() {
        var startX,
          startY,
          offset,
          cwidth,
          dx,
          startT,
          scrolling = false;
              
        el.addEventListener('touchstart', onTouchStart, false);
        function onTouchStart(e) {
          if (slider.animating) {
            e.preventDefault();
          } else if (e.touches.length === 1) {
            slider.pause();
            // CAROUSEL: 
            cwidth = (vertical) ? slider.h : slider. w;
            startT = Number(new Date());
            // CAROUSEL:
            offset = (carousel && reverse && slider.animatingTo === slider.last) ? 0 :
                     (carousel && reverse) ? slider.limit - (((slider.itemW + vars.itemMargin) * slider.move) * slider.animatingTo) :
                     (carousel && slider.currentSlide === slider.last) ? slider.limit :
                     (carousel) ? ((slider.itemW + vars.itemMargin) * slider.move) * slider.currentSlide : 
                     (reverse) ? (slider.last - slider.currentSlide + slider.cloneOffset) * cwidth : (slider.currentSlide + slider.cloneOffset) * cwidth;
            startX = (vertical) ? e.touches[0].pageY : e.touches[0].pageX;
            startY = (vertical) ? e.touches[0].pageX : e.touches[0].pageY;

            el.addEventListener('touchmove', onTouchMove, false);
            el.addEventListener('touchend', onTouchEnd, false);
          }
        }

        function onTouchMove(e) {
          dx = (vertical) ? startX - e.touches[0].pageY : startX - e.touches[0].pageX;
          scrolling = (vertical) ? (Math.abs(dx) < Math.abs(e.touches[0].pageX - startY)) : (Math.abs(dx) < Math.abs(e.touches[0].pageY - startY));
          
          if (!scrolling || Number(new Date()) - startT > 500) {
            e.preventDefault();
            if (!fade && slider.transitions) {
              if (!vars.animationLoop) {
                dx = dx/((slider.currentSlide === 0 && dx < 0 || slider.currentSlide === slider.last && dx > 0) ? (Math.abs(dx)/cwidth+2) : 1);
              }
              slider.setProps(offset + dx, "setTouch");
            }
          }
        }
        
        function onTouchEnd(e) {
          // finish the touch by undoing the touch session
          el.removeEventListener('touchmove', onTouchMove, false);
          
          if (slider.animatingTo === slider.currentSlide && !scrolling && !(dx === null)) {
            var updateDx = (reverse) ? -dx : dx,
                target = (updateDx > 0) ? slider.getTarget('next') : slider.getTarget('prev');
            
            if (slider.canAdvance(target) && (Number(new Date()) - startT < 550 && Math.abs(updateDx) > 50 || Math.abs(updateDx) > cwidth/2)) {
              slider.flexAnimate(target, vars.pauseOnAction);
            } else {
              if (!fade) slider.flexAnimate(slider.currentSlide, vars.pauseOnAction, true);
            }
          }
          el.removeEventListener('touchend', onTouchEnd, false);
          startX = null;
          startY = null;
          dx = null;
          offset = null;
        }
      },
      resize: function() {
        if (!slider.animating && slider.is(':visible')) {
          if (!carousel) slider.doMath();
          
          if (fade) {
            // SMOOTH HEIGHT:
            methods.smoothHeight();
          } else if (carousel) { //CAROUSEL:
            slider.slides.width(slider.computedW);
            slider.update(slider.pagingCount);
            slider.setProps();
          }
          else if (vertical) { //VERTICAL:
            slider.viewport.height(slider.h);
            slider.setProps(slider.h, "setTotal");
          } else {
            // SMOOTH HEIGHT:
            if (vars.smoothHeight) methods.smoothHeight();
            slider.newSlides.width(slider.computedW);
            slider.setProps(slider.computedW, "setTotal");
          }
        }
      },
      smoothHeight: function(dur) {
        if (!vertical || fade) {
          var $obj = (fade) ? slider : slider.viewport;
          (dur) ? $obj.animate({"height": slider.slides.eq(slider.animatingTo).height()}, dur) : $obj.height(slider.slides.eq(slider.animatingTo).height());
        }
      },
      sync: function(action) {
        var $obj = $(vars.sync).data("flexslider"),
            target = slider.animatingTo;
        
        switch (action) {
          case "animate": $obj.flexAnimate(target, vars.pauseOnAction, false, true); break;
          case "play": if (!$obj.playing && !$obj.asNav) { $obj.play(); } break;
          case "pause": $obj.pause(); break;
        }
      }
    }
    
    // public methods
    slider.flexAnimate = function(target, pause, override, withSync, fromNav) {
      if (asNav && slider.pagingCount === 1) slider.direction = (slider.currentItem < target) ? "next" : "prev";
      
      if (!slider.animating && (slider.canAdvance(target, fromNav) || override) && slider.is(":visible")) {
        if (asNav && withSync) {
          var master = $(vars.asNavFor).data('flexslider');
          slider.atEnd = target === 0 || target === slider.count - 1;
          master.flexAnimate(target, true, false, true, fromNav);
          slider.direction = (slider.currentItem < target) ? "next" : "prev";
          master.direction = slider.direction;
          
          if (Math.ceil((target + 1)/slider.visible) - 1 !== slider.currentSlide && target !== 0) {
            slider.currentItem = target;
            slider.slides.removeClass(namespace + "active-slide").eq(target).addClass(namespace + "active-slide");
            target = Math.floor(target/slider.visible);
          } else {
            slider.currentItem = target;
            slider.slides.removeClass(namespace + "active-slide").eq(target).addClass(namespace + "active-slide");
            return false;
          }
        }
        
        slider.animating = true;
        slider.animatingTo = target;
        // API: before() animation Callback
        vars.before(slider);
        
        // SLIDESHOW:
        if (pause) slider.pause();
        
        // SYNC:
        if (slider.syncExists && !fromNav) methods.sync("animate");
        
        // CONTROLNAV
        if (vars.controlNav) methods.controlNav.active();
        
        // !CAROUSEL:
        // CANDIDATE: slide active class (for add/remove slide)
        if (!carousel) slider.slides.removeClass(namespace + 'active-slide').eq(target).addClass(namespace + 'active-slide');
        
        // INFINITE LOOP:
        // CANDIDATE: atEnd
        slider.atEnd = target === 0 || target === slider.last;
        
        // DIRECTIONNAV:
        if (vars.directionNav) methods.directionNav.update();
        
        if (target === slider.last) {
          // API: end() of cycle Callback
          vars.end(slider);
          // SLIDESHOW && !INFINITE LOOP:
          if (!vars.animationLoop) slider.pause();
        }
        
        // SLIDE:
        if (!fade) {
          var dimension = (vertical) ? slider.slides.filter(':first').height() : slider.computedW,
              margin, slideString, calcNext;
          
          // INFINITE LOOP / REVERSE:
          if (carousel) {
            margin = (vars.itemWidth > slider.w) ? vars.itemMargin * 2 : vars.itemMargin;
            calcNext = ((slider.itemW + margin) * slider.move) * slider.animatingTo;
            slideString = (calcNext > slider.limit && slider.visible !== 1) ? slider.limit : calcNext;
          } else if (slider.currentSlide === 0 && target === slider.count - 1 && vars.animationLoop && slider.direction !== "next") {
            slideString = (reverse) ? (slider.count + slider.cloneOffset) * dimension : 0;
          } else if (slider.currentSlide === slider.last && target === 0 && vars.animationLoop && slider.direction !== "prev") {
            slideString = (reverse) ? 0 : (slider.count + 1) * dimension;
          } else {
            slideString = (reverse) ? ((slider.count - 1) - target + slider.cloneOffset) * dimension : (target + slider.cloneOffset) * dimension;
          }
          slider.setProps(slideString, "", vars.animationSpeed);
          if (slider.transitions) {
            if (!vars.animationLoop || !slider.atEnd) {
              slider.animating = false;
              slider.currentSlide = slider.animatingTo;
            }
            slider.container.unbind("webkitTransitionEnd transitionend");
            slider.container.bind("webkitTransitionEnd transitionend", function() {
              slider.wrapup(dimension);
            });
          } else {
            slider.container.animate(slider.args, vars.animationSpeed, vars.easing, function(){
              slider.wrapup(dimension);
            });
          }
        } else { // FADE:
          if (!touch) {
            slider.slides.eq(slider.currentSlide).fadeOut(vars.animationSpeed, vars.easing);
            slider.slides.eq(target).fadeIn(vars.animationSpeed, vars.easing, slider.wrapup);
          } else {
            slider.slides.eq(slider.currentSlide).css({ "opacity": 0, "zIndex": 1 });
            slider.slides.eq(target).css({ "opacity": 1, "zIndex": 2 });
            
            slider.slides.unbind("webkitTransitionEnd transitionend");
            slider.slides.eq(slider.currentSlide).bind("webkitTransitionEnd transitionend", function() {
              // API: after() animation Callback
              vars.after(slider);
            });
            
            slider.animating = false;
            slider.currentSlide = slider.animatingTo;
          }
        }
        // SMOOTH HEIGHT:
        if (vars.smoothHeight) methods.smoothHeight(vars.animationSpeed);
      }
    } 
    slider.wrapup = function(dimension) {
      // SLIDE:
      if (!fade && !carousel) {
        if (slider.currentSlide === 0 && slider.animatingTo === slider.last && vars.animationLoop) {
          slider.setProps(dimension, "jumpEnd");
        } else if (slider.currentSlide === slider.last && slider.animatingTo === 0 && vars.animationLoop) {
          slider.setProps(dimension, "jumpStart");
        }
      }
      slider.animating = false;
      slider.currentSlide = slider.animatingTo;
      // API: after() animation Callback
      vars.after(slider);
    }
    
    // SLIDESHOW:
    slider.animateSlides = function() {
      if (!slider.animating) slider.flexAnimate(slider.getTarget("next"));
    }
    // SLIDESHOW:
    slider.pause = function() {
      clearInterval(slider.animatedSlides);
      slider.playing = false;
      // PAUSEPLAY:
      if (vars.pausePlay) methods.pausePlay.update("play");
      // SYNC:
      if (slider.syncExists) methods.sync("pause");
    }
    // SLIDESHOW:
    slider.play = function() {
      slider.animatedSlides = setInterval(slider.animateSlides, vars.slideshowSpeed);
      slider.playing = true;
      // PAUSEPLAY:
      if (vars.pausePlay) methods.pausePlay.update("pause");
      // SYNC:
      if (slider.syncExists) methods.sync("play");
    }
    slider.canAdvance = function(target, fromNav) {
      // ASNAV:
      var last = (asNav) ? slider.pagingCount - 1 : slider.last;
      return (fromNav) ? true :
             (asNav && slider.currentItem === slider.count - 1 && target === 0 && slider.direction === "prev") ? true :
             (asNav && slider.currentItem === 0 && target === slider.pagingCount - 1 && slider.direction !== "next") ? false :
             (target === slider.currentSlide && !asNav) ? false :
             (vars.animationLoop) ? true :
             (slider.atEnd && slider.currentSlide === 0 && target === last && slider.direction !== "next") ? false :
             (slider.atEnd && slider.currentSlide === last && target === 0 && slider.direction === "next") ? false :
             true;
    }
    slider.getTarget = function(dir) {
      slider.direction = dir; 
      if (dir === "next") {
        return (slider.currentSlide === slider.last) ? 0 : slider.currentSlide + 1;
      } else {
        return (slider.currentSlide === 0) ? slider.last : slider.currentSlide - 1;
      }
    }
    
    // SLIDE:
    slider.setProps = function(pos, special, dur) {
      var target = (function() {
        var posCheck = (pos) ? pos : ((slider.itemW + vars.itemMargin) * slider.move) * slider.animatingTo,
            posCalc = (function() {
              if (carousel) {
                return (special === "setTouch") ? pos :
                       (reverse && slider.animatingTo === slider.last) ? 0 :
                       (reverse) ? slider.limit - (((slider.itemW + vars.itemMargin) * slider.move) * slider.animatingTo) :
                       (slider.animatingTo === slider.last) ? slider.limit : posCheck;
              } else {
                switch (special) {
                  case "setTotal": return (reverse) ? ((slider.count - 1) - slider.currentSlide + slider.cloneOffset) * pos : (slider.currentSlide + slider.cloneOffset) * pos;
                  case "setTouch": return (reverse) ? pos : pos;
                  case "jumpEnd": return (reverse) ? pos : slider.count * pos;
                  case "jumpStart": return (reverse) ? slider.count * pos : pos;
                  default: return pos;
                }
              }
            }());
            return (posCalc * -1) + "px";
          }());

      if (slider.transitions) {
        target = (vertical) ? "translate3d(0," + target + ",0)" : "translate3d(" + target + ",0,0)";
        dur = (dur !== undefined) ? (dur/1000) + "s" : "0s";
        slider.container.css("-" + slider.pfx + "-transition-duration", dur);
      }
      
      slider.args[slider.prop] = target;
      if (slider.transitions || dur === undefined) slider.container.css(slider.args);
    }
    
    slider.setup = function(type) {
      // SLIDE:
      if (!fade) {
        var sliderOffset, arr;
            
        if (type === "init") {
		  var viewportCss = {"overflow": "hidden"};
		  if(!vars.productSlider)
			viewportCss.position = "relative";
          slider.viewport = $('<div class="' + namespace + 'viewport"></div>').css(viewportCss).appendTo(slider).append(slider.container);
          // INFINITE LOOP:
          slider.cloneCount = 0;
          slider.cloneOffset = 0;
          // REVERSE:
          if (reverse) {
            arr = $.makeArray(slider.slides).reverse();
            slider.slides = $(arr);
            slider.container.empty().append(slider.slides);
          }
        }
        // INFINITE LOOP && !CAROUSEL:
        if (vars.animationLoop && !carousel) {
          slider.cloneCount = 2;
          slider.cloneOffset = 1;
          // clear out old clones
          if (type !== "init") slider.container.find('.clone').remove();
          slider.container.append(slider.slides.first().clone().addClass('clone')).prepend(slider.slides.last().clone().addClass('clone'));
        }
        slider.newSlides = $(vars.selector, slider);
        
        sliderOffset = (reverse) ? slider.count - 1 - slider.currentSlide + slider.cloneOffset : slider.currentSlide + slider.cloneOffset;
        // VERTICAL:
        if (vertical && !carousel) {
          slider.container.height((slider.count + slider.cloneCount) * 200 + "%").css("position", "absolute").width("100%");
          setTimeout(function(){
            slider.newSlides.css({"display": "block"});
            slider.doMath();
            slider.viewport.height(slider.h);
            slider.setProps(sliderOffset * slider.h, "init");
          }, (type === "init") ? 100 : 0);
        } else {
          slider.container.width((slider.count + slider.cloneCount) * 200 + "%");
          slider.setProps(sliderOffset * slider.computedW, "init");
          setTimeout(function(){
            slider.doMath();
            slider.newSlides.css({"width": slider.computedW, "float": "left", "display": "block"});
            // SMOOTH HEIGHT:
            if (vars.smoothHeight) methods.smoothHeight();
          }, (type === "init") ? 100 : 0);
        }
      } else { // FADE: 
        slider.slides.css({"width": "100%", "float": "left", "marginRight": "-100%", "position": "relative"});
        if (type === "init") {
          if (!touch) {
            slider.slides.eq(slider.currentSlide).fadeIn(vars.animationSpeed, vars.easing);
          } else {
            slider.slides.css({ "opacity": 0, "display": "block", "webkitTransition": "opacity " + vars.animationSpeed / 1000 + "s ease", "zIndex": 1 }).eq(slider.currentSlide).css({ "opacity": 1, "zIndex": 2});
          }
        }
        // SMOOTH HEIGHT:
        if (vars.smoothHeight) methods.smoothHeight();
      }
      // !CAROUSEL:
      // CANDIDATE: active slide
      if (!carousel) slider.slides.removeClass(namespace + "active-slide").eq(slider.currentSlide).addClass(namespace + "active-slide");
    }
    
    slider.doMath = function() {
      var slide = slider.slides.first(),
          slideMargin = vars.itemMargin,
          minItems = vars.minItems,
          maxItems = vars.maxItems;
      
      slider.w = slider.width();
      slider.h = slide.height();
      slider.boxPadding = slide.outerWidth() - slide.width();

      // CAROUSEL:
      if (carousel) {
        slider.itemT = vars.itemWidth + slideMargin;
        slider.minW = (minItems) ? minItems * slider.itemT : slider.w;
        slider.maxW = (maxItems) ? maxItems * slider.itemT : slider.w;
        slider.itemW = (slider.minW > slider.w) ? (slider.w - (slideMargin * minItems))/minItems :
                       (slider.maxW < slider.w) ? (slider.w - (slideMargin * maxItems))/maxItems :
                       (vars.itemWidth > slider.w) ? slider.w : vars.itemWidth;
        slider.visible = Math.floor(slider.w/(slider.itemW + slideMargin));
        slider.move = (vars.move > 0 && vars.move < slider.visible ) ? vars.move : slider.visible;
        slider.pagingCount = Math.ceil(((slider.count - slider.visible)/slider.move) + 1);
        slider.last =  slider.pagingCount - 1;
        slider.limit = (slider.pagingCount === 1) ? 0 :
                       (vars.itemWidth > slider.w) ? ((slider.itemW + (slideMargin * 2)) * slider.count) - slider.w - slideMargin : ((slider.itemW + slideMargin) * slider.count) - slider.w - slideMargin;
      } else {
        slider.itemW = slider.w;
        slider.pagingCount = slider.count;
        slider.last = slider.count - 1;
      }
      slider.computedW = slider.itemW - slider.boxPadding;
    }
    
    slider.update = function(pos, action) {
      slider.doMath();
      
      // update currentSlide and slider.animatingTo if necessary
      if (!carousel) {
        if (pos < slider.currentSlide) {
          slider.currentSlide += 1;
        } else if (pos <= slider.currentSlide && pos !== 0) {
          slider.currentSlide -= 1;
        }
        slider.animatingTo = slider.currentSlide;
      }
      
      // update controlNav
      if (vars.controlNav && !slider.manualControls) {
        if ((action === "add" && !carousel) || slider.pagingCount > slider.controlNav.length) {
          methods.controlNav.update("add");
        } else if ((action === "remove" && !carousel) || slider.pagingCount < slider.controlNav.length) {
          if (carousel && slider.currentSlide > slider.last) {
            slider.currentSlide -= 1;
            slider.animatingTo -= 1;
          }
          methods.controlNav.update("remove", slider.last);
        }
      }
      // update directionNav
      if (vars.directionNav) methods.directionNav.update();
      
    }
    
    slider.addSlide = function(obj, pos) {
      var $obj = $(obj);
      
      slider.count += 1;
      slider.last = slider.count - 1;
      
      // append new slide
      if (vertical && reverse) {
        (pos !== undefined) ? slider.slides.eq(slider.count - pos).after($obj) : slider.container.prepend($obj);
      } else {
        (pos !== undefined) ? slider.slides.eq(pos).before($obj) : slider.container.append($obj);
      }
      
      // update currentSlide, animatingTo, controlNav, and directionNav
      slider.update(pos, "add");
      
      // update slider.slides
      slider.slides = $(vars.selector + ':not(.clone)', slider);
      // re-setup the slider to accomdate new slide
      slider.setup();
      
      //FlexSlider: added() Callback
      vars.added(slider);
    }
    slider.removeSlide = function(obj) {
      var pos = (isNaN(obj)) ? slider.slides.index($(obj)) : obj;
      
      // update count
      slider.count -= 1;
      slider.last = slider.count - 1;
      
      // remove slide
      if (isNaN(obj)) {
        $(obj, slider.slides).remove();
      } else {
        (vertical && reverse) ? slider.slides.eq(slider.last).remove() : slider.slides.eq(obj).remove();
      }
      
      // update currentSlide, animatingTo, controlNav, and directionNav
      slider.doMath();
      slider.update(pos, "remove");
      
      // update slider.slides
      slider.slides = $(vars.selector + ':not(.clone)', slider);
      // re-setup the slider to accomdate new slide
      slider.setup();
      
      // FlexSlider: removed() Callback
      vars.removed(slider);
    }
    slider.setVars = function(options){
        $.extend(vars, options);
        slider.flexAnimate(0,true);
        slider.setup();
    };
    
    //FlexSlider: Initialize
    methods.init();
  }
  
  //FlexSlider: Default Settings
  $.flexslider.defaults = {
    namespace: "flex-",             //{NEW} String: Prefix string attached to the class of every element generated by the plugin
    selector: ".slides > li",       //{NEW} Selector: Must match a simple pattern. '{container} > {slide}' -- Ignore pattern at your own peril
    animation: "fade",              //String: Select your animation type, "fade" or "slide"
    easing: "swing",               //{NEW} String: Determines the easing method used in jQuery transitions. jQuery easing plugin is supported!
    direction: "horizontal",        //String: Select the sliding direction, "horizontal" or "vertical"
    reverse: false,                 //{NEW} Boolean: Reverse the animation direction
    animationLoop: true,             //Boolean: "No" if you want to perform the animation once; "Yes" to loop the animation
    smoothHeight: false,            //{NEW} Boolean: Allow height of the slider to animate smoothly in horizontal mode  
    startAt: 0,                     //Integer: The slide that the slider should start on. Array notation (0 = first slide)
    slideshow: true,                //Boolean: Animate slider automatically
    slideshowSpeed: 7000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
    animationSpeed: 600,            //Integer: Set the speed of animations, in milliseconds
    initDelay: 0,                   //{NEW} Integer: Set an initialization delay, in milliseconds
    randomize: false,               //Boolean: Randomize slide order
    
    // Usability features
    pauseOnAction: true,            //Boolean: Pause the slideshow when interacting with control elements, highly recommended.
    pauseOnHover: false,            //Boolean: Pause the slideshow when hovering over slider, then resume when no longer hovering
    useCSS: true,                   //{NEW} Boolean: Slider will use CSS3 transitions if available
    touch: true,                    //{NEW} Boolean: Allow touch swipe navigation of the slider on touch-enabled devices
    video: false,                   //{NEW} Boolean: If using video in the slider, will prevent CSS3 3D Transforms to avoid graphical glitches
    
    // Primary Controls
    controlNav: true,               //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
    directionNav: true,             //Boolean: Create navigation for previous/next navigation? (true/false)
    prevText: "<i class='icon-angle-left icon-3x'></i>",           //String: Set the text for the "previous" directionNav item
    nextText: "<i class='icon-angle-right icon-3x'></i>",               //String: Set the text for the "next" directionNav item
    
    // Secondary Navigation
    keyboard: true,                 //Boolean: Allow slider navigating via keyboard left/right keys
    multipleKeyboard: false,        //{NEW} Boolean: Allow keyboard navigation to affect multiple sliders. Default behavior cuts out keyboard navigation with more than one slider present.
    mousewheel: false,              //{UPDATED} Boolean: Requires jquery.mousewheel.js (https://github.com/brandonaaron/jquery-mousewheel) - Allows slider navigating via mousewheel
    pausePlay: false,               //Boolean: Create pause/play dynamic element
    pauseText: "Pause",             //String: Set the text for the "pause" pausePlay item
    playText: "Play",               //String: Set the text for the "play" pausePlay item
    
    // Special properties
    controlsContainer: "",          //{UPDATED} jQuery Object/Selector: Declare which container the navigation elements should be appended too. Default container is the FlexSlider element. Example use would be $(".flexslider-container"). Property is ignored if given element is not found.
    manualControls: "",             //{UPDATED} jQuery Object/Selector: Declare custom control navigation. Examples would be $(".flex-control-nav li") or "#tabs-nav li img", etc. The number of elements in your controlNav should match the number of slides/tabs.
    sync: "",                       //{NEW} Selector: Mirror the actions performed on this slider with another slider. Use with care.
    asNavFor: "",                   //{NEW} Selector: Internal property exposed for turning the slider into a thumbnail navigation for another slider
    
    // Carousel Options
    itemWidth: 0,                   //{NEW} Integer: Box-model width of individual carousel items, including horizontal borders and padding.
    itemMargin: 0,                  //{NEW} Integer: Margin between carousel items.
    minItems: 0,                    //{NEW} Integer: Minimum number of carousel items that should be visible. Items will resize fluidly when below this.
    maxItems: 0,                    //{NEW} Integer: Maxmimum number of carousel items that should be visible. Items will resize fluidly when above this limit.
    move: 0,                        //{NEW} Integer: Number of carousel items that should move on animation. If 0, slider will move all visible items.
                                    
    // Callback API
    start: function(){},            //Callback: function(slider) - Fires when the slider loads the first slide
    before: function(){},           //Callback: function(slider) - Fires asynchronously with each slider animation
    after: function(){},            //Callback: function(slider) - Fires after each slider animation completes
    end: function(){},              //Callback: function(slider) - Fires when the slider reaches the last slide (asynchronous)
    added: function(){},            //{NEW} Callback: function(slider) - Fires after a slide is added
    removed: function(){},           //{NEW} Callback: function(slider) - Fires after a slide is removed
	pauseOn: function() {},
	pauseOff: function() {},
	productSlider: false
  }


  //FlexSlider: Plugin Function
  $.fn.flexslider = function(options) {
    if (options === undefined) options = {};
    
    if (typeof options === "object") {
      return this.each(function() {
        var $this = $(this),
            selector = (options.selector) ? options.selector : ".slides > li",
            $slides = $this.find(selector);

        if ($slides.length === 1) {
          $slides.fadeIn(400);
          if (options.start) options.start($this);
        } else if ($this.data('flexslider') == undefined) {
          new $.flexslider(this, options);
        }
      });
    } else {
      // Helper strings to quickly perform functions on the slider
      var $slider = $(this).data('flexslider');
      switch (options) {
        case "play": $slider.play(); break;
        case "pause": $slider.pause(); break;
        case "next": $slider.flexAnimate($slider.getTarget("next"), true); break;
        case "prev":
        case "previous": $slider.flexAnimate($slider.getTarget("prev"), true); break;
        default: if (typeof options === "number") $slider.flexAnimate(options, true);
      }
    }
  }  

})(jQuery);

if (jQuery)(function(a) {
	a.extend(a.fn, {
		selectBox: function(b, c) {
			var d, e = "",
				f = navigator.platform.match(/mac/i);
			var g = function(b, c) {
					var d;
					if (navigator.userAgent.match(/iPad|iPhone|Android|IEMobile|BlackBerry/i)) return false;
					if (b.tagName.toLowerCase() !== "select") return false;
					b = a(b);
					if (b.data("selectBox-control")) return false;
					var e = a('<a class="selectBox" />'),
						f = b.attr("multiple") || parseInt(b.attr("size")) > 1;
					var g = c || {};
					e.width(b.outerWidth() + 5).addClass(b.attr("class")).attr("title", b.attr("title") || "").attr("tabindex", parseInt(b.attr("tabindex"))).css("display", "inline-block").bind("focus.selectBox", function() {
						if (this !== document.activeElement && document.body !== document.activeElement) a(document.activeElement).blur();
						if (e.hasClass("selectBox-active")) return;
						e.addClass("selectBox-active");
						b.trigger("focus")
					}).bind("blur.selectBox", function() {
						if (!e.hasClass("selectBox-active")) return;
						e.removeClass("selectBox-active");
						b.trigger("blur")
					});
					if (!a(window).data("selectBox-bindings")) {
						a(window).data("selectBox-bindings", true).bind("scroll.selectBox", o).bind("resize.selectBox", o)
					}
					if (b.attr("disabled")) e.addClass("selectBox-disabled");
					b.bind("click.selectBox", function(a) {
						e.focus();
						a.preventDefault()
					});
					if (f) {
						d = h(b, "inline");
						e.append(d).data("selectBox-options", d).addClass("selectBox-inline selectBox-menuShowing").bind("keydown.selectBox", function(a) {
							t(b, a)
						}).bind("keypress.selectBox", function(a) {
							u(b, a)
						}).bind("mousedown.selectBox", function(b) {
							if (a(b.target).is("A.selectBox-inline")) b.preventDefault();
							if (!e.hasClass("selectBox-focus")) e.focus()
						}).insertAfter(b);
						if (!b[0].style.height) {
							var k = b.attr("size") ? parseInt(b.attr("size")) : 5;
							var l = e.clone().removeAttr("id").css({
								position: "absolute",
								top: "-9999em"
							}).show().appendTo("body");
							l.find(".selectBox-options").html("<li><a> </a></li>");
							var m = parseInt(l.find(".selectBox-options A:first").html(" ").outerHeight());
							l.remove();
							e.height(m * k)
						}
						z(e)
					} else {
						var p = a('<span class="selectBox-label" />'),
							q = a('<span class="selectBox-arrow" />');
						p.attr("class", i(b)).text(j(b));
						d = h(b, "dropdown");
						d.appendTo("BODY");
						e.data("selectBox-options", d).addClass("selectBox-dropdown").append(p).append(q).bind("mousedown.selectBox", function(a) {
							if (e.hasClass("selectBox-menuShowing")) {
								o()
							} else {
								a.stopPropagation();
								d.data("selectBox-down-at-x", a.screenX).data("selectBox-down-at-y", a.screenY);
								n(b)
							}
						}).bind("keydown.selectBox", function(a) {
							t(b, a)
						}).bind("keypress.selectBox", function(a) {
							u(b, a)
						}).bind("open.selectBox", function(a, c) {
							if (c && c._selectBox === true) return;
							n(b)
						}).bind("close.selectBox", function(a, b) {
							if (b && b._selectBox === true) return;
							o()
						}).insertAfter(b);
						var r = e.width() - q.outerWidth() - parseInt(p.css("paddingLeft")) - parseInt(p.css("paddingLeft"));
						p.width(r);
						z(e)
					}
					b.addClass("selectBox").data("selectBox-control", e).data("selectBox-settings", g).hide()
				};
			var h = function(b, c) {
					var d;
					var e = function(b, c) {
							b.children("OPTION, OPTGROUP").each(function() {
								if (a(this).is("OPTION")) {
									if (a(this).length > 0) {
										A(a(this), c)
									} else {
										c.append("<li> </li>")
									}
								} else {
									var b = a('<li class="selectBox-optgroup" />');
									b.text(a(this).attr("label"));
									c.append(b);
									c = e(a(this), c)
								}
							});
							return c
						};
					switch (c) {
					case "inline":
						d = a('<ul class="selectBox-options" />');
						d = e(b, d);
						d.find("A").bind("mouseover.selectBox", function(c) {
							q(b, a(this).parent())
						}).bind("mouseout.selectBox", function(c) {
							r(b, a(this).parent())
						}).bind("mousedown.selectBox", function(a) {
							a.preventDefault();
							if (!b.selectBox("control").hasClass("selectBox-active")) b.selectBox("control").focus()
						}).bind("mouseup.selectBox", function(c) {
							o();
							p(b, a(this).parent(), c)
						});
						z(d);
						return d;
					case "dropdown":
						d = a('<ul class="selectBox-dropdown-menu selectBox-options" />');
						d = e(b, d);
						d.data("selectBox-select", b).css("display", "none").appendTo("BODY").find("A").bind("mousedown.selectBox", function(a) {
							a.preventDefault();
							if (a.screenX === d.data("selectBox-down-at-x") && a.screenY === d.data("selectBox-down-at-y")) {
								d.removeData("selectBox-down-at-x").removeData("selectBox-down-at-y");
								o()
							}
						}).bind("mouseup.selectBox", function(c) {
							if (c.screenX === d.data("selectBox-down-at-x") && c.screenY === d.data("selectBox-down-at-y")) {
								return
							} else {
								d.removeData("selectBox-down-at-x").removeData("selectBox-down-at-y")
							}
							p(b, a(this).parent());
							o()
						}).bind("mouseover.selectBox", function(c) {
							q(b, a(this).parent())
						}).bind("mouseout.selectBox", function(c) {
							r(b, a(this).parent())
						});
						var f = b.attr("class") || "";
						if (f !== "") {
							f = f.split(" ");
							for (var g in f) d.addClass(f[g] + "-selectBox-dropdown-menu")
						}
						z(d);
						return d
					}
				};
			var i = function(b) {
					var c = a(b).find("OPTION:selected");
					return ("selectBox-label " + (c.attr("class") || "")).replace(/\s+$/, "")
				};
			var j = function(b) {
					var c = a(b).find("OPTION:selected");
					return c.text() || " "
				};
			var k = function(b) {
					b = a(b);
					var c = b.data("selectBox-control");
					if (!c) return;
					c.find(".selectBox-label").attr("class", i(b)).text(j(b))
				};
			var l = function(b) {
					b = a(b);
					var c = b.data("selectBox-control");
					if (!c) return;
					var d = c.data("selectBox-options");
					d.remove();
					c.remove();
					b.removeClass("selectBox").removeData("selectBox-control").data("selectBox-control", null).removeData("selectBox-settings").data("selectBox-settings", null).show()
				};
			var m = function(b) {
					b = a(b);
					b.selectBox("options", b.html())
				};
			var n = function(b) {
					b = a(b);
					var c = b.data("selectBox-control"),
						d = b.data("selectBox-settings"),
						e = c.data("selectBox-options");
					if (c.hasClass("selectBox-disabled")) return false;
					o();
					var f = isNaN(c.css("borderBottomWidth")) ? 0 : parseInt(c.css("borderBottomWidth"));
					e.width(c.innerWidth()).css({
						top: c.offset().top + c.outerHeight() - f,
						left: c.offset().left
					});
					if (b.triggerHandler("beforeopen")) return false;
					var g = function() {
							b.triggerHandler("open", {
								_selectBox: true
							})
						};
					switch (d.menuTransition) {
					case "fade":
						e.fadeIn(d.menuSpeed, g);
						break;
					case "slide":
						e.slideDown(d.menuSpeed, g);
						break;
					default:
						e.show(d.menuSpeed, g);
						break
					}
					if (!d.menuSpeed) g();
					var h = e.find(".selectBox-selected:first");
					s(b, h, true);
					q(b, h);
					c.addClass("selectBox-menuShowing");
					a(document).bind("mousedown.selectBox", function(b) {
						if (a(b.target).parents().andSelf().hasClass("selectBox-options")) return;
						o()
					})
				};
			var o = function() {
					if (a(".selectBox-dropdown-menu:visible").length === 0) return;
					a(document).unbind("mousedown.selectBox");
					a(".selectBox-dropdown-menu").each(function() {
						var b = a(this),
							c = b.data("selectBox-select"),
							d = c.data("selectBox-control"),
							e = c.data("selectBox-settings");
						if (c.triggerHandler("beforeclose")) return false;
						var f = function() {
								c.triggerHandler("close", {
									_selectBox: true
								})
							};
						if (e) {
							switch (e.menuTransition) {
							case "fade":
								b.fadeOut(e.menuSpeed, f);
								break;
							case "slide":
								b.slideUp(e.menuSpeed, f);
								break;
							default:
								b.hide(e.menuSpeed, f);
								break
							}
							if (!e.menuSpeed) f();
							d.removeClass("selectBox-menuShowing")
						} else {
							a(this).hide();
							a(this).triggerHandler("close", {
								_selectBox: true
							});
							a(this).removeClass("selectBox-menuShowing")
						}
					})
				};
			var p = function(b, c, d) {
					b = a(b);
					c = a(c);
					var e = b.data("selectBox-control"),
						g = b.data("selectBox-settings");
					if (e.hasClass("selectBox-disabled")) return false;
					if (c.length === 0 || c.hasClass("selectBox-disabled")) return false;
					if (b.attr("multiple")) {
						if (d.shiftKey && e.data("selectBox-last-selected")) {
							c.toggleClass("selectBox-selected");
							var h;
							if (c.index() > e.data("selectBox-last-selected").index()) {
								h = c.siblings().slice(e.data("selectBox-last-selected").index(), c.index())
							} else {
								h = c.siblings().slice(c.index(), e.data("selectBox-last-selected").index())
							}
							h = h.not(".selectBox-optgroup, .selectBox-disabled");
							if (c.hasClass("selectBox-selected")) {
								h.addClass("selectBox-selected")
							} else {
								h.removeClass("selectBox-selected")
							}
						} else if (f && d.metaKey || !f && d.ctrlKey) {
							c.toggleClass("selectBox-selected")
						} else {
							c.siblings().removeClass("selectBox-selected");
							c.addClass("selectBox-selected")
						}
					} else {
						c.siblings().removeClass("selectBox-selected");
						c.addClass("selectBox-selected")
					}
					if (e.hasClass("selectBox-dropdown")) {
						e.find(".selectBox-label").text(c.text())
					}
					var i = 0,
						j = [];
					if (b.attr("multiple")) {
						e.find(".selectBox-selected A").each(function() {
							j[i++] = a(this).attr("rel")
						})
					} else {
						j = c.find("A").attr("rel")
					}
					e.data("selectBox-last-selected", c);
					if (b.val() !== j) {
						b.val(j);
						k(b);
						b.trigger("change")
					}
					return true
				};
			var q = function(b, c) {
					b = a(b);
					c = a(c);
					var d = b.data("selectBox-control"),
						e = d.data("selectBox-options");
					e.find(".selectBox-hover").removeClass("selectBox-hover");
					c.addClass("selectBox-hover")
				};
			var r = function(b, c) {
					b = a(b);
					c = a(c);
					var d = b.data("selectBox-control"),
						e = d.data("selectBox-options");
					e.find(".selectBox-hover").removeClass("selectBox-hover")
				};
			var s = function(b, c, d) {
					if (!c || c.length === 0) return;
					b = a(b);
					var e = b.data("selectBox-control"),
						f = e.data("selectBox-options"),
						g = e.hasClass("selectBox-dropdown") ? f : f.parent(),
						h = parseInt(c.offset().top - g.position().top),
						i = parseInt(h + c.outerHeight());
					if (d) {
						g.scrollTop(c.offset().top - g.offset().top + g.scrollTop() - g.height() / 2)
					} else {
						if (h < 0) {
							g.scrollTop(c.offset().top - g.offset().top + g.scrollTop())
						}
						if (i > g.height()) {
							g.scrollTop(c.offset().top + c.outerHeight() - g.offset().top + g.scrollTop() - g.height())
						}
					}
				};
			var t = function(b, c) {
					b = a(b);
					var d = b.data("selectBox-control"),
						f = d.data("selectBox-options"),
						g = b.data("selectBox-settings"),
						h = 0,
						i = 0;
					if (d.hasClass("selectBox-disabled")) return;
					switch (c.keyCode) {
					case 8:
						c.preventDefault();
						e = "";
						break;
					case 9:
					case 27:
						o();
						r(b);
						break;
					case 13:
						if (d.hasClass("selectBox-menuShowing")) {
							p(b, f.find("LI.selectBox-hover:first"), c);
							if (d.hasClass("selectBox-dropdown")) o()
						} else {
							n(b)
						}
						break;
					case 38:
					case 37:
						c.preventDefault();
						if (d.hasClass("selectBox-menuShowing")) {
							var j = f.find(".selectBox-hover").prev("LI");
							h = f.find("LI:not(.selectBox-optgroup)").length;
							i = 0;
							while (j.length === 0 || j.hasClass("selectBox-disabled") || j.hasClass("selectBox-optgroup")) {
								j = j.prev("LI");
								if (j.length === 0) {
									if (g.loopOptions) {
										j = f.find("LI:last")
									} else {
										j = f.find("LI:first")
									}
								}
								if (++i >= h) break
							}
							q(b, j);
							p(b, j, c);
							s(b, j)
						} else {
							n(b)
						}
						break;
					case 40:
					case 39:
						c.preventDefault();
						if (d.hasClass("selectBox-menuShowing")) {
							var k = f.find(".selectBox-hover").next("LI");
							h = f.find("LI:not(.selectBox-optgroup)").length;
							i = 0;
							while (k.length === 0 || k.hasClass("selectBox-disabled") || k.hasClass("selectBox-optgroup")) {
								k = k.next("LI");
								if (k.length === 0) {
									if (g.loopOptions) {
										k = f.find("LI:first")
									} else {
										k = f.find("LI:last")
									}
								}
								if (++i >= h) break
							}
							q(b, k);
							p(b, k, c);
							s(b, k)
						} else {
							n(b)
						}
						break
					}
				};
			var u = function(b, c) {
					b = a(b);
					var f = b.data("selectBox-control"),
						g = f.data("selectBox-options");
					if (f.hasClass("selectBox-disabled")) return;
					switch (c.keyCode) {
					case 9:
					case 27:
					case 13:
					case 38:
					case 37:
					case 40:
					case 39:
						break;
					default:
						if (!f.hasClass("selectBox-menuShowing")) n(b);
						c.preventDefault();
						clearTimeout(d);
						e += String.fromCharCode(c.charCode || c.keyCode);
						g.find("A").each(function() {
							if (a(this).text().substr(0, e.length).toLowerCase() === e.toLowerCase()) {
								q(b, a(this).parent());
								s(b, a(this).parent());
								return false
							}
						});
						d = setTimeout(function() {
							e = ""
						}, 1e3);
						break
					}
				};
			var v = function(b) {
					b = a(b);
					b.attr("disabled", false);
					var c = b.data("selectBox-control");
					if (!c) return;
					c.removeClass("selectBox-disabled")
				};
			var w = function(b) {
					b = a(b);
					b.attr("disabled", true);
					var c = b.data("selectBox-control");
					if (!c) return;
					c.addClass("selectBox-disabled")
				};
			var x = function(b, c) {
					b = a(b);
					b.val(c);
					c = b.val();
					if (c === null) {
						c = b.children().first().val();
						b.val(c)
					}
					var d = b.data("selectBox-control");
					if (!d) return;
					var e = b.data("selectBox-settings"),
						f = d.data("selectBox-options");
					k(b);
					f.find(".selectBox-selected").removeClass("selectBox-selected");
					f.find("A").each(function() {
						if (typeof c === "object") {
							for (var b = 0; b < c.length; b++) {
								if (a(this).attr("rel") == c[b]) {
									a(this).parent().addClass("selectBox-selected")
								}
							}
						} else {
							if (a(this).attr("rel") == c) {
								a(this).parent().addClass("selectBox-selected")
							}
						}
					});
					if (e.change) e.change.call(b)
				};
			var y = function(b, d) {
					b = a(b);
					var e = b.data("selectBox-control"),
						f = b.data("selectBox-settings");
					switch (typeof c) {
					case "string":
						b.html(c);
						break;
					case "object":
						b.html("");
						for (var g in c) {
							if (c[g] === null) continue;
							if (typeof c[g] === "object") {
								var i = a('<optgroup label="' + g + '" />');
								for (var j in c[g]) {
									i.append('<option value="' + j + '">' + c[g][j] + "</option>")
								}
								b.append(i)
							} else {
								var l = a('<option value="' + g + '">' + c[g] + "</option>");
								b.append(l)
							}
						}
						break
					}
					if (!e) return;
					e.data("selectBox-options").remove();
					var m = e.hasClass("selectBox-dropdown") ? "dropdown" : "inline";
					d = h(b, m);
					e.data("selectBox-options", d);
					switch (m) {
					case "inline":
						e.append(d);
						break;
					case "dropdown":
						k(b);
						a("BODY").append(d);
						break
					}
				};
			var z = function(b) {
					a(b).css("MozUserSelect", "none").bind("selectstart", function(a) {
						a.preventDefault()
					})
				};
			var A = function(b, c) {
					var d = a("<li />"),
						e = a("<a />");
					d.addClass(b.attr("class"));
					d.data(b.data());
					e.attr("rel", b.val()).text(b.text());
					d.append(e);
					if (b.attr("disabled")) d.addClass("selectBox-disabled");
					if (b.attr("selected")) d.addClass("selectBox-selected");
					c.append(d)
				};
			switch (b) {
			case "control":
				return a(this).data("selectBox-control");
			case "settings":
				if (!c) return a(this).data("selectBox-settings");
				a(this).each(function() {
					a(this).data("selectBox-settings", a.extend(true, a(this).data("selectBox-settings"), c))
				});
				break;
			case "options":
				if (c === undefined) return a(this).data("selectBox-control").data("selectBox-options");
				a(this).each(function() {
					y(this, c)
				});
				break;
			case "value":
				if (c === undefined) return a(this).val();
				a(this).each(function() {
					x(this, c)
				});
				break;
			case "refresh":
				a(this).each(function() {
					m(this)
				});
				break;
			case "enable":
				a(this).each(function() {
					v(this)
				});
				break;
			case "disable":
				a(this).each(function() {
					w(this)
				});
				break;
			case "destroy":
				a(this).each(function() {
					l(this)
				});
				break;
			default:
				a(this).each(function() {
					g(this, b)
				});
				break
			}
			return a(this)
		}
	})
})(jQuery);
var extendViewsPlugin = (function() {

	var pluginExtend  = {
		imageSwitch : function(data) {
			$('.pro_thumb_item').bind('click', function(){
			    $(this).parent().addClass('pro_thumb_selected').siblings().removeClass('pro_thumb_selected');
        	    var img_cover = $('img.img_cover', $(this).closest('li'));
        		var isImage   = $(this).find('img')[0];
        			 isImage   = (typeof(isImage) != 'undefined' ? true : false);
        		if(isImage)
       			 img_cover.attr('src', $(this).find('img').attr('src').replace('productmin', 'home_default'));
        	});            
		},
		initCarousel : function(data) {
			var prev, next;
			$('#product_list li').each(function(k, obj){
				prev = $('.combinations_thumb_wraper .previous', this);
				next = $('.combinations_thumb_wraper .next', this);
				$('.combinations_thumb', this).extendCarousel({
					'previous' : prev,
					'next'     : next,
					'viewPort' : 4
				});
			});
		}
	};

	return {
		init: function(ajax) {
			pluginExtend.initCarousel();
			pluginExtend.imageSwitch();
		}
	};
})();

$.fn.extendCarousel = function(options){
	
	options = $.extend({
		previous : '#next',
		next     : '#prev',
		viewPort : 6,
		toolTip  : false,
		callback : function() {}
	}, options);
	
	var listItems = $(this).children('dl');
	
	if(typeof(options.previous) == 'string')
		options.previous = $(previous);
	
	if(typeof(options.next) == 'string')
		options.next = $(next);
	
	var numElmts = $(listItems).children('dd').length;
	
	if(numElmts > options.viewPort) {
		options.previous.css('display','block');
		options.next.css('display','block');
	}
	
	if(listItems) {
		
		var increment = $(listItems).children('dd').outerWidth(true),
		elmnts        = $(listItems).children('dd'),
		numElmts      = elmnts.length,
		firstItem     = 1,
		isAnimating   = false;
		
		for(i = 0; i < options.viewPort; i++) {
			$(listItems).css('width',(numElmts+options.viewPort)*increment + increment + "px");
		}
		
		options.previous.click(function(event){
			if(! isAnimating && ! options.previous.hasClass('disa')) {
				options.next.removeClass('disa');

				if(firstItem == 2)
					options.previous.addClass('disa');
				firstItem--;
				
				$(listItems).animate({
					left: "+=" + increment*1,
					y: 0,
					queue: true
				}, "swing", function(){isAnimating = false;});
				isAnimating = true;
			}
		});
		
		options.next.click(function(event){
			if(! isAnimating && ! options.next.hasClass('disa')) {
				options.previous.removeClass('disa');
				
				firstItem++;
				if(firstItem == numElmts-3)
					options.next.addClass('disa');
					
				$(listItems).animate({
					left: "-=" + increment*1,
					y: 0,
					queue: true
				}, "swing", function(){isAnimating = false;});
				isAnimating = true;
			}
		});
		
	}
};
$.fn.countdown = function(options) {
	var defaults = {
		id: 'countdown_senconds',
		onlyDays: 4,
        textdays: 'days',
        suffix  : 'Sale ends'
	};
	return this.each(function() {
		options = $.extend(defaults, options);
		if (!options.endDate) return;
		var el = $(this);
		var timeLeft = new Date(options.endDate) - new Date(options.curDate);
		if (timeLeft <= 0) {
			return
		};
		var timer,
		eltxt = $('#'+options.id);
        if(eltxt.size()!=1)
            eltxt = el;
        var is_onlydays = false;
		var tick = function() {
			timeLeft -= 1000;
			if (timeLeft < 0) {
				window.clearInterval(timer);
				return
			};
			var seconds = timeLeft / 1000;
			minutes = Math.floor(seconds / 60);
			hours = Math.floor(minutes / 60);
			days = Math.floor(hours / 24);
			seconds %= 60;
			minutes %= 60;
			seconds = ("0" + seconds).slice( - 2);
			minutes = ("0" + minutes).slice( - 2);
            
            if (hours < 10)
	           hours = ("0" + hours).slice( - 2);
			if (days >= options.onlyDays) {
				eltxt.html(options.suffix+' '+days+' '+options.textdays +' ' +  (hours % 24 < 10 ? ("0" + hours % 24) : hours % 24) + ':' + minutes + ":" + seconds);
                //is_onlydays = true;
			} else {
				eltxt.html(options.suffix+' '+hours + ':' + minutes + ":" + seconds);
			}
		};
		tick();
        if(!is_onlydays)
		  timer = window.setInterval(tick, 1000)
	})
};
;(function(e,t,n){e.noop=e.noop||function(){};var r,i,s,o,u=0,a=e(t),f=e(document),l=e("html"),c=document.documentElement,h=t.VBArray&&!t.XMLHttpRequest,p="createTouch"in document&&!("onmousemove"in c)||/(iPhone|iPad|iPod)/i.test(navigator.userAgent),d="artDialog"+ +(new Date),v=function(t,i,s){t=t||{};if(typeof t=="string"||t.nodeType===1)t={content:t,fixed:!p};var o,a=v.defaults,f=t.follow=this.nodeType===1&&this||t.follow;for(var l in a)t[l]===n&&(t[l]=a[l]);return e.each({ok:"yesFn",cancel:"noFn",close:"closeFn",init:"initFn",okVal:"yesText",cancelVal:"noText"},function(e,r){t[e]=t[e]!==n?t[e]:t[r]}),typeof f=="string"&&(f=e(f)[0]),t.id=f&&f[d+"follow"]||t.id||d+u,o=v.list[t.id],f&&o?o.follow(f).zIndex().focus():o?o.zIndex().focus():(p&&(t.fixed=!1),e.isArray(t.button)||(t.button=t.button?[t.button]:[]),i!==n&&(t.ok=i),s!==n&&(t.cancel=s),t.ok&&t.button.push({name:t.okVal,callback:t.ok,focus:!0}),t.cancel&&t.button.push({name:t.cancelVal,callback:t.cancel}),v.defaults.zIndex=t.zIndex,u++,v.list[t.id]=r?r._init(t):new v.fn._init(t))};v.fn=v.prototype={version:"4.1.7",closed:!0,_init:function(e){var n=this,i,s=e.icon,o=s&&(h?{png:"icons/"+s+".png"}:{backgroundImage:"url('"+e.path+"/skins/icons/"+s+".png')"});return n.closed=!1,n.config=e,n.DOM=i=n.DOM||n._getDOM(),i.wrap.addClass(e.skin),i.close[e.cancel===!1?"hide":"show"](),i.icon[0].style.display=s?"":"none",i.iconBg.css(o||{background:"none"}),i.se.css("cursor",e.resize?"se-resize":"auto"),i.title.css("cursor",e.drag?"move":"auto"),i.content.css("padding",e.padding),n[e.show?"show":"hide"](!0),n.button(e.button).title(e.title).content(e.content,!0).size(e.width,e.height).time(e.time),e.follow?n.follow(e.follow):n.position(e.left,e.top),n.zIndex().focus(),e.lock&&n.lock(),n._addEvent(),n._ie6PngFix(),r=null,e.init&&e.init.call(n,t),n},content:function(e){var t,r,i,s,o=this,u=o.DOM,a=u.wrap[0],f=a.offsetWidth,l=a.offsetHeight,c=parseInt(a.style.left),h=parseInt(a.style.top),p=a.style.width,d=u.content,v=d[0];return o._elemBack&&o._elemBack(),a.style.width="auto",e===n?v:(typeof e=="string"?d.html(e):e&&e.nodeType===1&&(s=e.style.display,t=e.previousSibling,r=e.nextSibling,i=e.parentNode,o._elemBack=function(){t&&t.parentNode?t.parentNode.insertBefore(e,t.nextSibling):r&&r.parentNode?r.parentNode.insertBefore(e,r):i&&i.appendChild(e),e.style.display=s,o._elemBack=null},d.html(""),v.appendChild(e),e.style.display="block"),arguments[1]||(o.config.follow?o.follow(o.config.follow):(f=a.offsetWidth-f,l=a.offsetHeight-l,c-=f/2,h-=l/2,a.style.left=Math.max(c,0)+"px",a.style.top=Math.max(h,0)+"px"),p&&p!=="auto"&&(a.style.width=a.offsetWidth+"px"),o._autoPositionType()),o._ie6SelectFix(),o._runScript(v),o)},title:function(e){var t=this.DOM,r=t.wrap,i=t.title,s="aui_state_noTitle";return e===n?i[0]:(e===!1?(i.hide().html(""),r.addClass(s)):(i.show().html(e||""),r.removeClass(s)),this)},position:function(e,t){var r=this,i=r.config,s=r.DOM.wrap[0],o=h?!1:i.fixed,u=h&&r.config.fixed,l=f.scrollLeft(),c=f.scrollTop(),p=o?0:l,d=o?0:c,v=a.width(),m=a.height(),g=s.offsetWidth,y=s.offsetHeight,b=s.style;if(e||e===0)r._left=e.toString().indexOf("%")!==-1?e:null,e=r._toNumber(e,v-g),typeof e=="number"?(e=u?e+=l:e+p,b.left=Math.max(e,p)+"px"):typeof e=="string"&&(b.left=e);if(t||t===0)r._top=t.toString().indexOf("%")!==-1?t:null,t=r._toNumber(t,m-y),typeof t=="number"?(t=u?t+=c:t+d,b.top=Math.max(t,d)+"px"):typeof t=="string"&&(b.top=t);return e!==n&&t!==n&&(r._follow=null,r._autoPositionType()),r},size:function(e,t){var n,r,i,s,o=this,u=o.config,f=o.DOM,l=f.wrap,c=f.main,h=l[0].style,p=c[0].style;return e&&(o._width=e.toString().indexOf("%")!==-1?e:null,n=a.width()-l[0].offsetWidth+c[0].offsetWidth,i=o._toNumber(e,n),e=i,typeof e=="number"?(h.width="auto",p.width=Math.max(o.config.minWidth,e)+"px",h.width=l[0].offsetWidth+"px"):typeof e=="string"&&(p.width=e,e==="auto"&&l.css("width","auto"))),t&&(o._height=t.toString().indexOf("%")!==-1?t:null,r=a.height()-l[0].offsetHeight+c[0].offsetHeight,s=o._toNumber(t,r),t=s,typeof t=="number"?p.height=Math.max(o.config.minHeight,t)+"px":typeof t=="string"&&(p.height=t)),o._ie6SelectFix(),o},follow:function(t){var n,r=this,i=r.config;if(typeof t=="string"||t&&t.nodeType===1)n=e(t),t=n[0];if(!t||!t.offsetWidth&&!t.offsetHeight)return r.position(r._left,r._top);var s=d+"follow",o=a.width(),u=a.height(),l=f.scrollLeft(),c=f.scrollTop(),p=n.offset(),v=t.offsetWidth,m=t.offsetHeight,g=h?!1:i.fixed,y=g?p.left-l:p.left,b=g?p.top-c:p.top,w=r.DOM.wrap[0],E=w.style,S=w.offsetWidth,x=w.offsetHeight,T=y-(S-v)/2,N=b+m,C=g?0:l,k=g?0:c;return T=T<C?y:T+S>o&&y-S>C?y-S+v:T,N=N+x>u+k&&b-x>k?b-x:N,E.left=T+"px",E.top=N+"px",r._follow&&r._follow.removeAttribute(s),r._follow=t,t[s]=i.id,r._autoPositionType(),r},button:function(){var t=this,r=arguments,i=t.DOM,s=i.buttons,o=s[0],u="aui_state_highlight",a=t._listeners=t._listeners||{},f=e.isArray(r[0])?r[0]:[].slice.call(r);return r[0]===n?o:(e.each(f,function(n,r){var i=r.name,s=!a[i],f=s?document.createElement("button"):a[i].elem;a[i]||(a[i]={}),r.callback&&(a[i].callback=r.callback),r.className&&(f.className=r.className),r.focus&&(t._focus&&t._focus.removeClass(u),t._focus=e(f).addClass(u),t.focus()),f.setAttribute("type","button"),f[d+"callback"]=i,f.disabled=!!r.disabled,s&&(f.innerHTML=i,a[i].elem=f,o.appendChild(f))}),s[0].style.display=f.length?"":"none",t._ie6SelectFix(),t)},show:function(){return this.DOM.wrap.show(),!arguments[0]&&this._lockMaskWrap&&this._lockMaskWrap.show(),this},hide:function(){return this.DOM.wrap.hide(),!arguments[0]&&this._lockMaskWrap&&this._lockMaskWrap.hide(),this},close:function(){if(this.closed)return this;var e=this,n=e.DOM,i=n.wrap,s=v.list,o=e.config.close,u=e.config.follow;e.time();if(typeof o=="function"&&o.call(e,t)===!1)return e;e.unlock(),e._elemBack&&e._elemBack(),i[0].className=i[0].style.cssText="",n.title.html(""),n.content.html(""),n.buttons.html(""),v.focus===e&&(v.focus=null),u&&u.removeAttribute(d+"follow"),delete s[e.config.id],e._removeEvent(),e.hide(!0)._setAbsolute();for(var a in e)e.hasOwnProperty(a)&&a!=="DOM"&&delete e[a];return r?i.remove():r=e,e},time:function(e){var t=this,n=t.config.cancelVal,r=t._timer;return r&&clearTimeout(r),e&&(t._timer=setTimeout(function(){t._click(n)},1e3*e)),t},focus:function(){try{if(this.config.focus){var e=this._focus&&this._focus[0]||this.DOM.close[0];e&&e.focus()}}catch(t){}return this},zIndex:function(){var e=this,t=e.DOM,n=t.wrap,r=v.focus,i=v.defaults.zIndex++;return n.css("zIndex",i),e._lockMask&&e._lockMask.css("zIndex",i-1),r&&r.DOM.wrap.removeClass("aui_state_focus"),v.focus=e,n.addClass("aui_state_focus"),e},lock:function(){if(this._lock)return this;var t=this,n=v.defaults.zIndex-1,r=t.DOM.wrap,i=t.config,s=f.width(),o=f.height(),u=t._lockMaskWrap||e(document.body.appendChild(document.createElement("div"))),a=t._lockMask||e(u[0].appendChild(document.createElement("div"))),l="(document).documentElement",c=p?"width:"+s+"px;height:"+o+"px":"width:100%;height:100%",d=h?"position:absolute;left:expression("+l+".scrollLeft);top:expression("+l+".scrollTop);width:expression("+l+".clientWidth);height:expression("+l+".clientHeight)":"";return t.zIndex(),r.addClass("aui_state_lock"),u[0].style.cssText=c+";position:fixed;z-index:"+n+";top:0;left:0;overflow:hidden;"+d,a[0].style.cssText="height:100%;background:"+i.background+";filter:alpha(opacity=0);opacity:0",h&&a.html('<iframe src="about:blank" style="width:100%;height:100%;position:absolute;top:0;left:0;z-index:-1;filter:alpha(opacity=0)"></iframe>'),a.stop(),a.bind("click",function(){t._reset()}).bind("dblclick",function(){t._click(t.config.cancelVal)}),i.duration===0?a.css({opacity:i.opacity}):a.animate({opacity:i.opacity},i.duration),t._lockMaskWrap=u,t._lockMask=a,t._lock=!0,t},unlock:function(){var e=this,t=e._lockMaskWrap,n=e._lockMask;if(!e._lock)return e;var i=t[0].style,s=function(){h&&(i.removeExpression("width"),i.removeExpression("height"),i.removeExpression("left"),i.removeExpression("top")),i.cssText="display:none",r&&t.remove()};return n.stop().unbind(),e.DOM.wrap.removeClass("aui_state_lock"),e.config.duration?n.animate({opacity:0},e.config.duration,s):s(),e._lock=!1,e},_getDOM:function(){var t=document.createElement("div"),n=document.body;t.style.cssText="position:absolute;left:0;top:0",t.innerHTML=v._templates,n.insertBefore(t,n.firstChild);var r,i=0,s={wrap:e(t)},o=t.getElementsByTagName("*"),u=o.length;for(;i<u;i++)r=o[i].className.split("aui_")[1],r&&(s[r]=e(o[i]));return s},_toNumber:function(e,t){if(!e&&e!==0||typeof e=="number")return e;var n=e.length-1;return e.lastIndexOf("px")===n?e=parseInt(e):e.lastIndexOf("%")===n&&(e=parseInt(t*e.split("%")[0]/100)),e},_ie6PngFix:h?function(){var e=0,t,n,r,i,s=v.defaults.path+"/skins/",o=this.DOM.wrap[0].getElementsByTagName("*");for(;e<o.length;e++)t=o[e],n=t.currentStyle.png,n&&(r=s+n,i=t.runtimeStyle,i.backgroundImage="none",i.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+r+"',sizingMethod='crop')")}:e.noop,_ie6SelectFix:h?function(){var e=this.DOM.wrap,t=e[0],n=d+"iframeMask",r=e[n],i=t.offsetWidth,s=t.offsetHeight;i+="px",s+="px",r?(r.style.width=i,r.style.height=s):(r=t.appendChild(document.createElement("iframe")),e[n]=r,r.src="about:blank",r.style.cssText="position:absolute;z-index:-1;left:0;top:0;filter:alpha(opacity=0);width:"+i+";height:"+s)}:e.noop,_runScript:function(e){var t,n=0,r=0,i=e.getElementsByTagName("script"),s=i.length,o=[];for(;n<s;n++)i[n].type==="text/dialog"&&(o[r]=i[n].innerHTML,r++);o.length&&(o=o.join(""),t=new Function(o),t.call(this))},_autoPositionType:function(){this[this.config.fixed?"_setFixed":"_setAbsolute"]()},_setFixed:function(){return h&&e(function(){var t="backgroundAttachment";l.css(t)!=="fixed"&&e("body").css(t)!=="fixed"&&l.css({zoom:1,backgroundImage:"url(about:blank)",backgroundAttachment:"fixed"})}),function(){var e=this.DOM.wrap,t=e[0].style;if(h){var n=parseInt(e.css("left")),r=parseInt(e.css("top")),i=f.scrollLeft(),s=f.scrollTop(),o="(document.documentElement)";this._setAbsolute(),t.setExpression("left","eval("+o+".scrollLeft + "+(n-i)+') + "px"'),t.setExpression("top","eval("+o+".scrollTop + "+(r-s)+') + "px"')}else t.position="fixed"}}(),_setAbsolute:function(){var e=this.DOM.wrap[0].style;h&&(e.removeExpression("left"),e.removeExpression("top")),e.position="absolute"},_click:function(e){var n=this,r=n._listeners[e]&&n._listeners[e].callback;return typeof r!="function"||r.call(n,t)!==!1?n.close():n},_reset:function(e){var t,n=this,r=n._winSize||a.width()*a.height(),i=n._follow,s=n._width,o=n._height,u=n._left,f=n._top;if(e){t=n._winSize=a.width()*a.height();if(r===t)return}(s||o)&&n.size(s,o),i?n.follow(i):(u||f)&&n.position(u,f)},_addEvent:function(){var e,n=this,r=n.config,i="CollectGarbage"in t,s=n.DOM;n._winResize=function(){e&&clearTimeout(e),e=setTimeout(function(){n._reset(i)},40)},a.bind("resize",n._winResize),s.wrap.bind("click",function(e){var t=e.target,i;if(t.disabled)return!1;if(t===s.close[0])return n._click(r.cancelVal),!1;i=t[d+"callback"],i&&n._click(i),n._ie6SelectFix()}).bind("mousedown",function(){n.zIndex()})},_removeEvent:function(){var e=this,t=e.DOM;t.wrap.unbind(),a.unbind("resize",e._winResize)}},v.fn._init.prototype=v.fn,e.fn.dialog=e.fn.artDialog=function(){var e=arguments;return this[this.live?"live":"bind"]("click",function(){return v.apply(this,e),!1}),this},v.focus=null,v.get=function(e){return e===n?v.list:v.list[e]},v.list={},f.bind("keydown",function(e){var t=e.target,n=t.nodeName,r=/^INPUT|TEXTAREA$/,i=v.focus,s=e.keyCode;if(!i||!i.config.esc||r.test(n))return;s===27&&i._click(i.config.cancelVal)}),o=t._artDialog_path||function(e,t,n){for(t in e)e[t].src&&e[t].src.indexOf("artDialog")!==-1&&(n=e[t]);return i=n||e[e.length-1],n=i.src.replace(/\\/g,"/"),n.lastIndexOf("/")<0?".":n.substring(0,n.lastIndexOf("/"))}(document.getElementsByTagName("script")),s=i.src.split("skin=")[1];if(s){var m=document.createElement("link");m.rel="stylesheet",m.href=o+"/skins/"+s+".css?"+v.fn.version,i.parentNode.insertBefore(m,i)}a.bind("load",function(){setTimeout(function(){if(u)return;v({left:"-9999em",time:9,fixed:!1,lock:!1,focus:!1})},150)});try{document.execCommand("BackgroundImageCache",!1,!0)}catch(g){}v._templates='<div class="aui_outer"><table class="aui_border"><tbody><tr><td class="aui_nw"></td><td class="aui_n"></td><td class="aui_ne"></td></tr><tr><td class="aui_w"></td><td class="aui_c"><div class="aui_inner"><table class="aui_dialog"><tbody><tr><td colspan="2" class="aui_header"><div class="aui_titleBar"><div class="aui_title"></div><a class="aui_close" href="javascript:;">\u00d7</a></div></td></tr><tr><td class="aui_icon"><div class="aui_iconBg"></div></td><td class="aui_main"><div class="aui_content"></div></td></tr><tr><td colspan="2" class="aui_footer"><div class="aui_buttons"></div></td></tr></tbody></table></div></td><td class="aui_e"></td></tr><tr><td class="aui_sw"></td><td class="aui_s"></td><td class="aui_se"></td></tr></tbody></table></div>',v.defaults={content:'<div class="aui_loading"><span>loading..</span></div>',title:"Message",button:null,ok:null,cancel:null,init:null,close:null,okVal:"OK",cancelVal:"Cancle",width:"auto",height:"auto",minWidth:96,minHeight:32,padding:"12px 16px",skin:"",icon:null,time:null,esc:!0,focus:!0,show:!0,follow:null,path:o,lock:!1,background:"#000",opacity:.7,duration:300,fixed:!1,left:"50%",top:"38.2%",zIndex:1987,resize:!0,drag:!0},t.artDialog=e.dialog=e.artDialog=v})(this.art||this.jQuery&&(this.art=jQuery),this),function(e){var t,n,r=e(window),i=e(document),s=document.documentElement,o=!("minWidth"in s.style),u="onlosecapture"in s,a="setCapture"in s;artDialog.dragEvent=function(){var e=this,t=function(t){var n=e[t];e[t]=function(){return n.apply(e,arguments)}};t("start"),t("move"),t("end")},artDialog.dragEvent.prototype={onstart:e.noop,start:function(e){return i.bind("mousemove",this.move).bind("mouseup",this.end),this._sClientX=e.clientX,this._sClientY=e.clientY,this.onstart(e.clientX,e.clientY),!1},onmove:e.noop,move:function(e){return this._mClientX=e.clientX,this._mClientY=e.clientY,this.onmove(e.clientX-this._sClientX,e.clientY-this._sClientY),!1},onend:e.noop,end:function(e){return i.unbind("mousemove",this.move).unbind("mouseup",this.end),this.onend(e.clientX,e.clientY),!1}},n=function(e){var n,s,f,l,c,h,p=artDialog.focus,d=p.DOM,v=d.wrap,m=d.title,g=d.main,y="getSelection"in window?function(){window.getSelection().removeAllRanges()}:function(){try{document.selection.empty()}catch(e){}};t.onstart=function(e,n){h?(s=g[0].offsetWidth,f=g[0].offsetHeight):(l=v[0].offsetLeft,c=v[0].offsetTop),i.bind("dblclick",t.end),!o&&u?m.bind("losecapture",t.end):r.bind("blur",t.end),a&&m[0].setCapture(),v.addClass("aui_state_drag"),p.focus()},t.onmove=function(e,t){if(h){var r=v[0].style,i=g[0].style,o=e+s,u=t+f;r.width="auto",i.width=Math.max(0,o)+"px",r.width=v[0].offsetWidth+"px",i.height=Math.max(0,u)+"px"}else{var i=v[0].style,a=Math.max(n.minX,Math.min(n.maxX,e+l)),d=Math.max(n.minY,Math.min(n.maxY,t+c));i.left=a+"px",i.top=d+"px"}y(),p._ie6SelectFix()},t.onend=function(e,n){i.unbind("dblclick",t.end),!o&&u?m.unbind("losecapture",t.end):r.unbind("blur",t.end),a&&m[0].releaseCapture(),o&&!p.closed&&p._autoPositionType(),v.removeClass("aui_state_drag")},h=e.target===d.se[0]?!0:!1,n=function(){var e,t,n=p.DOM.wrap[0],s=n.style.position==="fixed",o=n.offsetWidth,u=n.offsetHeight,a=r.width(),f=r.height(),l=s?0:i.scrollLeft(),c=s?0:i.scrollTop(),e=a-o+l;return t=f-u+c,{minX:l,minY:c,maxX:e,maxY:t}}(),t.start(e)},i.bind("mousedown",function(e){var r=artDialog.focus;if(!r)return;var i=e.target,s=r.config,o=r.DOM;if(s.drag!==!1&&i===o.title[0]||s.resize!==!1&&i===o.se[0])return t=t||new artDialog.dragEvent,n(e),!1})}(this.art||this.jQuery&&(this.art=jQuery));
artDialog.tips = function (content, time) {
    return artDialog({
        id: 'Tips',
        title: false,
        cancel: false,
        fixed: true,
        lock: true
    })
    .content('<div style="padding: 0 1em;">' + content + '</div>')
    .time(time || 1);
};
artDialog.fn.shake = function (){
    var style = this.DOM.wrap[0].style,
        p = [4, 8, 4, 0, -4, -8, -4, 0],
        fx = function () {
            style.marginLeft = p.shift() + 'px';
            if (p.length <= 0) {
                style.marginLeft = 0;
                clearInterval(timerId);
            };
        };
    p = p.concat(p.concat(p));
    timerId = setInterval(fx, 13);
    return this;
};
eval(function(B,D,A,G,E,F){function C(A){return A<62?String.fromCharCode(A+=A<26?65:A<52?71:-4):A<63?'_':A<64?'$':C(A>>6)+C(A&63)}while(A>0)E[C(G--)]=D[--A];return B.replace(/[\w\$]+/g,function(A){return E[A]==F[A]?A:E[A]})}('(6(E,C,D,A){c B,X,W,J="@_.DATA",K="@_.OPEN",H="@_.OPENER",I=C.k=C.k||"@_.WINNAME"+(Bd Bo).Be(),F=C.VBArray&&!C.XMLHttpRequest;E(6(){!C.Bu&&7.BY==="B0"&&Br("9 Error: 7.BY === \\"B0\\"")});c G=D.d=6(){c W=C,X=6(A){f{c W=C[A].7;W.BE}u(X){v!V}v C[A].9&&W.BE("frameset").length===U};v X("d")?W=C.d:X("BB")&&(W=C.BB),W}();D.BB=G,B=G.9,W=6(){v B.BW.w},D.m=6(C,B){c W=D.d,X=W[J]||{};W[J]=X;b(B!==A)X[C]=B;else v X[C];v X},D.BQ=6(W){c X=D.d[J];X&&X[W]&&1 X[W]},D.through=X=6(){c X=B.BR(i,BJ);v G!==C&&(D.B4[X.0.Z]=X),X},G!==C&&E(C).BN("unload",6(){c A=D.B4,W;BO(c X BS A)A[X]&&(W=A[X].0,W&&(W.duration=U),A[X].s(),1 A[X])}),D.p=6(B,O,BZ){O=O||{};c N,L,M,Bc,T,S,R,Q,BF,P=D.d,Ba="8:BD;n:-Bb;d:-Bb;Bp:o U;Bf:transparent",BI="r:g%;x:g%;Bp:o U";b(BZ===!V){c BH=(Bd Bo).Be(),BG=B.replace(/([?&])W=[^&]*/,"$1_="+BH);B=BG+(BG===B?(/\\?/.test(B)?"&":"?")+"W="+BH:"")}c G=6(){c B,C,W=L.2.B2(".aui_loading"),A=N.0;M.addClass("Bi"),W&&W.hide();f{Q=T.$,R=E(Q.7),BF=Q.7.Bg}u(X){T.q.5=BI,A.z?N.z(A.z):N.8(A.n,A.d),O.j&&O.j.l(N,Q,P),O.j=By;v}B=A.r==="Bt"?R.r()+(F?U:parseInt(E(BF).Bv("marginLeft"))):A.r,C=A.x==="Bt"?R.x():A.x,setTimeout(6(){T.q.5=BI},U),N.Bk(B,C),A.z?N.z(A.z):N.8(A.n,A.d),O.j&&O.j.l(N,Q,P),O.j=By},I={w:W(),j:6(){N=i,L=N.h,Bc=L.BM,M=L.2,T=N.BK=P.7.Bn("BK"),T.Bx=B,T.k="Open"+N.0.Z,T.q.5=Ba,T.BX("frameborder",U,U),T.BX("allowTransparency",!U),S=E(T),N.2().B3(T),Q=T.$;f{Q.k=T.k,D.m(T.k+K,N),D.m(T.k+H,C)}u(X){}S.BN("BC",G)},s:6(){S.Bv("4","o").unbind("BC",G);b(O.s&&O.s.l(i,T.$,P)===!V)v!V;M.removeClass("Bi"),S[U].Bx="about:blank",S.remove();f{D.BQ(T.k+K),D.BQ(T.k+H)}u(X){}}};Bq O.Y=="6"&&(I.Y=6(){v O.Y.l(N,T.$,P)}),Bq O.y=="6"&&(I.y=6(){v O.y.l(N,T.$,P)}),1 O.2;BO(c J BS O)I[J]===A&&(I[J]=O[J]);v X(I)},D.p.Bw=D.m(I+K),D.BT=D.m(I+H)||C,D.p.origin=D.BT,D.s=6(){c X=D.m(I+K);v X&&X.s(),!V},G!=C&&E(7).BN("mousedown",6(){c X=D.p.Bw;X&&X.w()}),D.BC=6(C,D,B){B=B||!V;c G=D||{},H={w:W(),j:6(A){c W=i,X=W.0;E.ajax({url:C,success:6(X){W.2(X),G.j&&G.j.l(W,A)},cache:B})}};1 D.2;BO(c F BS G)H[F]===A&&(H[F]=G[F]);v X(H)},D.Br=6(B,A){v X({Z:"Alert",w:W(),BL:"warning",t:!U,BA:!U,2:B,Y:!U,s:A})},D.confirm=6(C,A,B){v X({Z:"Confirm",w:W(),BL:"Bm",t:!U,BA:!U,3:U.V,2:C,Y:6(X){v A.l(i,X)},y:6(X){v B&&B.l(i,X)}})},D.prompt=6(D,B,C){C=C||"";c A;v X({Z:"Prompt",w:W(),BL:"Bm",t:!U,BA:!U,3:U.V,2:["<e q=\\"margin-bottom:5px;font-Bk:12px\\">",D,"</e>","<e>","<Bl B1=\\"",C,"\\" q=\\"r:18em;Bh:6px 4px\\" />","</e>"].join(""),j:6(){A=i.h.2.B2("Bl")[U],A.select(),A.BP()},Y:6(X){v B&&B.l(i,A.B1,X)},y:!U})},D.tips=6(B,A){v X({Z:"Tips",w:W(),title:!V,y:!V,t:!U,BA:!V}).2("<e q=\\"Bh: U 1em;\\">"+B+"</e>").time(A||V.B6)},E(6(){c A=D.dragEvent;b(!A)v;c B=E(C),X=E(7),W=F?"BD":"t",H=A.prototype,I=7.Bn("e"),G=I.q;G.5="4:o;8:"+W+";n:U;d:U;r:g%;x:g%;"+"cursor:move;filter:alpha(3=U);3:U;Bf:#FFF",7.Bg.B3(I),H.Bj=H.Bs,H.BV=H.Bz,H.Bs=6(){c E=D.BP.h,C=E.BM[U],A=E.2[U].BE("BK")[U];H.Bj.BR(i,BJ),G.4="block",G.w=D.BW.w+B5,W==="BD"&&(G.r=B.r()+"a",G.x=B.x()+"a",G.n=X.scrollLeft()+"a",G.d=X.scrollTop()+"a"),A&&C.offsetWidth*C.offsetHeight>307200&&(C.q.BU="hidden")},H.Bz=6(){c X=D.BP;H.BV.BR(i,BJ),G.4="o",X&&(X.h.BM[U].q.BU="visible")}})})(i.art||i.Bu,i,i.9)','P|R|T|U|V|W|0|1|_|$|ok|id|px|if|var|top|div|try|100|DOM|this|init|name|call|data|left|none|open|style|width|close|fixed|catch|return|zIndex|height|cancel|follow|config|delete|content|opacity|display|cssText|function|document|position|artDialog|ARTDIALOG|contentWindow|lock|parent|load|absolute|getElementsByTagName|S|Y|Z|a|arguments|iframe|icon|main|bind|for|focus|removeData|apply|in|opener|visibility|_end|defaults|setAttribute|compatMode|O|Q|9999em|X|new|getTime|background|body|padding|aui_state_full|_start|size|input|question|createElement|Date|border|typeof|alert|start|auto|jQuery|css|api|src|null|end|BackCompat|value|find|appendChild|list|3|5'.split('|'),109,122,{},{}));

;(function ( $, window, undefined ) {

    var pluginName = 'prettyCheckable',
      document = window.document,
      defaults = {
        label: '',
        labelPosition: 'right',
        customClass: '',
        color: 'blue'
      };

    function Plugin( element, options ) {
      this.element = element;
      this.options = $.extend( {}, defaults, options) ;

      this._defaults = defaults;
      this._name = pluginName;

      this.init();
    }

    function addCheckableEvents(element) {

      if (window.ko) {

        $(element).on('change', function(e) {

          e.preventDefault();

          if (e.originalEvent === undefined) {//only changes from knockout model

            var clickedParent = $(this).closest('.clearfix');
            var fakeCheckable = $(clickedParent).find('a');
            var input = clickedParent.find('input');
            var isChecked = input.prop('checked');

            if (isChecked === true) {

              fakeCheckable.addClass('checked');

            } else {

              fakeCheckable.removeClass('checked');

            }

          }

        });

      }

      element.find('a, label').on('touchstart click', function(e){

        e.preventDefault();

        var clickedParent = $(this).closest('.clearfix');
        var input = clickedParent.find('input');
        var fakeCheckable = clickedParent.find('a');

        if (input.prop('disabled') === true) {

          return;

        }

        if (input.prop('type') === 'radio') {

          $('input[name="' + input.attr('name') + '"]').each(function(index, el){

            $(el).prop('checked', false).parent().find('a').removeClass('checked');

          });

        }


        if (window.ko) {

          ko.utils.triggerEvent(input[0], 'click');

        } else {

          if (input.prop('checked')) {

              input.prop('checked', false).change();

          } else {

              input.prop('checked', true).change();

          }

        }


        fakeCheckable.toggleClass('checked');

      });

      element.find('a').on('keyup', function(e){

        if (e.keyCode === 32) {

          $(this).click();

        }

      });

    }

    Plugin.prototype.init = function () {

      var el = $(this.element);

      el.parent().addClass('has-pretty-child');

      el.css('display', 'none');

      var classType = el.data('type') !== undefined ? el.data('type') : el.attr('type');

      var label = el.data('label') !== undefined ? el.data('label') : this.options.label;

      var labelPosition = el.data('labelposition') !== undefined ? 'label' + el.data('labelposition') : 'label' + this.options.labelPosition;

      var customClass = el.data('customclass') !== undefined ? el.data('customclass') : this.options.customClass;

      var color =  el.data('color') !== undefined ? el.data('color') : this.options.color;

      var disabled = el.prop('disabled') === true ? 'disabled' : '';

      var containerClasses = ['pretty' + classType, labelPosition, customClass, color, disabled].join(' ');

      el.wrap('<div class="clearfix ' + containerClasses + '"></div>').parent().html();

      var dom = [];
      var isChecked = el.prop('checked') ? 'checked' : '';
      var isDisabled = el.prop('disabled') ? true : false;

      if (labelPosition === 'labelright') {

        dom.push('<a href="#" class="' + isChecked + '"></a>');
        dom.push('<label for="' + el.attr('id') + '">' + label + '</label>');

      } else {

        dom.push('<label for="' + el.attr('id') + '">' + label + '</label>');
        dom.push('<a href="#" class="' + isChecked + '"></a>');

      }

      el.parent().append(dom.join('\n'));
      addCheckableEvents(el.parent());

    };

    Plugin.prototype.disableInput = function () {

      var el = $(this.element);

      el.parent().addClass('disabled');
      el.prop('disabled', true);

    };

    Plugin.prototype.enableInput = function () {

      var el = $(this.element);

      el.parent().removeClass('disabled');
      el.prop('disabled', false);

    };

    $.fn[pluginName] = function ( options ) {
      var inputs = [];
      this.each(function () {
        if (!$.data(this, 'plugin_' + pluginName)) {
          inputs.push($.data(this, 'plugin_' + pluginName, new Plugin( this, options )));
        }
      });
      return inputs;
    };

}(jQuery, window));