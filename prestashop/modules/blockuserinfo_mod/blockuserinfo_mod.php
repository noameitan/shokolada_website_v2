<?php
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

if (!defined('_PS_VERSION_'))
	exit;

class BlockUserInfo_mod extends Module
{
	public function __construct()
	{
		$this->name = 'blockuserinfo_mod';
		$this->tab = 'front_office_features';
		$this->version = '1.6.6';
		$this->author = 'PrestaShop';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName = $this->l('User info block mod');
		$this->description = $this->l('Adds a block that displays information about the customer.');
	}

	public function install()
	{
		return (parent::install() AND $this->registerHook('displayTopBar'));
	}

	/**
	* Returns module content for header
	*
	* @param array $params Parameters
	* @return string Content
	*/
	public function hookTop($params)
	{
		if (!$this->active)
			return;

		$this->smarty->assign(array(
			'logged' => $this->context->customer->isLogged(),
			'customerName' => ($this->context->customer->logged ? $this->context->customer->firstname.' '.$this->context->customer->lastname : false),
			'firstName' => ($this->context->customer->logged ? $this->context->customer->firstname : false),
			'lastName' => ($this->context->customer->logged ? $this->context->customer->lastname : false),
            'welcome' => ($this->context->customer->isLogged() ? Configuration::get('STSN_WELCOME_LOGGED', $this->context->language->id) : Configuration::get('STSN_WELCOME', $this->context->language->id)),
            'welcome_link' => Configuration::get('STSN_WELCOME_LINK', $this->context->language->id),
		));
		return $this->display(__FILE__, 'blockuserinfo.tpl');
	}
	public function hookDisplayTopBar($params)
	{
		return $this->hookTop($params);
	}
	public function hookDisplayTopLeft($params)
	{
		return $this->hookTop($params);
	}
}


