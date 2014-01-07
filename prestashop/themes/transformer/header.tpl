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

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"> <![endif]-->
<html lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}
        {if isset($sttheme.responsive) && $sttheme.responsive}
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        {/if}
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="content-language" content="{$meta_language}" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
        {if isset($sttheme.icon_iphone_57) && $sttheme.icon_iphone_57}
        <link rel="apple-touch-icon" sizes="57x57" href="{$sttheme.icon_iphone_57}" />
        {/if}
        {if isset($sttheme.icon_iphone_72) && $sttheme.icon_iphone_72}
        <link rel="apple-touch-icon" sizes="72x72" href="{$sttheme.icon_iphone_72}" />
        {/if}
        {if isset($sttheme.icon_iphone_114) && $sttheme.icon_iphone_114}
        <link rel="apple-touch-icon" sizes="114x114" href="{$sttheme.icon_iphone_114}" />
        {/if}
        {if isset($sttheme.icon_iphone_144) && $sttheme.icon_iphone_144}
        <link rel="apple-touch-icon" sizes="144x144" href="{$sttheme.icon_iphone_144}" />
        {/if}
		<script type="text/javascript">
			var baseDir = '{$content_dir|addslashes}';
			var baseUri = '{$base_uri|addslashes}';
			var static_token = '{$static_token|addslashes}';
			var token = '{$token|addslashes}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>
        <!--[if lt IE 9]>
        <script type="text/javascript" src="{$js_dir}html5shiv.js"></script>
        {if isset($sttheme.responsive) && $sttheme.responsive}
        <script type="text/javascript" src="{$js_dir}css3-mediaqueries.js" ></script>
        {/if}
        <![endif]-->
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if}
{if isset($sttheme.custom_css) && $sttheme.custom_css}
	<link href="{$sttheme.custom_css}" rel="stylesheet" type="text/css" media="{$sttheme.custom_css_media}" />
{/if}
{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}
{if isset($sttheme.custom_js) && $sttheme.custom_js}
	<script type="text/javascript" src="{$sttheme.custom_js}"></script>
{/if}
        <!--[if lt IE 9]>
        <link rel="stylesheet" type="text/css" href="{$css_dir}ie8.css" media="all" />
        <script type="text/javascript" src="{$js_dir}ie8.js" ></script>
        <![endif]-->
        
		{$HOOK_HEADER}
        {if isset($sttheme.google_font_links)}{$sttheme.google_font_links}{/if}
	</head>
	
 	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'htmlall':'UTF-8'}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if $content_only} content_only{/if}">
    {if !$content_only}
	<div id="body_wrapper">
    {if isset($sttheme.boxstyle) && $sttheme.boxstyle==2}<div id="page_wrapper">{/if}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}

			<!-- Header -->
            <header id="page_header">
            {if isset($HOOK_TOP_BAR) && $HOOK_TOP_BAR}
            <section id="top_bar">
                <div class="container">
                <div class="row">
                    <div class="span12 clearfix">
                        {$HOOK_TOP_BAR}
                    </div>
                </div>
                </div>
            </section>
            {/if}
            {if isset($sttheme.logo_position) && $sttheme.logo_position}
                {assign var="logo_left_center" value=1}
            {else}
                {assign var="logo_left_center" value=0}
            {/if}
            {if isset($HOOK_TOP_LEFT)}
                {if $HOOK_TOP_LEFT}{assign var="logo_left_center" value=2}{/if}
            {else}
                {capture name="top_left"}
                    {hook h='displayTopLeft'}
                {/capture}
                {if trim($smarty.capture.top_left)}{assign var="logo_left_center" value=3}{/if}
            {/if}
			<section id="header" class="{if $logo_left_center} logo_center {/if}">
                <div class="wide_container">
                <div class="container">
                    <div class="row">
                        {if $logo_left_center}
        				<div id="header_left" class="span3 posi_rel">
                            <div id="header_left_inner" class="clearfix">{if $logo_left_center==2}{$HOOK_TOP_LEFT}{elseif $logo_left_center==3}{$smarty.capture.top_left}{/if}</div>
                        </div>
                        {/if}
                        <div id="logo_wrapper" class="{if $logo_left_center} span6 {else} span4 {/if}">
                        <div id="header_logo_inner">
        				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
        					<img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
        				</a>
                        </div>
                        </div>
        				<div id="header_right" class="{if $logo_left_center} span3 {else} span8 {/if} posi_rel">
                            <div id="header_right_inner" class="clearfix">{$HOOK_TOP}</div>
                        </div>
                    </div>
                </div>
                </div>
			</section>
            {if isset($HOOK_TOP_SECONDARY) && $HOOK_TOP_SECONDARY}
            <section id="top_extra">
                {$HOOK_TOP_SECONDARY}
            </section>
            {/if}
            </header>
            
            <div id="main_content_area">
            <!-- Main slideshow -->
            {if $page_name == 'index'}
            {hook h='displayAnywhere' function="displayMainSlide" mod='stcameraslideshow' caller='stcameraslideshow'}
            {/if}
            {if $page_name == 'module-stblog-default'}
            {hook h='displayAnywhere' function="displayBlogMainSlide" mod='stcameraslideshow' caller='stcameraslideshow'}
            {/if}
			<!--/ Main slideshow -->
            <!-- Breadcrumb -->         
            {if $page_name != 'index' 
            && $page_name != 'pagenotfound'
            && $page_name != 'module-stblog-default'
            }
            <div id="breadcrumb_wrapper" class="{if isset($sttheme.body_has_background) && $sttheme.body_has_background} wide_container {/if}"><div class="container"><div class="row">
                <div class="span12">
                {include file="$tpl_dir./breadcrumb.tpl"}
                </div>
            </div></div></div>
            {/if}
			<!--/ Breadcrumb -->
            <div class="wide_container">
			<div id="columns" class="container">
                <div class="row">
                
				<!-- Left -->
                {if !$st_hide_left_column}
				<div id="left_column" class="span3">
					{$HOOK_LEFT_COLUMN}
				</div>
                {/if}
				<!--/ Left -->
                
				<!-- Center -->
				<div id="center_column" class="{if !$st_hide_left_column && !$st_hide_right_column}span6{elseif !$st_hide_left_column || !$st_hide_right_column}span9{else}span12{/if}">
	{/if}