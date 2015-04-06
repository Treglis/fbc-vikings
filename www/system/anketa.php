<?php
// NASTAVENI ANKETY
$Otazka="Kde skončíme v této sezóně?"; // Anketni otazka
$Odpovedi=array(
        "Baráž",
        "9-10 místo",
        "Play-off"
				); // Pole odpovedi. Pocet odpovedi je promenny, staci do pole pridat nebo odebrat odpoved...
$CisloAnkety=3; // Chcete-li zmenit otazku ankety a odpovedi, zmente i  cislo ankety...
// KONEC NASTAVENI

// byl odeslan formular ?
if (isset($_POST['sent']) && $_POST['odp'] != 0){      
	$odp = (int)$_POST['odp']; //postneme si co zadal
	$CisloAnkety=(int)$CisloAnkety;
	
	$ip = $_SERVER["REMOTE_ADDR"]; // IP adresa návštěvníka
	$ip_cele = gethostbyaddr($_SERVER['REMOTE_ADDR']); // cela IP adresa návštěvníka
		
	$vysledekIP = mysql_query("SELECT COUNT(ip) FROM anketa WHERE `ip`= '$ip' AND `ip_cele`='$ip_cele' AND `anketa`='".$CisloAnkety."'"); //podivame se do databaze jestli uz se z IP navstevnika nehlasovalo
			if (mysql_result($vysledekIP,0) == 0){ // pokud v db ip neni, navstevnik nehlasoval
				mysql_query("INSERT INTO anketa (`odp`,`anketa`,`ip`,`ip_cele`,`cas`) VALUES ('$odp', '$CisloAnkety', '$ip', '$ip_cele', NOW() )");	// vlozime tedy hlas spolecne s IP do db
			}else{
				echo "<script language='javascript' type='text/javascript'>alert('Nelze hlasovat vícekrát');</script>"; // jinak jestli je v db tak chodime alert ze uz hlasoval
			}
}

// no a ted uz jenom vyechujem formular a tabulku se zadanim otazky a odpovedi...

echo "
	<form action='#' method='post'> <!-- zpracuje skript a vrati na aktualni stranku z ktere se hlasovalo  --> 
		<input type='hidden' name='sent' value='' />
		<table class='anketa' border='0'>
			<tr>
				<th>".$Otazka."</th> <!-- zadani anketni otazky -->
			</tr> ";
			
			$PocetOdpovedi=count($Odpovedi); // Spocitame kolik anketa ma odpovedi.
			$PocetHlasu=0; // Nastavime pocet celkovych hlasu na 0, postupne budeme pricitat s odpovedmi			
			$PocetHlasu=mysql_result(mysql_query("SELECT COUNT(odp) FROM `anketa` WHERE `anketa`='".$CisloAnkety."'"),0);
			//echo $PocetHlasu;
			
			for($i=1;$i<=$PocetOdpovedi;$i++){ // Spocitame pocet odpovedi a pro kazdou z nich vypiseme input pro voleni, obrazek a pocet procent hlasu.
				$odp = mysql_result(mysql_query("SELECT COUNT(odp) FROM `anketa` WHERE `odp` = '".$i."' AND `anketa`='".$CisloAnkety."'"),0);	
				
				$odpSize= round(($odp / $PocetHlasu ) * 80 );			// nasobim mensim cislem, aby posuvnik znazornujici pocet hlasu nebyl tak dlouhy
				$odpProcent=round(($odp / $PocetHlasu) * 100 );		// Pocet procent zastoupeni odpovedi
				
				echo "
					<tr>
						<td> ".$Odpovedi[$i-1]."<br />
							<input type='radio' name='odp' value='".$i."' />
							<img src='obr/anketa/zacatek.gif' alt='' border='0' /><img src='obr/anketa/stred.gif' width='".$odpSize."' height='12' alt='' border='0' /><img src='obr/anketa/konec.gif' alt='' border='0' />
							<br />
							".$odpProcent."%
						</td>
					</tr>";
			} // end FOR
			
			echo "
				<tr>
				<td>
					<b>Celkem hlasů:</b> ".$PocetHlasu."<br />
					<center><input type='submit' name='send' value='Hlasuj!' class='TlacitkoOdeslat' /></center>
				</td>
			</tr>
		</table>
	</form>";
?>