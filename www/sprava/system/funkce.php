<?php
  function spojeni($server, $jmeno, $heslo, $db){
    $spojeni = mysql_pconnect($server, $jmeno, $heslo);
    $db = mysql_select_db($db);
    if(($spojeni) and ($db)){
    return true;
    } else {
    return false;
    }
}

?>
