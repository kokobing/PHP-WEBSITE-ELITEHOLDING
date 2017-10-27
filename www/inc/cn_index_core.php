<?php
require "./inc/config.php";
require "./inc/function.class.php";
require "./inc/cn_header_core.php";//页头 页脚调用


$bannerpic=getlayoutpicnuminfo(3,99,'opicname');

$servicenews=getnewslist(2,'id_newsinfo,title,intro,content');
$k=0;

$newslist=getnewslist(6,'id_newsinfo as nid,title,newsdate');//取出首页滚动

?>