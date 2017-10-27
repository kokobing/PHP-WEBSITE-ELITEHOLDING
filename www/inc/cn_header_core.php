<?php

$serviceslist=getnewslist(2,'id_newsinfo,title');//header menu services
$designlist=getnewslist(3,'id_newsinfo,title');//header menu services
$resourcelist=getnewslist(4,'id_newsinfo,title');//header menu services
$aboutlist=getnewslist(5,'id_newsinfo,title');//header menu services

$resourcenews=getnewslist(4,'id_newsinfo,title,intro,content');//右侧Resource Center列表

$reasons=getpagesetinfo(3,'title,pagetitle');

?>