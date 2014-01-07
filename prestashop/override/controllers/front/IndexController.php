<?php
/*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
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
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class IndexController extends IndexControllerCore
{
	/**
	 * Assign template vars related to page content
	 * @see FrontController::initContent()
	 */
	public function initContent()
	{
		parent::initContent();
        if(!$this->display_column_left && !$this->display_column_right && !Configuration::get('STSN_DISPLAY_LEFT_HOMEPAGE'))
            $this->context->smarty->assign(array(   
    			'HOOK_HOME_SECONDARY_RIGHT' => Hook::exec('displayHomeSecondaryRight'),     
    		));
        $this->context->smarty->assign(array(
            'HOOK_HOME_SECONDARY_LEFT' => Hook::exec('displayHomeSecondaryLeft'),
            'HOOK_HOME_TOP' => Hook::exec('displayHomeTop'),
            'HOOK_HOME_BOTTOM' => Hook::exec('displayHomeBottom'),
        ));
	}
}
