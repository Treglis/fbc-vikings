<?php
require_once "system/const.php";				// připojení na databázi
require_once "system/funkcedb.php";
require_once "system/gbook_config.php"; 	// nastavení gbooku
require_once "system/gbook_funkce.php"; 	// funkce 
@Header("Cache-control: no-cache");
@$hodnota=Explode(".+SEPARATOR+.", $_COOKIE['GbookV4']);
?>



<div class='postheader'><div class='postheaderNadpis'><h1>Komentáře</h1></div></div>
<div class="postcontent">
   <div class="center">
<div class="okraj">
<a name="form"></a>
<form action="system/gbook_zpracuj.php" method="post" name="formular">
	<input type="hidden" name="pecanovicoockies" value="" />
	<input type="hidden" name="backlink" value="<?php echo $_SERVER['REQUEST_URI']; ?>" />
  	<input type="hidden" name="sent" value="" />
		<table border="0" align="center" class="komentar">
			<tr>
				<td><strong>Jméno</strong></td>
				<td><input type="text" name="nick" size="30" class="input"  maxlength="50" value="<?php echo @$hodnota[0]; ?>" /></td>
			</tr>
			<tr>
				<td>Mail</td>
				<td><input type="text" name="mail" size="30" class="input" maxlength="50" value="<?php echo @$hodnota[2]; ?>" /></td>
			</tr>
			<tr id="input_reakce">
				<td></td>
				<td>
					<input type="text" name="OdpovedNaPrispevek" id="OdpovedNaPrispevek"  size="25" readonly="readonly" class="readonly" />
					<input type="button" onclick="javascript:VlozOdpoved('')" value="Zrušit reakci" id="VymazReakci" disabled="disabled" class="input" />
				</td>
			</tr>
			<tr>
				<td valign="top"><strong>Text</strong></td>
				<td><textarea name="textstary" class="textarea" cols="40" rows="7"></textarea></td>
				<td class="sede">
					<a href="javascript:smajlik(':-) ')"><img src="obr/smajly/1.gif" alt=":-)" title=":-)" class="smajl" /></a><br />
					<a href="javascript:smajlik(':-D ')"><img src="obr/smajly/2.gif" alt=":-D" title=":-D" class="smajl" /></a><br />
					<a href="javascript:smajlik(':-( ')"><img src="obr/smajly/3.gif" alt=":-(" title=":-(" class="smajl" /></a><br />
					<a href="javascript:smajlik('*TIRED* ')"><img src="obr/smajly/4.gif"  alt="*TIRED*" title="*TIRED*" class="smajl" /></a><br />
					<a href="javascript:smajlik('>:o ')"><img src="obr/smajly/5.gif" alt=">:o" title=">:o" class="smajl" /></a><br />
					<a href="javascript:smajlik(';-) ')"><img src="obr/smajly/6.gif" alt=";-)" title=";-)" class="smajl" /></a><br />
					<a href="javascript:smajlik('%) ')"><img src="obr/smajly/7.gif" alt="%)" title="%)" class="smajl" /></a><br />
					<a href="javascript:smajlik('8-o ')"><img src="obr/smajly/8.gif" alt="8-o" title="8-o" class="smajl" /></a><br />
				</td>
			</tr>
			<tr>
				<td><strong>Antispam</strong></td>
				<td>Kolik je 1+1?</td>
				<td><input type="text" name="spam" size="2" class="input"  maxlength="1" /></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<span class="sede2">
						<a href="javascript:smajlik('[b][/b]')"><strong>B</strong></a> |
  						<a href="javascript:smajlik('[u][/u]')"><u>U</u></a> |
  						<a href="javascript:smajlik('[i][/i]')"><i>i</i>&nbsp;</a> |
						<a href="javascript:smajlik('http://')">odkaz</a>
					</span>
				</td>
				<td>
					<input type="submit" name="send" value="Přidej" class="input" accesskey="s" title="[klávesová zkratka: s]" />
				</td>
			</tr>
		</table>
</form>
<?php
//ini_set('display_errors',1);




$max=$StrankovatPo;			// prispevku na stranku	- v nastaveni
$pocet=mysql_result(mysql_query("SELECT count(id) FROM ".$Table." WHERE odpoved=0"),0); // spocitam ID
$str=ceil($pocet / $max); //ziskam pocet stranek
@$strana2 = (int)$_GET['strana'];
$strana = $strana2 * $max;
	echo "	<a name='kotva'></a>
			<p class='center'>";
			if($str>1){
				echo "Strana: ";
				for($i=0;$i<$str;$i++){ // vypisu ostatni stranky
					if($i == $strana2){
						echo "<strong>".($i+1)."</strong> ";
					}else{
						echo " <a href='index.php?akce=komentare&amp;strana=".($i)."#str '>".($i+1)."</a> ";
					}
				} // end for
			} 
	echo "</p>";
$vypis = mysql_query("SELECT *, DATE_FORMAT(cas, '".$FormatovanyCas."') cas2 FROM ".$Table." WHERE odpoved=0 ORDER BY id DESC LIMIT $strana, $max") or die (mysql_error()); // vypisu data s limitem od do
	while ($zaznam=mysql_fetch_array($vypis)){
		RamecekKom(
					1, 'kom_odp0',$zaznam['id'],$zaznam['ip'],
					$zaznam['mail'],$zaznam['nick'],$zaznam['zprava'],$zaznam['cas2']
					);

		$vypis2 = mysql_query("SELECT *, DATE_FORMAT(cas, '".$FormatovanyCas."') cas2 FROM ".$Table." WHERE odpoved=".$zaznam['id']." ORDER BY id ") or die (mysql_error()); // vypisu data s limitem od do
		while ($zaznam2=mysql_fetch_array($vypis2)){
			RamecekKom(
						1, 'kom_odp1',$zaznam2['id'],$zaznam2['ip'],
						$zaznam2['mail'],$zaznam2['nick'],$zaznam2['zprava'],$zaznam2['cas2']
						);
	
			$vypis3 = mysql_query("SELECT *, DATE_FORMAT(cas, '".$FormatovanyCas."') cas2 FROM ".$Table." WHERE odpoved=".$zaznam2['id']." ORDER BY id ") or die (mysql_error()); // vypisu data s limitem od do
			while ($zaznam3=mysql_fetch_array($vypis3)){
				RamecekKom(
							0, 'kom_odp2',$zaznam3['id'],$zaznam3['ip'],
							$zaznam3['mail'],$zaznam3['nick'],$zaznam3['zprava'],$zaznam3['cas2']
							);
			} // while 3
		} // while 2
	} // while 
?>
	<p></p>
	<div class="zdrojak2">
			<p>Pro odeslání zprávy můžete použít klávesovou zkratku <strong>Alt+S</strong>. (Podporují jen některé prohlížeče) </p>
			<p>HTML znaky budou převedeny na entity.</p>
			<p>Odkazy začínající http:// budou automaticky převedeny na odkazy, nepoužívejte však v
				jednom příspěvku více jak 3 - to dělají spam roboti:-)</p>
	</div>
</div>
</div>
<script language="javascript" type="text/javascript"> // js pro vlozeni smajlu
	<!--
	function smajlik(text) { 
		if (document.formular.textstary.createTextRange &&	document.formular.textstary.caretPos) { 
			var caretPos = document.formular.textstary.caretPos;
			caretPos.text = caretPos.textstary.charAt(caretPos.text.length - 1) == ' ' ?	text + ' ' : text; 
		} else 
			document.formular.textstary.value += text; document.formular.textstary.focus(caretPos) 
	}
	function VlozOdpoved(IDnumber){
		document.getElementById('OdpovedNaPrispevek').value=IDnumber
		if(IDnumber){
			document.getElementById('VymazReakci').disabled = false;
			document.getElementById("input_reakce").style.display = 1;			
		}else{
			document.getElementById('VymazReakci').disabled = true;	
				
		}
		
	}
	//-->
</script>
</div>
<div class="postfooter"></div>