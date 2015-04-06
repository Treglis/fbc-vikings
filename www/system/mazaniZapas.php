<?php
  require_once(dirname(__FILE__).'/funkcedb.php');
  require_once(dirname(__FILE__).'/const.php');
  $spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
  
          mysql_Query("SET CHARACTER SET utf8;");
          $sql = "UPDATE `dochazka` SET zapas = '' ";
          mysql_Query($sql); 
          $sql = "UPDATE `vyprselo` SET zapasy = 'ne'";
          mysql_Query($sql);
?>