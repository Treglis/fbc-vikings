<?php
/*
* Konfigurační soubor gbooku. Zde se mění nastavení, nikde jinde nic měnit nemusíte
* Hodnoty jsou většinou TRUE nebo FALSE - pravda/nepravda.
*/

$StrankovatPo=15;		// Na stránce bude maximálně X prvních příspěvků. Ale není to celkový počet - nepočítají se odpovědi na ně!
$PovolCookie=true;		// Pokud jednou návštěvník vyplní údaje, uloží se do cookies a nemusí je vyplňovat příště znova
$PovolOdpovedi=true;	// Umožní odpovídat na příspěvky strukturovaně
$PovolMazani=true;		// Zobrazuje X pro smazání

// Chcete-li udělit nějaké IP adrese ban, připište jí sem:
$BanovaneIP= array(
					"",
					"",
					);

$Separator=" | ";		// oddělovač			
					
// Název SQL tabulky v databázi					
$Table="gbook_v2";

// Formát času. Použita funkce DATE_FORMAT - viz. http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html
$FormatovanyCas="%d.%m.%y, %H:%i:%s";
?>