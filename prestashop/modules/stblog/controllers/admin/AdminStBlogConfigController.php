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

class AdminStBlogConfigController extends AdminController
{
    public static $easing = array(
		array('value' => 0, 'name' => 'swing'),
		array('value' => 1, 'name' => 'easeInQuad'),
		array('value' => 2, 'name' => 'easeOutQuad'),
		array('value' => 3, 'name' => 'easeInOutQuad'),
		array('value' => 4, 'name' => 'easeInCubic'),
		array('value' => 5, 'name' => 'easeOutCubic'),
		array('value' => 6, 'name' => 'easeInOutCubic'),
		array('value' => 7, 'name' => 'easeInQuart'),
		array('value' => 8, 'name' => 'easeOutQuart'),
		array('value' => 9, 'name' => 'easeInOutQuart'),
		array('value' => 10, 'name' => 'easeInQuint'),
		array('value' => 11, 'name' => 'easeOutQuint'),
		array('value' => 12, 'name' => 'easeInOutQuint'),
		array('value' => 13, 'name' => 'easeInSine'),
		array('value' => 14, 'name' => 'easeOutSine'),
		array('value' => 15, 'name' => 'easeInOutSine'),
		array('value' => 16, 'name' => 'easeInExpo'),
		array('value' => 17, 'name' => 'easeOutExpo'),
		array('value' => 18, 'name' => 'easeInOutExpo'),
		array('value' => 19, 'name' => 'easeInCirc'),
		array('value' => 20, 'name' => 'easeOutCirc'),
		array('value' => 21, 'name' => 'easeInOutCirc'),
		array('value' => 22, 'name' => 'easeInElastic'),
		array('value' => 23, 'name' => 'easeOutElastic'),
		array('value' => 24, 'name' => 'easeInOutElastic'),
		array('value' => 25, 'name' => 'easeInBack'),
		array('value' => 26, 'name' => 'easeOutBack'),
		array('value' => 27, 'name' => 'easeInOutBack'),
		array('value' => 28, 'name' => 'easeInBounce'),
		array('value' => 29, 'name' => 'easeOutBounce'),
		array('value' => 30, 'name' => 'easeInOutBounce'),
	);
    
    public static $items = array(
		array('value' => 2, 'name' => '2'),
		array('value' => 3, 'name' => '3'),
		array('value' => 4, 'name' => '4'),
		array('value' => 5, 'name' => '5'),
		array('value' => 6, 'name' => '6'),
    );
    
    public static $articles_per_row_grid_view = array(
		array('value' => 2, 'name' => '2'),
		array('value' => 3, 'name' => '3'),
		array('value' => 4, 'name' => '4'),
    );
    
    public function __construct()
	{
		$this->className      = 'Configuration';
		$this->table          = 'configuration';

		parent::__construct();

		$this->fields_options = array(
			'general' => array(
				'title' =>	$this->l('General'),
                'image' => '../img/admin/tab-categories.gif',
				'fields' =>	array(
        			'ST_BLOG_META_TITLE' => array(
						'title' => $this->l('Meta title'),
        				'validation' => 'isGenericName',
        				'size' => 60,
        				'type' => 'textLang',
        			),
        			'ST_BLOG_META_KEYWORDS' => array(
						'title' => $this->l('Meta keywords'),
        				'validation' => 'isGenericName',
        				'size' => 60,
        				'type' => 'textLang',
        			),
        			'ST_BLOG_META_DESCRIPTION' => array(
						'title' => $this->l('Meta desciption'),
        				'validation' => 'isGenericName',
        				'size' => 30,
        				'type' => 'textareaLang',
        				'cols' => 60,
        				'rows' => 6,
        			),
					'ST_BLOG_CATE_LAYOUTS' => array(
						'title' => $this->l('Category layouts'),
						'cast' => 'intval',
						'show' => true,
						'required' => false,
						'type' => 'radio',
						'validation' => 'isUnsignedInt',
						'choices' => array(
							1 => $this->l('Large image layouts'),
							2 => $this->l('Medium image layouts'),
							3 => $this->l('Grid layouts'),
						),
					),
					'ST_BLOG_CATE_ROW_BLOG_NBR' => array(
						'title' => $this->l('Articles per row in grid layouts'),
    					'validation' => 'isInt',
    					'cast' => 'intval',
    					'type' => 'select',
    					'list' => self::$articles_per_row_grid_view,
    					'identifier' => 'value',
					),
					'ST_BLOG_COLUMN_HOMEPAGE' => array(
						'title' => $this->l('Homepage layout'),
						'cast' => 'intval',
						'show' => true,
						'required' => false,
						'type' => 'radio',
						'validation' => 'isUnsignedInt',
						'choices' => array(
							1 => $this->l('2 columns, leftcolumn'),
							2 => $this->l('2 columns, rightcolumn'),
						),
					),
					'ST_BLOG_COLUMN_CATEGORY' => array(
						'title' => $this->l('Category layout'),
						'cast' => 'intval',
						'show' => true,
						'required' => false,
						'type' => 'radio',
						'validation' => 'isUnsignedInt',
						'choices' => array(
							1 => $this->l('2 columns, leftcolumn'),
							2 => $this->l('2 columns, rightcolumn'),
						),
					),
					'ST_BLOG_COLUMN_ARTICLE' => array(
						'title' => $this->l('Article layout'),
						'cast' => 'intval',
						'show' => true,
						'required' => false,
						'type' => 'radio',
						'validation' => 'isUnsignedInt',
						'choices' => array(
							1 => $this->l('2 columns, leftcolumn'),
							2 => $this->l('2 columns, rightcolumn'),
						),
					),
					'ST_BLOG_PER_PAGE' => array(
						'title' => $this->l('Blogs per page'),
						'desc' => $this->l('Number of blogs displayed per page. Default is 10.'),
						'validation' => 'isUnsignedInt',
						'cast' => 'intval',
						'type' => 'text',
					),
					'ST_BLOG_DISPLAY_VIEWCOUNT' => array(
						'title' => $this->l('Display viewcount on each post'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool',
					),
				),
			),
            'related' => array(
                'title' => $this->l('Related products'),
                'image' => '../img/admin/tab-categories.gif',
				'fields' =>	array(
					'ST_BLOG_RELATED_DISPLAY_PRICE' => array(
						'title' => $this->l('Display price on products'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool',
					),
    				'ST_BLOG_RELATED_ITEMS' => array(
    					'title' => $this->l('The number of columns'),
    					'validation' => 'isInt',
    					'cast' => 'intval',
    					'type' => 'select',
    					'list' => self::$items,
    					'identifier' => 'value',
    				),
					'ST_BLOG_RELATED_SLIDESHOW' => array(
						'title' => $this->l('Autoplay'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool',
					),
					'ST_BLOG_RELATED_S_SPEED' => array(
						'title' => $this->l('Time'),
						'desc' => $this->l('The period, in milliseconds, between the end of a transition effect and the start of the next one.'),
						'validation' => 'isUnsignedInt',
						'cast' => 'intval',
						'type' => 'text',
					),
					'ST_BLOG_RELATED_A_SPEED' => array(
						'title' => $this->l('Transition period'),
						'desc' => $this->l('The period, in milliseconds, of the transition effect.'),
						'validation' => 'isUnsignedInt',
						'cast' => 'intval',
						'type' => 'text',
					),
					'ST_BLOG_RELATED_PAUSE' => array(
						'title' => $this->l('Pause On Hover'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool',
					),
    				'ST_BLOG_RELATED_EASING' => array(
    					'title' => $this->l('Easing method'),
                        'desc' => $this->l('The type of easing applied to the transition animation'),
    					'validation' => 'isInt',
    					'cast' => 'intval',
    					'type' => 'select',
    					'list' => self::$easing,
    					'identifier' => 'value',
    				),
					'ST_BLOG_RELATED_LOOP' => array(
						'title' => $this->l('Loop'),
                        'desc' => $this->l('"No" if you want to perform the animation once; "Yes" to loop the animation'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool'
					),
					'ST_BLOG_RELATED_MOVE' => array(
						'title' => $this->l('Move'),
						'cast' => 'intval',
						'show' => true,
						'required' => false,
						'type' => 'radio',
						'validation' => 'isUnsignedInt',
						'choices' => array(
							1 => $this->l('1 item'),
							2 => $this->l('All visible items')
						),
					),
				),
            ),
            'slideshow' => array(
                'title' => $this->l('Blog slideshow'),
                'image' => '../img/admin/tab-categories.gif',
				'fields' =>	array(
					'ST_BLOG_SS_SLIDESHOW' => array(
						'title' => $this->l('Autoplay'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool',
					),
					'ST_BLOG_SS_S_SPEED' => array(
						'title' => $this->l('Time'),
						'desc' => $this->l('The period, in milliseconds, between the end of a transition effect and the start of the next one.'),
						'validation' => 'isUnsignedInt',
						'cast' => 'intval',
						'type' => 'text',
					),
					'ST_BLOG_SS_A_SPEED' => array(
						'title' => $this->l('Transition period'),
						'desc' => $this->l('The period, in milliseconds, of the transition effect.'),
						'validation' => 'isUnsignedInt',
						'cast' => 'intval',
						'type' => 'text',
					),
					'ST_BLOG_SS_PAUSE' => array(
						'title' => $this->l('Pause On Hover'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool',
					),
					'ST_BLOG_SS_LOOP' => array(
						'title' => $this->l('Loop'),
                        'desc' => $this->l('"No" if you want to perform the animation once; "Yes" to loop the animation'),
						'validation' => 'isBool',
						'cast' => 'intval',
						'required' => false,
						'type' => 'bool'
					),
				),
    			'submit' => array(
    				'title' => $this->l('Save'),
    				'class' => 'button',
    			)
            ),
		);
	}
}
