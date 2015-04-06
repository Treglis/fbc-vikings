<?php
require_once("system/const.php");
$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
$step = $_GET["step"];
$id = $_GET["id"];
  
echo "<h2>Smazání</h2>";
switch($step){
    case 'smazMaroda': 
        $marod = zobrazMaroda($id);
        echo "<h3>Smazání maroda</h3>
        Opravdu si přejte smazat $marod? <a href='index.php?akce=del&amp;step=opravduSmazatMaroda&amp;id=$id'>Ano</a>
        <a href='index.php?akce=show&amp;step=zobrazMaroda'>Ne</a> ";
    
    break;
    
    case 'opravduSmazatMaroda': 
        echo "<h3>Smazání maroda</h3>";            
        $sql='DELETE FROM `marodka` WHERE id = \''.$id.'\';';   
        if (MySQL_Query($sql)){
            echo"Úspěšně smazán marod.";
        } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
        }    

    break;
    
    case 'smazStatistiku': 
        $hrac = zobrazHraceStatistiky($id);
        echo "<h3>Smazání statistiky</h3>
        Opravdu si přejte smazat statistiku hráče $hrac? <a href='index.php?akce=del&amp;step=opravduSmazatStatistiku&amp;id=$id'>Ano</a>
        <a href='index.php?akce=show&amp;step=zobrazStatistiky'>Ne</a> ";
    
    break;
    
    case 'opravduSmazatStatistiku': 
        echo "<h3>Smazání statistiky</h3>";            
        $sql='DELETE FROM `body` WHERE id = \''.$id.'\';';   
        if (MySQL_Query($sql)){
            echo"Úspěšně smazána statistika.";
        } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
        }    

    break;
    
    case 'smazHrace': 
        $hrac = zobrazJednohoHrace($id);
        echo "<h3>Smazání hráče</h3>
        Opravdu si přejte smazat hráče $hrac? Dojde k vymazání i všech statistik hráče!!!<a href='index.php?akce=del&amp;step=opravduSmazatHrace&amp;id=$id'>Ano</a>
        <a href='index.php?akce=show&amp;step=zobrazHrace'>Ne</a> ";
    
    break;
    
    case 'opravduSmazatHrace': 
        echo "<h3>Smazání hráče</h3>";            
        $sql='DELETE FROM `hraci` WHERE id = \''.$id.'\';';   
        if (MySQL_Query($sql)){
            echo"Úspěšně smazán hráč.<br />";
        } else {
              echo "Nesmazán hráč. Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.<br />";
        }
        
        $sql='DELETE FROM `body` WHERE idHrace = \''.$id.'\';';   
        if (MySQL_Query($sql)){
            echo"Úspěšně smazána statistika hráče.";
        } else {
              echo "Nesmazána statistika hráče. Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
        }    

    break;
    
    case 'smazZapas': 
        $zapas = zobrazZapas($id);
        echo "<h3>Smazání zápasu</h3>
        Opravdu si přejte smazat zápas $zapas? <a href='index.php?akce=del&amp;step=opravduSmazatZapas&amp;id=$id'>Ano</a>
        <a href='index.php?akce=show&amp;step=zobrazZapasy'>Ne</a> ";
    
    break;
    
    case 'opravduSmazatZapas': 
        echo "<h3>Smazání zápasu</h3>";            
        $sql='DELETE FROM `zapasy` WHERE id = \''.$id.'\';';   
        if (MySQL_Query($sql)){
            echo"Úspěšně smazán zápas.";
        } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
        }    

    break;
    
    case 'smazAktualitu': 
        $aktualita = zobrazAktualitu($id);
        echo "<h3>Smazání aktuality</h3>
        Opravdu si přejte smazat aktualitu $aktualita? <a href='index.php?akce=del&amp;step=opravduSmazatAktualitu&amp;id=$id'>Ano</a>
        <a href='index.php?akce=show'>Ne</a> ";
    
    break;
    
    case 'opravduSmazatAktualitu': 
        echo "<h3>Smazání aktuality</h3>";            
        $sql='DELETE FROM `aktuality` WHERE id = \''.$id.'\';';   
        if (MySQL_Query($sql)){
            echo"Úspěšně smazána aktualita.";
        } else {
              echo "Dotaz se neprovedl. Zopakutje akci. Pokud se i poté neprovede kontakutje admina.";
        }    

    break;
}
?>
