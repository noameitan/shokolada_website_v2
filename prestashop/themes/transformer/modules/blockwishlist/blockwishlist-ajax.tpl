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
{ldelim}
{if $products}
"products": [
{foreach from=$products item=product name=i}
{assign var='productId' value=$product.id_product}
{assign var='productAttributeId' value=$product.id_product_attribute}
{ldelim}
"id":            {$product.id_product},
"quantity":      {$product.quantity|intval},
"link":          "{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category_rewrite)|escape:'htmlall'}",
"name":          "{$product.name|html_entity_decode:2:'UTF-8'|escape:'htmlall'|truncate:26:'...':true}",
"title":         "{$product.name|escape:'htmlall':'UTF-8'}",
"text_remove":  "{l s='remove this product from my wishlist' mod='blockwishlist'}",
"id_product_attribute":{$product.id_product_attribute},
"detail_link":  "{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category_rewrite)|escape:'htmlall'}",
{if isset($product.attributes_small)}
"attributes_small": "{$product.attributes_small|escape:'htmlall':'UTF-8'}",
{else}
"attributes_small": "",
{/if}
"text_product_detail": "{l s='Product detail' mod='blockwishlist'}"
{rdelim}{if !$smarty.foreach.i.last},{/if}
{/foreach}
],
"hasError" : 2
{elseif (isset($error) && $error)}
"error" : "{l s='You must create a wishlist before adding products' mod='blockwishlist'}",
"hasError" : 1
{else}
"hasError" : 3
{/if}
{rdelim}
