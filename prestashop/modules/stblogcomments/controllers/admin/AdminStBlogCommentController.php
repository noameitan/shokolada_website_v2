<?php
class AdminStBlogCommentController extends ModuleAdminController
{
    
	public function __construct()
	{
		$this->is_Blog = true;
		$this->table = 'st_blog_comment';
		$this->className = 'StBlogCommentClass';
        $this->addRowAction('view');
		$this->addRowAction('edit');
		$this->addRowAction('delete');
		$this->bulk_actions = array('delete' => array('text' => $this->l('Delete selected'), 'confirm' => $this->l('Delete selected items?')));

        parent::__construct();
        
        if (!Module::isEnabled('stblogcomments'))
            $this->errors[] = $this->l('ST Blog Module Comments was disabled.');
        
		$this->fields_list = array(
		'id_st_blog_comment' => array('title' => $this->l('ID'), 'align' => 'center', 'width' => 30),
		'customer_name' => array('title' => $this->l('Customer Name'), 'width' => 120),
        'customer_email' => array('title' => $this->l('Customer Email'), 'width' => 130),
		'content' => array('title' => $this->l('Content'), 'width' => 450, 'orderby' => false),
        'reply' => array('title' => $this->l('Reply'), 'width' => 100, 'orderby' => false),
		'active' => array('title' => $this->l('Accept'), 'width' => 25, 'active' => 'status', 'align' => 'center','type' => 'bool', 'orderby' => false),
        'date_add' => array('title' => $this->l('Date Add'), 'width' => 100, 'orderby' => false
        ));
        
        $this->_filter = ' AND id_parent = ' . Tools::getValue('id_st_blog_comment', 0);
        if ($id_st_blog = Tools::getValue('id_st_blog'))
            $this->_filter .= 'AND `id_st_blog` = '. $id_st_blog;
             
        $this->_where = ' AND id_shop IN ('.implode(',', Shop::getContextListShopID()).')';

	}

	public function renderList()
	{
		$this->initToolbar();
             
        $categories_tree = array(); //StBlogComment::getParentsComments(Tools::getValue('id_st_blog_comment', 0));
		//asort($categories_tree);
		$this->tpl_list_vars['categories_tree'] = $categories_tree;
        
        return parent::renderList();
	}
    
    public function initToolbar()
    {
        parent::initToolbar();
        if (Tools::getValue('id_st_blog_comment'))
		{
			$object = $this->loadObject();
			$back = self::$currentIndex.($object->id_parent?'&id_st_blog_comment='.$object->id_parent:'').'&token='.$this->token;
			$this->toolbar_btn['back'] = array(
				'href' => $back,
				'desc' => $this->l('Back to list')
			);
		}
        unset($this->toolbar_btn['new']);
    }

	/**
	 * Modifying initial getList method to display position feature (drag and drop)
	 */
	public function getList($id_lang, $order_by = null, $order_way = null, $start = 0, $limit = null, $id_lang_shop = false)
	{
		if ($order_by && $this->context->cookie->__get($this->table.'Orderby'))
			$order_by = $this->context->cookie->__get($this->table.'Orderby');
		else
			$order_by = 'date_add';
        
        if($order_way==null)
            $order_way = 'desc';

		parent::getList($id_lang, $order_by, $order_way, $start, $limit, $id_lang_shop);
        
        foreach($this->_list AS &$row)
        {
            $count = array();
            StBlogCommentClass::countChild($count, $row['id_st_blog_comment']);
            if ($count['all'] > 0)
                $row['reply'] = '<span title="'.$this->l('Accepted:'.$count['accept']).'">'.$count['accept'].'</span>/<span title="'.$this->l('Reply total:'.$count['all']).'">'.$count['all'].'</span>';
            else
                $row['reply'] = '0';
        }
	}
    
    public function initContent()
    {
        if ($this->display == 'view')
            $this->display = null;
        return parent::initContent();
    }

	public function postProcess()
	{
		$this->tabAccess = Profile::getProfileAccess($this->context->employee->id_profile, $this->id);
		if (Tools::isSubmit('submitAdd'.$this->table))
		{
			$this->action = 'save';

            $object = parent::postProcess();
            if ($object !== false)
                Tools::redirectAdmin(self::$currentIndex.'&conf=4&id_st_blog_comment='.(int)$object->id_parent.'&token='.Tools::getValue('token'));
            return $object;
		}
		/* Change object statuts (active, inactive) */
		elseif (Tools::isSubmit('status'.$this->table) && Tools::getValue($this->identifier))
		{
			if ($this->tabAccess['edit'] === '1')
			{
				if (Validate::isLoadedObject($object = $this->loadObject()))
				{
					if ($object->toggleStatus())
					{
						$identifier = ((int)$object->id_parent ? '&id_st_blog_comment='.(int)$object->id_parent : '');
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
                        $identifier = '';
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
		
		/* Delete multiple objects */
		elseif (Tools::getValue('submitDel'.$this->table) || Tools::getValue('submitBulkdelete'.$this->table))
		{
			if ($this->tabAccess['delete'] === '1')
			{
				if (Tools::isSubmit($this->table.'Box'))
				{
					$blog_comment = new StBlogCommentClass();
					$result = true;
					$result = $blog_comment->deleteSelection(Tools::getValue($this->table.'Box'));
					if ($result)
					{
						$token = Tools::getAdminTokenLite('AdminStBlogComment');
						Tools::redirectAdmin(self::$currentIndex.'&conf=2&token='.$token);
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

		$this->fields_form = array(
			'legend' => array(
				'title' => $this->l('Blog Category'),
				'image' => '../img/admin/tab-categories.gif'
			),
			'input' => array(
				array(
					'type' => 'text',
					'label' => $this->l('Customer Name:'),
					'name' => 'customer_name',
					'required' => true,
					'class' => 'copy2friendlyUrl',
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
				),
				array(
					'type' => 'text',
					'label' => $this->l('Customer Email:'),
					'name' => 'customer_email',
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
				),
				/*array(
					'type' => 'text',
					'label' => $this->l('Customer Website:'),
					'name' => 'customer_website',
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
				),*/
                array(
					'type' => 'textarea',
					'label' => $this->l('Content:'),
					'name' => 'content',
                    'required' => true,
					'rows' => 8,
					'cols' => 60,
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
			 ),
             array(
					'type' => 'radio',
					'label' => $this->l('Accept:'),
					'name' => 'active',
					'required' => false,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'active_on',
							'value' => 1,
							'label' => $this->l('Yes')
						),
						array(
							'id' => 'active_off',
							'value' => 0,
							'label' => $this->l('No')
						)
					),
			),
			),
			'submit' => array(
				'title' => $this->l('Save'),
				'class' => 'button'
			)
		);
		$this->tpl_form_vars['PS_ALLOW_ACCENTED_CHARS_URL'] = (int)Configuration::get('PS_ALLOW_ACCENTED_CHARS_URL');
		return parent::renderForm();
	}
}
