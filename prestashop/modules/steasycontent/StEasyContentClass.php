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

class StEasyContentClass extends ObjectModel
{
	/** @var integer reinsurance id*/
	public $id;
	
	/** @var integer */
	public $location;
    
	/** @var integer */
	public $span;
    
	/** @var bool*/
	public $hide_on_mobile;
    
	/** @var bool*/
	public $active;
	
	/** @var integer */
	public $position;
    
	/** @var string banner title*/
	public $title;

	/** @var string banner url*/
	public $url;

	/** @var string reinsurance text*/
	public $text;

	/**
	 * @see ObjectModel::$definition
	 */
	public static $definition = array(
		'table'     => 'st_easy_content',
		'primary'   => 'id_st_easy_content',
		//'multilang_shop' => true,
		'multilang' => true,
		'fields'    => array(
			'location' => array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt'),
			'span' => array('type' => self::TYPE_INT),
			'hide_on_mobile'   => array('type' => self::TYPE_BOOL, 'validate' => 'isBool'),
			'active'   => array('type' => self::TYPE_BOOL, 'validate' => 'isBool'),
			'position' => array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt'),
			// Lang fields
			'url'      => array('type' => self::TYPE_STRING, 'lang' => true,'validate' => 'isGenericName',  'size' => 255),
			'text'     => array('type' => self::TYPE_HTML, 'lang' => true, 'validate' => 'isAnything', 'required' => true),
			'title'    => array('type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isGenericName', 'size' => 255),
		)
	);
    
    public function delete()
    {
        $multi = Db::getInstance()->getValue('
			SELECT count(0) 
			FROM `'._DB_PREFIX_.'st_easy_content_shop`
			WHERE id_st_easy_content='.$this->id
        );
        if($multi>1)
        {
            return Db::getInstance()->execute('
    			DELETE  
    			FROM `'._DB_PREFIX_.'st_easy_content_shop`
    			WHERE id_st_easy_content='.$this->id.Shop::addSqlRestrictionOnLang()
            );
        }
        else
    		return parent::delete();
    }
	public static function getListContent($id_lang,$location=0,$active=0)
	{
        Shop::addTableAssociation('st_easy_content', array('type' => 'shop'));
		return  Db::getInstance()->executeS('
			SELECT sec.*, secl.`title`, secl.`url`, secl.`text`, st_easy_content_shop.`id_shop`
			FROM `'._DB_PREFIX_.'st_easy_content` sec
			'.Shop::addSqlAssociation('st_easy_content', 'sec').'
			LEFT JOIN `'._DB_PREFIX_.'st_easy_content_lang` secl ON (sec.`id_st_easy_content` = secl.`id_st_easy_content`)
			WHERE secl.`id_lang` = '.(int)$id_lang.($location ? ' AND sec.`location`='.(int)$location : '').($active ? ' AND sec.`active`=1 ' : '').'
            ORDER BY sec.`location`, sec.`position`');
	}
	public static function getById($id_lang,$id=0)
	{
        Shop::addTableAssociation('st_easy_content', array('type' => 'shop'));
		return  Db::getInstance()->executeS('
			SELECT sec.*, secl.`title`, secl.`url`, secl.`text`
			FROM `'._DB_PREFIX_.'st_easy_content` sec
			'.Shop::addSqlAssociation('st_easy_content', 'sec').'
			LEFT JOIN `'._DB_PREFIX_.'st_easy_content_lang` secl ON (sec.`id_st_easy_content` = secl.`id_st_easy_content`)
			WHERE sec.`id_st_easy_content`='.(int)$id.' AND secl.`id_lang` = '.(int)$id_lang
        );
	}
	public function copyFromPost()
	{
		/* Classical fields */
		foreach ($_POST AS $key => $value)
			if (key_exists($key, $this) AND $key != 'id_'.$this->table)
				$this->{$key} = $value;

		/* Multilingual fields */
		if (sizeof($this->fieldsValidateLang))
		{
			$languages = Language::getLanguages(false);
			foreach ($languages AS $language)
				foreach ($this->fieldsValidateLang AS $field => $validation)
					if (isset($_POST[$field.'_'.(int)($language['id_lang'])]))
						$this->{$field}[(int)($language['id_lang'])] = $_POST[$field.'_'.(int)($language['id_lang'])];
		}
	}
}