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
<a href="{if $logged}javascript:;{else}{$link->getPageLink('my-account', true)|escape:'html'}{/if}" title="{l s='Add to Wishlist' mod='stthemeeditor'}" class="add_to_wishlist" {if $logged}onclick="WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', '', 1,this); return false;"{/if} rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span>{l s='Add to Wishlist' mod='stthemeeditor'}</span></a>
