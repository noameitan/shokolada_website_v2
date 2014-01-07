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

<!-- Block user information module HEADER -->
<div id="header_user_info" class="clearfix {if $PS_CATALOG_MODE} header_user_catalog {/if}">
    {if $welcome}{if $welcome_link}<a href="{$welcome_link}" class="welcome" rel="nofollow">{else}<span class="welcome">{/if}{$welcome}{if $welcome_link}</a>{else}</span>{/if}{/if}
	{if $logged}
		<a href="{$link->getPageLink('my-account', true)|escape:'html'}" title="{l s='View my customer account' mod='blockuserinfo_mod'}" class="account" rel="nofollow">{$cookie->customer_firstname} {$cookie->customer_lastname}</a>
        <a href="{$link->getPageLink('my-account', true)|escape:'html'}" title="{l s='View my customer account' mod='blockuserinfo_mod'}" class="my_account_link" rel="nofollow">{l s='My Account' mod='blockuserinfo_mod'}</a>
		<a href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html'}" title="{l s='Log me out' mod='blockuserinfo_mod'}" class="logout" rel="nofollow">{l s='Log out' mod='blockuserinfo_mod'}</a>
	{else}
		<a href="{$link->getPageLink('my-account', true)|escape:'html'}" title="{l s='Login to your customer account' mod='blockuserinfo_mod'}" class="login" rel="nofollow">{l s='Login' mod='blockuserinfo_mod'}</a>
		<a href="{$link->getPageLink('my-account', true)|escape:'html'}" title="{l s='Login to your customer account' mod='blockuserinfo_mod'}" class="sing_up" rel="nofollow">{l s='Sign Up' mod='blockuserinfo_mod'}</a>
	{/if}  
</div>
<!-- /Block user information module HEADER -->
