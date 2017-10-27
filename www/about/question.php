<?php require "../inc/cn_request_core.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title><?php if($pageinfo[pagetitle]!=''){echo $pageinfo[pagetitle];}else{echo $setinfo[title];}?></title>
<meta name="keywords" content="<?php if($pageinfo[keywords]!=''){echo $pageinfo[keywords];}else{echo $setinfo[keywords];}?>" />
<meta name="description" content="<?php if($pageinfo[description]!=''){echo $pageinfo[description];}else{echo $setinfo[description];}?>" />

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
<script language="JavaScript">
function mailsend() {
						if($.trim($("#name").val())==''){alert('Please enter your name');return false;}	
						if($.trim($("#email").val())==''){alert('Please enter your email address');return false;}	
						if($.trim($("#comments").val())==''){alert('Please enter your comments');return false;}	
						$.post('ajax_sendmailquestion.php',{name:$("#name").val(),company:$("#company").val(),phone:$("#phone").val(),email:$("#email").val(),comments:$("#comments").val()},function(data) {
                               var myjson = '';eval('myjson=' + data + ';');
                               alert(myjson.info);
							   window.location.href='/';
                         });

}
</script>

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

              <div class="breadcrumb"><a href="/">Home</a> » Ask a Question</div>

				              
                              <h1 class="title">Ask a Question</h1>
              
            </div> <!-- /#content-header -->
          
          <div id="content-area">
            <div class="node node node-type-webform" id="node-35">
  <div class="node-inner">

    
    
    <div class="content">
    
    
<div><div class="webform-component-markup" id="webform-component-intro"><p>(<span class="form-required">*</span>) Fields are required.</p>
</div><div class="webform-component-textfield" id="webform-component-name"><div class="form-item" id="edit-submitted-name-wrapper">
 <label for="edit-submitted-name">Name: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="128" name="name" id="name" size="60" value="" class="form-text required" />
</div>
</div><div class="webform-component-textfield" id="webform-component-company"><div class="form-item" id="edit-submitted-company-wrapper">
 <label for="edit-submitted-company">Company: </label>
 <input type="text" maxlength="128" name="company" id="company" size="60" value="" class="form-text" />
</div>
</div><div class="webform-component-textfield" id="webform-component-phone"><div class="form-item" id="edit-submitted-phone-wrapper">
 <label for="edit-submitted-phone">Phone: </label>
 <input type="text" maxlength="15" name="phone" id="phone" size="15" value="" class="form-text" />
</div>
</div><div class="webform-component-email" id="webform-component-email"><div class="form-item" id="edit-submitted-email-wrapper">
 <label for="edit-submitted-email">Email: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="128" name="email" id="email" size="60" value="" class="form-text required" />
</div>
</div>

<!--
<div class="webform-component-file" id="webform-component-file_upload"><div class="form-item" id="edit-file-upload-wrapper">
 <label for="edit-file-upload">File Upload: </label>
 <input type="file" name="files[file_upload]"  class="form-file" id="edit-file-upload" size="49" />

 <div class="description"><p>10 MB only</p>
</div>
</div>
</div>
<input type="hidden" name="submitted[file_upload][new]" id="edit-submitted-file-upload-new" value="file_upload"  />
-->
<div class="webform-component-textarea" id="webform-component-comments"><div class="form-item" id="edit-submitted-comments-wrapper">
 <label for="edit-submitted-comments">Comments: <span class="form-required" title="This field is required.">*</span></label>
 <textarea cols="60" rows="5" name="comments" id="comments"  class="form-textarea resizable required"></textarea>
</div>
</div><input type="hidden" name="details[email_subject]" id="edit-details-email-subject" value="default"  />

<input type="submit" name="op" id="edit-submit" value="Submit"  class="form-submit"  onclick="mailsend();" />

</div>



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