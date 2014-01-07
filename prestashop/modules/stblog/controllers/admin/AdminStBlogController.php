<?php
require_once dirname(__FILE__).'../../../classes/StBlogLoader.php';
StBlogLoader::load(array('Class','Category','ImageClass','RssClass'));
class AdminStBlogController extends ModuleAdminController
{
	/**
	 * @var integer Max File Upload size.
	 */
     private $max_file_size = null;
     
     protected $id_current_category;
     
     protected $position_identifier = 'id_st_blog';
     
    /**
     * @var integer Max Image Upload size.
     */
     private $max_image_size = null;
     
    public function __construct()
	{
		$this->is_Blog    = true;
		$this->table      = 'st_blog';
		$this->className  = 'StBlogClass';
		$this->lang       = true;
		$this->addRowAction('edit');
		$this->addRowAction('delete');
		$this->bulk_actions = array('delete' => array('text' => $this->l('Delete selected'), 'confirm' => $this->l('Delete selected items?')));
        
        if (Shop::isFeatureActive())
            Shop::addTableAssociation($this->table, array('type' => 'shop'));
		parent::__construct();
        
        $this->imageType = 'jpg';
		$this->max_file_size = (int)(Configuration::get('PS_LIMIT_UPLOAD_FILE_VALUE') * 1000000);
		$this->max_image_size = (int)Configuration::get('PS_PRODUCT_PICTURE_MAX_SIZE');

		$this->fields_list = array(
		'id_st_blog' => array('title' => $this->l('ID'), 'align' => 'center', 'width' => 30),
		'image' => array('title' => $this->l('cover'), 'width' => 100, 'orderby' => false),
		'name' => array('title' => $this->l('Title'), 'width' => 450, 'orderby' => true),
        );
		
        if (Shop::isFeatureActive() && Shop::getContext() != Shop::CONTEXT_SHOP)
            $this->fields_list['shopname'] = array(
                'title' => $this->l('Shop'), 'width' => 100, 'align' => 'center', 'orderby' => false
            );
       else
           $this->fields_list['catename'] = array(
                'title' => $this->l('Category'), 'width' => 100, 'align' => 'center', 'orderby' => false
            );
        
        
        $this->fields_list['active'] = array(
            'title' => $this->l('Displayed'), 'width' => 25, 'active' => 'status',
			'align' => 'center','type' => 'bool', 'orderby' => false,
        );
        
        if (Tools::getValue('reset_filter_category'))
			$this->context->cookie->id_st_category_products_filter = false;
        
        if ($id_category = (int)Tools::getValue('id_category'))
		{
			$this->id_current_category = $id_category;
			$this->context->cookie->id_st_category_products_filter = $id_category;	
		}
		elseif ($id_category = $this->context->cookie->id_st_category_products_filter)
			$this->id_current_category = $id_category;
        
        if ($id_category)
            $this->fields_list['position'] = array(
				'title' => $this->l('Position'),
				'width' => 70,
				'filter_key' => 'cb!position',
				'align' => 'center',
				'position' => 'position'
			);
			
        
        $this->_join = 'LEFT JOIN '._DB_PREFIX_.'st_blog_shop bs ON a.id_st_blog=bs.id_st_blog && bs.id_shop IN('.implode(',',Shop::getContextListShopID()).')';
        $this->_join .= $id_category ? 'INNER JOIN '._DB_PREFIX_.'st_blog_category_blog cb ON a.id_st_blog = cb.id_st_blog' : '';

        $this->_select = 'bs.id_shop'.($id_category ? ',cb.position' : '');
        $this->_defaultOrderBy = $id_category ? 'cb.position' : 'a.id_st_blog';
        $this->_defaultOrderWay = 'DESC';
        $this->_where = $id_category ? ' AND cb.id_st_blog_category = '.(int)$id_category : '';
        
        if (Shop::isFeatureActive() && Shop::getContext() != Shop::CONTEXT_SHOP)
        {
           $this->_group = 'GROUP BY a.id_st_blog';
        }
	}

	public function renderList()
	{
		$this->initToolbar();
        
        if ((int)$this->id_current_category)
            self::$currentIndex .= '&id_category='.(int)$this->id_current_category;
        // category tree
        $root_category = StBlogCategory::getTopCategory();
        $selected_cat = array($this->id_current_category);
		
		$root_category_arr = array('id_category' => $root_category->id, 'name' => $root_category->name);
        $this->tpl_list_vars['categories'] = array(
			'trads' => array(
				 'Root' => $root_category_arr,
				 'selected' => $this->l('Selected'),
				 'Collapse All' => $this->l('Collapse All'),
				 'Expand All' => $this->l('Expand All')
			),
			'selected_cat' => $selected_cat,
			'input_name' => 'id_category',
			'use_radio' => true,
			'use_search' => false,
			'disabled_categories' => array(),
			'top_category' => $root_category,
			'use_context' => true,
		);
        $this->tpl_list_vars['is_category_filter'] = (bool)$this->id_current_category;
        $this->tpl_list_vars['base_url'] = preg_replace('#&id_category=[0-9]*#', '', self::$currentIndex).'&token='.$this->token;
        $this->tpl_list_vars['id_current_category'] = $this->id_current_category;
        $this->tpl_list_vars['id_category'] = $this->id_current_category;
        $this->context->smarty->assign('table_dnd', 1);
        
        $this->_setMeta();
        
        return parent::renderList();
	}
    
    private function _setMeta()
    {
        $this->addJS(array(
				_PS_JS_DIR_.'jquery/plugins/treeview-categories/jquery.treeview-categories.js',
				_PS_JS_DIR_.'jquery/plugins/treeview-categories/jquery.treeview-categories.async.js',
				_PS_JS_DIR_.'jquery/plugins/treeview-categories/jquery.treeview-categories.edit.js',
				_PS_JS_DIR_.'admin-categories-tree.js'
			));

			$this->addCSS(array(
				_PS_JS_DIR_.'jquery/plugins/treeview-categories/jquery.treeview-categories.css'
			));
    }

	/**
	 * Modifying initial getList method to display position feature (drag and drop)
	 */
	public function getList($id_lang, $order_by = null, $order_way = null, $start = 0, $limit = null, $id_lang_shop = false)
	{
        $nin_multishop = Shop::isFeatureActive() && Shop::getContext() != Shop::CONTEXT_SHOP;
		parent::getList($id_lang, $order_by, $order_way, $start, $limit, $id_lang_shop);
        
        foreach($this->_list AS $key => $value)
        {
            if ($nin_multishop)
            {
                $shop = Shop::getShop($value['id_shop']);
                $this->_list[$key]['shopname'] = $shop['name']; 
            } 
            else
                $this->_list[$key]['catename'] = implode(',', StBlogCategory::getCategoryMapInfo($value['id_st_blog']));
                
            $object = new StBlogClass();
            $object->id = $value['id_st_blog'];
            $url = $object->getCoverUrl();
            
            // Is gallery?
            if (!$url)
            {
                foreach($object->getGallery($value['id_st_blog']) AS $gallery)
                {
                    $url = $gallery['image'];
                    break;
                }
            }
            
            $this->_list[$key]['image'] = '<img alt="'.$value['name'].'" src="'.($url ? $url:_MODULE_DIR_.'stblog/views/img/thumb-default.jpg').'" />';
        }
	}

	public function postProcess()
	{
		$this->tabAccess = Profile::getProfileAccess($this->context->employee->id_profile, $this->id);
		if (Tools::isSubmit('submitAdd'.$this->table) || Tools::isSubmit('submitAdd'.$this->table.'AndStay'))
		{
			$this->action = 'save';
            
            if (empty($_POST['categoryBox']))
            {
                $root_category = StBlogCategory::getTopCategory();
                $_POST['categoryBox'] = (array)$root_category->id;
                $_POST['id_category_default'] = $root_category->id;
            }
		    
            $_POST['id_st_blog_category_default'] = $_POST['id_category_default'];
            
            $cnf = Tools::getValue('id_st_blog') ? 4 : 3;
            $object = parent::postProcess();
            $cover_posted = true;
            if ($object !== false)
            {
               $this->postProductLink($object);
               $this->postCategories($object);
               $cover_posted = $this->postCover($object);
               $this->postTag($object);
               
               if ($this->display == 'edit')
                    $this->redirect_after  = self::$currentIndex.'&conf='.$cnf.'&update'.$this->table.'&id_st_blog='.(int)$object->id.'&token='.Tools::getValue('token');
               else 
                    $this->redirect_after  = self::$currentIndex.'&conf='.$cnf.'&id_st_blog='.(int)$object->id.'&token='.Tools::getValue('token');
            }
            
            if ($cover_posted === '-1')
            {
                $this->redirect_after = '';
                $this->errors[] = Tools::displayError('No permission to write for folder['._PS_ST_BLOG_IMG_DIR_.'].');
            }
            else
                return $object;
		}
		/* Change object statuts (active, inactive) */
		elseif (Tools::isSubmit('statusst_blog') && Tools::getValue($this->identifier))
		{
			if ($this->tabAccess['edit'] === '1')
			{
				if (Validate::isLoadedObject($object = $this->loadObject(true)))
				{
					if ($object->toggleStatus())
					{
						Tools::redirectAdmin(self::$currentIndex.'&conf=5&token='.Tools::getValue('token'));
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
				if (Validate::isLoadedObject($object = $this->loadObject(true)))
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
		elseif (Tools::isSubmit('position'))
		{
			$object = new StBlogClass((int)Tools::getValue($this->identifier, Tools::getValue('id_st_blog_to_move', 1)));
			if ($this->tabAccess['edit'] !== '1')
				$this->errors[] = Tools::displayError('You do not have permission to edit this.');
			elseif (!Validate::isLoadedObject($object))
				$this->errors[] = Tools::displayError('An error occurred while updating the status for an object.')
					.' <b>'.$this->table.'</b> '.Tools::displayError('(cannot load object)');
			elseif (!$object->updatePosition((int)Tools::getValue('way'), (int)Tools::getValue('position')))
				$this->errors[] = Tools::displayError('Failed to update the position.');
			else
			{
				$identifier = '';
				$token = Tools::getAdminTokenLite('AdminStBlog');
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
					$blog = new StBlogClass();
					$result = true;
					$result = $blog->deleteSelection(Tools::getValue($this->table.'Box'));
					if ($result)
					{
						$token = Tools::getAdminTokenLite('AdminStBlog');
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
    
    public function postCover($obj)
    {
        if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name']))
        {
            $old_images = StBlogImageClass::getImageIdByType($obj->id);
            foreach($old_images AS $old)
            {
                $img = new StBlogImageClass('1', $old);
                $img->setShopList($img->getAssociatedShops())->delete();
            }
            $image = new StBlogImageClass('1');
            return $image->setShopList($obj->getAssociatedShops())->save('image');    
        }
        return true;
    }
    
    public function postCategories($obj)
    {
        if ($_POST['categoryBox'])
            return $obj->saveCategoryMap($_POST['categoryBox']);
    }

	public function renderForm()
	{
		$this->display = 'edit';
		$this->initToolbar();
		if (!$this->loadObject(true))
			return;
        
        $this->initFormToolBar();
       
        $id_blog = Tools::getValue('id_st_blog', 0);
        
        $this->addjQueryPlugin(array(
				'autocomplete'
			));
        
        $selected_cat  = StBlogCategory::getCategoryMapIds($this->object->id);
		$root_category = StBlogCategory::getTopCategory();
		$root_category_arr = array('id_category' => $root_category->id, 'name' => $root_category->name);
        
        $default_category_array = StBlogCategory::getCategoryMapArray($selected_cat);
        $default_category = $this->object->getDefaultCategory();
        
        if (empty($default_category_array))
            $default_category_array[] = array('id_st_blog_category' => $root_category->id, 'name' => $root_category->name);
        
        if (!$selected_cat && !$this->object->id)
        {
            $selected_cat = array(StBlogCategory::getTopCategory()->id);
        }
        
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Blog Content')
			),
            
			'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Title:'),
					'name' => 'name',
                    'class' => 'copy2friendlyUrl',
                    'lang' => true,
                    'size' => 40,
                    'required' => true
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Format:'),
					'name' => 'type',
					'required' => false,
					'class' => 't',
                    'default_value' => 1,
					'values' => array(
						array(
							'id' => 'id_standard',
							'value' => 1,
							'label' => $this->l('Standard')
						),
						array(
							'id' => 'id_gallery',
							'value' => 2,
							'label' => $this->l('Gallery')
						),
						array(
							'id' => 'id_video',
							'value' => 3,
							'label' => $this->l('Video')
						)
					),
				),
                array(
					'type' => 'categories',
					'label' => $this->l('Select category:'),
					'name' => 'categoryBox',
					'values' => array(
						'trads' => array(
							 'Root' => $root_category_arr,
							 'selected' => $this->l('Selected'),
							 'Collapse All' => $this->l('Collapse All'),
							 'Expand All' => $this->l('Expand All'),
                             'Check All' => $this->l('Check All'),
                             'Uncheck All'  => $this->l('Uncheck All'),
						),
						'selected_cat' => $selected_cat,
						'input_name' => 'categoryBox[]',
						'use_radio' => false,
						'use_search' => false,
						'disabled_categories' => array(),
						'top_category' => $root_category,
						'use_context' => true,
					)
				),
                array(
					'type' => 'select',
					'label' => $this->l('Default category'),
					'name' => 'id_category_default',
                    'default_value' => $default_category,
                    'desc' => 'The default category is the category displayed by default.',
					'options' => array(
						'query' => $default_category_array,
						'id' => 'id_st_blog_category',
						'name' => 'name'
					)
				),
				array(
					'type' => 'textarea',
					'label' => $this->l('Short content:'),
					'name' => 'content_short',
					'lang' => true,
					'cols' => 127,
                    'rows' => 10
				),
                array(
					'type' => 'content',
					'label' => $this->l('Content:'),
					'name' => 'content',
					'lang' => true,
					'html' => $this->object->content
				),
                array(
					'type' => 'file',
					'label' => $this->l('Cover image:'),
					'name' => 'image',
					'desc' => $this->l('Upload a blog cover from your computer(width>870px, height>348px).')
				),
                array(
					'type' => 'textarea',
					'label' => $this->l('Video embed code:'),
					'name' => 'video',
                    'lang' => true,
					'cols' => 60,
                    'rows' => 6,
				),
                array(
					'type' => 'text',
					'label' => $this->l('Tags:'),
					'name' => 'tags',
                    'default_value' =>implode(',',$this->object->getBlogTags($this->context->language->id)),
                    'lang' => true,
                    'size' => 40,
					'desc' => $this->l('Tags separated by commas (e.g. dvd, dvd player, hifi).')
                ),
                array(
					'type' => 'radio',
					'label' => $this->l('Accept comment:'),
					'name' => 'accept_comment',
					'default_value' => 1,
					'class' => 't',
					'is_bool' => true,
					'values' => array(
						array(
							'id' => 'accept_comment_on',
							'value' => 1,
							'label' => $this->l('Accept')
						),
						array(
							'id' => 'accept_comment_off',
							'value' => 0,
							'label' => $this->l('refuse')
						)
					),
                    'desc' => $this->l('Whether or not accept customer comment.')
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
							'label' => $this->l('Enabled')
						),
						array(
							'id' => 'active_off',
							'value' => 0,
							'label' => $this->l('Disabled')
						)
					),
				),
			),
			'submit' => array(
				'title' => $this->l('Save'),
				'class' => 'button'
			)
		);
        
        $this->fields_form[1]['form'] = array(
			'legend' => array(
				'title' => $this->l('SEO')
			),
        				
			'input' => array(	
				array(
					'type' => 'text',
					'label' => $this->l('Meta title:'),
					'name' => 'meta_title',
					'lang' => true,
                    'size' => 40,
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
				),
				array(
					'type' => 'text',
					'label' => $this->l('Meta keywords:'),
					'name' => 'meta_keywords',
					'lang' => true,
                    'size' => 40,
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
				),
				array(
					'type' => 'text',
					'label' => $this->l('Meta description:'),
					'name' => 'meta_description',
                    'lang' => true,
                    'size' => 40,
					'hint' => $this->l('Invalid characters:').' <>;=#{}'
				),
				array(
					'type' => 'text',
					'label' => $this->l('Friendly URL:'),
					'name' => 'link_rewrite',
                    'size' => 40,
					'lang' => true,
					'hint' => $this->l('Only letters and the minus (-) character are allowed.')
				)
            )
        );
        
        // Products Link
        $products = $this->object->getLinkProducts(true);
        if ($products)
            foreach($products AS &$product)
                $product['name'] = $product['id_product'].' - '.$product['name'];
        $this->fields_form[2]['form'] = array(
			'legend' => array(
				'title' => $this->l('Related products')
			),
        				
			'selector' => array(
				'products' => $products,
			    'products_unselected' => array(),//$this->object->getLinkProducts(false)
			)
        );
        
        if (Shop::isFeatureActive())
            $this->fields_form[3]['form'] = array(
			'legend' => array(
				'title' => $this->l('Select store')
			),		
			'input' => array(	
				array(
					'type' => 'shop',
    				'label' => $this->l('Shop association:'),
    				'name' => 'checkBoxShopAsso',
				),
			
            )
        );
        
        // Gallery Image
        $gallery = $this->object->getGallery($id_blog);
        
        $shops = false;
		if (Shop::isFeatureActive())
			$shops = Shop::getShops();

		if ($shops)
			foreach ($shops as $key => $shop)
				if (!$this->object->isAssociatedToShop($shop['id_shop']))
					unset($shops[$key]);

		if ($this->context->shop->getContext() == Shop::CONTEXT_SHOP)
			$current_shop_id = (int)$this->context->shop->id;
		else
			$current_shop_id = 0;
          
        $this->fields_form[4]['form'] = array(
			'legend' => array(
				'title' => $this->l('Gallery Image')
			),
        			
			'gallary' => array(
                'images' => array(
                    'count' => count($gallery),
                    'max_image_size' => $this->max_image_size / 1024 / 1024,
                    'shops' => $shops,
                    'token' =>  $this->token,
				    'table' => $this->table,
                    'currency' => $this->context->currency,
				    'current_shop_id' => $current_shop_id,
                    'images' => $gallery,
                    'id_st_blog' => $id_blog,
                    'object' => $this->object
                )
			)
        );
        
        
        $this->multiple_fieldsets = true;
		$this->tpl_form_vars['PS_ALLOW_ACCENTED_CHARS_URL'] = (int)Configuration::get('PS_ALLOW_ACCENTED_CHARS_URL');
        $this->tpl_form_vars['lang_id'] = $this->context->language->id;

        $this->addjQueryPlugin(array(
			'tablednd',
			'thickbox',
			'ajaxfileupload',
            'fancybox',
		));
        
        $this->addJqueryUI(array(
				'ui.core',
				'ui.widget',
			));

        $this->addJS(array(
    			_PS_JS_DIR_.'tiny_mce/tiny_mce.js',
    			_PS_JS_DIR_.'tinymce.inc.js',
    			_PS_JS_DIR_.'fileuploader.js',
				_PS_JS_DIR_.'jquery/ui/jquery.ui.progressbar.min.js',
			));

            
        // TinyMCE
		$iso_tiny_mce = $this->context->language->iso_code;
		$iso_tiny_mce = (file_exists(_PS_JS_DIR_.'tiny_mce/langs/'.$iso_tiny_mce.'.js') ? $iso_tiny_mce : 'en');
		$this->context->smarty->assign('ad', dirname($_SERVER['PHP_SELF']));
		$this->context->smarty->assign('iso_tiny_mce', $iso_tiny_mce);
		$this->context->smarty->assign('tinymce', true);
        
        $this->context->smarty->assign('object', $this->object);

		return parent::renderForm();
	}
    
   	/* @todo rename to processaddproductimage */
	public function ajaxProcessAddImage()
	{
		self::$currentIndex = 'index.php?tab=AdminModules';
		$allowedExtensions = array('jpeg', 'gif', 'png', 'jpg');
		$file_name = isset($_GET['qqfile']) ?  $_GET['qqfile'] : 'gallery.jpg';
		
        $ext = @pathinfo($file_name, PATHINFO_EXTENSION);
        if (!in_array(strtolower($ext), $allowedExtensions))
            die(Tools::jsonEncode(array('error' => Tools::displayError('File has an invalid extension, it should be one of').implode(',', $allowedExtensions))));
            
        if (Validate::isLoadedObject($object = $this->loadObject()))
        {
            $oImg = new StBlogImageClass('2');
            $oImg->setShopList($object->getAssociatedShops());
            if (isset($_GET['qqfile']) && $_GET['qqfile'])
              $ret =  $oImg->save('', true);
            else
              $ret =  $oImg->save('qqfile');
            
            if ($ret === '-1')
                die(Tools::jsonEncode(array('error'=>Tools::displayError('No permission to write for folder['._PS_ST_BLOG_IMG_DIR_.'].'))));
            $url = $oImg->getImageUrl('thumb');
            if (!$url)
                die(Tools::jsonEncode(array('error'=>Tools::displayError('Upload gallery image failed.'))));
        }
        else
            die(Tools::jsonEncode(array('error'=>Tools::displayError('You must save blog before adding gallery image.'))));
        
        // Associate image to shop from context
		$shops = $object->getAssociatedShops();
		$json_shops = array();
		foreach ($shops as $id_shop)
			$json_shops[$id_shop] = true;
        
        $json = array(
				'name' => $url,
				'status' => 'ok',
				'id'=>$oImg->id,
				'path' => $url,
				'position' => $oImg->getHighestPosition(),
				'cover' => 0,
				'shops' => $json_shops,
			);
		die(Tools::jsonEncode($json));
	}
    
   	public function ajaxProcessDeleteGalleryImage()
	{
		$this->display = 'content';
		
        if (!($id_image = (int)Tools::getValue('id_image')))
            $this->jsonError(Tools::displayError('An error occurred (the image not exists).'));
        
        $image = new StBlogImageClass('2', $id_image);
        
        if (!$image->id)
            $this->jsonError(Tools::displayError('An error occurred (unkown object).'));
        
		if ($image->setShopList($image->getAssociatedShops())->delete())
        {
            die(Tools::jsonEncode(array('success'=>Tools::displayError('The picture was deleted successful.'),'id'=>$id_image)));
        }
		else
			$this->jsonError(Tools::displayError('An error occurred while attempting to delete the image.'));
	}
    
    public function ajaxProcessUpdateImagePosition()
	{
		$res = false;
		if ($json = Tools::getValue('json'))
		{
			$res = true;
			$json = stripslashes($json);
			$images = Tools::jsonDecode($json, true);
			foreach ($images as $id => $position)
			{
				$img = new Image((int)$id);
				$img->position = (int)$position;
				$res &= Db::getInstance()->execute('
                UPDATE '._DB_PREFIX_.'st_blog_image
                SET position = '.$position.'
                WHERE id_st_blog_image = '.$id.'
                ');
			}
		}
		if ($res)
			$this->jsonConfirmation($this->_conf[25]);
		else
			$this->jsonError(Tools::displayError('An error occurred while attempting to move this picture.'));
	}


    public function ajaxProcessUpdateGalleryImageShopAsso()
	{
	    $images = null;
		if (($id_image = Tools::getValue('id_image')) && ($id_shop = (int)Tools::getValue('id_shop')))
		$images = Db::getInstance()->executeS('
        SELECT * FROM '._DB_PREFIX_.'st_blog_image
        WHERE id_st_blog_image = '.$id_image.'
        ');	
        
        if (empty($images))
             $this->jsonError(Tools::displayError('An error occurred while attempting to associate this image with your shop(Image not Found). '));
        
             
        $exist = Db::getInstance()->getValue('
        SELECT COUNT(0) FROM '._DB_PREFIX_.'st_blog_image_shop
        WHERE id_st_blog_image = '.$id_image.'
        AND id_shop = '.$id_shop.'
        ');
        
        if ($exist)
            $res = $exist = Db::getInstance()->execute('
            DELETE FROM '._DB_PREFIX_.'st_blog_image_shop
            WHERE id_st_blog_image = '.$id_image.'
            AND id_shop = '.$id_shop.'
            ');
        else
            $res = $exist = Db::getInstance()->execute('
            INSERT INTO '._DB_PREFIX_.'st_blog_image_shop
            VALUES('.(int)$id_image.', '.(int)$id_shop.')
            ');

		if ($res)
			$this->jsonConfirmation($this->_conf[27]);
		else
			$this->jsonError(Tools::displayError('An error occurred while attempting to associate this image with your shop. '));
	}

    
    public function postTag($obj)
    {
        $tags = array();
        foreach($_POST as $k => $v)
        {
            if (strpos($k,'tags_') !== false && !empty($v))
            {
                $key = str_replace('tags_','',$k);
                $tags[$key] = $v;
            }
        }
        $obj->saveTag($tags);
    }
    
    public function postProductLink($obj)
    {
        if (!isset($_POST['products']))
            $_POST['products'] = array();
        $obj->saveProductLink($_POST['products']);
    }
    
    public function ajaxProcessDeleteCoverImage()
	{
		$this->display = 'content';
		Validate::isLoadedObject($object = $this->loadObject(true));
        if (!($id_image = Tools::getValue('id_st_blog_image')))
        {
            $this->jsonError(Tools::displayError('Delete blog cover failed(undefined ID).'));
            die;
        }  
        
        $image = new StBlogImageClass('1', $id_image);     
        $rs = $image->setShopList($image->getAssociatedShops())->delete();

		if ($rs)
        {
            die(Tools::jsonEncode(array('success'=>Tools::displayError('The cover was Deleted successful.'), 'id'=>$id_image)));
        }
		else
			$this->jsonError(Tools::displayError('An error occurred while attempting to delete the cover.'));
	}
    
    public function initFormToolBar()
    {
        unset($this->toolbar_btn['back']);    
        $this->toolbar_btn['save-and-stay'] = array(
						'short' => 'SaveAndStay',
						'href' => '#',
						'desc' => $this->l('Save and stay'),
					);
        $this->toolbar_btn['back'] = array(
						'href' => self::$currentIndex.'&token='.Tools::getValue('token'),
						'desc' => $this->l('Back to list'),
					);
    }
    
    public function ajaxProcessGetCategoryChildren()
    {
    	$children_categories = StBLogCategory::getChildrenWithNbSelectedSubCat(Tools::getValue('id_category_parent'), Tools::getValue('selectedCat'), Context::getContext()->language->id, Tools::getValue('use_shop_context'));
    	die(Tools::jsonEncode($children_categories));
    }
    
    public function ajaxProcessUpdatePositions()
	{
		if ($this->tabAccess['edit'] === '1')
		{
			$way = (int)(Tools::getValue('way'));
			$id_st_blog = (int)(Tools::getValue('id'));
			$positions = Tools::getValue('st_blog');
            $_POST['id_category'] = $this->id_current_category;

			if (is_array($positions))
				foreach ($positions as $position => $value)
				{
					$pos = explode('_', $value);

					if ((isset($pos[1]) && isset($pos[2])) && ((int)$pos[2] === $id_st_blog))
					{
						if ($blog = new StBlogClass((int)$pos[2]))
							if (isset($position) && $blog->updatePosition($way, $position))
							{
								echo 'ok position '.(int)$position.' for blog '.(int)$pos[2]."\r\n";							
							}
							else
								echo '{"hasError" : true, "errors" : "Can not update blog '.(int)$id_st_blog.' to position '.(int)$position.' "}';
						else
							echo '{"hasError" : true, "errors" : "This blog ('.(int)$id_st_blog.') can t be loaded"}';

						break;
					}
				}
		}
	}

}
