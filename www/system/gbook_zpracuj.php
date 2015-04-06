<?php   
ob_start();
require_once "const.php";
require_once "funkcedb.php";
require_once "gbook_funkce.php"; 	// funkce
require_once "gbook_config.php"; 	// konfigurace
$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB);

if(isset($_POST['sent']) AND $_POST['spam']==2){ // byl odeslan formular ?
	
	if($PovolCookie==true){ // vytvorime cookie
	  $nick= htmlspecialchars($_POST['nick']);
	  $mail= htmlspecialchars($_POST['mail']);
		@setcookie("GbookV4", $nick . ".+SEPARATOR+." . $mail . ".+SEPARATOR+.", time()+31536000); // SETCOOKIE
	}

	$ip = $_SERVER["REMOTE_ADDR"]; // zjistime ip adresu navstevnika
	$ip_cele = gethostbyaddr($ip);
			if (in_array($ip, $BanovaneIP)){ // pokud je IP adresa navstevnika napsana v gbook_config, vzkaz se neulozi a zobrazi se mu tato hlaska
				echo "<h3>Máš BAN, nemůžeš nic psát. Popros admina ať Tě smaže z banlistu</h3>"; 
				echo "<a href='".$_POST['backlink']."'>Zpět</a>";
				exit; // skript se dale neprovede
			} // konec ip ban
	$nick= htmlspecialchars($_POST['nick']); 
	$mail= htmlspecialchars($_POST['mail']);
	$textstary = $_POST['textstary'];
	if(substr_count($textstary, "http://") > 3) { // pokud je v textu vice jak 3x http, prispevek nezpracujeme, to delaji booti.
		echo "<script language=\"javascript\" type=\"text/javascript\">
				alert(\"SPAM?  nezadavej vice jak tri uplne adresy do textu, takove zpravy mazu jako spam... \");
				</script>";
			exit; // skript se dale neprovede
	} // konec substr_count

	if(substr_count($textstary, "[b]")!=substr_count($textstary, "[/b]") or 
		substr_count($textstary, "[i]")!=substr_count($textstary, "[/i]") or 
		substr_count($textstary, "[u]")!=substr_count($textstary, "[/u]") or 
		substr_count($textstary, "[kod]")!=substr_count($textstary, "[/kod]")		) { // pokud je v textu neuzavreny tag, zastavime zpracovani.
			echo "<script language=\"javascript\" type=\"text/javascript\">alert(\"V textu se nalézá neuzavřený tag, prosím, opravte text.\");</script>"; 
			echo "	<p><strong>Napsal jsi:</strong></p>
					<p>".$_POST['textstary']."</p>
					<p><a href='".$_POST['backlink']."'>Zpět</a></p>";
			exit; // skript se dale neprovede
	} // konec substr_count	  
	
	$text= PrevedIn($textstary);
	$odpoved= (int)$_POST['OdpovedNaPrispevek'];

	if(trim($nick)=="" || trim($textstary)=="") { // pokud nebyly vyplne jmeno a text, prispevek nezpracujeme
		echo "<script language=\"javascript\" type=\"text/javascript\">alert(\"nebyly vyplněny všechny POVINNÉ údaje\");</script>";
    echo "<a href='".$_POST['backlink']."'>Zpět</a>";  //pokud nebyl vyplneny nick a text, upozornime.
	}else{ // pokud byly vyplnene, vlozime do databaze
	mysql_query("SET CHARACTER SET utf8;");
  mysql_query("
					INSERT INTO ".$Table." 
					(nick, mail, zprava, cas, ip, ip_cele, odpoved )
					VALUES 
					('$nick', '$mail', '$text', now(), '$ip', '$ip_cele', '$odpoved' )
					") or die ('nepodarilo se vlozit data do databaze:-(' . mysql_error()); //vlozime data do db
	header ("Location:".$_POST['backlink'].""); // presmerujeme zpet na gbook.
	ob_end_flush();
		//exit;
  }
} // konec sent
else if ($_POST['spam']!=2) {echo "<script language=\"javascript\" type=\"text/javascript\">alert(\"Neprošel jsi antispamem, zkus to znovu.\");</script>";
                             echo "<a href='".$_POST['backlink']."'>Zpět</a>"; 
} 
?>