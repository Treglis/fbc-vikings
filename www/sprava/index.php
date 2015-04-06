<?php 
ob_start();
$akce=$_GET["akce"];                              //navraceni akce getem
require_once("system/const.php"); 
require_once("system/funkce.php");                //require souboru
require_once("system/fceSprava.php");                
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Správa webu FBC Vikings</title>
    <meta http-equiv='content-type' content='text/html; charset=utf-8' >
    <meta name="description" content="Správa">
    <meta name="author" content="Treglis">
    <meta http-equiv="Content-language" content="cs">
    <link href="system/styl.css" rel="stylesheet" type="text/css">
    <meta name="robots" content="all">
  </head>
  
  <body>
    <div>
    <form action="../system/mazaniTrenink.php" method="POST">
      <input type="submit" value="Smaž trenink">
    </form>
    <form action="../system/mazaniZapas.php" method="POST">
      <input type="submit" value="Smaž zapas">
    </form>
    <form action="../system/vyprselTrenink.php" method="POST">
      <input type="submit" value="Vyprsel trenink">
    </form>
    <form action="../system/vyprselZapas.php" method="POST">
      <input type="submit" value="Vyprsel zapas">
    </form>
    </div>
                            
    <div class="horniMenu" >      <!-- tvorba horniho menu pro vyber -->
      <h1>Správa webu FBC Vikings</h1>
        <a href='index.php?akce=new'>Nová aktualita</a> |
        <a href='index.php?akce=show'>Zobrazení aktualit</a> |
        <a href='index.php?akce=new&amp;step=hrac'>Nový hráč</a> |
        <a href='index.php?akce=show&amp;step=zobrazHrace'>Zobrazení hráčů</a> |
        <a href='index.php?akce=new&amp;step=zapas'>Nový zápas</a> |
        <a href='index.php?akce=show&amp;step=zobrazZapasy'>Zobrazení zápasů</a> |
        <a href='index.php?akce=new&amp;step=statistika'>Nová statistika</a> |
        <a href='index.php?akce=show&amp;step=zobrazStatistiky'>Zobrazení statistik</a> |
        <a href='index.php?akce=new&amp;step=marod'>Nové zranění</a> |
        <a href='index.php?akce=show&amp;step=zobrazMarodku'>Zobrazení marodky</a> 
      <?php
        
        switch($akce){          //includovani souboru podle volby z menu
          case 'new':
              include ("new.php");
          break; 
  
          case 'edit':
              include ("edit.php");
          break;
                  
          case 'del':
              include ("del.php");
          break;
                            
          default :
              include ("show.php");
                    
        };
        ?>
    </div> 
  </body> 
</html>
<?php
  ob_flush();
?>