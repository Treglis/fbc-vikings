<?php
  require_once("funkcedb.php");
  require_once("const.php");
  $spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
  $druh=$_GET["druh"];
  $odpoved=$_GET["odp"];
  $id=$_GET["id"];
  $akce=$_GET["akce"];
  $heslo=$_POST["heslo"];
  
  switch($akce){
    case 'heslo':
      echo" <form action='dochazka.php?akce=uprav&amp;druh=$druh&amp;odp=$odpoved&amp;id=$id' method='POST'>
            <h2>Napi� sv� heslo:<h2>
            <input type='text' name='heslo'>
            <input type='hidden' name='backlink' value='".$_SERVER['REQUEST_URI']."'>
            <input type='submit' value='Ode�li'>";
    break;
  
    case 'uprav':
      mysql_query("SET CHARACTER SET utf8;");
      $sql = 'SELECT
             hraci.heslo
             FROM hraci WHERE hraci.id = \''.$id.'\' ; ';
      $vysledek = MySQL_Query($sql);
      while($zaznam = MySQL_Fetch_Array($vysledek)):
        if ($heslo==$zaznam[heslo]){
          mysql_Query("SET CHARACTER SET utf8;");
          $sql = 'UPDATE `dochazka` SET 
                  '.$druh.' = \''.$odpoved.'\'
                  WHERE id = \''.$id.'\'';
          if (MySQL_Query($sql)){
            echo"�sp�n� upraveno.
            <p><a href='../index.php'>Zp�t</a></p>";
            
          } else {
            echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i pot� neprovede kontakutje admina.";
          } 
        } else {
          echo "Tvoje heslo nen� spr�vn�!!!<br />
            <p><a href='".$_POST['backlink']."'>Zp�t</a></p> 
          ";
        } 
      endwhile;
    
    break;
  }
  
?>