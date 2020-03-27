<html>
<head>
<link rel="stylesheet" href="style.css"/>
</head>

<body>
<div class="banner">
Product Detail
</div>
<div class="detailedPicContainer">

<?php

if (isset($_REQUEST['PanId']))
{
	$thePanId=$_REQUEST['PanId'];
	
	$dbc=mysqli_connect("localhost","oo19aai","30X4MErh","dboo19aai")
	OR die(mysqli_connect_error());
	
	mysqli_set_charset($dbc,"utf-8");
	
	$q="SELECT * FROM productstable WHERE id=$thePanId";
	$r=mysqli_query($dbc,$q);
	
	if($r)
	{
		while ($row=mysqli_fetch_array($r,MYSQLI_ASSOC))
		{
			$thisImage=$row['image'];
			$thisCaption=$row['description'];
			echo "<img src=\"$thisImage\" class=\"detailedPic\">";
			echo "$thisCaption";
		}
	}
}
else
{
	echo "no PanId";
}
?>
	</div>
	</body>
	</html>
	