<?php
function zobrazHrace(){              //zobrazeni hrace
      mysql_query("SET CHARACTER SET utf8;"); 
      $sql = 'SELECT * FROM `hraci`;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               $hrac[]="<option value=".$zaznam[id].">".$zaznam[prezdivka]."</option>";  
      endwhile;
      return $hrac;         
}

function zobrazHraceStatistiky($id){              //zobrazeni hrace ze statistik
      mysql_query("SET CHARACTER SET utf8;"); 
      $sql = 'SELECT 
        hraci.prezdivka
       FROM `hraci`, `body` WHERE body.idhrace = hraci.id AND body.id = \''.$id.'\' ;';
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               $hrac=$zaznam[prezdivka];  
      endwhile;
      return $hrac;          
}

function zobrazZahnuti($zahnut){
      if ($zahnut=="Levé"){                   //prednastaveni puvodni hodnoty, ktera byla drive zadana
          $zahnuti="<option value=\"Levé\" selected >Levé</option><option value=\"Pravé\">Pravé</option>";     
      } else {
          $zahnuti="<option value=\"Levé\">Levé</option><option value=\"Pravé\" selected>Pravé</option>";  
        }
      return $zahnuti;         
}

function zobrazHraceEdit($prezdivka){
      $sql = 'SELECT * FROM `hraci`;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               if ($prezdivka == $zaznam[prezdivka]){
                    $hraci[]="<option value=".$zaznam[id]." selected>".$zaznam[prezdivka]."</option>";      
               } else {
                    $hraci[]="<option value=".$zaznam[id].">".$zaznam[prezdivka]."</option>";     
               }
               
      endwhile;
      return $hraci;         
}

function zobrazTypEdit($zapas){
      if ($zapas == 'normal'){
         $typy[]="<option value=\"normal\" selected>normal</option>";
         $typy[]="<option value=\"playoff\">playoff</option>";
         $typy[]="<option value=\"baraz\">baraz</option>";      
      }
      if ($zapas == 'playoff'){
         $typy[]="<option value=\"normal\">normal</option>";
         $typy[]="<option value=\"playoff\" selected>playoff</option>";
         $typy[]="<option value=\"baraz\">baraz</option>";      
      }
      if ($zapas == 'baraz'){
         $typy[]="<option value=\"normal\">normal</option>";
         $typy[]="<option value=\"playoff\">playoff</option>";
         $typy[]="<option value=\"baraz\" selected>baraz</option>";      
      }
               
      return $typy;         
}

function zobrazMistoEdit($misto){
      if ($misto=="Sokolovna"){                   //prednastaveni puvodni hodnoty, ktera byla drive zadana
          $mist="<option value=\"Sokolovna\" selected >Sokolovna</option><option value=\"6. ZŠ\">6. ZŠ</option>";     
      } else {
          $mist="<option value=\"Sokolovna\">Sokolovna</option><option value=\"6. ZŠ\" selected>6. ZŠ</option>";  
        }
      return $mist;         
}

function zobrazMaroda($id){                 //zobrazeni zanru podle id, pouzito pri mazani
      $sql = 'SELECT * FROM `marodka` WHERE id = \''.$id.'\' ;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               $marod=$zaznam[jmeno];  
      endwhile;
      return $marod;         
}

function zobrazJednohoHrace($id){
      $sql = 'SELECT * FROM `hraci` WHERE id = \''.$id.'\' ;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               $hrac = "$zaznam[prezdivka]";  
      endwhile;
      return $hrac;
}

function zobrazZapas($id){
      $sql = 'SELECT * FROM `zapasy` WHERE id = \''.$id.'\' ;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               $zapas = "$zaznam[domaci] x $zaznam[hoste]";  
      endwhile;
      return $zapas;
}

function zobrazAktualitu($id){           //pouziti pri uprave
      $sql = 'SELECT * FROM `aktuality` WHERE id = \''.$id.'\' ;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
               $aktualita = $zaznam[nazev];  
      endwhile;
      return $aktualita;
}

function zobrazRocniky(){              //zobrazeni hrace
      mysql_query("SET CHARACTER SET utf8;"); 
      $sql = 'SELECT * FROM `rocniky`;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
          if ($zaznam[rocnik]=="2010/2011"){
               $rocniky[]="<option value=".$zaznam[id]." selected>".$zaznam[rocnik]."</option>";
          }
          else {$rocniky[]="<option value=".$zaznam[id].">".$zaznam[rocnik]."</option>";
          }  
      endwhile;
      return $rocniky;         
}

function zobrazRocniky2($rok){              //zobrazeni hrace
      mysql_query("SET CHARACTER SET utf8;"); 
      $sql = 'SELECT * FROM `rocniky`;';         
      $vysledek = MySQL_Query($sql) or     die("Nepodařilo se čtení z databáze.");
      while($zaznam = MySQL_Fetch_Array($vysledek)):
          if ($zaznam[id]==$rok){
               $rocniky[]="<option value=".$zaznam[id]." selected>".$zaznam[rocnik]."</option>";
          }
          else {$rocniky[]="<option value=".$zaznam[id].">".$zaznam[rocnik]."</option>";
          }  
      endwhile;
      return $rocniky;         
}

function zobrazLiga($liga){
      if ($liga=="1"){                   //prednastaveni puvodni hodnoty, ktera byla drive zadana
          $lig="<option value=\"1\" selected >1</option><option value=\"2\">2</option><option value=\"3\">3</option>";     
      } else {
          if ($liga=="3"){                   //prednastaveni puvodni hodnoty, ktera byla drive zadana
            $lig="<option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\" selected >3</option>";     
          } else {
            $lig="<option value=\"1\">1</option><option value=\"2\" selected>2</option><option value=\"3\">3</option>";  
          }  
      }
      return $lig;         
}

?>
