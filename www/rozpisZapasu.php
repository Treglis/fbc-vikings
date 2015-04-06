<div class='postheader'><div class='postheaderNadpis'><h1>Rozpis zápasů 2011/2012</h1></div></div>
<div class="postcontent">
  <div class='Zapasy'>
      <p>Základní část</p>
      <table>
        <tr><th>Zápas</th><th>Datum a čas</th><th>Místo</th><th>Výsledek</th></tr>
        <?php
          mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql);
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '4') AND ($zaznam[typ] == 'normal')){
                  if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                  if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                  };  
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
             };
          endwhile;     
        ?>
      </table>
 <!--     
      <p>Playoff a Baráž</p>
      <table> --> 
        <?php  
 /*         mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql); 
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '2') AND ($zaznam[typ] != 'normal')){
                if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                }; 
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
              };    
          endwhile; */
        ?>  
 <!--     </table> -->
  </div>
</div>
<div class="postfooter"></div>

<div class='postheader'><div class='postheaderNadpis'><h1>Rozpis zápasů 2010/2011</h1></div></div>
<div class="postcontent">
  <div class='Zapasy'>
      <p>Základní část</p>
      <table>
        <tr><th>Zápas</th><th>Datum a čas</th><th>Místo</th><th>Výsledek</th></tr>
        <?php
          mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql);
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '3') AND ($zaznam[typ] == 'normal')){
                  if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                  if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                  };  
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
             };
          endwhile;     
        ?>
      </table>
 <!--     
      <p>Playoff a Baráž</p>
      <table> --> 
        <?php  
 /*         mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql); 
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '2') AND ($zaznam[typ] != 'normal')){
                if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                }; 
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
              };    
          endwhile; */
        ?>  
 <!--     </table> -->
  </div>
</div>
<div class="postfooter"></div>

<div class='postheader'><div class='postheaderNadpis'><h1>Rozpis zápasů 2009/2010</h1></div></div>
<div class="postcontent">
  <div class='Zapasy'>
      <p>Základní část</p>
      <table>
        <tr><th>Zápas</th><th>Datum a čas</th><th>Místo</th><th>Výsledek</th></tr>
        <?php
          mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql);
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '2') AND ($zaznam[typ] == 'normal')){
                  if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                  if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                  };  
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
             };
          endwhile;     
        ?>
      </table>
      <p>Playoff a Baráž</p>
      <table>  
        <?php  
          mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql); 
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '2') AND ($zaznam[typ] != 'normal')){
                if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                }; 
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
              };    
          endwhile;
        ?>  
      </table>
  </div>
</div>
<div class="postfooter"></div>

<div class='postheader'><div class='postheaderNadpis'><h1>Rozpis zápasů 2008/2009</h1></div></div>
<div class="postcontent">
  <div class='Zapasy'>
      <p>Základní část</p>
      <table>
        <tr><th>Zápas</th><th>Datum a čas</th><th>Místo</th><th>Výsledek</th></tr>
        <?php
          mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql);
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '1') AND ($zaznam[typ] == 'normal')){
                  if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                  if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                  };  
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
             };
          endwhile;     
        ?>
      </table>
      <p>Playoff a Baráž</p>
      <table>  
        <?php  
          mysql_query("SET CHARACTER SET utf8;");
          $sql = "SELECT * FROM zapasy;";
          $vysledek = MySQL_Query($sql); 
          while($zaznam = MySQL_Fetch_Array($vysledek)):
             if (($zaznam[rocnik] == '1') AND ($zaznam[typ] != 'normal')){
                if ($zaznam[domaci] == 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757'; 
                  };
                if ($zaznam[domaci] != 'FBC Vikings'){
                    if ($zaznam[vysledekDomaci] < $zaznam[vysledekHoste]) $barva = 'green';
                    if ($zaznam[vysledekDomaci] > $zaznam[vysledekHoste]) $barva = 'red';
                    if ($zaznam[vysledekDomaci] == $zaznam[vysledekHoste]) $barva = '#525757';  
                }; 
                echo "<tr><td>$zaznam[domaci] X $zaznam[hoste]</td><td>$zaznam[datumCas]</td><td>$zaznam[misto]</td><td style='color: $barva'>$zaznam[vysledekDomaci]:$zaznam[vysledekHoste]</td></tr>";
              };    
          endwhile;
        ?>  
      </table>
  </div>
</div>
<div class="postfooter"></div>