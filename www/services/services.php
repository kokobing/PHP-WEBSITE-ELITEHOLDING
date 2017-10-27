<?php require "../inc/cn_services_core.php" ?>
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
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/layout.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/style.css" />
<link type="text/css" rel="stylesheet" media="all" href="/inc/css/suckerfish.css" />
<link type="text/css" rel="stylesheet" media="print" href="/inc/css/print.css" />
<link type="text/css" rel="stylesheet" media="screen" href="/inc/css/tabs.css" />

<!--[if IE]><style type="text/css" media="all">@import "/sites/all/themes/pred/css/ie.css";</style><![endif]-->
<!--[if lte IE 6]><style type="text/css" media="all">@import "/sites/all/themes/pred/css/ie6.css";</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="all">@import "/sites/all/themes/pred/css/ie7.css";</style><![endif]-->

<!--[if lte IE 6]>
<script type="text/javascript" src="/sites/all/themes/pred/js/suckerfish.js"></script>
<![endif]-->

<script type="text/javascript" src="/inc/js/jquery.js"></script>
<script type="text/javascript" src="/inc/js/drupal.js"></script>

</head>

  <body class="not-front not-logged-in page-node node-type-page one-sidebar sidebar-right with-navigation page-services section-services">
    
    <div id="skip-nav"><a href="#content">Skip to Content</a></div>  
    <div id="page">

<!-- header start-->
<?php require "../header.php" ?>
<!-- header end -->
    
    <div class="header-top"></div>
    

    
    

    <!-- ______________________ MAIN _______________________ -->
  <div class="inner-content-top"></div>

    <div id="main" class="clearfix">
    
      <div id="content">
        <div id="content-inner" class="inner column">


				


          
                      <div id="content-header">

              <div class="breadcrumb"><a href="/">Home</a> » <?php $str=getonenewsdir2(2);echo $str;?></div>

				              
                              <h1 class="title"><?=$str?></h1>
              
				


              
              
               

              

            </div> <!-- /#content-header -->
          
          <div id="content-area">
            <div class="node node node-type-page" id="node-2">
  <div class="node-inner">

    
    
    <div class="content">
      <table style="width: 600px;" border="0">
<tbody>
<?php 
$servicerownum=ceil(sizeof($servicenews)/2);
if(sizeof($servicenews)%2==0 && sizeof($servicenews)!=0){
for($i=0;$i<$servicerownum;$i++){?>
    <tr>
<?php 
$servicecolumnnum=2;
for($j=0;$j<$servicecolumnnum;$j++){?>
        <td style="width: 100px;">
        <p style="text-align: center;"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><img style="border: 0pt none; vertical-align: bottom;" src="/upload/news/<?=getnewspic($servicenews[$k][id_newsinfo])?>" border="0" width="100" height="75" /></a></p>
        </td>
        <td style="width: 100px;">
        <p><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><strong><?=$servicenews[$k][title]?></strong></a></p>
        <p><?=cutstr($servicenews[$k][intro],140,1)?></p>
        <p style="text-align: right;"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>">Learn more.</a></p>
        </td>
<?php
$k++;
 }?>
    </tr>
    
    <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
<?php }}?>



<?php 
$servicerownum=ceil(sizeof($servicenews)/2);
if(sizeof($servicenews)%2!=0 ){
for($i=0;$i<$servicerownum-1;$i++){?>
    <tr>
<?php 
$servicecolumnnum=2;
for($j=0;$j<$servicecolumnnum;$j++){?>
        <td style="width: 100px;">
        <p style="text-align: center;"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><img style="border: 0pt none; vertical-align: bottom;" src="/upload/news/<?=getnewspic($servicenews[$k][id_newsinfo])?>" border="0" width="100" height="75" /></a></p>
        </td>
        <td style="width: 100px;">
        <p><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><strong><?=$servicenews[$k][title]?></strong></a></p>
        <p><?=cutstr($servicenews[$k][intro],140,1)?></p>
        <p style="text-align: right;"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>">Learn more.</a></p>
        </td>
<?php
$k++;
 }?>
    </tr>
    
    <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
<?php } ?>
    <tr>
        <td style="width: 100px;">
        <p style="text-align: center;"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><img style="border: 0pt none; vertical-align: bottom;" src="/upload/news/<?=getnewspic($servicenews[$k][id_newsinfo])?>" border="0" width="100" height="75" /></a></p>
        </td>
        <td style="width: 100px;">
        <p><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>"><strong><?=$servicenews[$k][title]?></strong></a></p>
        <p><?=cutstr($servicenews[$k][intro],140,1)?></p>
        <p style="text-align: right;"><a href="/services/servicesinfo.php?nid=<?=$servicenews[$k][id_newsinfo]?>">Learn more.</a></p>
        </td>
    </tr>

    <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>

<?php }?>

</tbody>
</table>
    </div>

    
    
  </div> <!-- /node-inner -->
</div> <!-- /node-->          </div> <!-- /#content-area -->

          
         

          </div>
        </div> <!-- /content-inner /content -->





         <!-- /sidebar-left -->

       
    <?php require "../right.php"?>
          </div>
       <!-- /sidebar-second -->
		             <div id="content-bottom" class="inner-content-btm">
              <div id="block-block-8" class="block block-block odd content_bottom clearfix">
  <div class="block-inner">

    
    <?php require "../link.php"?>

    
  </div> <!-- /block-inner -->
</div> <!-- /block -->            </div><!-- /#content-bottom -->
          </div>
       <!-- /main -->

<!--FOOTER start-->
    <?php require "../footer.php"?>
<!-- footer end-->
      
    </div> <!-- /page -->
    
        
  </body>
</html>