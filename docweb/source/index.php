<?php
$xml = simplexml_load_file("index.xml");
?>
<?php 
	include_once '../head.php';
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
<?php
include_once '../footer.php';
?>
