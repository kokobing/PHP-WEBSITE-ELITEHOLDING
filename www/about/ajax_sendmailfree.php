<?php  
require "../inc/config.php";
require "../inc/function.class.php";

date_default_timezone_set('Asia/Shanghai'); 


$request_name = $_REQUEST["name"];
$request_company = $_REQUEST["company"];
$request_phone = $_REQUEST["phone"];
$request_email = $_REQUEST["email"];
$request_comments = $_REQUEST["comments"];


if(trim($request_name)!=''  and trim($request_email)!=''  and trim($request_comments)!=''){

$subject="留言反馈 :".$request_name." -  时间：".date("Y-m-d G:i:s");//主题
//内容
$body="
<br><br>
	   
Name : ".$request_name."<br><br>
Company : ".$request_company."<br><br>
Phone : ".$request_phone."<br><br>
Email : ".$request_email."<br><br>
Comments : ".$request_comments."<br><br>

".date("Y")."-".date("m")."-".date("d")."";



$strSQL="INSERT INTO newsinfo(title,content,id_newsdir,indate,newsdate) values('$subject','$body','10',now(),now())";
	$objDB->Execute($strSQL);



  $arr['info']="Send Feedback successful!";
  $myjson= json_encode($arr);
  echo $myjson;


}else{

 $arr['info']="Send Feedback fail";
  $myjson= json_encode($arr);
  echo $myjson;

}


?>

