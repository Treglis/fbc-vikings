<?php

require_once("system/const.php");
$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
$step = $_GET["step"];
$prezdivka =  $_POST["prezdivka"];
$jmenoPrijmeni =  $_POST["jmenoPrijmeni"];
$datumNar=$_POST["datumNar"];
$cisloDresu=$_POST["cisloDresu"]; 
$pozice=$_POST["pozice"];
$znackaHole=$_POST["znackaHole"];
$cepel=$_POST["cepel"];
$zahnuti=$_POST["zahnuti"];
$mail=$_POST["mail"];
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

$ident=$_POST["jmeno"];
$poraneni=$_POST["poraneni"];

$nazev=$_POST["nazev"];
$text=$_POST["text"];
$autor=$_POST["autor"];

$branky=$_POST["branky"];
$brankyPO=$_POST["brankyPO"];
$odehraneZapasy=$_POST["odehraneZapasy"];
$odehraneZapasyPO=$_POST["odehraneZapasyPO"];
$rok=$_POST["rok"];


             
echo "<h2>Přidání</h2>";  //formular pro pridani noveho hrace
switch($step){
    case 'hrac':    
        echo "
        <h3>Přidej nového hráče</h3>
        <form action='index.php?akce=new&amp;step=pridejHrace' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Přezdívka:</td> 
            <td><input type='text' name='prezdivka'></td>
        </tr>
        <tr> 
            <td>Jméno a příjmení:</td> 
            <td><input type='text' name='jmenoPrijmeni'></td>
        </tr>
        <tr> 
            <td>Datum narození:</td> 
            <td><input type='text' name='datumNar'></td>
        </tr>
        <tr> 
            <td>Číslo dresu:</td> 
            <td><input type='text' name='cisloDresu'></td>
        </tr>
        <tr> 
            <td>Pozice:</td> 
            <td><input type='text' name='pozice'></td>
        </tr>
        <tr> 
            <td>Značka hole:</td> 
            <td><input type='text' name='znackaHole'></td>
        </tr>
        <tr> 
            <td>Čepel:</td> 
            <td><input type='text' name='cepel'></td>
        </tr>
        <tr> 
            <td>Zahnutí:</td>
            <td>
              <select name='zahnuti'>
                    <option value='Levé' selected>Levé</option>
                    <option value='Pravé'>Pravé</option>
              </select> 
            </td>
        </tr>
        <tr> 
            <td>Mail:</td> 
            <td><input type='text' name='mail' value='@.'></td>
        </tr>
        <tr> 
            <td>Telefon:</td> 
            <td><input type='text' name='telefon'></td>
        </tr>
        <tr> 
            <td>Icq:</td> 
            <td><input type='text' name='icq'></td>
        </tr>
        <tr> 
            <td>Funkce:</td> 
            <td><input type='text' name='funkce'></td>
        </tr>
        <tr> 
            <td>Funkce 2:</td> 
            <td><input type='text' name='funkce2' value='- '></td>
        </tr>
        <tr> 
            <td>Fotka:</td> 
            <td><input type='text' name='fotka' value='images/.jpg'></td>
        </tr>
        <tr> 
            <td>Heslo (prijmeni+cislo dresu):</td> 
            <td><input type='text' name='heslo'></td>
        </tr>
        <tr> 
            <td>Hraje?: 1-ne 0-ano</td> 
            <td><input type='text' name='hraje' value='0'></td>
        </tr>
        <tr> 
            <td></td> 
            <td><input type='submit' value='Ulož'></td>
        </tr>
        </table>
        </form>
        ";
    
    break;
    
    case 'pridejHrace':    //nahrani hodnot z formulare do databaze do tabulky hraci
        echo "<h3>Přidej novéno hrace</h3>";
        mysql_query("SET CHARACTER SET utf8;");
        $sql = "INSERT INTO hraci VALUES('', '$prezdivka', '$jmenoPrijmeni', '$datumNar', '$cisloDresu', 
          '$pozice', '$znackaHole', '$cepel', '$zahnuti', '$mail', '$telefon', '$icq', '$funkce',
          '$funkce2', '$fotka', '$heslo', '$hraje')";
        if (MySQL_Query($sql)){
            echo "Přidáno";
  /*          $sql = "INSERT INTO dochazka VALUES('', '', '')";
            if (MySQL_Query($sql)){
                echo "Přidáno do docházky";
            } else {
                echo "Nepřidáno do docházky";
            } */
        } else {
            echo "Nepřidáno ";
        }
       
    break;

    case 'zapas':    //formular pro pridani noveho zanru
        echo "
        <h3>Přidej nový zápas</h3>
        <form action='index.php?akce=new&amp;step=pridejZapas' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Domácí:</td> 
            <td><input type='text' name='domaci'></td>
        </tr>
        <tr> 
            <td>Hosté:</td> 
            <td><input type='text' name='hoste'></td>
        </tr>
        <tr> 
            <td>Datum a čas:</td> 
            <td><input type='text' name='datumCas' value='xx.xx.xx x:xx'></td>
        </tr>
        <tr> 
            <td>Místo:</td> 
            <td>
              <select name='misto'>
                    <option value='6. ZŠ'>6. ZŠ</option>
                    <option value='Sokolovna'>Sokolovna</option>
              </select> 
            </td>
        </tr>
        <tr> 
            <td>Výsledek domácí:</td> 
            <td><input type='text' name='vysledekDomaci'></td>
        </tr>
        <tr> 
            <td>Výsledek hosté:</td> 
            <td><input type='text' name='vysledekHoste'></td>
        </tr>
        <tr> 
            <td>Typ:</td> 
            <td>
              <select name='typ'>
                    <option value='normal'>normal</option>
                    <option value='playoff'>playoff</option>
                    <option value='baraz'>baraz</option>
              </select> 
            </td>
        </tr>
        <tr> 
            <td>Ročník:</td> 
            <td>
              <select name='rocnik'>";
              $rocniky=zobrazRocniky();
              foreach ($rocniky as $rocnik){
                echo "$rocnik";
              }
        echo"
              </select> 
            </td>
        </tr>  
        <tr> 
            <td></td> 
            <td><input type='submit' value='Ulož'></td>
        </tr>
        </table>
        </form>
        ";
    
    break;
    
    case 'pridejZapas':    //nahrani hodnot z formulare do databaze do tabulky zapasy
        echo "<h3>Přidej nový zápas</h3>";
        mysql_query("SET CHARACTER SET utf8;");
        $sql = "INSERT INTO zapasy VALUES('', '$domaci', '$hoste', '$datumCas', '$misto', '$vysledekDomaci', 
            '$vysledekHoste', '$typ', '$rocnik')";
        if (MySQL_Query($sql)){
            echo "Přidáno";
        } else {
            echo "Nepřidáno ";
        }
    break;    
    
    case 'marod':    //formular pro pridani noveho maroda
        echo "
        <h3>Přidej nové zranění</h3>
        <form action='index.php?akce=new&amp;step=pridejMaroda' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Jméno:</td> 
            <td>
              <select name='jmeno'>";
                $hraci=zobrazHrace();
                    foreach($hraci as $hrac){
                        echo $hrac;
                 }
        echo"     
              </select> 
            </td>
        </tr>
        <tr> 
            <td>Poranění:</td> 
            <td><textarea name='poraneni' cols='50' rows='15'></textarea></td>
        </tr>  
        <tr> 
            <td></td> 
            <td><input type='submit' value='Ulož'></td>
        </tr>
        </table>
        </form>
        ";
    
    break;
    
    case 'pridejMaroda':    //nahrani hodnot z formulare do databaze do tabulky zapasy
        echo "<h3>Přidej nové zranění</h3>";
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = 'SELECT hraci.prezdivka FROM hraci WHERE id = \''.$ident.'\' ; ';
        $vysledek = MySQL_Query($sql);
        while($zaznam = MySQL_Fetch_Array($vysledek)):
            $jmeno = $zaznam[prezdivka];
        endwhile;
        
        $sql = "INSERT INTO marodka VALUES('', '$jmeno', '$poraneni')";
        if (MySQL_Query($sql)){
            echo "Přidáno";
        } else {
            echo "Nepřidáno ";
        }
    break;    
    
    case 'statistika':    //formular pro pridani noveho zanru
        echo "
        <h3>Přidej novou statistiku</h3>
        <form action='index.php?akce=new&amp;step=pridejStatistiku' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Přezdívka:</td> 
            <td>
              <select name='prezdivka'>";
                $hraci=zobrazHrace();
                    foreach($hraci as $hrac){
                        echo $hrac;
                 }
        echo"     
              </select> 
            </td>
        </tr>
        <tr> 
            <td>Branky:</td> 
            <td><input type='text' name='branky'></td>
        </tr>
        <tr> 
            <td>Branky PO:</td> 
            <td><input type='text' name='brankyPO'></td>
        </tr>  
        <tr> 
            <td>Odehrané zápasy:</td> 
            <td><input type='text' name='odehraneZapasy'></td>
        </tr>
        <tr> 
            <td>Odehrané zápasy PO:</td> 
            <td><input type='text' name='odehraneZapasyPO'></td>
        </tr>
        <tr> 
            <td>Rocnik:</td> 
            <td>
              <select name='rok'>";
              $rocniky=zobrazRocniky();
              foreach ($rocniky as $rocnik){
                echo "$rocnik";
              }
        echo"
              </select> 
            </td>
        </tr>
        <tr> 
            <td></td> 
            <td><input type='submit' value='Ulož'></td>
        </tr>
        </table>
        </form>
        ";
    
    break;
    
    case 'pridejStatistiku':    //nahrani hodnot z formulare do databaze do tabulky zapasy
        echo "<h3>Přidej novou statistiku</h3>";
        mysql_Query("SET CHARACTER SET utf8;");
        $sql = "INSERT INTO body VALUES('', '$prezdivka', '$branky', '$brankyPO', '$odehraneZapasy', '$odehraneZapasyPO', '$rok')";
        if (MySQL_Query($sql)){
            echo "Přidáno";
        } else {
            echo "Nepřidáno ";
        }
    break;    
    
       
   default :    //formular pro pridani noveho filmu
        echo "
        <h3>Přidej novou aktualitu</h3>
        <form action='index.php?akce=new&amp;step=pridejAktualitu' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Název:</td> 
            <td><input type='text' name='nazev'></td>
        </tr>
        <tr> 
            <td>Text:</td> 
            <td><textarea name='text' cols='50' rows='15' wrap='soft'></textarea></td>
        </tr>
        <tr> 
            <td>Autor:</td> 
            <td><input type='text' name='autor'></td>
        </tr>  
        <tr> 
            <td></td> 
            <td><input type='submit' value='Ulož'></td>
        </tr>
        </table>
        </form>
        ";
    
    break;
    
    case 'pridejAktualitu':    //nahrani hodnot z formulare do databaze do tabulky zapasy
        mysql_query("SET CHARACTER SET utf8;");
        echo "<h3>Přidej novou aktualitu</h3>";
        $datum = Date("j.n.y");
        $sql = "INSERT INTO aktuality VALUES('', '$datum', '$nazev', '$text', '$autor')";
        if (MySQL_Query($sql)){
            echo "Přidáno";
        } else {
            echo "Nepřidáno ";
        }
    break;    
    
}
?>
