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

{$HOOK_HOME_TOP}
{$HOOK_HOME}
{if $HOOK_HOME_SECONDARY_LEFT || (isset($HOOK_HOME_SECONDARY_RIGHT) && $HOOK_HOME_SECONDARY_RIGHT)}
<div class="row">
    <div id="home_secondary_left" class="{if !$HOOK_LEFT_COLUMN && !$HOOK_RIGHT_COLUMN && (!isset($HOOK_HOME_SECONDARY_RIGHT) || !$HOOK_HOME_SECONDARY_RIGHT)} span12 {else} span9 {/if}">
        {$HOOK_HOME_SECONDARY_LEFT}
    </div>
    {if !$HOOK_LEFT_COLUMN && !$HOOK_RIGHT_COLUMN && (isset($HOOK_HOME_SECONDARY_RIGHT) && $HOOK_HOME_SECONDARY_RIGHT)}
    <div id="home_secondary_right" class="span3 visible-desktop">
        {$HOOK_HOME_SECONDARY_RIGHT}
    </div>
    {/if}
</div>
{/if}
{$HOOK_HOME_BOTTOM}