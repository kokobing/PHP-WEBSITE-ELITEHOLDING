<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用


$designnews=getnewslist(6,'id_newsinfo,title,intro,content');

?>