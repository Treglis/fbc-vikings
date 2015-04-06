<?php
require_once("system/const.php");
$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
$step = $_GET["step"];
$id = $_GET["id"];
$cook = $_GET["cook"];
                      
echo "<h2>Zobrazení</h2>";    
switch($step){
    case 'zobrazHrace':    //zobrazeni hracu do tabulky
        mysql_query("SET CHARACTER SET utf8;");
        $sql = "SELECT * FROM hraci ;";
        $vysledek = MySQL_Query($sql);
        echo "<h3>Zobrazení hráčů</h3>
        <table align='center'> 
            <tr class='tabulkaNadpis'>
                <td class='ostatni'>Přezdívka</td>
                <td class='ostatni'>Jméno a příjmení</td>
                <td class='ostatni'>Datum narození</td>
                <td class='ostatni'>Číslo dresu</td>
                <td class='ostatni'>Pozice</td>
                <td class='ostatni'>Značka hole</td>
                <td class='ostatni'>Čepel</td>
                <td class='ostatni'>Zahnutí</td>
                <td class='ostatni'>Mail</td>
                <td class='ostatni'>Telefon</td>
                <td class='ostatni'>Icq</td>
                <td class='ostatni'>Funkce</td>
                <td class='ostatni'>Funkce 2</td>
                <td class='ostatni'>Fotka</td>
                <td class='ostatni'>Heslo</td>
                <td class='ostatni'>Hraje? 1-ne 0-ano</td>
                <td></td>                
                <td></td>                
            </tr>";
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"   
            <tr class='tabulkaVypis'>
                <td>$zaznam[prezdivka]</td>
                <td>$zaznam[jmenoPrijmeni]</td>
                <td>$zaznam[datumNarozeni]</td>
                <td>$zaznam[cisloDresu]</td>
                <td>$zaznam[pozice]</td>
                <td>$zaznam[znackaHole]</td>
                <td>$zaznam[cepel]</td>
                <td>$zaznam[zahnuti]</td>
                <td>$zaznam[email]</td>
                <td>$zaznam[telefon]</td>
                <td>$zaznam[icq]</td>
                <td>$zaznam[funkce]</td>
                <td>$zaznam[funkce2]</td>
                <td>$zaznam[fotka]</td> 
                <td>$zaznam[heslo]</td> 
                <td>$zaznam[hraje]</td> 
                <td class='odkazUprava'><a href='index.php?akce=edit&amp;step=upravHrace&amp;id=$zaznam[id]'>Uprav</a></td>                
                <td class='odkazSmazani'><a href='index.php?akce=del&amp;step=smazHrace&amp;id=$zaznam[id]'>Smaž</a></td>                   
            </tr>";
        endwhile;
        echo "</table>";
    break;
    
    case 'zobrazZapasy':       //zobrazeni zanru do tabulky
        $vyberRokZapas = $_COOKIE['vyberRokZapas'];
        if ($vyberRokZapas == ""){ 
            $vyberRokZapas = 3;
        }        

        echo"
        <form action = 'index.php?akce=show&amp;step=nacteniCookie&amp;cook=zapasy' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Ročník:</td> 
            <td>
              <select name='vyberRokZapas'>";
              $rocniky=zobrazRocniky2($vyberRokZapas);
              foreach ($rocniky as $rocnik){
                echo "$rocnik";
              }
        echo"
              </select>
            </td>
            <td><input type='submit' value='Vyber'></td>
        </tr>  
        </table>
        </form>";
        
        mysql_query("SET CHARACTER SET utf8;");
        $sql = 'SELECT 
          zapasy.id,
          zapasy.domaci,
          zapasy.hoste,
          zapasy.datumCas,
          zapasy.misto,
          zapasy.vysledekDomaci,
          zapasy.vysledekHoste,
          zapasy.typ,
          rocniky.rocnik
         FROM zapasy,rocniky WHERE zapasy.rocnik = \''.$vyberRokZapas.'\' AND zapasy.rocnik = rocniky.id;';    //nacteni hodnot z databaze
        $vysledek = MySQL_Query($sql);
        echo "<h3>Zobrazení zápasů</h3>
        <table align='center'> 
            <tr class='tabulkaNadpis'>
                <td class='ostatni'>Domaci</td>
                <td class='ostatni'>Hoste</td>
                <td class='ostatni'>Datum a čas</td>
                <td class='ostatni'>Místo</td>
                <td class='ostatni'>Výsledek Domácí</td>
                <td class='ostatni'>Výsledek Hosté</td>
                <td class='ostatni'>Typ</td>
                <td class='ostatni'>Ročník</td>
                <td></td>                
                <td></td>                
            </tr>";
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"   
            <tr class='tabulkaVypis'>
                <td>$zaznam[domaci]</td> 
                <td>$zaznam[hoste]</td> 
                <td>$zaznam[datumCas]</td> 
                <td>$zaznam[misto]</td> 
                <td>$zaznam[vysledekDomaci]</td> 
                <td>$zaznam[vysledekHoste]</td> 
                <td>$zaznam[typ]</td> 
                <td>$zaznam[rocnik]</td>  
                <td class='odkazUprava'><a href='index.php?akce=edit&amp;step=upravZapas&amp;id=$zaznam[id]'>Uprav</a></td>                
                <td class='odkazSmazani'><a href='index.php?akce=del&amp;step=smazZapas&amp;id=$zaznam[id]'>Smaž</a></td>                
            </tr>";
        endwhile;
        echo "</table>";    
    break;
    
    case 'nacteniCookie':       
          switch ($cook){
            case 'zapasy':
                SetCookie("vyberRokZapas", $_POST["vyberRokZapas"], Time() + 86400);
                header("location:index.php?akce=show&step=zobrazZapasy");
            break;
            
            case 'statistiky':
                SetCookie("vyberRokStatistiky", $_POST["vyberRokStatistiky"], Time() + 86400);
                header("location:index.php?akce=show&step=zobrazStatistiky");
            break;
          }
    break;
    
    
    
     case 'zobrazMarodku':       //zobrazeni zanru do tabulky
        mysql_query("SET CHARACTER SET utf8;");
        $sql = "SELECT * FROM marodka ;";    //nacteni hodnot z databaze
        $vysledek = MySQL_Query($sql);
        echo "<h3>Zobrazení marodů</h3>
        <table align='center'> 
            <tr class='tabulkaNadpis'>
                <td class='ostatni'>Jméno</td>
                <td class='ostatni'>Poranění</td>
                <td></td>                
                <td></td>                
            </tr>";
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"   
            <tr class='tabulkaVypis'>
                <td>$zaznam[jmeno]</td> 
                <td>$zaznam[poraneni]</td> 
                <td class='odkazUprava'><a href='index.php?akce=edit&amp;step=upravMaroda&amp;id=$zaznam[id]'>Uprav</a></td>                
                <td class='odkazSmazani'><a href='index.php?akce=del&amp;step=smazMaroda&amp;id=$zaznam[id]'>Smaž</a></td>                
            </tr>";
        endwhile;
        echo "</table>";    
    break;
    
    case 'zobrazStatistiky':       //zobrazeni zanru do tabulky
        $vyberRokStatistiky = $_COOKIE['vyberRokStatistiky'];
        if ($vyberRokStatistiky == ""){ 
            $vyberRokStatistiky = 3;
        } 
        
        echo"
        <form action = 'index.php?akce=show&amp;step=nacteniCookie&amp;cook=statistiky' method='POST'>
        <table align='center' class='tabulkaTvorba'> 
        <tr> 
            <td>Ročník:</td> 
            <td>
              <select name='vyberRokStatistiky'>";
              $rocniky=zobrazRocniky2($vyberRokStatistiky);
              foreach ($rocniky as $rocnik){
                echo "$rocnik";
              }
        echo"
              </select>
            </td>
            <td><input type='submit' value='Vyber'></td>
        </tr>  
        </table>
        </form>";
        
        mysql_query("SET CHARACTER SET utf8;");
        $sql = 'SELECT 
         body.id, 
         hraci.prezdivka,
         body.branky,
         body.brankyPO,
         body.odehraneZapasy,
         body.odehraneZapasyPO,
         rocniky.rocnik  
         FROM body, hraci, rocniky WHERE body.idHrace = hraci.id AND body.rok = \''.$vyberRokStatistiky.'\' AND body.rok = rocniky.id';    //nacteni hodnot z databaze
        $vysledek = MySQL_Query($sql);
        echo "<h3>Zobrazení statistik</h3>
        <table align='center'> 
            <tr class='tabulkaNadpis'>
                <td class='ostatni'>Hráč</td>
                <td class='ostatni'>Branky</td>
                <td class='ostatni'>Branky PO</td>
                <td class='ostatni'>Odehrané zápasy</td>
                <td class='ostatni'>Odehrané zápasy PO</td>
                <td class='ostatni'>Ročník</td>
                <td></td>                
                <td></td>                
            </tr>";
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"   
            <tr class='tabulkaVypis'>
                <td>$zaznam[prezdivka]</td> 
                <td>$zaznam[branky]</td>
                <td>$zaznam[brankyPO]</td>
                <td>$zaznam[odehraneZapasy]</td>
                <td>$zaznam[odehraneZapasyPO]</td>
                <td>$zaznam[rocnik]</td> 
                <td class='odkazUprava'><a href='index.php?akce=edit&amp;step=upravStatistiku&amp;id=$zaznam[id]'>Uprav</a></td>                
                <td class='odkazSmazani'><a href='index.php?akce=del&amp;step=smazStatistiku&amp;id=$zaznam[id]'>Smaž</a></td>                
            </tr>";
        endwhile;
        echo "</table>";    
    break;
    
    default:          //zobrazeni vypisu filmu v databazi do tabulky
        mysql_query("SET CHARACTER SET utf8;");
        $sql = 'SELECT * FROM  aktuality;';         
        $vysledek = MySQL_Query($sql);
        echo "<h3>Zobrazení aktualit</h3>
        <table align='center'> 
            <tr class='tabulkaNadpis'>
                <td class='nazvy'>Datum</td>
                <td class='nazvy'>Název</td>                              
                <td class='ostatni'>Text</td>                              
                <td class='ostatni'>Autor</td>
                <td></td> 
                <td></td> 
            </tr>";
        while($zaznam = MySQL_Fetch_Array($vysledek)):
        echo"   
            <tr class='tabulkaVypis'>
                <td>$zaznam[datum]</td> 
                <td>$zaznam[nazev]</td> 
                <td>$zaznam[text]</td>
                <td>$zaznam[autor]</td>
                <td class='odkazUprava'><a href='index.php?akce=edit&amp;step=upravAktualitu&amp;id=$zaznam[id]'>Uprav</a></td>                
                <td class='odkazSmazani'><a href='index.php?akce=del&amp;step=smazAktualitu&amp;id=$zaznam[id]'>Smaž</a></td>                
            </tr>";
        endwhile;
        echo "</table>";    

}
?>
