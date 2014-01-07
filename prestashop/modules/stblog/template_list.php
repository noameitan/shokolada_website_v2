<?php
require_once(dirname(__FILE__).'/../../config/config.inc.php');
require_once(dirname(__FILE__).'/../../init.php');

$files_list = scandir(dirname(__FILE__).'/article_templates/');
$article_templates = array();

foreach ($files_list as $file)
	if (strripos($file, '.html') > 0)
        $article_templates[] = $file;

if(!count($article_templates))
    die;

$cm = '';
echo 'var tinyMCETemplateList = ['; 
foreach($article_templates as $v)
{
    $temp = explode('.',$v);
    echo $cm.'["'.$temp[0].'","'._MODULE_DIR_.'stblog/article_templates/'.$v.'","'.$v.'"]';
    $cm = ',';
}
echo '];';
?>