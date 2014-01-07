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

<!-- Block extra tabs -->
{foreach $tabsContent as $tc}
<div id="idTab31{$tc.id_st_easy_tabs}" class="product_accordion">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <div class="product_accordion_title visible-phone">
        {$tc.title}
    </div>
	<div class="pa_content steasytabs_content">
	   {$tc.content}
	</div>
</div>
{/foreach}
<!-- /Block extra tabs -->