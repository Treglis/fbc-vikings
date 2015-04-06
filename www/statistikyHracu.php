<div class='postheader'><div class='postheaderNadpis'><h1>Statistiky hráčů 2011/2012</h1></div></div>
<div class='postcontent'><div class='statistiky'>
  <table>
  <tr><th>Jméno hráče</th><th>Vstřelené branky</th><th>Odehrané zápasy</th></tr>
  <?php  
    mysql_query("SET CHARACTER SET utf8;");
    $sql = "SELECT
      body.branky,
      body.brankyPO,
      body.odehraneZapasy,
      body.odehraneZapasyPO,
      body.rok,
      hraci.prezdivka
     FROM hraci, body WHERE body.idHrace = hraci.id;";
    $vysledek = MySQL_Query($sql);
    while($zaznam = MySQL_Fetch_Array($vysledek)):
      if ($zaznam[rok] == "4")
        echo "<tr><td>$zaznam[prezdivka]</td><td>$zaznam[branky]</td><td>$zaznam[odehraneZapasy]</td></tr>"; 
    endwhile;
  ?>
  </table>
  <!--<p>Body a odehrané zápasy zobrazeny takto: Základní část + Play-off a Baráž</p> -->
</div></div>
<div class='postfooter'></div>

<div class='postheader'><div class='postheaderNadpis'><h1>Statistiky hráčů 2010/2011</h1></div></div>
<div class='postcontent'><div class='statistiky'>
  <table>
  <tr><th>Jméno hráče</th><th>Vstřelené branky</th><th>Odehrané zápasy</th></tr>
  <?php  
    mysql_query("SET CHARACTER SET utf8;");
    $sql = "SELECT
      body.branky,
      body.brankyPO,
      body.odehraneZapasy,
      body.odehraneZapasyPO,
      body.rok,
      hraci.prezdivka
     FROM hraci, body WHERE body.idHrace = hraci.id;";
    $vysledek = MySQL_Query($sql);
    while($zaznam = MySQL_Fetch_Array($vysledek)):
      if ($zaznam[rok] == "3")
        echo "<tr><td>$zaznam[prezdivka]</td><td>$zaznam[branky]</td><td>$zaznam[odehraneZapasy]</td></tr>"; 
    endwhile;
  ?>
  </table>
  <!--<p>Body a odehrané zápasy zobrazeny takto: Základní část + Play-off a Baráž</p> -->
</div></div>
<div class='postfooter'></div>

<div class='postheader'><div class='postheaderNadpis'><h1>Statistiky hráčů 2009/2010</h1></div></div>
<div class='postcontent'><div class='statistiky'>
  <table>
  <tr><th>Jméno hráče</th><th>Vstřelené branky</th><th>Odehrané zápasy</th></tr>
  <?php  
    mysql_query("SET CHARACTER SET utf8;");
    $sql = "SELECT
      body.branky,
      body.brankyPO,
      body.odehraneZapasy,
      body.odehraneZapasyPO,
      body.rok,
      hraci.prezdivka
     FROM hraci, body WHERE body.idHrace = hraci.id;";
    $vysledek = MySQL_Query($sql);
    while($zaznam = MySQL_Fetch_Array($vysledek)):
      if ($zaznam[rok] == "2")
        echo "<tr><td>$zaznam[prezdivka]</td><td>$zaznam[branky] + $zaznam[brankyPO]</td><td>$zaznam[odehraneZapasy] + $zaznam[odehraneZapasyPO]</td></tr>"; 
    endwhile;
  ?>
  </table>
  <p>Body a odehrané zápasy zobrazeny takto: Základní část + Play-off a Baráž</p>
</div></div>
<div class='postfooter'></div>

<div class='postheader'><div class='postheaderNadpis'><h1>Statistiky hráčů 2008/2009</h1></div></div>
<div class='postcontent'><div class='statistiky'>
  <table>
  <tr><th>Jméno hráče</th><th>Vstřelené branky</th><th>Odehrané zápasy</th></tr>
  <?php  
    mysql_query("SET CHARACTER SET utf8;");
    $sql = "SELECT
      body.branky,
      body.brankyPO,
      body.odehraneZapasy,
      body.odehraneZapasyPO,
      body.rok,
      hraci.prezdivka
     FROM hraci, body WHERE body.idHrace = hraci.id;";
    $vysledek = MySQL_Query($sql);
    while($zaznam = MySQL_Fetch_Array($vysledek)):
      if ($zaznam[rok] == "1")
        echo "<tr><td>$zaznam[prezdivka]</td><td>$zaznam[branky] + $zaznam[brankyPO]</td><td>$zaznam[odehraneZapasy] + $zaznam[odehraneZapasyPO]</td></tr>"; 
    endwhile;
  ?>
  </table>
  <p>Body a odehrané zápasy zobrazeny takto: Základní část + Play-off a Baráž</p>
</div></div>
<div class='postfooter'></div>

