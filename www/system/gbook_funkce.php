<?php
require_once("gbook_config.php");

$ThisURL=$_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
function RamecekKom($odpoved, $trida, $id, $ip, $mail, $nick, $zprava, $cas ){
			$Separator=$GLOBALS['Separator'];
			
			$jmeno="<a href='javascript:smajlik(\"[b]".addslashes($nick)."[/b]: \")'  title='Vlož jméno: ".$nick."'>".$nick."</a>";
			
			if($mail!=""){
				$mail=$Separator . "<a href='mailto:".str_replace("@", " (z) ",$mail)."'>mail</a>";	
			}
			
			if($GLOBALS['PovolMazani']==true){
				$ShowDeleteButton="<a href='system/gbook_delete.php?id=".$id."&amp;GoBack=".$_SERVER['REQUEST_URI']."'>X</a>" .$Separator;
			}
			
			if($odpoved==1 and $GLOBALS['PovolOdpovedi']==true){
				$OdpovedetNa="<a onclick='javascript:VlozOdpoved(".$id.")' href='#form' title='Odpovíte na příspěvek č. ".$id."'>Odpověď</a>" .$Separator;
			}
			
		echo "<div class='$trida'>
				<div class='kom1'>
					<strong title='".$ip."'><a name='".$id."'></a>.:.</strong>
					".@$jmeno."
					".@$mail."
				</div>
				<div class='kom2'>
					".PrevedOut($zprava)."
				</div>
				<div class='kom3'>
					". @$OdpovedetNa . @$ShowDeleteButton . @$cas . "
				</div>
			</div>";
	
} // konec RamecekKom

function PrevedIn($ToDB){
	$text=addslashes(htmlspecialchars($ToDB));
	return $text;
}

function PrevedOut($zprava_z_db){
			$zprava_z_db=stripslashes($zprava_z_db);
			$find=array	(
					"\n",	":-)", 	":-D",	":-(",	"*TIRED*",	">:o",	";-)",	"%)",	"8-o",
					"[b]","[/b]",	"[u]","[/u]",	"[i]","[/i]",	"[kod]","[/kod]"
				);
			$replace_with=array	(
					" <br />",		
						"<img src='obr/smajly/1.gif' alt=':-)' class='smajl' />",
					"<img src='obr/smajly/2.gif' alt=':-D' class='smajl' />",
						"<img src='obr/smajly/3.gif' alt=':-(' class='smajl' />",
					"<img src='obr/smajly/4.gif' alt='*TIRED*' class='smajl' />",
						"<img src='obr/smajly/5.gif' alt='>:o' class='smajl' />", 
					"<img src='obr/smajly/6.gif' alt=';-)' class='smajl' />", 
						"<img src='obr/smajly/7.gif' alt='%)' class='smajl' />", 
					"<img src='obr/smajly/8.gif' alt='8-o' class='smajl' />",
						"<strong>","</strong>",		"<u>","</u>",	"<em>","</em>",	"<div class='zdrojak'>","</div>");
			$zprava_z_db2=str_replace($find, $replace_with, $zprava_z_db);
			$zprava_z_db3= ereg_replace("(http://[^ ]+\.[^ ]+)", " <a href=\"\\1\">odkaz</a> ", $zprava_z_db2);
			return $zprava_z_db3;
}
?> 