    <div class="content">
     <?php 
	  $linkpic=getlayoutpicnuminfo(4,99,'opicname');
	  for($i=0;$i<sizeof($linkpic);$i++){
	  ?>
      <img src="/upload/layout/<?=$linkpic[$i][opicname]?>"/>
      <?php }?>
    </div>