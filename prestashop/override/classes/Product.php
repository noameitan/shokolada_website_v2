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

class Product extends ProductCore
{
    /**
	* Get product images and legends
	*
	* @param integer $id_lang Language id for multilingual legends
	* @return array Product images and legends
	*/
	public function	getImages($id_lang, Context $context = null)
	{
		if (!$context)
			$context = Context::getContext();

		$sql = 'SELECT image_shop.`cover`, i.`id_image`, il.`legend`, i.`position`
				FROM `'._DB_PREFIX_.'image` i
				'.Shop::addSqlAssociation('image', 'i').'
				LEFT JOIN `'._DB_PREFIX_.'image_lang` il ON (i.`id_image` = il.`id_image` AND il.`id_lang` = '.(int)$id_lang.')
				WHERE i.`id_product` = '.(int)$this->id.'
				ORDER BY `position`';
		return Db::getInstance()->executeS($sql);
	}

	/**
	* Get product cover image
	*
	* @return array Product cover image
	*/
	public static function getCover($id_product, Context $context = null)
	{
		if (!$context)
			$context = Context::getContext();

		$sql = 'SELECT image_shop.`id_image`
				FROM `'._DB_PREFIX_.'image` i
				'.Shop::addSqlAssociation('image', 'i').'
				WHERE i.`id_product` = '.(int)$id_product.'
				AND image_shop.`cover` = 1';
		return Db::getInstance()->getRow($sql);
	}
    //1.5.4.1
    public function getStBasePrice(Context $context = null)
    {
		if (!$context)
			$context = Context::getContext();
            
        return Db::getInstance()->getValue('SELECT product_shop.`price`
					FROM `'._DB_PREFIX_.'product` p
					'.Shop::addSqlAssociation('product', 'p').'
					WHERE p.`id_product`='.(int)$this->id
                );
    }
}

