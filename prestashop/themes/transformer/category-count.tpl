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
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if (isset($category) && $category->id == 1) OR $nb_products == 0}
	{l s='There are no products in this category'}
{else}
    {math equation="($p>1 ? ($p-1)*$n : 1)" assign="nb_product_start" }  
    {math equation="($p*$n>=$nb_products ? $nb_products : $p*$n)" assign="nb_product_stop" }  
	{if $nb_products == 1}
		{l s='Item %1$d to %2$d of %3$d total' sprintf=[$nb_product_start,$nb_product_stop,$nb_products]}
	{else}
		{l s='Items %1$d to %2$d of %3$d total' sprintf=[$nb_product_start,$nb_product_stop,$nb_products]}
	{/if}
{/if}