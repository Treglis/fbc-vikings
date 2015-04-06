<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head> 
  <title>FBC Vikings</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-language" content="cs" />
    <meta name="description" content="Stránky florbalového týmu FBC Vikings z Regionání amatérské florbalové ligy v Mladé Boleslavi." />
    <meta name="keywords" content="FBC Vikings, Vikings, fbc, florbal, RAFL, Regionální amatérská florbalová liga, Mladá Boleslav,
        Mladá Boleslav florbal, mlada boleslav florbal, florbalová liga, amatérská florbalová liga, tým RAFL, tým, team, RAFL team, 
        team RAFL, floorball, florbalový klub, florbalový tým, fbcvikings, fbcvikings.cz, www.fbcvikings.cz" />
    <link href="system/styl/styl.css" rel="stylesheet" type="text/css" />
</head>
  <body>
  <div class="okraj"> 
<?php
if(IsSet($_POST['smaz'])) 
	{
	require "const.php";
	require "funkcedb.php";
	require "gbook_admin.php"; // tady je ulozene jmeno a heslo admina
	require_once "gbook_config.php";
	$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB);
	$name=$_POST['name'];
	$pass=$_POST['pass'];
	if($name==$admin_name && $pass==$admin_pass){ // pokud se zadane jmeno a heslo shoduje s tim co jste zadali pri instalaci, prispevek se smaze
		$id=$_POST['id'];
		$id_odp_del=mysql_query("SELECT `odpoved` FROM $Table WHERE id='$id'");
			$a=mysql_fetch_object($id_odp_del);
				$odp_number=$a->odpoved;
				
		$delete = mysql_query("DELETE FROM $Table WHERE id='$id' LIMIT 1") or die ('nepodarilo se mi smazat data z databaze...');
		// pokud smazu prvni prispevek, odpovedi zmizi, proto vymazu cisla odpovedi
		$upd = mysql_query("UPDATE $Table SET `odpoved`='$odp_number' WHERE `odpoved`='$id'") or die ('nepodarilo se mi smazat data z databaze...');
		echo "<h3>Smazáno.</h3> <a href='../index.php?akce=komentare'>Zpět</a>";	
	}else{
		echo "Nezadal jsi správné jméno nebo heslo!<br/>"; // jinak rekneme ze zadal blbe
		echo "<a href='system/gbook_delete.php?co=nic&amp;id=".$_GET['id_smazat']."'>Znovu</a"; // jinak rekneme ze zadal blbe
	}	
} // konec smaz	
	
elseif(isset($_GET['id']))
{
?>
<p>
	Chceš opravdu  záznam s ID=
		<strong>
			<?php
			echo $_GET['id']; 
			?>
		</strong> 
	<span class="error">Smazat?</span> 
</p>
 <form action="#" method="post" name="formular">
 <input type="hidden" name="smaz" value="" />
 <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>" />
 <input type="hidden" name="GoBack" value="<?php echo $_GET['GoBack']; ?>" />
 		<table border="0" align="center">
			<tr><td><b>Už. jméno</b></td><td><input type="text" name="name" size="30" class="input" maxlength="50"/></td></tr>
			<tr><td><b>Heslo</b></td><td><input type="password" name="pass" size="30" class="input" maxlength="50"/></td></tr>
			<tr><td></td><td><input type="submit" name="send" value="Smazej" class="input" accesskey="s" title="[klávesová zkratka: s]" /></td>
			</tr>
		</table>

</form>
<?php
}else {echo "<a href='index.php?akce=komentare'>Zpátky na komentáře</a>";}
?>
</div>
</body>
</html>