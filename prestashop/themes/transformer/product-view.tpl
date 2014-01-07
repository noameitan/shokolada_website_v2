{*
* 2007-2012 PrestaShop
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
*  @copyright  2007-2012 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($cook_veiwmode) && $cook_veiwmode!=''}
    {assign var='viewmode' value=$cook_veiwmode}
{else}
    {assign var='viewmode' value='grid_view'}
{/if}
<div class="viewmode fl clearfix">
    <a href="javascript:;" rel="nofollow" class="grid_view {if $viewmode == 'grid_view'} active {/if}" title="{l s='Grid view'}"><i class="icon-th icon-mar-lr2"></i></a>
    <a href="javascript:;" rel="nofollow" class="list_view {if $viewmode == 'list_view'} active {/if}" title="{l s='List view'}"><i class="icon-th-list icon-mar-lr2"></i></a>
</div>