<?php
mysql_query("SET CHARACTER SET utf8;");
$sql = "SELECT * FROM aktuality ORDER BY id DESC;";
$vysledek = MySQL_Query($sql);
while($zaznam = MySQL_Fetch_Array($vysledek)):
  echo "<div class='postheader'><div class='postheaderNadpis'><h1>$zaznam[nazev]</h1><h2>Přidáno: $zaznam[datum]</h2></div></div>
				<div class='postcontent'>
				  <p>$zaznam[text]</p>";
				  if($zaznam[autor] == "AL"){
            echo"<p align='right'>Napsala: $zaznam[autor]</p>";
          }else{
            echo"<p align='right'>Napsal: $zaznam[autor]</p>";
          }
	echo"</div>
				<div class='postfooter'></div>";   
endwhile;

?>    
