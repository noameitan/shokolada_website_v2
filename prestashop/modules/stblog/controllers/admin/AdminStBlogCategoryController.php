<?php
require_once dirname(__FILE__).'../../../classes/StBlogCategory.php';
class AdminStBlogCategoryController extends ModuleAdminController
{
    /** @var integer Parent ID */
    protected $id_parent;
    
    /** @var Boolean MultiShop and Current in Shop */
    private $is_multishop_shop = false;
    
    protected $position_identifier = 'id_st_blog_category';
    
	public function __construct()
	{
		$this->is_Blog    = true;
		$this->table      = 'st_blog_category';
		$this->className  = 'StBlogCategory';
		$this->lang       = true;
		$this->addRowAction('view');
		$this->addRowAction('edit');
		$this->addRowAction('delete');
		$this->bulk_actions = array('delete' => array('text' => $this->l('Delete selected'), 'confirm' => $this->l('Delete selected items(all the subcategory will be deleted)?')));

		$this->fields_list = array(
		'id_st_blog_category' => array('title' => $this->l('ID'), 'align' => 'center', 'width' => 30),
		'name' => array('title' => $this->l('Name'), 'width' => 'auto', 'callback' => 'hideStBlogCategoryPosition', 'callback_object' => 'StBlogCategory'),
		'description' => array('title' => $this->l('Description'), 'width' => 500, 'maxlength' => 90, 'orderby' => false),
		'active' => array(
			'title' => $this->l('Displayed'), 'width' => 25, 'active' => 'status',
			'align' => 'center','type' => 'bool', 'orderby' => false,
		),
        'position' => array(
                'title' => $this->l('Position'),
				'width' => 70,
				'filter_key' => 'position',
				'align' => 'center',
				'position' => 'position'
        ));

        if (Shop::isFeatureActive())
            Shop::addTableAssociation($this->table, array('type' => 'shop'));
		parent::__construct();
        
        $this->id_parent = (int)Tools::getValue('id_st_blog_category', 0);
        $this->is_multishop_shop = (Shop::isFeatureActive() && Shop::getContext() == Shop::CONTEXT_SHOP);
        
        if (!$this->id_parent)
        {
            $ret = StBlogCategory::getShopCategoryRoot();
            $this->id_parent = isset($ret['id_st_blog_category']) ? (int)$ret['id_st_blog_category'] : 1;
        }
        $this->_filter = 'AND `id_parent` = '. $this->id_parent;
		$this->_select = 'a.position ';
        $this->_defaultOrderBy = 'a.position';
        
        if (!Shop::isFeatureActive() && count(Shop::getShops()) > 1)
        {
            $this->_join = 'LEFT JOIN '._DB_PREFIX_.'st_blog_category_shop cs ON (a.id_st_blog_category = cs.id_st_blog_category)';
            $this->_where = 'AND cs.id_shop = '.$this->context->shop->id;
        }
	}

	public function renderList()
	{
        $this->toolbar_btn['new']['href'] .= '&amp;id_parent='.(int)Tools::getValue('id_st_blog_category',0);
        
        $id = Tools::getValue('id_st_blog_category', 0);
        
        $exists= Db::getInstance()->getValue('
        SELECT COUNT(0) FROM '._DB_PREFIX_.'st_blog_category c
        '. Shop::addSqlAssociation('st_blog_category','c').'
        WHERE c.id_st_blog_category = '.$id.'
        ');
        
        if (!$exists)
            $id = StBlogCategory::getTopCategory()->id;
        
        $categories_tree = StBlogCategory::getParentsCategories($id);
		asort($categories_tree);
		$this->tpl_list_vars['categories_tree'] = $categories_tree;
 
		// Cleaning links
		$cat_bar_index = self::$currentIndex;
		if (Tools::getValue($this->table.'Orderby') && Tools::getValue($this->table.'Orderway'))
			$cat_bar_index = preg_replace('/&'.$this->table.'Orderby=([a-z _]*)&'.$this->table.'Orderway=([a-z]*)/i', '', self::$currentIndex);
        
        return str_replace('view'.$this->table, '&viewcategory', parent::renderList());
	}
    
    public function initToolbar()
    {
        parent::initToolbar();
        if (Tools::isSubmit('id_st_blog_category'))
		{
			if (Validate::isLoadedObject($object = $this->loadObject(true)))
            {
                $back = self::$currentIndex.($object->id_parent?'&id_st_blog_category='.$object->id_parent:'').'&token='.$this->token;
    			$this->toolbar_btn['back'] = array(
    				'href' => $back,
    				'desc' => $this->l('Back to list')
    			);    
            }
		}
    }

	/**
	 * Modifying initial getList method to display position feature (drag and drop)
	 */
	public function getList($id_lang, $order_by = null, $order_way = null, $start = 0, $limit = null, $id_lang_shop = false)
	{
		parent::getList($id_lang, $order_by, $order_way, $start, $limit, $id_lang_shop);
	}

	public function postProcess()
	{
		$this->tabAccess = Profile::getProfileAccess($this->context->employee->id_profile, $this->id);
		if (Tools::isSubmit('submitAdd'.$this->table))
		{
			$this->action = 'save';
			if ($id_st_blog_category = (int)Tools::getValue('id_st_blog_category'))
			{
				$this->id_object = $id_st_blog_category;
				if (!StBlogCategory::checkBeforeMove($id_st_blog_category, (int)Tools::getValue('id_parent')))
				{
					$this->errors[] = Tools::displayError('The blog parent category cannot be moved here.');
                    $this->redirect_after  = self::$currentIndex.'&update'.$this->table.'&id_st_blog_category='.(int)$id_st_blog_category.'&token='.Tools::getValue('token');
					return false;
				}
			}
            $object = parent::postProcess();
            if ($object !== false)
                Tools::redirectAdmin(self::$currentIndex.'&conf=3&id_st_blog_category='.($object->id_parent?(int)$object->id_parent:(int)$object->id).'&token='.Tools::getValue('token'));
            return $object;
		}
		/* Change object statuts (active, inactive) */
		elseif (Tools::isSubmit('statusst_blog_category') && Tools::getValue($this->identifier))
		{
			if ($this->tabAccess['edit'] === '1')
			{
				if (Validate::isLoadedObject($object = $this->loadObject()))
				{
					if ($object->toggleStatus())
					{
						$identifier = ((int)$object->id_parent ? '&id_st_blog_category='.(int)$object->id_parent : '');
						Tools::redirectAdmin(self::$currentIndex.'&conf=5'.$identifier.'&token='.Tools::getValue('token'));
					}
					else
						$this->errors[] = Tools::displayError('An error occurred while updating the status.');
				}
				else
					$this->errors[] = Tools::displayError('An error occurred while updating the status for an object.')
						.' <b>'.$this->table.'</b> '.Tools::displayError('(cannot load object)');
			}
			else
				$this->errors[] = Tools::displayError('You do not have permission to edit this.');
		}
		/* Delete object */
		elseif (Tools::isSubmit('delete'.$this->table))
		{
			if ($this->tabAccess['delete'] === '1')
			{
				if (Validate::isLoadedObject($object = $this->loadObject()))
				{
					// check if request at least one object with noZeroObject
					if (isset($object->noZeroObject) && count($taxes = call_user_func(array($this->className, $object->noZeroObject))) <= 1)
						$this->errors[] = Tools::displayError('You need at least one object.')
							.' <b>'.$this->table.'</b><br />'.Tools::displayError('You cannot delete all of the items.');
					else
					{
                        $identifier = ((int)$object->id_parent ? '&'.$this->identifier.'='.(int)$object->id_parent : '');
						if ($this->deleted)
						{
							$object->deleted = 1;
							if ($object->update())
								Tools::redirectAdmin(self::$currentIndex.'&conf=1&token='.Tools::getValue('token').$identifier);
						}
						elseif ($object->delete())
							Tools::redirectAdmin(self::$currentIndex.'&conf=1&token='.Tools::getValue('token').$identifier);
						$this->errors[] = Tools::displayError('An error occurred during deletion.');
					}
				}
				else
					$this->errors[] = Tools::displayError('An error occurred while deleting the object.')
						.' <b>'.$this->table.'</b> '.Tools::displayError('(cannot load object)');
			}
			else
				$this->errors[] = Tools::displayError('You do not have permission to delete this.');
		}
		elseif (Tools::isSubmit('position'))
		{
			$object = new StBlogCategory((int)Tools::getValue($this->identifier, Tools::getValue('id_st_blog_category_to_move', 1)));
			if ($this->tabAccess['edit'] !== '1')
				$this->errors[] = Tools::displayError('You do not have permission to edit this.');
			elseif (!Validate::isLoadedObject($object))
				$this->errors[] = Tools::displayError('An error occurred while updating the status for an object.')
					.' <b>'.$this->table.'</b> '.Tools::displayError('(cannot load object)');
			elseif (!$object->updatePosition((int)Tools::getValue('way'), (int)Tools::getValue('position')))
				$this->errors[] = Tools::displayError('Failed to update the position.');
			else
			{
				$identifier = ((int)$object->id_parent ? '&'.$this->identifier.'='.(int)$object->id_parent : '');
				$token = Tools::getAdminTokenLite('AdminStBlogCategory');
				Tools::redirectAdmin(
					self::$currentIndex.'&'.$this->table.'Orderby=position&'.$this->table.'Orderway=asc&conf=5'.$identifier.'&token='.$token
				);
			}
		}
		/* Delete multiple objects */
		elseif (Tools::getValue('submitDel'.$this->table) || Tools::getValue('submitBulkdelete'.$this->table))
		{
			if ($this->tabAccess['delete'] === '1')
			{
				if (Tools::isSubmit($this->table.'Box'))
				{
					$blog_category = new StBlogCategory();
					$result = true;
					$result = $blog_category->deleteSelection(Tools::getValue($this->table.'Box'));
					if ($result)
					{
						$blog_category->cleanPositions((int)Tools::getValue('id_st_blog_category'));
						$token = Tools::getAdminTokenLite('AdminStBlogCategory');
						Tools::redirectAdmin(self::$currentIndex.'&conf=2&token='.$token.'&id_st_blog_category='.(int)Tools::getValue('id_st_blog_category'));
					}
					$this->errors[] = Tools::displayError('An error occurred while deleting this selection.');

				}
				else
					$this->errors[] = Tools::displayError('You must select at least one element to delete.');
			}
			else
				$this->errors[] = Tools::displayError('You do not have permission to delete this.');
		}
		parent::postProcess();
	}

	public function renderForm()
	{
		$this->display = 'edit';
		$this->initToolbar();
		if (!$this->loadObject(true))
			return;
        
        $root_category = StBlogCategory::getTopCategory();
        $selected_cat = array($this->object->id_parent > 0 
            ? (int)$this->object->id_parent : 
                (Tools::getValue('id_parent')>0 ? Tools::getValue('id_parent')
                    : $root_category->id));
		
		$root_category_arr = array('id_category' => $root_category->id, 'name' => $root_category->name);

		$this->fields_form = array(
			'legend' => array(
				'title' => $this->l('Blog Category'),
				'image' => '../img/admin/tab-categories.gif',
			),
			'input' => array(
				array(
					'type' => 'text',
					'label' => $this->l('Name:'),
					'name' => 'name',
					'required' => true,
					'lang' => true,
					'class' => 'copy2friendlyUrl',
					'hint' => $this->l('Invalid characters:').' <>;=#{}',
				),
				array(
					'type' => 'radio',
					'label' => $this->l('Displayed:'),
					'name' => 'active',
					'required' => false,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'active_on',
							'value' => 1,
							'label' => $this->l('Enabled'),
						),
						array(
							'id' => 'active_off',
							'value' => 0,
							'label' => $this->l('Disabled'),
						)
					),
				),
				// custom template
				array(
					'type' => 'categories',
					'label' => $this->l('Parent category:'),
					'name' => 'id_parent',
					'values' => array(
						'trads' => array(
							 'Root' => $root_category_arr,
							 'selected' => $this->l('Selected'),
							 'Collapse All' => $this->l('Collapse All'),
							 'Expand All' => $this->l('Expand All')
						),
						'selected_cat' => $selected_cat,
						'input_name' => 'id_parent',
						'use_radio' => true,
						'use_search' => false,
						'disabled_categories' => array(),
						'top_category' => $root_category,
						'use_context' => true,
					)
				),
				array(
					'type' => 'textarea',
					'label' => $this->l('Description:'),
					'name' => 'description',
					'lang' => true,
					'rows' => 5,
					'cols' => 40,
					'hint' => $this->l('Invalid characters:').' <>;=#{}',
				),
				array(
					'type' => 'text',
					'label' => $this->l('Meta title:'),
					'name' => 'meta_title',
					'lang' => true,
					'hint' => $this->l('Invalid characters:').' <>;=#{}',
				),
				array(
					'type' => 'text',
					'label' => $this->l('Meta description:'),
					'name' => 'meta_description',
					'lang' => true,
					'hint' => $this->l('Invalid characters:').' <>;=#{}',
				),
				array(
					'type' => 'text',
					'label' => $this->l('Meta keywords:'),
					'name' => 'meta_keywords',
					'lang' => true,
					'hint' => $this->l('Invalid characters:').' <>;=#{}',
				),
				array(
					'type' => 'text',
					'label' => $this->l('Friendly URL:'),
					'name' => 'link_rewrite',
					'required' => true,
					'lang' => true,
					'hint' => $this->l('Only letters and the minus (-) character are allowed.'),
				)
			),
			'submit' => array(
				'title' => $this->l('Save'),
				'class' => 'button',
			)
		);
        if (Shop::isFeatureActive())
			$this->fields_form['input'][] = array(
				'type' => 'shop',
				'label' => $this->l('Shop association:'),
				'name' => 'checkBoxShopAsso',
			);
		$this->tpl_form_vars['PS_ALLOW_ACCENTED_CHARS_URL'] = (int)Configuration::get('PS_ALLOW_ACCENTED_CHARS_URL');
		return parent::renderForm();
	}
          
    public function ajaxProcessGetCategoryChildren()
    {
    	$children_categories = StBLogCategory::getChildrenWithNbSelectedSubCat(Tools::getValue('id_category_parent'), Tools::getValue('selectedCat'), Context::getContext()->language->id);
    	die(Tools::jsonEncode($children_categories));
    }
    
   	public function ajaxProcessUpdatePositions()
	{
		if ($this->tabAccess['edit'] === '1')
		{
			$id_category = (int)Tools::getValue('id');
			$way = (int)Tools::getValue('way');
			$positions = Tools::getValue('st_blog_category');
			if (is_array($positions))
				foreach ($positions as $key => $value)
				{
					$pos = explode('_', $value);
					if ((isset($pos[1]) && isset($pos[2])) && ($pos[2] == $id_category))
					{
						$position = $key;
						break;
					}
				}
			$category = new StBlogCategory($id_category);
			if (Validate::isLoadedObject($category))
			{
				if (isset($position) && $category->updatePosition($way, $position))
					die('ok position '.(int)$position.' for blog category '.(int)$pos[2]."\r\n");
				else
					die('{"hasError" : true, "errors" : "Can not update blog category position"}');
			}
			else
				die('{"hasError" : true, "errors" : "This blog category can not be loaded"}');
		}
	}
    
    
}
