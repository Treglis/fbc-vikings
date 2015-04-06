<?php 

include('system/icq.php');

mysql_query("SET CHARACTER SET utf8;");
$sql = "SELECT * FROM hraci WHERE hraje = '0';";
$vysledek = MySQL_Query($sql);
while($zaznam = MySQL_Fetch_Array($vysledek)):
   $prezdivkaBezD = odstranDiakrit($zaznam[prezdivka]);
   echo "
      <div class='postheader2'><div class='postheaderNadpis'><h1 id='$prezdivkaBezD'>$zaznam[prezdivka]$zaznam[funkce]$zaznam[funkce2]</h1></div></div>
      <div class='postcontent2'>
        <div class='soupiska'>
        <img src='$zaznam[fotka]' alt='$zaznam[prezdivka]' />
        </div>
        <div class='soupiska'>
          <table>
            <tr><th>Jméno</th><td>$zaznam[jmenoPrijmeni]</td></tr>
            <tr><th>Datum narození</th><td>$zaznam[datumNarozeni]</td></tr>
            <tr><th>Číslo dresu</th><td>$zaznam[cisloDresu]</td></tr>
            <tr><th>Pozice</th><td>$zaznam[pozice]</td></tr>";
            if ($zaznam[pozice] != "Golman"){
            echo"
            <tr><th>Značka hole</th><td>$zaznam[znackaHole]</td></tr>
            <tr><th>Čepel</th><td>$zaznam[cepel]</td></tr>
            <tr><th>Zahnutí</th><td>$zaznam[zahnuti]</td></tr>";}
            echo"
            <tr><th>E-mail</th><td><a href='mailto:$zaznam[email]'>$zaznam[email]</a></td></tr>";
            if ($zaznam[prezdivka]=='Treglis' or $zaznam[prezdivka]=='Majkl'){
              echo"<tr><th>Telefon</th><td>+420$zaznam[telefon]</td></tr>";}
            if ($zaznam[icq] != 0){  
              $icqStav = icq($zaznam[icq]);
              echo"<tr><th>Icq</th><td>$icqStav $zaznam[icq]</td></tr>";}
          echo"
          </table> 
        </div> 
        <div class=\"clear\"></div>
			</div>
			<div class=\"postfooter2\"></div>";   
endwhile;
?>