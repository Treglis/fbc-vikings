<?php

echo "<h2>Editování</h2>";
require_once("system/const.php");
$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
$step = $_GET["step"];
$id = $_GET["id"];

$prezdivka =  $_POST["prezdivka"];
$jmenoPrijmeni =  $_POST["jmenoPrijmeni"];
$datumNarozeni=$_POST["datumNarozeni"];
$cisloDresu=$_POST["cisloDresu"]; 
$pozice=$_POST["pozice"];
$znackaHole=$_POST["znackaHole"];
$cepel=$_POST["cepel"];
$zahnuti=$_POST["zahnuti"];
$email=$_POST["email"];
$telefon=$_POST["telefon"];
$icq=$_POST["icq"];
$funkce=$_POST["funkce"];
$funkce2=$_POST["funkce2"];
$fotka=$_POST["fotka"];
$heslo=$_POST["heslo"];
$hraje=$_POST["hraje"];

$domaci=$_POST["domaci"];
$hoste=$_POST["hoste"];
$datumCas=$_POST["datumCas"];
$misto=$_POST["misto"];
$vysledekDomaci=$_POST["vysledekDomaci"];
$vysledekHoste=$_POST["vysledekHoste"];
$typ=$_POST["typ"];
$rocnik=$_POST["rocnik"];

$branky=$_POST["branky"];
$brankyPO=$_POST["brankyPO"];
$odehraneZapasy=$_POST["odehraneZapasy"];
$odehraneZapasyPO=$_POST["odehraneZapasyPO"];
$rok=$_POST["rok"];

$body=$_POST["body"];
$odehZapasy=$_POST["odehZapasy"];
$poradi=$_POST["poradi"];
$odkaz=$_POST["odkaz"];

$nazev=$_POST["nazev"];
$text=$_POST["text"];
$autor=$_POST["autor"];

$ident=$_POST["ident"];
$poraneni=$_POST["poraneni"];


switch($step){
    case 'upravHrace':       //tabulka pro editovani rezisera
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT * FROM hraci WHERE id = \''.$id.'\' ; ';     //musim nacist puvodni hodnoty z databaze
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"
            <h3>Úprava hráče</h3>
            <form action='index.php?akce=edit&amp;step=upravHraceDb&amp;id=$zaznam[id]' method='POST'>
            <table align='center' class='tabulkaTvorba'>
            <tr> 
                <td>Přezdívka:</td> 
                <td><input type='text' name='prezdivka' value='$zaznam[prezdivka]'></td>
            </tr>
            <tr> 
                <td>Jméno a příjmení:</td> 
                <td><input type='text' name='jmenoPrijmeni' value='$zaznam[jmenoPrijmeni]'></td>
            </tr>
            <tr> 
                <td>Datum narození:</td> 
                <td><input type='text' name='datumNarozeni' value='$zaznam[datumNarozeni]'></td>
            </tr>
            <tr> 
                <td>Číslo dresu:</td> 
                <td><input type='text' name='cisloDresu' value='$zaznam[cisloDresu]'></td>
            </tr>
            <tr> 
                <td>Pozice:</td> 
                <td><input type='text' name='pozice' value='$zaznam[pozice]'></td>
            </tr>
            <tr> 
                <td>Značka hole:</td> 
                <td><input type='text' name='znackaHole' value='$zaznam[znackaHole]'></td>
            </tr>
            <tr> 
                <td>Čepel:</td> 
                <td><input type='text' name='cepel' value='$zaznam[cepel]'></td>
            </tr>
            <tr> 
                <td>Zahnutí:</td>
                <td>
                  <select name='zahnuti'>
                      ".zobrazZahnuti($zaznam[zahnuti])."                     
                  </select> 
                </td>
            </tr>
            <tr> 
                <td>Mail:</td> 
                <td><input type='text' name='email' value='$zaznam[email]'></td>
            </tr>
            <tr> 
                <td>Telefon:</td> 
                <td><input type='text' name='telefon' value='$zaznam[telefon]'></td>
            </tr>
            <tr> 
                <td>Icq:</td> 
                <td><input type='text' name='icq' value='$zaznam[icq]'></td>
            </tr>
            <tr> 
                <td>Funkce:</td> 
                <td><input type='text' name='funkce' value='$zaznam[funkce]'></td>
            </tr>
            <tr> 
                <td>Funkce 2:</td> 
                <td><input type='text' name='funkce2' value='$zaznam[funkce2]'></td>
            </tr>
            <tr> 
                <td>Fotka:</td> 
                <td><input type='text' name='fotka' value='$zaznam[fotka]'></td>
            </tr>
            <tr> 
                <td>Heslo:</td> 
                <td><input type='text' name='heslo' value='$zaznam[heslo]'></td>
            </tr>
            <tr> 
                <td>Hraje? 1-ne 0-ano:</td> 
                <td><input type='text' name='hraje' value='$zaznam[hraje]'></td>
            </tr>
            <tr> 
                <td></td> 
                <td><input type='submit' value='Ulož'></td>
            </tr>
            </table>
            </form>
            ";
        
        endwhile;
        
    break;
    
    case 'upravHraceDb':     //prepsani informaci o reziserech v databazi
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'UPDATE `hraci` SET 
                  prezdivka = \''.$prezdivka.'\',
                  jmenoPrijmeni = \''.$jmenoPrijmeni.'\',
                  datumNarozeni = \''.$datumNarozeni.'\',
                  cisloDresu = \''.$cisloDresu.'\',
                  pozice = \''.$pozice.'\',
                  znackaHole = \''.$znackaHole.'\',
                  cepel = \''.$cepel.'\',
                  zahnuti = \''.$zahnuti.'\',
                  email = \''.$email.'\',
                  telefon = \''.$telefon.'\',
                  icq = \''.$icq.'\',
                  funkce = \''.$funkce.'\',
                  funkce2 = \''.$funkce2.'\',
                  fotka = \''.$fotka.'\',
                  heslo = \''.$heslo.'\',
                  hraje = \''.$hraje.'\'
                  WHERE id = \''.$id.'\'';
            if (MySQL_Query($sql)){
              echo "Úspěšně upraveno.";
            } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
            }
    break;
    
     case 'upravZapas':           //tabulka pro editovani zanru
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT * FROM zapasy WHERE id = \''.$id.'\' ; ';        //musim nacist puvodni hodnoty z databaze
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"
            <h3>Uprav zápas</h3>
            <b>Číslování ročníků je od 1, což je ročník 2008/2009</b><br /><br />
            <form action='index.php?akce=edit&amp;step=upravZapasDb&amp;id=$zaznam[id]' method='POST'>
            <table align='center' class='tabulkaTvorba'>
            <tr> 
                <td>Domácí:</td> 
                <td><input type='text' name='domaci' value='$zaznam[domaci]'></td>
            </tr>
            <tr> 
                <td>Hosté:</td> 
                <td><input type='text' name='hoste' value='$zaznam[hoste]'></td>
            </tr>
            <tr> 
                <td>Datum a čas:</td> 
                <td><input type='text' name='datumCas' value='$zaznam[datumCas]'></td>
            </tr>
            <tr> 
                <td>Místo:</td>
                <td>
                  <select name='misto'>
                      ".zobrazMistoEdit($zaznam[misto])."                     
                  </select> 
                </td>
            </tr>
            <tr> 
                <td>Výsledek domácí:</td> 
                <td><input type='text' name='vysledekDomaci' value='$zaznam[vysledekDomaci]'></td>
            </tr>
            <tr> 
                <td>Výsledek hosté:</td> 
                <td><input type='text' name='vysledekHoste' value='$zaznam[vysledekHoste]'></td>
            </tr>
            <tr> 
                <td>Typ:</td>
                <td>
                  <select name='typ'>";
                      $typy = zobrazTypEdit($zaznam[typ]);
                      foreach ($typy as $typ){
                      echo $typ;
                      }                     
            echo"
                  </select> 
                </td>
            </tr>
            <tr> 
                <td>Ročník:</td> 
                <td><input type='text' name='rocnik' value='$zaznam[rocnik]'></td>
            </tr>  
            <tr> 
                <td></td> 
                <td><input type='submit' value='Ulož'></td>
            </tr>
            </table>
            </form>
            ";
        
        endwhile;
        
    break;
    
    case 'upravZapasDb':         //zapsani zmeny v zanru zpet do databaze
        mysql_query("SET CHARACTER SET utf8;");
        $sql = 'UPDATE `zapasy` SET 
                  domaci = \''.$domaci.'\',
                  hoste = \''.$hoste.'\',
                  datumCas = \''.$datumCas.'\',
                  misto = \''.$misto.'\',
                  vysledekDomaci = \''.$vysledekDomaci.'\',
                  vysledekHoste = \''.$vysledekHoste.'\',
                  typ = \''.$typ.'\',
                  rocnik = \''.$rocnik.'\'
                  WHERE id = \''.$id.'\'';
            if (MySQL_Query($sql)){
              echo"Úspěšně upraveno.";
            } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
            }
    break;    

    case 'upravAktualitu':           //tabulka pro editovani zanru
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT * FROM aktuality WHERE id = \''.$id.'\' ; ';        //musim nacist puvodni hodnoty z databaze
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"
            <h3>Úprava aktuality</h3>
            <form action='index.php?akce=edit&amp;step=upravAktualituDb&amp;id=$zaznam[id]' method='POST'>
            <table align='center' class='tabulkaTvorba'>
            <tr> 
                <td>Název:</td> 
                <td><input type='text' name='nazev' value='$zaznam[nazev]'></td>
            </tr>
            <tr> 
                <td>Text:</td> 
                <td><textarea name='text' cols='50' rows='15' wrap='soft'>$zaznam[text]</textarea></td>
            </tr>
            <tr> 
                <td>Autor:</td> 
                <td><input type='text' name='autor' value='$zaznam[autor]'></td>
            </tr>
            <tr> 
                <td></td> 
                <td><input type='submit' value='Ulož'></td>
            </tr>
            </table>
            </form>
            ";
        
        endwhile;
        
    break;
    
    case 'upravAktualituDb':         //zapsani zmeny v zanru zpet do databaze
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'UPDATE `aktuality` SET 
                  nazev = \''.$nazev.'\',
                  text = \''.$text.'\',
                  autor = \''.$autor.'\'
                  WHERE id = \''.$id.'\'';
            if (MySQL_Query($sql)){
              echo"Úspěšně upraveno.";
            } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
            }
    break;    
    
    case 'upravStatistiku':           //tabulka pro editovani zanru
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT
          body.id,
          hraci.prezdivka,
          body.branky,
          body.brankyPO,
          body.odehraneZapasy,
          body.odehraneZapasyPO,
          body.rok
         FROM body, hraci WHERE body.idHrace = hraci.id AND body.id = \''.$id.'\' ; ';        //musim nacist puvodni hodnoty z databaze
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"
            <h3>Uprav statistiku</h3>
            <b>Číslování ročníků je od 1, což je ročník 2008/2009</b><br /><br />
            <form action='index.php?akce=edit&amp;step=upravStatistikuDb&amp;id=$zaznam[id]' method='POST'>
            <table align='center' class='tabulkaTvorba'>
            <tr> 
                <td>Jméno:</td> 
                <td>$zaznam[prezdivka]</td>
            </tr>
            <tr> 
                <td>Branky:</td> 
                <td><input type='text' name='branky' value='$zaznam[branky]'></td>
            </tr>
            <tr> 
                <td>Branky PO:</td> 
                <td><input type='text' name='brankyPO' value='$zaznam[brankyPO]'></td>
            </tr>
            <tr> 
                <td>Odehrané zápasy:</td> 
                <td><input type='text' name='odehraneZapasy' value='$zaznam[odehraneZapasy]'></td>
            </tr>
            <tr> 
                <td>Odehrané zápasy PO:</td> 
                <td><input type='text' name='odehraneZapasyPO' value='$zaznam[odehraneZapasyPO]'></td>
            </tr>
            <tr> 
                <td>Ročník:</td> 
                <td><input type='text' name='rok' value='$zaznam[rok]'></td>
            </tr>  
            <tr> 
                <td></td> 
                <td><input type='submit' value='Ulož'></td>
            </tr>
            </table>
            </form>
            ";
        
        endwhile;
        
    break;
    
    case 'upravStatistikuDb':         //zapsani zmeny v zanru zpet do databaze
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'UPDATE `body` SET 
                  branky = \''.$branky.'\',
                  brankyPO = \''.$brankyPO.'\',
                  odehraneZapasy = \''.$odehraneZapasy.'\',
                  odehraneZapasyPO = \''.$odehraneZapasyPO.'\',
                  rok = \''.$rok.'\'
                  WHERE id = \''.$id.'\'';
            if (MySQL_Query($sql)){
              echo"Úspěšně upraveno.";
            } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
            }
    break;    
    
    case 'upravMaroda':           //tabulka pro editovani zanru
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT * FROM marodka WHERE id = \''.$id.'\' ; ';        //musim nacist puvodni hodnoty z databaze
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"
            <h3>Úprava maroda</h3>
            <form action='index.php?akce=edit&amp;step=upravMarodaDb&amp;id=$zaznam[id]' method='POST'>
            <table align='center' class='tabulkaTvorba'>
            <tr> 
              <td>Jméno:</td> 
              <td>
                <select name='ident'>";
                $hraci=zobrazHraceEdit($zaznam[jmeno]);
                    foreach($hraci as $hrac){
                        echo $hrac;
                 }
        echo"     
                </select> 
              </td>
            </tr>
            <tr> 
                <td>Poraneni:</td> 
                <td><textarea name='poraneni' cols='50' rows='15'>$zaznam[poraneni]</textarea></td>
            </tr>
            <tr> 
                <td></td> 
                <td><input type='submit' value='Ulož'></td>
            </tr>
            </table>
            </form>
            ";
        
        endwhile;
        
    break;
    
    case 'upravMarodaDb':         //zapsani zmeny v zanru zpet do databaze
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT hraci.prezdivka FROM hraci WHERE id = \''.$ident.'\' ; ';
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
            $jmeno = $zaznam[prezdivka];
        endwhile;
        $sql = 'UPDATE `marodka` SET 
                  poraneni = \''.$poraneni.'\',
                  jmeno = \''.$jmeno.'\'
                  WHERE id = \''.$id.'\'';
            if (MySQL_Query($sql)){
              echo"Úspěšně upraveno.";
            } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
            }
    break;                                        
}
      
?>
