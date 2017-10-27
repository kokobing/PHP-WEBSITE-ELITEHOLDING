<div id="sidebar-second" class="column sidebar second">
            <div id="sidebar-second-inner" class="inner">
            <div id="block-block-1" class="block block-block even right clearfix">
  <div class="block-inner">

    
    <div class="content">
      <div class='clear'></div>
<p><a href="mailto:elitemold@eliteholding.cn" class="sidebar-btn"><img src="/inc/pics/icon1.jpg" border="0" width="33" height="30" /> Request a Quote</a></p>
    </div>

    
  </div> <!-- /block-inner -->
</div> <!-- /block --><div id="block-block-3" class="block block-block odd right clearfix">
  <div class="block-inner">

    
    <div class="content">
      <p><a href="callto:kingxie20060214" class="sidebar-btn"><img src="/inc/pics/icon2.jpg" border="0" width="33" height="30" />&nbsp;Ask a Question </a></p>
    </div>

    
  </div> <!-- /block-inner -->
</div> <!-- /block --><div id="block-block-4" class="block block-block even right clearfix">
  <div class="block-inner">

    
    <div class="content">
      <p><a href="/about/free.php" class="sidebar-btn"><img src="/inc/pics/icon3.jpg" border="0" width="33" height="30" />&nbsp;Free Design CD</a></p>
    </div>

    
  </div> <!-- /block-inner -->
</div> <!-- /block --><div id="block-block-18" class="block block-block odd right clearfix">
  <div class="block-inner">
    
  </div> <!-- /block-inner -->
</div> <!-- /block --><div id="block-block-5" class="block block-block even right clearfix">
  <div class="block-inner">



          <div class="blue-box-top">Die Casting Resource Center</div>
    
    <div class="blue-box-content">
      <ul>
<?php for($i=0;$i<sizeof($resourcenews);$i++){?>
      <li><a href="/resource/resourceinfo?nid=<?=$resourcenews[$i][id_newsinfo]?>"><?=$resourcenews[$i][title]?></a></li>
<?php }?>
      </ul>
    </div>
    
    
    

    
  </div> <!-- /block-inner -->
</div> <!-- /block --><div id="block-block-12" class="block block-block odd right clearfix">
  <div class="block-inner">



          <div class="blue-box-top">Newsletter</div>
    
    <div class="blue-box-content" style="display:none">


<div id="layer1" style="overflow-y:hidden;width:190px; height:160px; margin-top:5px;">
<div id="layer2">
   <table width="205" height="150" border="0" align="center" cellpadding="0" cellspacing="0" class="test">
    <tr>
       <td width="205" height="150" valign="top" bgcolor="#FFFFFF" class="nav1style style46">
          
         <?php for($i=0;$i<sizeof($newslist);$i++){?>
            <a href="/news/newsinfo.php?nid=<?=$newslist[$i][nid];?>" target="_blank"><?=$newslist[$i][title];?></a> <br><br>
         <?php }?>
       </td>
   </tr>
   </table>
</div>

<div id="layer3"></div>
</div>


    </div>
    
    
    

    
  </div> <!-- /block-inner -->
</div> <!-- /block --> 
			 <br />

            <div class="clear"></div>
		   </div>
      
    <div class="clear"></div>
            </div>
            
<script language="javascript">

var layerHeight = 150; // 定义滚动区域的高度.
var iFrame = 1; // 定义每帧移动的象素.
var iFrequency = 50; // 定义帧频率.
var timer; // 定义时间句柄.


if(document.getElementById("layer2").offsetHeight >= layerHeight)
   document.getElementById("layer1").style.height = layerHeight;
else
   document.getElementById("layer1").style.height = document.getElementById("layer2").offsetHeight;
   document.getElementById("layer3").innerHTML = document.getElementById("layer2").innerHTML;

function move(){
		 
   if(document.getElementById("layer1").scrollTop >= document.getElementById("layer2").offsetHeight){
   document.getElementById("layer1").scrollTop -= (document.getElementById("layer2").offsetHeight - iFrame);

   }
   else {
      document.getElementById("layer1").scrollTop += 1;

   }
   
   
}
  
timer = setInterval("move()",iFrequency);
document.getElementById("layer1").onmouseover=function() {clearInterval(timer);}
document.getElementById("layer1").onmouseout=function() {timer=setInterval("move()",iFrequency);}
</script>
