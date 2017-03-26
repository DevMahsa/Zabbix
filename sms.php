#!/usr/bin/php
 <?php
try {
 $wsdl = "";
 $client = new SoapClient($wsdl, array('trace' => 1));
 $client->SendSMS(array("SendSMSInfo"=>array("UserName"=>"","Password"=>"","TargetNumber"=>"","Message"=>"")));
 echo $client->__getLastResponse();
} catch (Exception $e) {
  echo "<pre>Exception: ".print_r($e, true)."</pre>\n";
}

 ?>
