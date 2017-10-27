    <div id="header">
<!--<div class="call-us">Call us: <span>800-394-3006</span></div>-->
      <div id="logo-title">
		<a href="/" title="Premier Die Casting" rel="home" id="logo"><img src="/upload/layout/<?=getlayoutpic(1,0)?>" border="0"/></a>
      </div> 
<!--  <div class="clear"></div>-->
              <div id="header-region">
          <div id="block-block-6" class="block block-block odd header clearfix">
  <div class="block-inner">

    
    <div class="content">
      <div class="call-us"><?php $telnum=getlayoutinfo(1,'content'); echo $telnum[content];?></div>
    </div>

    
  </div> <!-- /block-inner -->
</div> <!-- /block -->        </div>
      
      
	<div id="suckerfish-container"><div id="suckerfishmenu"><div id="block-menu-primary-links" class="block block-menu odd suckerfish clearfix">
  <div class="block-inner">

          <h3 class="title block-title">Primary links</h3>
    
<div class="content">
<ul class="menu">

<li class="leaf first active-trail home"><a href="/" <?php if(strstr(getcurrentfilename(),"index")!==false){?> class="active" <?php }?>>Home</a></li>

<li class="expanded services"><a href="/services/services.php" <?php if(strstr(getcurrentfilename(),"services")!==false){?> class="active" <?php }?>><?=getonenewsdir2(2)?></a>
    <ul class="menu">
    <?php for($i=0;$i<sizeof($serviceslist);$i++){?>
        <li class="leaf"><a href="/services/servicesinfo.php?nid=<?=$serviceslist[$i][id_newsinfo]?>"><?=$serviceslist[$i][title]?></a></li>
    <?php }?>
    </ul>
</li>

<li class="expanded design_expertise"><a href="/design/design.php" <?php if(strstr(getcurrentfilename(),"design")!==false){?> class="active" <?php }?>><?=getonenewsdir2(3)?></a>
    <ul class="menu">
    <?php for($i=0;$i<sizeof($designlist);$i++){?>
        <li class="leaf"><a href="/design/designinfo.php?nid=<?=$designlist[$i][id_newsinfo]?>"><?=$designlist[$i][title]?></a></li>
    <?php }?>
    </ul>
</li>

<li class="leaf portfolio"><a href="/about/info.php?pageid=1" <?php if($_GET[pageid]==1){?> class="active" <?php }?>><?php $pageset1=getpagesetinfo(1,'title');echo $pageset1[title];?></a></li>

<li class="expanded resource_center"><a href="/resource/resource.php" <?php if(strstr(getcurrentfilename(),"resource")!==false){?> class="active" <?php }?>><?=getonenewsdir2(4)?></a>
    <ul class="menu">
    <?php for($i=0;$i<sizeof($resourcelist);$i++){?>
        <li class="leaf"><a href="/resource/resourceinfo.php?nid=<?=$resourcelist[$i][id_newsinfo]?>"><?=$resourcelist[$i][title]?></a></li>
    <?php }?>
    </ul>
</li>

<li class="expanded about_us"><a href="/about/about.php?nid=15" <?php if(strstr(getcurrentfilename(),"about")!==false){?> class="active" <?php }?>><?=getonenewsdir2(5)?></a>
    <ul class="menu">
    <?php for($i=0;$i<sizeof($aboutlist);$i++){?>
        <li class="leaf"><a href="/about/about.php?nid=<?=$aboutlist[$i][id_newsinfo]?>"><?=$aboutlist[$i][title]?></a></li>
    <?php }?>
    </ul>
</li>

<li class="leaf last contact_us"><a href="/about/info.php?pageid=2" <?php if($_GET[pageid]==2){?> class="active" <?php }?>><?php $pageset2=getpagesetinfo(2,'title');echo $pageset2[title];?></a></li>

</ul>    

</div>

    
  </div> <!-- /block-inner -->
</div> <!-- /block --></div></div>

  <div class="clear"></div>
  
    </div> 