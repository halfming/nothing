<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="./css.css"  type="text/css" media="screen" charset="utf-8" />
 		<title>遇见自己</title>
</head>
<body>
	<div class="wrap">
			<header>
				<a href="/">index</a>
			</header>
			<div class="hr">&nbsp;</div>
	<div class="section-listing">
<?php
$xml = simplexml_load_file("index.xml");
?>
<ol class="group">
<?php

foreach($xml->data as $data)
{
print("<li><a href=");
print($data->link);
print(">");
print($data->theme);
print("</a><span class='snip'>");
print($data->content);
print("</span></li>");
}
?>
</ol>
		<footer>
   	<p>
      <a href="mailto:halfming@gmail.com" >halfming@gmail.com</a>
      <a href="/log.html" >log</a>
    </p>              
		</footer>
	</div>

</body>
</html>