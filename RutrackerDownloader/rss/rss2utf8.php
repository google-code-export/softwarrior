<?php

// win-utf8 converter
// www.arserblog.com
//

error_reporting(0);
if($_GET['url']){
	$handle = @fopen($_GET['url'], "r");
	if (!$handle) {header("HTTP/1.0 404 Not Found"); exit;}
	$content = '';
	while (!feof($handle)) {
	  $content .= fread($handle, 8192);
	}
	fclose($handle);    
	preg_match('/<\?.+?encoding="(.+?)"/msi', $content, $match);
	if($match[1] && strcasecmp($match[1], "utf-8") != 0 && strcasecmp($match[1], "utf8") != 0){
		$content = preg_replace("/$match[1]/", "utf-8", $content, 1);
		if($match[1] == "windows-1251")
               		$content = win3utf($content);
          	else
          		$content = @iconv($match[1], "utf-8", $content);
     }
     header("Content-Type: text/xml; charset=utf-8");
     echo $content;     
     exit;
}
function win3utf($s)    {
   for($i=0, $m=strlen($s); $i<$m; $i++)    {
       $c=ord($s[$i]);
       if ($c<=127) {$t.=chr($c); continue; }
       if ($c>=192 && $c<=207) {$t.=chr(208).chr($c-48); continue; }
       if ($c>=208 && $c<=239) {$t.=chr(208).chr($c-48); continue; }
       if ($c>=240 && $c<=255) {$t.=chr(209).chr($c-112); continue; }
       //if ($c==184) { $t.=chr(209).chr(209); continue; };
     if ($c==184) { $t.=chr(209).chr(145); continue; };       
   if ($c==168) { $t.=chr(208).chr(129);  continue; };
   }
   return $t;
}

?>