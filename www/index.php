<?php require "./inc/cn_index_core.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title><?php if($page_content[pagetitle]!=''){echo $page_content[pagetitle];}else{echo $setinfo[title];}?></title>
<meta name="keywords" content="<?php if($page_content[keywords]!=''){echo $page_content[keywords];}else{echo $setinfo[keywords];}?>" />
<meta name="description" content="<?php if($page_content[description]!=''){echo $page_content[description];}else{echo $setinfo[description];}?>" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link type="text/css" rel="stylesheet" media="all" href="/inc/css/node.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/defaults.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/system.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/system-menus.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/user.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/content-module.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/filefield.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/fieldgroup.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/views.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/default.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/style.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/suckerfish.css" />
<link type="text/css" rel="stylesheet" media="all" href="./inc/css/front.css" />
<link type="text/css" rel="stylesheet" media="print" href="/inc/css/print.css" />
<link type="text/css" rel="stylesheet" media="screen" href="/inc/css/tabs.css" />

<!--[if IE]><style type="text/css" media="all">@import "/inc/css/ie.css";</style><![endif]-->
<!--[if lte IE 6]><style type="text/css" media="all">@import "/inc/css/ie6.css";</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="all">@import "/inc/css/ie7.css";</style><![endif]-->

<!--[if lte IE 6]>
<script type="text/javascript" src="/sites/all/themes/pred/js/suckerfish.js"></script>
<![endif]-->

<script type="text/javascript" src="/inc/js/jquery.js"></script>
<script type="text/javascript" src="/inc/js/drupal.js"></script>

<script type="text/javascript" src="/inc/js/stmenu.js"></script>
<script src="/inc/js/jquery.min.js"></script>
<script src="/inc/js/jquery.easing.1.3.js"></script>
<script src="/inc/js/slides.min.jquery.js"></script>

<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: '/inc/pics/loading.gif',
				play: 5000,
				pause: 2500,
				effect: 'fade, fade',
				hoverPause: true
			});
		});
</script>

<style type="text/css">
.test {
font-size: 12px;
line-height:15px;
text-decoration: none;
}

</style>

</head>

  <body class="front not-logged-in page-node node-type-page two-sidebars with-navigation">
    
    <div id="skip-nav"><a href="#content">Skip to Content</a></div>  
    <div id="page">

<!-- header start-->
<?php require "header.php"?>
<!-- header end -->
    
    <div class="header-top"></div>

    <!-- ______________________ MAIN _______________________ -->

    <div id="main" class="clearfix">
    
      <div id="content">

        <div id="content-inner" class="inner column">

<div id="content-top">
                      

<div id="mainadv">

	<div id="container">
			<div id="slides">
				<div class="slides_container">
                <?php for($i=0;$i<sizeof($bannerpic);$i++){?>
					<a href="javascript:void(0)"><img src="/upload/layout/<?=$bannerpic[$i][opicname]?>" width="942"></a>
                <?php }?>
                </div>
			</div>
            
	</div>

</div><!--end mainadv!-->


</div> <!-- /#content-top -->

          </div>
        </div> <!-- /content-inner /content -->

	<div class="content-top"></div>

<div id="sizer">

                  <div id="sidebar-first" class="column sidebar first">
            <div id="sidebar-first-inner" class="inner">

				
				<h1><?php $indextxt1=getlayoutinfo(5,'intro,content'); echo $indextxt1[intro];?></h1>
				<p><?=$indextxt1[content];?></p>
				
				<h2><?php $indextxt2=getlayoutinfo(6,'intro,content'); echo $indextxt2[intro];?></h2>
				<p><?=$indextxt2[content];?></p>
				<br><br>
				
              <div id="block-block-10" class="block block-block odd left clearfix">
  <div class="block-inner">

    
    <div class="content">
      <table style="width: 100%;" border="0" cellspacing="0" cellpadding="5">
<tbody>
<?php 
for($i=0;$i<3;$i++){?>

<tr>
<?php 
for($j=0;$j<2;$j++){?>

<td valign="top">
<table style="width: 100%;" border="0" cellspacing="0" cellpadding="10">
<tbody>
<tr>
<td rowspan="2" valign="top"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><img src="/upload/news/<?=getnewspic($servicenews[$k][id_newsinfo])?>" border="0" width="82" height="60" /></a></td>
<td valign="top">
<h3><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><?=$servicenews[$k][title]?></a></h3>
<p><?=cutstr($servicenews[$k][intro],140,1)?></p>
</td>
</tr>
<tr>
<td valign="top"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>">Learn more</a></td>
</tr>
</tbody>
</table>
</td>
<?php
$k++;
 }?>

</tr>
<?php }?>
</tbody>
</table>
    </div>

    
  </div> <!-- /block-inner -->
</div> <!-- /block -->
            </div>
          </div>
         <!-- /sidebar-left -->

       
              <?php require "rightindex.php"?>
<div class="clear"></div>
</div>
		  </div> 
		  
       <!-- /sidebar-second -->
		             <div id="content-bottom" class="inner-content-btm">
              <div id="block-block-8" class="block block-block odd content_bottom clearfix">
  <div class="block-inner">

    <?php require "link.php"?>
    
  </div> <!-- /block-inner -->
</div> <!-- /block -->            </div><!-- /#content-bottom -->
          </div>
       <!-- /main -->

<!--FOOTER start-->
    <?php require "footer.php"?>
<!-- footer end-->
      
    </div> <!-- /page -->
    
        
  </body>
</html>