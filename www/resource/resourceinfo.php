<?php require "../inc/cn_resourceinfo_core.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title><?php if($page_content[pagetitle]!=''){echo $page_content[pagetitle];}else{echo $setinfo[title];}?></title>
<meta name="keywords" content="<?php if($page_content[keywords]!=''){echo $page_content[keywords];}else{echo $setinfo[keywords];}?>" />
<meta name="description" content="<?php if($page_content[description]!=''){echo $page_content[description];}else{echo $setinfo[description];}?>" />

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

  <body class="not-front not-logged-in page-node node-type-page one-sidebar sidebar-right with-navigation page-design-expertise section-design-expertise">
    
    <div id="skip-nav"><a href="#content">Skip to Content</a></div>  
    <div id="page">

<!-- header start-->
<?php require "../header.php" ?>
<!-- header end -->
    
    <div class="header-top"></div>
    

    
    

    <!--MAINs-->
  <div class="inner-content-top"></div>

    <div id="main" class="clearfix">
    
      <div id="content">
        <div id="content-inner" class="inner column">


				


          
                      <div id="content-header">

              <div class="breadcrumb"><a href="/">Home</a> » <a href="/resource/resource.php"><?php $str=getonenewsdir2(4);echo $str;?></a> » <?=$onenews[title]?></div>

				              
                              <h1 class="title"><?=$onenews[title]?></h1>
              
				


              
              
               

              

            </div> <!-- /#content-header -->
          
          <div id="content-area">
            <div class="node node node-type-page" id="node-3">
  <div class="node-inner">

    
    
    <div class="content"><?=$onenews[content]?></div>

    
    
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