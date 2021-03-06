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

class StBannerClass extends ObjectModel
{
	/** @var integer id*/
	public $id;
	/** @var integer group id*/
	public $id_st_banner_group;
	/** @var integer currency id*/
	public $id_currency;
	/** @var string banner image*/
	public $image;
	/** @var boolen open in a new window */
	public $new_window;
	/** @var integer */
	public $active;
	/** @var integer */
	public $position;
	/** @var string banner url*/
	public $url;
	/** @var string banner title*/
	public $title;
	/** @var string banner image*/
	public $image_multi_lang;
	/**
	 * @see ObjectModel::$definition
	 */
	public static $definition = array(
		'table'     => 'st_banner',
		'primary'   => 'id_st_banner',
		'multilang' => true,
		'fields'    => array(
			'id_st_banner_group'         =>	array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true),
            'id_currency'                =>	array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt'),
			'image'                      =>	array('type' => self::TYPE_STRING, 'size' => 255),
			'new_window'                 =>	array('type' => self::TYPE_BOOL, 'validate' => 'isBool'),
			'active'                     =>	array('type' => self::TYPE_BOOL, 'validate' => 'isBool'),
			'position'                   =>	array('type' => self::TYPE_INT, 'validate' => 'isunsignedInt'),			
			// Lang fields
			'url'            =>	array('type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isAnything', 'size' => 255),
            'title'          => array('type' => self::TYPE_HTML, 'lang' => true, 'validate' => 'isCleanHtml'),
			'image_multi_lang'            =>	array('type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isAnything', 'size' => 255),
		)
	);
    public function delete()
    {
        if ($this->image && file_exists(_PS_ROOT_DIR_.$this->image))
	        @unlink(_PS_ROOT_DIR_.$this->image);
            
        if(isset($this->image_multi_lang) && count($this->image_multi_lang))
            foreach($this->image_multi_lang as $v)
                if ($v && file_exists(_PS_ROOT_DIR_.$v))
    	           @unlink(_PS_ROOT_DIR_.$v);
                   
		return parent::delete();
    }
    
	public static function getAll($id_st_banner_group, $id_lang, $active=0)
	{
	   if (!Validate::isUnsignedId($id_lang))
			die(Tools::displayError());

		return  Db::getInstance()->executeS('
			SELECT sms.*, smsl.*
			FROM `'._DB_PREFIX_.'st_banner` sms
			LEFT JOIN `'._DB_PREFIX_.'st_banner_lang` smsl ON (sms.`id_st_banner` = smsl.`id_st_banner`)
			WHERE smsl.`id_lang` = '.(int)$id_lang.' AND sms.`id_st_banner_group`='.(int)$id_st_banner_group.($active ? ' AND sms.`active`=1 ' : '').'
            ORDER BY sms.`position`
            ');
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
    public function updatePosition($way, $position)
	{
		if (!$res = Db::getInstance()->executeS('
			SELECT `id_st_banner`, `position`, `id_st_banner_group`
			FROM `'._DB_PREFIX_.'st_banner` 
			WHERE `id_st_banner_group` = '.(int)$this->id_st_banner_group.'
			ORDER BY `position` ASC'
		))
			return false;

		foreach ($res as $banner)
			if ((int)$banner['id_st_banner'] == (int)$this->id)
				$moved_banner = $banner;

		if (!isset($moved_banner) || !isset($position))
			return false;

		return (Db::getInstance()->execute('
			UPDATE `'._DB_PREFIX_.'st_banner`
			SET `position`= `position` '.($way ? '- 1' : '+ 1').'
			WHERE `position`
			'.($way
				? '> '.(int)$moved_banner['position'].' AND `position` <= '.(int)$position
				: '< '.(int)$moved_banner['position'].' AND `position` >= '.(int)$position).'
			AND `id_st_banner_group`='.(int)$moved_banner['id_st_banner_group'])
		&& Db::getInstance()->execute('
			UPDATE `'._DB_PREFIX_.'st_banner`
			SET `position` = '.(int)$position.'
			WHERE `id_st_banner` = '.(int)$moved_banner['id_st_banner']));
	}
    public function checkPosition()
    {
        $check = Db::getInstance()->getValue('
			SELECT count(0)
			FROM `'._DB_PREFIX_.'st_banner` 
			WHERE `id_st_banner_group` = '.(int)$this->id_st_banner_group.' AND `position`='.(int)$this->position.($this->id ? ' AND `id_st_banner`!='.$this->id : '')
		);
        if($check)
            return Db::getInstance()->getValue('
    			SELECT `position`+1
    			FROM `'._DB_PREFIX_.'st_banner` 
    			WHERE `id_st_banner_group` = '.(int)$this->id_st_banner_group.'
                ORDER BY `position` DESC'
    		);
        return $this->position;
    }
}