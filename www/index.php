<?php
require_once("system/funkcedb.php");
require_once("system/const.php");
require_once("system/phpFunkce.php");
$spojeni = spojeni(DB_SERVER, JMENO, HESLO, DB); 
$akce=$_GET["akce"];
date_default_timezone_set('Europe/Prague');

//nacteni dat ze stranek raflu
$DOMDocument = new DOMDocument();
$obsahStranky = curl_file_get_contents("http://www.florbal-rafl.com/index.php");  
@$DOMDocument->loadHTML($obsahStranky);
$dokument = new DOMXPath($DOMDocument);

$jmena = $dokument->query("//*[@class=\"trhltab-nazev\"]");
foreach ($jmena as $jmeno) {
  $nazvyTymu[] = $jmeno->nodeValue;
  }
  
$vsechno = $dokument->query("//*[@class=\"trhltab\"]");
$pocet = 0;
foreach ($vsechno as $a) {
  if (($pocet % 3)==0){
    $poradi[] = $a->nodeValue;
  }
  if (($pocet % 3)==2){
    $body[] = $a->nodeValue;
  }
  if (($pocet % 3)==1){
    $zapasy[] = $a->nodeValue;
  }
  $pocet++;
}
//////////////////////////

?>
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
    <div id="container">
       <div id="header"></div>
	     <div id="content">
		      
          
          <div id="left">

<!-- Vyberove menu -->          
			       <div class="menu">
				          <div class="menuheader"><h3>Menu</h3></div>
				          <div class="menucontent">		  
                    <?php include('system/menu.php');?>
				          </div>
				          <div class="menufooter"></div>
			       </div>
			       
<!-- Spolecna fotka -->			       
			       <div class="menu">
			            <div class="menuheader"><h2>Společné foto</h2></div>
				          <div class="menucontent">
					           <div class="foto">
						            <a href="album/29.3.09 SUP/slides/Tym.JPG" target="_blank"><img src="album/29.3.09 SUP/thumbs/Tym.JPG" alt="Společné foto" /></a>
					           </div>
				          </div>
				     <div class="menufooter"></div>
			       </div>

<!-- Nasledujici zapasy -->
			       <div class="menu">
			            <div class="menuheader"><h2>Následující zápasy</h2></div>
				          <div class="menucontent">
				            <?php
                    if (prvniZapas()!=0) {
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT 
                          zapasy.id,
                          zapasy.domaci,
                          zapasy.hoste,
                          zapasy.datumCas,
                          zapasy.misto 
                          FROM zapasy;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                        if ($zaznam[id]==prvniZapas() OR $zaznam[id]==druhyZapas())
                        echo "<p align='center'>$zaznam[datumCas]   $zaznam[misto]<br /> $zaznam[domaci] X $zaznam[hoste]</p>";   
                      endwhile;}
                    else echo "<p>Žádný další zápas</p>";
                    ?>
				          </div>
				          <div class="menufooter"></div>
			       </div>
			       
<!-- Reklama facebook -->			       
			       <div align="center">
                <script type="text/javascript" src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php/cs_CZ"></script><script type="text/javascript">FB.init("abbbc53882e3ca5f10466edb6412c52e");</script><fb:fan profile_id="343354569661" stream="0" connections="0" logobar="1" height="80" width="190"></fb:fan>
                <div style="color:#CCCCCC; font-size:8px; padding-left:10px"><a href="http://www.facebook.com/pages/Bakov-Nad-Jizerou-Czech-Republic/FBC-Vikings/343354569661">FBC Vikings</a> na Facebooku</div>
			       </div>
			       
<!-- Oblibene weby -->			      
			       <div class="menu">
			            <div class="menuheader"><h2>Oblíbené weby</h2></div>
				          <div class="menucontent">
					           <?php 
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT * FROM weby;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                        echo "<p><a href='$zaznam[adresa]'>$zaznam[nazev]</a></p>";   
                      endwhile;
                     ?>
				          </div>
				          <div class="menufooter"></div>
			       </div>
			      

<!-- Tabulka baraze -->			       
<!--             <div class='menu'>
				          <div class='menuheader'><h2>Tabulka Baráže</h2></div>
				          <div class='menucontent'>
				            <div class='tabulkaBaraz'>
				             <table> 
				             <tr><th>Tým</th><th>Body</th><th>Rozdíl</th></tr>           -->
                     <?php 
/*                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT * FROM baraz;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                        echo "<tr><td>$zaznam[tym]</td><td>$zaznam[body]</td><td>$zaznam[rozdil]</td></tr>";   
                      endwhile;                                                 */
                     ?>
<!--                     </table>
                    </div>   
				          </div>				
				          <div class='menufooter'></div>
			       </div>                                                              -->
			       
<!-- Marodka -->			       
			       <div class='menu'>
				          <div class='menuheader'><h2>Marodka</h2></div>
				          <div class='menucontent'>
                    <div class='marodka'>   
                      <table>
                      <?php
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT * FROM marodka;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                        echo "<tr><th><img src=\"obr/kriz.gif\" alt=\"Nemocen\" />$zaznam[jmeno]</th></tr>
                              <tr><td>$zaznam[poraneni]</td></tr>";   
                      endwhile;
                      ?>     
                      </table>     
                    </div>
				          </div>				
				          <div class='menufooter'></div>
			       </div>
			       
<!-- Download -->			       
			       <div class='menu'>
				          <div class='menuheader'><h2>Download</h2></div>
				          <div class='menucontent'>
				            <?php
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT * FROM downloady;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                        echo "<p><a href='$zaznam[adresa]'>$zaznam[nazev]</a></p>";   
                      endwhile;
                    ?>
				          </div>				
				          <div class='menufooter'></div>
			       </div>
			       
<!-- Anketka 			       
			       <div class="menu">
			            <div class="menuheader"><h2>Anketa</h2></div>
				          <div class="menucontent">
					           <?php //include('system/anketa.php');?>
				          </div>
				          <div class="menufooter"></div>
			       </div> -->
			       
<!-- Reklamy -->			       
			       <div class="menu">
			            <div class="menuheader"><h2>Reklamy</h2></div>
				          <div class="menucontent">
					           <?php include('system/reklamy.php');?>
				          </div>
				          <div class="menufooter"></div>
			       </div>
			       
			       <div class="center">
			         <a href="http://www.toplist.cz/" target="_top"><img src="http://toplist.cz/count.asp?id=1014194&amp;logo=mc" border="0" alt="TOPlist" width="88" height="60" /></a>
			       </div> 
			       <div class="center">
			         <a href="http://www.butchers.czweb.org/"><img src="http://www.butchers.czweb.org/grafik/banner_mhk.gif" border="0" alt="Butchers" width="88" height="124" /></a>
			       </div>
             <div class="center">
               <a href="http://www.aukro.cz/new_user.php?ap=1&amp;aid=4181833&amp;bid=138799"><img src="http://www.aukro.cz/ap/ap_show.php?aid=4181833&amp;bid=138799" width="160" height="130" alt="Aukro.cz" title="Aukro.cz" style="border:none;" /></a> 
             </div> 
			       <div class="center">
			           <script type="text/javascript"><!--
                  google_ad_client = "pub-2429033711198162";
                  /* FBCVikings 160x600, vytvořeno 4.11.09 */
                  google_ad_slot = "8045619847";
                  google_ad_width = 160;
                  google_ad_height = 600;
                  //-->
                  </script>
                  <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
			       </div>
		      </div>
		      
          <?php
          if ($akce == soupiska){
            echo"
              <div id='right2'>  
                <div class='post'>";
				            include('soupiska.php');  	
			          echo"
                </div>
              </div><div class='clear'></div>            
            ";}
          else{
          echo"
          <div id='right'>
             <style type='text/css'>@import url(http://www.google.com/cse/api/branding.css);</style>
             <div class='cse-branding-bottom' style='background-color:#000000;color:#FFFFFF'>
                <div class='cse-branding-form'>    
                    <form action='http://www.google.cz/cse' id='cse-search-box' target='_blank'>      
                      <div>
                        <input type='hidden' name='cx' value='partner-pub-2429033711198162:gy87hd-h6si' />
                        <input type='hidden' name='ie' value='windows-1250' />
                        <input type='text' name='q' size='18' />
                        <input type='submit' name='sa' value='Hledat' />
                      </div>
                    </form>
                </div>  
                <div class='cse-branding-logo'>    
                    <img src='http://www.google.com/images/poweredby_transparent/poweredby_000000.gif' alt='Google' />
                </div>  
                <div class='cse-branding-text'>    Vlastn&#237; vyhled&#225;v&#225;n&#237;  </div>
              </div>  
			        <div class='menu'>
				          <div class='menuheader'><h3>Náš tým</h3></div>
				          <div class='menucontent'>"; 
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT 
                          hraci.prezdivka,
                          hraci.fotka
                         FROM hraci WHERE hraje = '0';";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                        $prezdivkaBezD = odstranDiakrit($zaznam[prezdivka]);
                          echo "<div class='member'>
						                  <a href='index.php?akce=soupiska#$prezdivkaBezD'><img src='$zaznam[fotka]' alt='$zaznam[prezdivka]' /></a>
						                  <span><a href='index.php?akce=soupiska#$prezdivkaBezD'>$zaznam[prezdivka]</a></span>
					                    </div>";
                      endwhile;
             
             echo"                   
                     <div class='clear'></div>
				          </div>				
				          <div class='menufooter'></div>
			       </div>
			       
			       <div class='menu'>
				          <div class='menuheader'><h2>Pořadí týmů RAFL</h2></div>
				          <div class='menucontent'>
				            <div class='poradiTymu'>
				             <h2>1. liga</h2> 
				             <br />
				             <table> 
				             <tr><th>Tým</th><th>Zápasy</th><th>Body</th></tr>";                         
				             for ($i = 0; $i < 12; $i++) {
				                mysql_query("SET CHARACTER SET utf8;");
                        $sql = "SELECT odkaz FROM liga WHERE nazevTymu = '$nazvyTymu[$i]';";
                        $vysledek = MySQL_Query($sql);
                        $zaznam = MySQL_Fetch_Array($vysledek);
                          if ($zaznam[odkaz]=='')
				                    echo "<tr><td>$nazvyTymu[$i]</td><td>$zapasy[$i]</td><td>$body[$i]</td></tr>";  
                          else
                            echo "<tr><td><a href='$zaznam[odkaz]'>$nazvyTymu[$i]</a></td><td>$zapasy[$i]</td><td>$body[$i]</td></tr>";   
                     }; 
            echo"
                     </table>
                     <br />
                     <h2>2. liga</h2> 
				             <br />
				             <table> 
				             <tr><th>Tým</th><th>Zápasy</th><th>Body</th></tr>";                         
				             for ($i = 12; $i < 20; $i++) {
				                mysql_query("SET CHARACTER SET utf8;");
                        $sql = "SELECT odkaz FROM liga WHERE nazevTymu = '$nazvyTymu[$i]';";
                        $vysledek = MySQL_Query($sql);
                        $zaznam = MySQL_Fetch_Array($vysledek);
                          if ($zaznam[odkaz]=='')
				                    echo "<tr><td>$nazvyTymu[$i]</td><td>$zapasy[$i]</td><td>$body[$i]</td></tr>";  
                          else
                            echo "<tr><td><a href='$zaznam[odkaz]'>$nazvyTymu[$i]</a></td><td>$zapasy[$i]</td><td>$body[$i]</td></tr>";   
                     }; 
            echo"
                     </table>
                     <br />
                     <h2>3. liga</h2> 
				             <br />
				             <table> 
				             <tr><th>Tým</th><th>Zápasy</th><th>Body</th></tr>";                         
				             for ($i = 20; $i < 28; $i++) {
                      mysql_query("SET CHARACTER SET utf8;");
                        $sql = "SELECT odkaz FROM liga WHERE nazevTymu = '$nazvyTymu[$i]';";
                        $vysledek = MySQL_Query($sql);
                        $zaznam = MySQL_Fetch_Array($vysledek);
                          if ($zaznam[odkaz]=='')
				                    echo "<tr><td>$nazvyTymu[$i]</td><td>$zapasy[$i]</td><td>$body[$i]</td></tr>";  
                          else
                            echo "<tr><td><a href='$zaznam[odkaz]'>$nazvyTymu[$i]</a></td><td>$zapasy[$i]</td><td>$body[$i]</td></tr>";   
                     };  
            echo"
                     </table>
                    </div>   
				          </div>				
				          <div class='menufooter'></div>
				    </div>
				          
				    <div class='menu'>
				          <div class='menuheader'><h3>Docházka</h3></div>
				          <div class='menucontent'>
				            <div class='dochazka'> 
                      <h2>Zápas</h2> 
                      <br />
				              <table>";                         
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT
                          vyprselo.zapasy,
                          hraci.prezdivka,
                          dochazka.id, 
                          dochazka.zapas
                         FROM hraci, dochazka, vyprselo WHERE hraci.hraje = '0' AND dochazka.id = hraci.id;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                          if ($zaznam[zapas] == 'ano') { 
                            $barva = 'green';
                          } else {
                            $barva = 'red';
                          }
                          echo "<tr>
                                  <td>$zaznam[prezdivka]</td>
                                  <td style='color: $barva'>$zaznam[zapas]</td>";
                                  if ($zaznam[zapasy]=='ne'){echo"
                                    <td><a href='system/dochazka.php?akce=heslo&amp;druh=zapas&amp;odp=ano&amp;id=$zaznam[id]'>ANO</a></td>
                                    <td><a href='system/dochazka.php?akce=heslo&amp;druh=zapas&amp;odp=ne&amp;id=$zaznam[id]'>NE</a></td>";
                                    } else{ echo"
                                    <td style='color: red'>Vypršel čas</td>";
                                    }
                                  echo"
                                </tr>";       
                      endwhile;
                      
            echo"
                     </table>
                     <br /> 
  
                     <h2>Trénink</h2> 
                      <br />
				              <table>";                        
                      mysql_query("SET CHARACTER SET utf8;");
                      $sql = "SELECT
                          vyprselo.treninky,
                          hraci.prezdivka,
                          dochazka.id, 
                          dochazka.trenink
                         FROM hraci, dochazka, vyprselo WHERE hraci.hraje = '0' AND dochazka.id = hraci.id;";
                      $vysledek = MySQL_Query($sql);
                      while($zaznam = MySQL_Fetch_Array($vysledek)):
                          if ($zaznam[trenink] == 'ano') { 
                            $barva = 'green';
                          } else {
                            $barva = 'red';
                          }
                          echo "<tr>
                                  <td>$zaznam[prezdivka]</td>
                                  <td style='color: $barva'>$zaznam[trenink]</td>";
                                  if ($zaznam[treninky]=='ne'){echo"
                                    <td><a href='system/dochazka.php?akce=heslo&amp;druh=trenink&amp;odp=ano&amp;id=$zaznam[id]'>ANO</a></td>
                                    <td><a href='system/dochazka.php?akce=heslo&amp;druh=trenink&amp;odp=ne&amp;id=$zaznam[id]'>NE</a></td>";
                                  } else{ echo"
                                    <td style='color: red'>Vypršel čas</td>";
                                  }
                                  echo"
                                </tr>";  
                      endwhile;
            echo"                         
                     </table>
                    </div>
                  </div>
				          <div class='menufooter'></div>
			       </div>
		      </div>"; };
          ?>
		
		      <?php
		      if ($akce !=soupiska){
		      echo"  
          <div id='middle'>
             <script type='text/javascript' charset='utf-8' >
                //<![CDATA[
                var EtargetSearchQuery = '';//OPTIONAL_PAGE_URL

                var EtargetBannerIdent = 'ETARGET-cz-26767-450x90-IFRAME';
                var EtargetBannerStyle = '&tabl=4&logo=1&logo_type=5&left=1&title_color=ff0000&h_title_color=ff0000&title_underline=1&h_title_underline=1&font=arial&fsi=11&background_color=000000&nourl=0&background_opacity=100&hover_back=transparent&border_color=000000&border_style=simple&border_radius=5&text_color=bfbfbf&url_color=ff0000&h_text_color=bfbfbf&h_url_color=ff0000&url_underline=0&h_url_underline=1';

                function etargetScript(){this.cs='utf-8';this.it='';this.S=null;this.I=null;this.fC=function(it,id){var D=document;var aB=D.getElementsByTagName('body');var sS=D.getElementsByTagName('script');for(var i=0;i<sS.length;i++){try{if(sS[i].innerHTML.match(it)){this.S=sS[i];this.it=it;if(this.S.charset)this.cs=this.S.charset;this.I=D.createElement('iframe');this.I.setAttribute('id',id);if(aB.length<1){var B=D.createElement('body');D.documentElement.appendChild(B);B.appendChild(this.I);B.style.margin='0px';B.style.borderWidth='0px';}else{this.S.parentNode.insertBefore(this.I,this.S);}return this.I;break;}}catch(err){}}},this.iS=function(){if(this.it!=''){var a=this.it.split('-');this.D=a[1];this.R=a[2];this.A=a[3];var aa=this.A.split('x');this.W=aa[0];this.H=aa[1];this.I.setAttribute('width',this.W+'px');this.I.setAttribute('height',this.H+'px');this.I.setAttribute('marginwidth','0');this.I.setAttribute('marginheight','0');this.I.setAttribute('vspace','0');this.I.setAttribute('hspace','0');this.I.setAttribute('allowTransparency','true');this.I.setAttribute('frameborder','0');this.I.setAttribute('scrolling','no');this.I.style.borderWidth='0px';this.I.style.overflow='hidden';this.I.style.display='block';this.I.style.margin='0px';this.I.style.width=this.W+'px';this.I.style.height=this.H+'px';this.I.setAttribute('charset',this.cs);}},this.iC=function(me,dg,q){if(this.it!=''){this.iS();this.P='http:';if(document.location.protocol=='https:')this.P='https:';var sr='ref='+this.R+'&area='+this.W+'x'+this.H+'&';sr=sr+dg+'&'+me.gA()+'&cs='+this.cs;this.I.setAttribute('src',this.P+'/'+'/'+this.D+'.search.etargetnet.com/generic/generic.php?'+sr+'');}},this.dY=function(){if(this.S)this.S.parentNode.removeChild(this.S);}}function etargetMetaTags(){this.w='';this.k='';this.t='';this.d='';this.q='';this.search_object ='';this.gD=function(){this.k='';this.d='';this.t='';var D=document;if(D.getElementsByTagName){var a=D.getElementsByTagName('meta');for(var i=0;i<a.length;i++){if(a[i].name=='keywords'){this.k=a[i].content;}if(a[i].name=='description'){this.d=a[i].content;}}var a=D.getElementsByTagName('title');for(var i=0;i<a.length;i++){this.t=a[i].innerHTML;}}return this.k;},this.tR=function(s,c){return this.lR(this.rR(s,c),c);},this.lR=function(s,c){c=c||'\\s';return s.replace(new RegExp('^['+c+']+','g'),'');},this.rR=function(s,c){c=c||'\\s';return s.replace(new RegExp('['+c+']+$','g'),'');},this.getValFrom=function(elId){var m=document.getElementById(elId);if(!m)return '';if(typeof(m)=='undefined')return '';if(m==undefined)return '';var rezlt='';if(m.tagName=='A'){r=m.innerHTML;}else if(m.tagName=='SPAN'){r=m.innerHTML;}else if(m.tagName=='DIV'){r=m.innerHTML;}else if(m.tagName=='TD'){r=m.innerHTML;}else if(m.type=='select'){r=m.options[m.selectedIndex].value;}else if(m.type=='radio'){r=m.checked;}else if(m.type=='checkbox'){r=m.checked;}else{r=m.value;}this.q=this.tR(r);if(this.q=='')this.search_object='';return r;},this.sW=function(w){this.w=this.tR(w);},this.sQ=function(q){if(q=='')return false;this.q=this.tR(q);this.search_object='';},this.gM=function(name,cnt,len){var s='';var c=' ';if((this.d=='')&&(this.k=='')&&(this.t==''))this.gD();if((this.search_object!='')&&(this.q==''))this.getValFrom(this.search_object);if(name=='description'){s=this.tR(this.d);}else if(name=='title'){s=this.t;}else if(name=='keywords'){s=this.tR(this.k);c=',';}else if(name=='search_object'){return encodeURIComponent(this.q);}var a=s.split(c);s='';var ss='';var l=a.length;if(l>cnt)l=cnt;for(var i=0;i<l;i++){ss=encodeURIComponent(this.tR(a[i]));if((s.length+ss.length+1)>len)return s;if(s!='')s=s+'+';s=s+ss;}return s;},this.gA=function(){var s='';s=s+'&tt='+this.gM('title',8,60);s=s+'&mk='+this.gM('keywords',8,60);s=s+'&md='+this.gM('description',8,60);if(this.q!='')s=s+'&q='+this.gM('search_object',8,60);else s=s+'&q='+escape(location.href);if(this.w!='')s=s+'&keywords='+this.w;return s;}}if(!EtargetBannerThe)var EtargetBannerThe=1;else EtargetBannerThe++;if(!EtargetMetaTags)var EtargetMetaTags=new etargetMetaTags();EtargetMetaTags.q='';if(typeof(EtargetSearchObject)!='undefined')EtargetMetaTags.search_object=EtargetSearchObject;if(typeof(EtargetSearchQuery)!='undefined')EtargetMetaTags.sQ(EtargetSearchQuery);if(typeof(EtargetCatKeywords)!='undefined')EtargetMetaTags.sW(EtargetCatKeywords);var EtargetScript=new etargetScript();EtargetScript.fC(EtargetBannerIdent,EtargetBannerIdent+EtargetBannerThe);EtargetScript.iC(EtargetMetaTags,EtargetBannerStyle);EtargetScript.dY();
                //]]>
             </script> 
			       <div class='post'>";
                    switch($akce){          //includovani souboru podle volby z menu
                        case 'statistikyHracu':
                            include ('statistikyHracu.php');
                        break; 
  
                        case 'onas':
                            include ("onas.php");
                        break;
                        
                        case 'rozpisZapasu':
                            include ("rozpisZapasu.php");
                        break;
                        
                        case 'aktuality':
                            include ("aktuality.php");
                        break;
                        
                        case 'videa':
                            include ("videa.php");
                        break;
                        
                        case 'komentare':
                            include ("komentare.php");
                        break;
                            
                        default :
                            include ("aktuality.php");
                        };
          echo"
			       </div>			
		      </div><div class='clear'></div>
		      ";}
          ?>	
	     </div>
	     
	     
      <div id="footer">
	       <span>
            <a href="http://validator.w3.org/check?uri=referer"><img src="http://www.w3.org/Icons/valid-xhtml10-blue"
        alt="Valid XHTML 1.0 Transitional" height="31" width="88" /></a>
            Designed by Pavel Tregl. Copyright © 2009 <a href='http://www.fbcvikings.cz'>FBCVikings.cz</a>.
	          Hosting od <a href='http://www.pipni.cz'>Pipni.cz</a>.
         </span>	
      </div>	

    </div>  
  </body>
</html>