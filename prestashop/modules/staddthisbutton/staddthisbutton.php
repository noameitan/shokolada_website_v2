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

class StAddThisButton extends Module
{
    private $_html = '';
    public $fields_form;
    public $fields_value;
    private static $customizing_specail = array(
            'facebook_like' => 'Facebook Like',
            'facebook_send' => 'Facebook Send',
            'tweet' => 'Twitter',
            'google_plusone_badge' => 'Google+ Badge',
            'linkedin_counter' => 'LinkedIn',
            'twitter_follow_native' => 'Twitter Follw',
            'hyves_respect' => 'Hyves',
            'pinterest_pinit' => 'Pinterest',
            'google_plusone' => 'Google +2'
            );
    private static $customizing_array = array(
            'facebook'=>'Facebook',
            'twitter'=>'Twitter',  
            'hyves'=>'Hyves',
            'linkedin'=>'LinkedIn',
            'google_plusone_share'=>'Google+', 
            'email'=>'Email',
            'print'=>'Print',
            'gmail'=>'Gmail',
            'stumbleupon'=>'StumbleUpon',
            'favorites'=>'Favorites',
            'tumblr'=>'Tumblr',
            'pinterest_share'=>'Pinterest',
            'google'=>'Google',
            'mailto'=>'Email App',
            'blogger'=>'Blogger', 
            'delicious'=>'Delicious',  
            'yahoomail'=>'Y! Mail',   
            'hotmail'=>'Outlook',   
            'printfriendly'=>'PrintFriendly', 
            'aolmail'=>'AOL Mail', 
            'livejournal' =>'LiveJournal',
            'wordpress'=>'WordPress',
            'friendfeed'=>'FriendFeed',
            '100zakladok'=>'100zakladok',
            '2linkme'=>'2linkme',
            '2tag'=>'2 Tag',
            'a97abi'=>'A97abi',
            'adfty'=>'Adfty',
            'adifni'=>'Adifni',
            'advqr'=>'ADV QR',
            'aim'=>'Lifestream',
            'tumblr'=>'Tumblr',
            'amazonwishlist'=>'Amazon',
            'amenme'=>'Amen Me!',
            'apsense'=>'APSense',
            'arto'=>'Arto',
            'azadegi'=>'Azadegi', 
            'baang'=>'Baang',  
            'baidu'=>'Baidu',   
            'balltribe'=>'BallTribe',   
            'beat100'=>'Beat100', 
            'biggerpockets'=>'BiggerPockets', 
            'bitly' =>'Bit.ly',
            'bizsugar'=>'BizSugar',
            'bland'=>'Bland takkinn',
            'blinklist'=>'Blinklist',
            'blip'=>'Blip',
            'bloggy'=>'Bloggy',
            'blogkeen' =>'Blogkeen',
            'blogmarks'=>'Blogmarks',
            'blurpalicious'=>'Blurpalicious',
            'bobrdobr'=>'Bobrdobr',
            'bonzobox'=>'BonzoBox',
            'bookmarkycz'=>'Bookmarky.cz',
            'bookmerkende'=>'Bookmerken',
            'box'=>'Box',
            'brainify'=>'Brainify',
            'bryderi'=>'Bryderi.se',
            'buddymarks'=>'BuddyMarks',
            'buffer'=>'Buffer',
            'buzzzy'=>'Buzzzy', 
            'camyoo'=>'Camyoo',  
            'care2'=>'Care2',   
            'chimein'=>'Chime',   
            'chiq'=>'Chiq', 
            'cirip'=>'Cirip', 
            'classicalplace' =>'ClassicalPlace',
            'cleanprint'=>'CleanPrint',
            'cleansave'=>'CleanSave',
            'cndig'=>'Cndig',
            'colivia'=>'Colivia.de',
            'cosmiq'=>'COSMiQ',
            'cssbased'=>'CSS Based',
            'curateus'=>'Curate.us',
            'digaculturanet'=>'DigaCultura',
            'digg'=>'Digg',
            'diggita'=>'Diggita',
            'digo'=>'Digo',
            'diigo'=>'Diigo',
            'domaintoolswhois'=>'Whois Lookup',
            'domelhor'=>'DoMelhor',
            'dosti'=>'Dosti',
            'dotnetshoutout'=>'.netShoutout', 
            'douban'=>'Douban',  
            'draugiem'=>'Draugiem.lv',   
            'dropjack'=>'Dropjack',   
            'dudu'=>'Dudu', 
            'dzone'=>'Dzone', 
            'edelight' =>'Edelight',
            'efactor'=>'EFactor',
            'ekudos'=>'eKudos',
            'elefantapl'=>'elefanta.pl',
            'embarkons'=>'Embarkons',
            'evernote'=>'Evernote',
            'extraplay' =>'extraplay',
            'ezyspot'=>'EzySpot',
            'fabulously40'=>'Fabulously40',
            'fark'=>'Fark',
            'farkinda'=>'Farkinda',
            'fashiolista'=>'Fashiolista',
            'favable'=>'FAVable',
            'faves'=>'Faves',
            'favlogde'=>'Brainify',
            'favlog'=>'favlog',
            'favoritende'=>'Favoriten',
            'favoritus'=>'Favoritus',
            'flaker'=>'Flaker', 
            'folkd'=>'Folkd',  
            'foodlve'=>'Cherry Share',   
            'formspring'=>'Formspring',   
            'fresqui'=>'Fresqui', 
            'funp'=>'funP', 
            'fwisp' =>'fwisp',
            'gabbr'=>'Gabbr',
            'gamekicker'=>'Gamekicker',
            'gg'=>'GG',
            'giftery'=>'Giftery.me',
            'gigbasket'=>'GigBasket',
            'givealink'=>'GiveALink',
            'gluvsnap'=>'Healthimize',
            'goodnoows'=>'Good Noows',
            'googletranslate'=>'Translate',
            'govn'=>'Go.vn',
            'greaterdebater'=>'GreaterDebater',
            'hackernews'=>'Hacker News',
            'hatena'=>'Hatena',
            'hedgehogs'=>'Hedgehogs',
            'historious'=>'historious', 
            'hotklix'=>'Hotklix',  
            'identica'=>'Identi.ca',   
            'ihavegot'=>'ihavegot', 
            'index4'=>'Index4', 
            'indexor' =>'Indexor',
            'informazione'=>'Informazione',
            'instapaper'=>'Instapaper',
            'iorbix'=>'iOrbix',
            'irepeater'=>'IRepeater',
            'isociety'=>'iSociety',
            'iwiw' =>'iWiW',
            'jamespot'=>'Jamespot',
            'jappy'=>'Jappy Ticker',
            'jolly'=>'Jolly',
            'jumptags'=>'Jumptags',
            'kaboodle'=>'Kaboodle',
            'kaevur'=>'Kaevur',
            'kaixin'=>'Kaixin Repaste',
            'ketnooi'=>'Ketnooi',
            'kindleit'=>'Kindle It',
            'kledy'=>'Kledy',
            'kommenting'=>'Kommenting',
            'latafaneracat'=>'La tafanera', 
            'librerio'=>'Librerio',  
            'lidar'=>'LiDAR Online',   
            'link'=>'Copy Link',   
            'linksgutter'=>'Links Gutter', 
            'linkshares'=>'LinkShares', 
            'linkuj' =>'Linkuj.cz',
            'live'=>'Messenger',
            'lockerblogger'=>'LockerBlogger',
            'logger24'=>'Logger24',
            'markme'=>'Markme',
            'mashant'=>'Mashant',
            'mashbord'=>'Mashbord',
            'me2day'=>'me2day',
            'meinvz'=>'meinVZ',
            'mekusharim'=>'Mekusharim',
            'memonic'=>'Memonic',
            'memori'=>'Memori.ru',
            'mendeley'=>'Mendeley',
            'meneame'=>'Meneame',
            'misterwong'=>'Mister Wong',
            'mixi'=>'Mixi',
            'moemesto'=>'Moemesto.ru', 
            'moikrug'=>'Moikrug',  
            'mrcnetworkit'=>'mRcNEtwORK',   
            'mymailru'=>'Mail.ru',   
            'myspace'=>'Myspace', 
            'n4g'=>'N4G', 
            'naszaklasa' =>'Nasza-klasa',
            'netlog'=>'NetLog',
            'netvibes'=>'Netvibes',
            'netvouz'=>'Netvouz',
            'newsmeback'=>'NewsMeBack',
            'newstrust'=>'NewsTrust',
            'newsvine' =>'Newsvine',
            'nujij'=>'Nujij',
            'odnoklassniki_ru'=>'Odnoklassniki',
            'oknotizie'=>'OKNOtizie',
            'orkut'=>'Orkut',
            'oyyla'=>'Oyyla',
            'packg'=>'Packg',
            'pafnetde'=>'Pafnet',
            'pdfmyurl'=>'PDFmyURL',
            'pdfonline'=>'PDF Online',
            'phonefavs'=>'PhoneFavs',
            'planypus'=>'Planypus',
            'plaxo'=>'Plaxo', 
            'plurk'=>'Plurk',  
            'pocket'=>'Pocket',   
            'posteezy'=>'Posteezy',   
            'posterous'=>'Posterous', 
            'pusha'=>'Pusha', 
            'qrfin' =>'QRF.in',
            'qrsrc'=>'QRSrc.com',
            'quantcast'=>'Quantcast',
            'qzone'=>'Qzone',
            'raiseyourvoice'=>'Write Your Rep',
            'reddit'=>'Reddit',
            'rediff'=>'Rediff MyPage',
            'redkum'=>'RedKum',
            'researchgate'=>'ResearchGate',
            'safelinking'=>'Safelinking',
            'scoopat'=>'Scoop.at',
            'scoopit'=>'Scoop.it',
            'sekoman'=>'Sekoman',
            'select2gether'=>'Select2Gether',
            'sharer'=>'Sharer',
            'shaveh'=>'Shaveh',
            'shetoldme'=>'She Told Me', 
            'sinaweibo'=>'Sina Weibo',  
            'skyrock'=>'Skyrock Blog',   
            'smiru'=>'SMI',   
            'socialbookmarkingnet'=>'BookmarkingNet', 
            'sodahead'=>'SodaHead', 
            'sonico' =>'Sonico',
            'spinsnap'=>'SpinSnap',
            'springpad'=>'springpad',
            'startaid'=>'Startaid',
            'startlap'=>'Startlap',
            'storyfollower'=>'StoryFollower',
            'studivz' =>'studiVZ',
            'stuffpit'=>'Stuffpit',
            'stumpedia'=>'Stumpedia',
            'stylishhome'=>'FabDesign',
            'sunlize'=>'Sunlize',
            'supbro'=>'SUP BRO',
            'surfingbird'=>'Surfingbird',
            'svejo'=>'Svejo',
            'symbaloo'=>'Symbaloo',
            'taaza'=>'TaazaShare',
            'tagza'=>'Tagza',
            'taringa'=>'Taringa!',
            'technerd'=>'Communicate', 
            'textme'=>'Textme',  
            'thefancy'=>'The Fancy',   
            'thefreedictionary'=>'FreeDictionary',   
            'thewebblend'=>'The Web Blend', 
            'thinkfinity'=>'Thinkfinity', 
            'thisnext' =>'ThisNext',
            'throwpile'=>'Throwpile',
            'toly'=>'to.ly',
            'topsitelernet'=>'TopSiteler',
            'transferr'=>'Transferr',
            'tuenti'=>'Tuenti',
            'tulinq'=>'Tulinq',
            'tvinx'=>'Tvinx',
            'twitthis'=>'TwitThis',
            'typepad'=>'Typepad',
            'upnews'=>'Upnews.it',
            'urlaubswerkde'=>'Urlaubswerk',
            'viadeo'=>'Viadeo',
            'virb'=>'Virb',
            'visitezmonsite'=>'VisitezMonSite',
            'vk'=>'VKontakte',
            'vkrugudruzei'=>'vKruguDruzei', 
            'voxopolis'=>'VOX Social',  
            'vybralisme'=>'VybraliSME',   
            'w3validator'=>'HTML Validator',   
            'webnews'=>'Webnews',
            'webshare'=>'WebShare', 
            'werkenntwen' =>'WerKenntWen',
            'wirefan'=>'WireFan',
            'windows'=>'Windows Gadget',
            'wowbored'=>'WowBored',
            'wykop'=>'Wykop',
            'xanga'=>'Xanga',
            'xing' =>'XING',
            'yahoobkm'=>'Y! Bookmarks',
            'yammer'=>'Yammer',
            'yardbarker'=>'Yardbarker',
            'yigg'=>'Yigg',
            'yiid'=>'Spreadly',
            'yookos'=>'Yookos',
            'yoolink'=>'Yoolink',
            'yorumcuyum'=>'Yorumcuyum',
            'youmob'=>'YouMob',
            'yuuby'=>'Yuuby',
            'zakladoknet'=>'Zakladok.net',
            'ziczac'=>'ZicZac', 
            'zingme'=>'ZingMe',
        );
	public function __construct()
	{
		$this->name          = 'staddthisbutton';
		$this->tab           = 'front_office_features';
		$this->version       = '1.2.6';
		$this->author        = 'SUNNYTOO.COM';
		$this->need_instance = 0;

		parent::__construct();

		$this->displayName  = $this->l('Add this button');
		$this->description  = $this->l('The Largest Sharing and Social Data Platform.');
	}

	public function install()
	{
		if (!parent::install() 
            || !$this->registerHook('displayStBlogArticleFooter')
            || !$this->registerHook('displayProductSecondaryColumn')
            || !Configuration::updateValue('ST_ADDTHIS_STYLE', 2)
            || !Configuration::updateValue('ST_ADDTHIS_STYLE_FOR_BLOG', 0)
            || !Configuration::updateValue('ST_ADDTHIS_PUBID', '')
            || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING', '')
            || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING_S', '')
            || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING_FOR_BLOG', '')
            || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING_FBS', '')
            || !Configuration::updateValue('ST_ADDTHIS_SHOW_MORE', 1)
            || !Configuration::updateValue('ST_ADDTHIS_SHOW_MORE_FOR_BLOG', 1)
        )
			return false;
            
		$this->_clearCache('staddthisbutton.tpl');
		return true;
	}
	
	public function uninstall()
	{
		$this->_clearCache('staddthisbutton.tpl');   
		return parent::uninstall();
	}
    
    public function getContent()
	{
		if (isset($_POST['savestaddthisbutton']))
		{
            $c      = Tools::getValue('customizing');
            $cfb    = Tools::getValue('customizing_for_blog');
            $cs     = Tools::getValue('customizing_specail');
            $cfbs   = Tools::getValue('customizing_for_blog_specail');
            if (Tools::getValue('style') == 3)
            {
                $c = array();
                $cs = array();
            }
            
            if (Tools::getValue('style_for_blog') == 3)
            {
                $cfbs = array();
                $cfb = array();
            }  
               
            if (!Configuration::updateValue('ST_ADDTHIS_STYLE', (int)Tools::getValue('style'))
                || !Configuration::updateValue('ST_ADDTHIS_STYLE_FOR_BLOG', (int)Tools::getValue('style_for_blog'))
                || !Configuration::updateValue('ST_ADDTHIS_PUBID', (string)Tools::getValue('pubid'))
                || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING', $c?(string)serialize(array_unique($c)):'')
                || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING_FOR_BLOG', $cfb?(string)serialize(array_unique($cfb)):'')
                || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING_S', $cs?(string)serialize(array_unique($cs)):'')
                || !Configuration::updateValue('ST_ADDTHIS_CUSTOMIZING_FBS',$cfbs?(string)serialize(array_unique($cfbs)):'')
                || !Configuration::updateValue('ST_ADDTHIS_SHOW_MORE', (int)Tools::getValue('show_more'))
                || !Configuration::updateValue('ST_ADDTHIS_SHOW_MORE_FOR_BLOG', (int)Tools::getValue('show_more_for_blog'))
            )
                $this->_html .= count($errors) ? implode('',$error) : $this->displayError($this->l('Cannot update settings'));
            else
                $this->_html .= $this->displayConfirmation($this->l('Settings updated'));    
			
		    $this->_clearCache('staddthisbutton.tpl');        
        }
		$helper = $this->initForm();
        $helper->fields_value['style'] = (int)Configuration::get('ST_ADDTHIS_STYLE');
        $helper->fields_value['style_for_blog'] = (int)Configuration::get('ST_ADDTHIS_STYLE_FOR_BLOG');
        $helper->fields_value['pubid'] = Configuration::get('ST_ADDTHIS_PUBID');
        $helper->fields_value['customizing[]'] = Configuration::get('ST_ADDTHIS_CUSTOMIZING')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING')):array();
        $helper->fields_value['customizing_for_blog[]'] = Configuration::get('ST_ADDTHIS_CUSTOMIZING_FOR_BLOG')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING_FOR_BLOG')):array();
        $helper->fields_value['show_more'] = (int)Configuration::get('ST_ADDTHIS_SHOW_MORE');
        $helper->fields_value['show_more_for_blog'] = (int)Configuration::get('ST_ADDTHIS_SHOW_MORE_FOR_BLOG');
        $helper->fields_value['customizing_specail[]'] = Configuration::get('ST_ADDTHIS_CUSTOMIZING_S')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING_S')):array();
        $helper->fields_value['customizing_for_blog_specail[]'] = Configuration::get('ST_ADDTHIS_CUSTOMIZING_FBS')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING_FBS')):array();
		return $this->_html.$helper->generateForm($this->fields_form);
	}
    protected function initForm()
	{
		$default_lang = (int)Configuration::get('PS_LANG_DEFAULT');
        //ksort(self::$customizing_array);
        
		$this->fields_form[0]['form'] = array(
			'legend' => array(
				'title' => $this->l('Settings'),
			),
			'input' => array(
                array(
					'type' => 'radio',
					'label' => $this->l('Select style(Product page):'),
					'name' => 'style',
					'class' => 't',
                    'default_value' => 0,
					'values' => array(
						array(
							'id' => 'style_one',
							'value' => 0,
							'label' => $this->l('Style 1')),
						array(
							'id' => 'style_two',
							'value' => 1,
							'label' => $this->l('Style 2')),
						array(
							'id' => 'style_three',
							'value' => 2,
							'label' => $this->l('Style 3')),
						array(
							'id' => 'style_four',
							'value' => 3,
							'label' => $this->l('Style 4')),
					),
                    'desc' => $this->l('Style 1').'<br/><img src="'.$this->_path.'views/img/style_1.jpg" /><br/>'.$this->l('Style 2').'<br/><img src="'.$this->_path.'views/img/style_2.jpg" /><br/>'.$this->l('Style 3').'<br/><img src="'.$this->_path.'views/img/style_3.jpg" /><br/>'.$this->l('Style 4').'<br/><img src="'.$this->_path.'views/img/style_4.jpg" /><br/>',
				), 
                array(
					'type' => 'radio',
					'label' => $this->l('Select style(Blog page):'),
					'name' => 'style_for_blog',
					'class' => 't',
                    'default_value' => 0,
					'values' => array(
						array(
							'id' => 'style_for_blog_one',
							'value' => 0,
							'label' => $this->l('Style 1')),
						array(
							'id' => 'style_for_blog_two',
							'value' => 1,
							'label' => $this->l('Style 2')),
						array(
							'id' => 'style_for_blog_three',
							'value' => 2,
							'label' => $this->l('Style 3')),
						array(
							'id' => 'style_for_blog_four',
							'value' => 3,
							'label' => $this->l('Style 4')),
					),
				),
                array(
					'type' => 'text',
					'label' => $this->l('Addthis ID:'),
					'name' => 'pubid',
					'size' => 64,
                    'desc' => $this->l('Input your own Addthis id ex.: ra-516bd3c977d5eb6c for analitycs.').'<br/><img src="'.$this->_path.'views/img/addthis_id.jpg" />',
				),
                array(
					'type' => 'selector',
                    'label' => $this->l('Disable and select your own buttons(product page):'),
					'name' => 'customizing[]',
					'addthis' => self::$customizing_array,
                    'addthis_specail' => self::$customizing_specail,
                    'name_specail' => 'customizing_specail[]',
                    'class_t' => 'customizing',
                    'desc' => array(
                        $this->l('Leaving SelectedButtons empty will use default buttons.'),
                        $this->l('Style 4 does not support this feature.'),
                    ),
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Show "More" button:'),
					'name' => 'show_more',
                    'class' => 't',
					'values' => array(
						array(
                            'id'    => 's_1',
							'value' => 1,
							'label' => $this->l('Yes')
						),
						array(
                            'id'    => 's_0',
							'value' => 0,
							'label' => $this->l('No')
						)
					),
				),
                array(
					'type' => 'selector',
                    'label' => $this->l('Disable and select your own buttons(blog page):'),
					'name' => 'customizing_for_blog[]',
					'addthis' => self::$customizing_array,
                    'addthis_specail' => self::$customizing_specail,
                    'name_specail' => 'customizing_for_blog_specail[]',
                    'class_t' => 'customizing_for_blog',
                    'desc' => array(
                        $this->l('Leaving SelectedButtons empty will use default buttons.'),
                        $this->l('Style 4 does not support this feature.'),
                    ),
				),
                array(
					'type' => 'radio',
					'label' => $this->l('Show "More" button:'),
					'name' => 'show_more_for_blog',
                    'class' => 't',
					'values' => array(
						array(
                            'id'    => 's_m_1',
							'value' => 1,
							'label' => $this->l('Yes')
						),
						array(
                            'id'    => 's_m_0',
							'value' => 0,
							'label' => $this->l('No')
						)
					),
				),
			),
			'submit' => array(
				'title' => $this->l('   Save   '),
				'class' => 'button'
			)
		);
		$helper = new HelperForm();
		$helper->module = $this;
		$helper->name_controller = 'staddthisbutton';
		$helper->identifier = $this->identifier;
		$helper->token = Tools::getAdminTokenLite('AdminModules');
		$helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
		$helper->default_form_language = $default_lang;
		$helper->allow_employee_form_lang = $default_lang;
		$helper->toolbar_scroll = true;
		$helper->title = $this->displayName;
		$helper->submit_action = 'savestaddthisbutton';
        
        
		$helper->toolbar_btn =  array(
			'save' =>
			array(
				'desc' => $this->l('Save'),
				'href' => AdminController::$currentIndex.'&configure='.$this->name.'&save'.$this->name.'&token='.Tools::getAdminTokenLite('AdminModules'),
			)
		);
		return $helper;
	}
    public function hookDisplayRightColumnProduct($params)
    {
		if (!$this->isCached('staddthisbutton.tpl', $this->stGetCacheId(1)))
    		$this->smarty->assign(array(
                'addthis_style' => Configuration::get('ST_ADDTHIS_STYLE'),
                'addthis_pubid' => Configuration::get('ST_ADDTHIS_PUBID'),
                'addthis_customizing' => Configuration::get('ST_ADDTHIS_CUSTOMIZING')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING')):array(),
                'addthis_show_more' => Configuration::get('ST_ADDTHIS_SHOW_MORE'),
                'addthis_style_one' => Configuration::get('ST_ADDTHIS_CUSTOMIZING_S')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING_S')):array()
    		));
		return $this->display(__FILE__, 'staddthisbutton.tpl', $this->stGetCacheId(1));
    }
    public function hookDisplayLeftColumnProduct($params)
    {
        return $this->hookDisplayRightColumnProduct($params);
    }
    public function hookDisplayProductSecondaryColumn($params)
    {
        return $this->hookDisplayRightColumnProduct($params);
    }
    public function hookDisplayStBlogArticleFooter($params)
    {
		if (!$this->isCached('staddthisbutton.tpl', $this->stGetCacheId(2)))
    		$this->smarty->assign(array(
                'addthis_style' => Configuration::get('ST_ADDTHIS_STYLE_FOR_BLOG'),
                'addthis_pubid' => Configuration::get('ST_ADDTHIS_PUBID'),
                'addthis_customizing' => Configuration::get('ST_ADDTHIS_CUSTOMIZING_FOR_BLOG')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING_FOR_BLOG')):array(),
                'addthis_show_more' => Configuration::get('ST_ADDTHIS_SHOW_MORE_FOR_BLOG'),
                'addthis_style_one' => Configuration::get('ST_ADDTHIS_CUSTOMIZING_FBS')?@unserialize(Configuration::get('ST_ADDTHIS_CUSTOMIZING_FBS')):array()
    		));
		return $this->display(__FILE__, 'staddthisbutton.tpl', $this->stGetCacheId(2));
    }
	protected function stGetCacheId($key,$name = null)
	{
		$cache_id = parent::getCacheId($name);
		return $cache_id.'_'.$key;
	}
}