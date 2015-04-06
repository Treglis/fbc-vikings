-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Počítač: sql17.pipni.cz
-- Vygenerováno: Pon 04. bře 2013, 13:19
-- Verze MySQL: 5.1.61
-- Verze PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `web_fbcvikings_cz`
--
CREATE DATABASE `web_fbcvikings_cz` DEFAULT CHARACTER SET cp1250 COLLATE cp1250_general_ci;
USE `web_fbcvikings_cz`;

-- --------------------------------------------------------

--
-- Struktura tabulky `aktuality`
--

CREATE TABLE IF NOT EXISTS `aktuality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` varchar(255) COLLATE utf8_bin NOT NULL,
  `nazev` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `autor` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Vypisuji data pro tabulku `aktuality`
--

INSERT INTO `aktuality` (`id`, `datum`, `nazev`, `text`, `autor`) VALUES
(1, '29.3.09', 'Vítězství nad Supama', 'Zápas probíhal ze začátku velice dobře v náš prospěch. Potom, co jsme vedli 8:2, jsme však soupeře podcenili, což zapříčinilo několik gólů do naší branky a otočení v soupeřův prospěch na 11:12. Naštěstí jsme se nenechali zaskočit, upravili jsme trochu sestavu, proházeli trojky a po třech vstřelených brankách v posledních vteřinách druhé třetiny jsme se do toho opřeli. Třetí třetina byla zase vyrovnaná, ale poté dobrý náskok a ještě vyloučení na straně Supů nám přineslo vítězství 22:19, což nás posunulo dále k snad jistému postupu do první ligy.', 'Pavel Tregl'),
(2, '7.4.09', 'Zakončení sezóny', 'A je to tu. Konec sezóny. Kdo by to byl řekl, že ten čas tak rychle uteče. Když jsme v září nastupovali jako nový tým k prvnímu zápasu, nikdo nevěděl co jsme zač a ani netušili co je čeká. Již po prvních dvou zápasech jsme jasně ukázali naši sílu a naznačili jaký je náš cíl pro tuto sezónu. Jediná ztráta bodů v 2.lize byla s týmem draků. Zápas byl již od začátku v naši režii, slibné vedení 4:0 jsme ale nedokázali udržet a draci se dostali do tempa. Zápas plný zvratů a faulů nakonec dopadl shodně pro obě strany. Remíza 9:9 byla zasloužená a oba soupeři nakonec odcházeli spokojeni alespoň s tím bodem. Jako vítěz základní části jsme čekali na soupeře do playoff, po strhující bitvě se jím nakonec stalo mužstvo Benbra. První zápas byl vyhecovaný, plný obětavých zákroků. Zápas nakonec dopadl v náš prospěch 17:12. Na druhý zápas dorazilo Benbro pouze ve 4 lidech a bylo jasné, že nemají šanci. Toto podcenění vedlo k největší přestřelce v historii RAFLU a celkem ke 42 vstřeleným brankám. Vítězství 25:17 nevypadá sice moc krásně, ale je to vítězství. Jako jediný neporažený tým jsme vstupovali do bojů o 1.ligu. Jako první jsme zdolali ne moc bojovné a odhodlané mužstvo Young Skillů a celkem jednoznačně jsme vyhráli 10:3. Druhý zápas jsme sehráli s posledním  mužstvem 1.ligy SUP MB. Po první třetině, kterou jsme vyhráli 8:3 vypadal zápas jako procházka     růžovým sadem, ale opak byl pravdou. Supy se vzchopili z 5ti brankové ztráty a během chvilky ji smazali. Přestřelka nakonec dopadla v náš prospěch 22:19. V tuto chvíli bylo skoro jasné, že máme postup do 1.ligy jistý, proto jsme už spíše přemýšleli nad oslavou, než abychom se soustředili na poslední zápas sezóny a to se vymstilo. Náš největší konkurent v 2.lize, tým draků, nás porazil 10:9 a tím také padla naše neporanitelnost, která čítala rovných <b>20 zápasů!</b> Postup do 1.ligy nám ale naštěstí neunikl a baráž jsme i přes tuto prohru s přehledem vyhráli. \r\nNa závěr bych tedy dodal, že do 1.ligy se těšíme a doufáme, že se tam neztratíme a neuděláme ostudu.', 'Michal Šverma'),
(3, '5.5.09', 'Sraz v Galaxii', 'Tuhle sobotu 9.5. v Bakově v Galaxii v 17:00 sraz týmu. Respektive se jedná o zaplacení všech příspěvků na novou sezónu. Děláme to takhle, protože z některých lidí se ty peníze špatně dostávají. Jestli se nebudete moct někdo dostavit, tak to mužete poslat po někom jiným nebo mi to doručit nějakým jiným způsobem, či někdy jindy. Dále jsme rozhodli, že kdo to nezaplatí tak ho nezapíšem na další rok, protoze to ze svýho prostě platit nechcem. Nechcem nikoho vyhazovat, ale když člověk chce hrát, tak ty peníze dá. Pokud s tím máte někdo však nějaký problém, tak mi klidně dejte vědět, ale včas. Poplatek činí <b>560Kč</b> pro každýho + případné něčí resty. Doufám ale že se nás sejdem dost, abychom alespoň prohodili zas pár slov a něco popili. Jestě taky padnul návrh udělat si vlastní týmové mikiny. Podle mě to je docela dobrý nápad, takže pokud by byl větší zájem, mohli bychom to zrealizovat. Ještě se dohodnem v sobotu zdar.', 'Pavel Tregl'),
(4, '29.9.09', 'První vítězství', 'Tak se nám v neděli podařilo sebrat první dva bodíky. Vítězství nad týmem FBK Cerberos nebyl jednoduchý, ba hodně vyrovnaný. První třetina skončila nerozhodně 3:3, v druhé třetině dokonce nespadl ani do jedné branky jediný míček. Vše se pak protrhlo v poslední třetině a my se probojovali až k vítěznému skóre <b>10:5</b>. Druhý zápas proti FBC YS jsme bohužel prohráli, ale zklamaní jsme z toho nebyli, neboť to byl skvělý zápas. Do konce druhé třetiny byl zápas vyrovnaný, ale pak jsme dostali nějaké ty rychlé góly a ještě navíc jedno vyloučení a to nás už položilo.\r\n<br /> <br /> <b>Děkujeme ale týmu FBC YS za perfektně odehraný zápas.</b>', 'Pavel Tregl'),
(5, '17.11.09', 'Pokuty', 'Jak jsme se dohodli na poslední schůzi, budeme platit pokuty pokud někdo nepřijde, neomluví se na trénink a na zápas, a nebo pokud někdo přijde na zápas v nějak nepřípustném stavu, třeba ožralej, to už ani nemá cenu aby jezdil. Další pokutky jsou za vyloučení ve hře. Zde je soupis sazeb s přestupky.<br />\r\n<br />\r\nNepřijití, neomluvení na trénink: 20,- Kč<br />\r\nNepřijití, neomluvení, nebo bytí v nepřípustném stavu: 50,- Kč<br /> \r\nVyloučení na 2 min: 20,- Kč<br />\r\nVyloučení na 5 min: 50,- Kč<br />\r\nČervená, vyloučení do konce: 100,-Kč<br />\r\n<br />\r\n<br />\r\nPS: Požadujeme placení pokut, pokud možno po skončení zápasu, takže si s sebou berte nějakej menší obnos ať na to kdyžtak máte. ', 'Pavel Tregl'),
(6, '28.11.09', 'Zrušen trénink', '<b><font color="red">V pátek 4.12. se ruší trénink</font></b>, takže nikdo nejezděte.', 'Treglis'),
(7, '28.11.09', 'Aktuální dění v týmu', 'Hráč Jiří Hradiský se rozhodl ukončit působení\r\nv našem týmu.<br /><br />\r\n\r\nMartin Vokoun (Real Mladá Boleslav) projevil\r\nzájem hrát za náš tým po zimní přestávce, v současnosti jednáme o jeho případném přestupu.\r\n<br /><br />\r\n\r\nToho kvůli tomu také plánujeme další posezení týmu, kde se všechno musí probrat. K řešení je hlavně přibrání nových hráčů. Musíme se dohodnout kdy, bylo by dobré, aby každý napsal do komentářů, jak má následující 2 víkendy čas, podle toho se rozhodne, pište hlavně co nejdříve. Jinak se rozhodneme podle sebe a bude nám jedno jestli budete mít čas nebo ne.<br /><br />\r\n\r\nDále žádám Šugina, aby zaplatil svojí pokutu za 2 vyloučení. To jest 40Kč. Jen tak pro info, zatím máme vybráno 60Kč.<br /><br />\r\n\r\nTeď zas apeluji na tři hříšníky (Wawris, Lukáš, Indy), kteří mi stále nezaslali svoje fotky, abych je mohl přidat na stránky. Myslím, že už jste na to měli dlouhou dobu a jestli vám ani to nestačilo, tak mi asi nezbyde nic jinýho než i za tohle prostě vybírat pokuty. Takže fotky ať jsou co nejdřív na mým mailu.<br /><br />\r\n\r\nA ještě prosíme každého o vyjádření se ohledně účasti na <a href="http://www.florbal-rafl.com/index.php?jdina=celanovinka&amp;id=318">Vánočním turnaji</a>, kdo by si šel zahrát, já osobně bych šel.', 'Treglis'),
(8, '8.12.09', 'Sezení týmu', 'Tuto <font color="red">sobotu 12.12. v 15:00 </font>(ne od 15:00, aby někdo zas pak nepřijel třeba po hodině)se koná sezení týmu v Galaxii. Budou tam všichni (snad), kteří za nás budou hrát po přestávce. Z toho vyplývá, co se bude vlastně i projednávat a bude to taková seznamka s novejma tvářema. Takže doufám, že dorazíte v hojném počtu.', 'Treglis'),
(9, '12.12.09', 'Vánoční turnaj', 'V sobotu 19. a neděli 20.12. se koná Vánoční turnaj. <b><font color="red">Začátek v sobotu je ve 14:00, kdy začíná prezentace týmů, tudíž tam každý bude, nejpozději ve 13:45.</font></b> <br />\r\n<br />\r\nNaše sestava pro tento turnaj je následující: Lukáš, Treglis, Nebe, Wawris, Šugin, Standa, Kamil, Špalda.\r\n<br /><br />\r\nSoubory k turnaji:\r\n<a href="obr/propoziceTurnaje.pdf">Propozice</a>\r\n<a href="obr/turnajRozpis.xls">Rozpis</a>', 'Treglis'),
(10, '19.12.09', 'Hovnový turnaj', 'Milí přátelé kulatého děrovaného nesmyslu a všemožných, prapodivných kejklí. Byli jsme svědky onoho "světoznámého" a "proslulého" "Vánočního" turnaje pod záštitou ředitele, manažera a vedoucího v jedné osobě MUDr., MVDr., PhDr., PaedDr., JUDr., PhMr., RNDr., Ing. Pavla Hanzlíka, CSc., DrSc., který připravil vskutku "zázračný" turnaj, plný "pohodové" hry, "lásky" a v neposlední řadě také "pochopení". \r\n\r\nA teď dost legrace...Větší pííííčovinu jsem v životě neviděl/nehrál. Ať si strčí Sejtko ty svoje rádoby pražské kluby hezky hluboko do prdele a sám se jde taky někam zastrčit. A běda vám, jestli se zas za rok na něco podobnýho přihlásíme!! :-D\r\n\r\nJinak jsem vás před Vánoci moc rád viděl a všem jak zúčastněným, tak nezúčastněným přeji pohodové a klidně strávené svátky vánoční. :-)', 'Uplakánek :''('),
(11, '21.12.09', 'Konec tréninků', 'Jen chci upozornit, že tento týden už není zaplacená hala a tedy už <font color="red"><b>nemáme trénink</b></font>. ', 'Treglis'),
(12, '22.12.09', 'PF 2010', '<div align="center"><img src="obr/Pf2010.jpg" alt="PF2010" /></div>', 'Treglis'),
(13, '6.1.10', 'Konec přestávky', '17.1. hrajeme už první zápas, tak doufám, že se sejdeme v plném počtu. Musíme už začít trochu vyhrávat.\r\n<br />\r\nJinak tenhle pátek půjdu zamluvit halu na tréninky, takže počítám s tím, že příští pátek už trénink bude, což se bude hodit i před tím zápasem. Chci abyste mi už každej poslal 700 Kč, zbytek pak kdyžtak vrátím, nebo se to schová na míčky, nebo jiný věci. Rád bych měl ty peníze co nejdřív. Číslo účtu a všechno vám ještě pošlu i na mail.', 'Treglis'),
(15, '8.1.10', 'Tréninky', 'Takže jsem dneska byl zamluvit tu halu na tréninky. <font color=''red''>Máme je od přístího týdne tj. 15.1. do 11.6.</font> z toho 3 týdny trénink nebude (dny jsou zobrazeny dole). Vychází to tedy na 19 tréninků po hodině a půl jako to bylo. Za hodinu platíme 300 Kč, celkem teda <font color=''red''>musíme zaplatit 8550 Kč</font>. To vychází 713Kč na jednoho. To znamená, že se ani do těch 700 Kč, jak jsem psal, nevejdem. Takže kdo mi to ještě neposílal, což předpokládám, že z vás nikdo, tak mi rovnou <font color=''red''>pošlete 750 Kč</font>. Jestli někdo už poslal, tak mi to pak doplatí. Doufám, že mi ty peníze dáte co nejdřív, protože skoro 9000 se mi ze svýho jen tak platit nechce.\r\n<br /><br />\r\n<font color=''red''>Tréninky nebudou:<br />\r\n29. ledna<br />\r\n19. února<br />\r\n2. dubna<br /></font>\r\n', 'Treglis'),
(16, '11.1.10', 'EDIT: Tréninky', 'Nakonec jsme teda zrušili 2 tréninky, takže jsou pouze do konce května. Cena za halu je teď teda 7650, tj. 638 na jednoho. To už není tak hrozná částka. Takže každej pošlete jen těch 700, od někoho už to dokonce i mám.', 'Treglis'),
(17, '23.3.10', 'Galavečer 23. dubna', '23. dubna proběhne opět slavnostní galavečer ve Šmaku. Více info <a href="http://florbal-rafl.com/index.php?jdina=celanovinka&amp;id=333">zde</a>. Doufám, že se nás tam dost sejde, už jen proto, že alespoň Šugin obdrží nějakou tu cenu za náš tým :D. Hlavně do komentářů napište, kdo z vás půjde, případně jestli ještě někoho budete brát s sebou, ať víme kolik máme kdyžtak zamluvit míst. ', 'Treglis'),
(18, '6.4.10', 'Dluhy vůči týmu', '<font color="red">!!!Důležité!!!</font> Žádám všechny, aby si stáhli soubor s pokutama ze sekce "Download" a každý si tam spočtal kolik dluží a ty peníze přinesl na další zápas, nebo trénink. Je mi totiž jasný, že až skončí sezóna, tak se všichni už asi moc nesejdeme a na večírek taky asi každý nepůjde. Tak ať je v tom pořádek. Ještě nám chybí platba od Bakováků, zhruba jsem to propočítával a za ty pokuty a ještě ty jejich peníze bysme měli mít do další sezóny tak 2000.', 'Treglis'),
(19, '5.9.10', 'Sezóna 2010/2011 - preview', 'Dámy a pánové, tak jsme se dočkali, startuje již šestý ročník RAFL!<br />\r\n<br />\r\nNejprve pár vět k uplynulé sezoně. Náš tým si po hladkém postupu z 2.ligy, kde jsme začínali jako nově vzniklý mančaft, vysloužil přívlastek "ambiciózní nováček 1.ligy". Těžko říct, jestli to pro nás bylo svazující, nicméně již od samotného prvního hracího dne nebylo něco v pořádku - prohráli jsme oba úvodní zápasy s mančafty (nováčky 1.ligy), které jsme ve 2.lize dokázali porážet. V průběhu první poloviny sezony několik hráčů laborovalo se zraněními, když se k tomu připočetla nedisciplinovanost některých jedinců, často se stávalo, že jsme se na zápasy scházeli v nedostačujícím počtu hráčů, resp. nedostačujícím počtu pro kvalitní výsledky. Propadli jsme se na samé dno tabulky a bylo jasné, že se přes zimní pauzu musí něco změnit. Zavedla se určitá opatření, kádr se podařilo částečně obměnit a stabilizovat a po Novém roce vlétli na palubovku úplně jiní "vikingové". Začali jsme konečně předvádět koukatelný florbal. Bojovali jsme až do samého konce zakladní části. Před posledním hracím dnem nebylo ještě stále rozhodnuto o osmičce týmů, kteří si to v play-off rozdají o titul, ale ani o mančaftech, kteří budou muset bojovat o zachování prvoligové příslušnosti v baráži. Náš tým balancoval na hraně postupu do play-off a pádu do prolínací soutěže. Štěstěna nás tentokrát nakopala do řiti a my spadli o jediný bod do nepříjemné baráže. Semkli jsme se, v bojích o záchranu podali kvalitní výkony a zaslouženě se nám alespoň částečně podařilo napravit zpackanou sezonu. V nadcházející sezoně budeme tedy nadále hrát prestižní 1.ligu.<br />\r\n<br />\r\n<font color="white"><u><b>Změny v kádru</b></u></font><br /> \r\nDo naší kabiny zavítal během léta uragán, ostatně po neuspokojivé sezoně se ani není čemu divit. Tým opouštějí z časových, výkonnostních a jiných důvodů tito hráči: Vojta Domorád, Pavel Hron, Ondřej Vávra a Standa Hejl, již v průběhu předešlé sezony ukončil činnost v našem mančaftu Jiří Hradiský. Co se týče nových akvizic, tak ze zaniknuvšího týmu FBC Young Skill přicházejí David Macoun (bývalý kapitán) a technický útočník Ondřej Kozub. Po zimní přestávce by měl být opět připraven nastoupit Dominik Tregl. I přes naše velké úsilí se nepodařil dotáhnout přestup Máry Ulíka z Realu Mladá Boleslav. V plánu byl i příchod druhého brankáře, jednání se ale nezdařila, v zimní přestávce se tedy na tento post musíme zaměřit.<br />\r\n<br />\r\n<font color="white"><u><b>Cíle pro sezonu 2010/2011</b></u></font><br />\r\nPěvně věříme, že se předešlá sezona již nebude opakovat. Pokud bude mančaft šlapat podobně jako v druhé polovině loňské sezony a baráži, je v našich silách vybojovat postup do play-off. Ano, postup do play-off je naším cílem pro tuto sezonu!', 'Nebe'),
(20, '3.2.11', 'Trénink', 'V pátek 4.2. z důvodu prázdnin <font color="red">NENÍ trénink!!</font>', 'Treglis'),
(21, '25.3.11', 'Galavečer', 'Jako každý rok, opět letos se bude k závěru sezóny pořádat Raflovský Galavečer. Potřebujeme vědět, kdo od nás z týmu půjde, abychom mohli odeslat přibližný počet. Napište klidně, rádi bychom aby se k tomu každý nějak vyjádřil. Kdy to bude se ještě neví.', 'Treglis'),
(22, '19.10.11', 'Sezóna 2011/2012', 'FBC Vikings se zase po dlouhé době posouvají na přední příčky žebříčku 1. ligy. To se děje zejména díky novým posilám týmu - Petr Melša, Martin Matějka, Ondřej Kohout a již z loňska známý Martin Petrovický. Lví podíl ma také nová organizace tréninku a stabilizace sestavy díky zájmu nových hráčů o florbal.</br>\r\n</br>\r\nTato znovu nabitá chuť hrát si zasloužila i řádné aktualizování těchto stránek a stránek na Facebooku:)</br>\r\n</br>\r\nTým se ale musel rozloučit se střeleckou hvězdou Pavlem Šubrtem, který jel hrát florbal s klokany a Martinem  Matějkou, který odcestoval do Skotska.', 'AL'),
(23, '20.1.12', 'Upozornění', 'Po včerejším mimořádném jednání vedení ligy RAFL a vedením 6.základní školy, Vám musíme sdělit jednu méně příjemnou věc – v nedávných dnech (tento týden) se na škole ukradlo, ztratilo pár cenných věcí (cca kolem 20 tis.). Tuto věc 6. Základní škola předala k vyšetřování policii České republiky a šetření po pachateli dále probíhá i přes tuto skutečnost se nadále věci v prostorách zázemí haly, šaten ztrácejí, chtěli bychom Vás na toto počínání zloděje upozornit !!!\r\n \r\nVšichni víme jak to při hracích dnech soutěže RAFL probíhá (a tak se očekává že pachatel to v tomto období zkusí znovu) z důvodu velké fluktuace lidí jsou všechny dveře otevřeny (není jiné řešení), proto důrazně žádáme všechny hráče aby si své cenné věci (peněženky, mobily atd.) brali sebou na halu a neponechávali je v otevřených šatnách.', 'FBC Vikings');

-- --------------------------------------------------------

--
-- Struktura tabulky `anketa`
--

CREATE TABLE IF NOT EXISTS `anketa` (
  `odp` int(11) NOT NULL DEFAULT '0',
  `anketa` int(11) DEFAULT NULL,
  `ip` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ip_cele` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cas` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1250;

--
-- Vypisuji data pro tabulku `anketa`
--

INSERT INTO `anketa` (`odp`, `anketa`, `ip`, `ip_cele`, `cas`) VALUES
(1, 1, '', NULL, '0000-00-00 00:00:00'),
(2, 1, '81.25.16.78', 'byby78.tartarnet.net', '2009-03-25 18:05:37'),
(1, 1, '147.230.165.212', 'e469.kolej.tul.cz', '2009-03-25 18:51:45'),
(2, 1, '213.168.179.162', 'ffw02.dragon.cz', '2009-03-25 19:03:22'),
(1, 1, '147.230.153.209', 'a466.kolej.tul.cz', '2009-03-25 19:26:05'),
(1, 1, '147.230.165.73', 'e330.kolej.tul.cz', '2009-03-25 19:49:53'),
(1, 1, '81.25.21.15', '81.25.21.15', '2009-03-25 20:06:46'),
(1, 1, '78.110.208.243', 'gate1.metronet.cz', '2009-03-25 21:53:47'),
(1, 1, '147.230.164.155', 'e156.kolej.tul.cz', '2009-03-25 22:45:47'),
(1, 1, '213.168.184.14', 'h5838.dragon.cz', '2009-03-27 15:14:28'),
(1, 1, '147.230.156.125', 'c126.kolej.tul.cz', '2009-03-29 21:18:20'),
(1, 1, '78.128.151.93', 'pc151-93.upce.cz', '2009-03-29 22:01:44'),
(1, 1, '195.113.126.152', 'pc126-152.upce.cz', '2009-03-30 11:40:06'),
(1, 1, '78.128.153.206', 'pc153-206.upce.cz', '2009-03-30 16:17:24'),
(1, 1, '90.177.52.251', '251.52.broadband10.iol.cz', '2009-03-30 18:43:26'),
(2, 1, '88.103.83.172', '88.103.83.172', '2009-04-04 23:03:53'),
(1, 1, '81.25.21.1', 'gw.comfeel.cz', '2009-04-05 20:15:31'),
(1, 1, '78.110.210.99', '78.110.210.99', '2009-04-06 09:05:24'),
(3, 1, '85.160.167.26', 'ip-85-160-167-26.eurotel.cz', '2009-04-11 20:52:27'),
(1, 1, '92.43.26.35', 'nat1-lan2.net-online.cz', '2009-04-12 16:54:29'),
(1, 1, '83.208.115.171', '171.115.broadband2.iol.cz', '2009-04-13 22:11:57'),
(1, 1, '147.230.156.191', 'c192.kolej.tul.cz', '2009-04-22 16:37:08'),
(1, 1, '193.179.195.177', '193.179.195.177', '2009-05-29 14:08:37'),
(1, 1, '217.77.165.57', 'gprs10.vodafone.cz', '2009-06-27 19:19:42'),
(1, 1, '81.25.16.87', '81.25.16.87', '2009-09-01 18:54:04'),
(1, 1, '213.168.179.163', 'ffw03.dragon.cz', '2009-09-02 21:02:02'),
(2, 1, '95.85.209.167', 'sgw167-209.metronet.cz', '2009-09-08 20:30:19'),
(3, 1, '147.230.164.168', 'e169.kolej.tul.cz', '2009-10-14 18:38:03'),
(1, 1, '81.25.16.87', 'nat-customers.cbsn.cz', '2009-10-17 17:34:29'),
(3, 1, '213.168.179.155', 'ffw25.dragon.cz', '2009-10-26 23:11:34'),
(1, 1, '147.230.0.231', 'wifi-00-231.tul.cz', '2009-11-18 14:49:12'),
(1, 1, '95.85.209.161', 'sgw161-209.metronet.cz', '2010-02-28 00:14:36'),
(2, 1, '213.168.176.165', 'habes.kmmb.cz', '2010-03-16 15:28:00'),
(1, 2, '147.230.165.110', 'e367.kolej.tul.cz', '2010-04-01 18:50:16'),
(1, 2, '217.197.155.181', '02.plchot.net', '2010-04-01 21:23:08'),
(1, 2, '213.168.179.179', 'ffw19.dragon.cz', '2010-04-01 21:38:28'),
(2, 2, '193.108.106.20', 'fw.skoda-auto.cz', '2010-04-02 11:34:45'),
(2, 2, '92.43.24.24', '24-24-snat-klienti.net-online.cz', '2010-04-02 16:21:24'),
(1, 2, '81.25.16.87', 'nat-customers.cbsn.cz', '2010-04-03 23:09:09'),
(1, 2, '213.168.179.174', 'ffw14.dragon.cz', '2010-04-04 01:51:01'),
(2, 2, '92.43.26.35', 'nat1-lan2.net-online.cz', '2010-04-06 10:39:12'),
(2, 2, '81.25.21.1', 'gw.comfeel.cz', '2010-04-06 18:52:04'),
(1, 2, '90.178.188.78', '78.188.broadband11.iol.cz', '2010-04-11 16:46:35'),
(1, 2, '90.180.242.142', '142.242.broadband13.iol.cz', '2010-04-11 22:39:04'),
(1, 2, '81.25.16.87', 'nat-customers.c.cbsn.cz', '2010-06-08 22:41:31'),
(2, 2, '213.168.184.14', 'h5838.dragon.cz', '2010-07-24 11:59:01'),
(3, 3, '78.110.210.42', 'gate.agentnet.cz', '2010-08-24 12:43:51'),
(3, 3, '213.168.180.54', 'nat054.dragon.cz', '2010-08-24 16:46:03'),
(3, 3, '213.168.180.32', 'nat032.dragon.cz', '2010-08-25 22:26:01'),
(1, 3, '213.168.180.52', 'nat052.dragon.cz', '2010-08-29 09:56:46'),
(3, 3, '90.178.188.78', '78.188.broadband11.iol.cz', '2010-09-04 11:11:05'),
(3, 3, '81.25.21.1', 'gw.comfeel.cz', '2010-09-20 21:18:52'),
(1, 3, '88.146.2.230', 'prg2-v-4-230.static.adsl.vol.cz', '2010-09-29 22:40:44'),
(2, 3, '195.113.118.51', '195.113.118.51', '2010-10-11 17:45:38'),
(3, 3, '213.168.180.64', 'nat064.dragon.cz', '2010-10-13 20:11:04'),
(3, 3, '193.108.106.20', 'fw.skoda-auto.cz', '2010-10-22 07:55:57'),
(3, 3, '89.176.87.218', 'ip-89-176-87-218.net.upcbroadband.cz', '2010-10-25 19:25:50'),
(2, 3, '81.25.20.79', 'rout-snejdarmar.tartarnet.cz', '2010-12-05 12:42:22'),
(3, 3, '90.179.22.96', '96.22.broadband12.iol.cz', '2011-02-06 03:01:57'),
(3, 3, '81.25.16.87', 'nat-customers.c.cbsn.cz', '2011-02-18 10:31:09'),
(1, 3, '109.183.90.198', '109-183-90-198.tmcz.cz', '2011-03-09 12:46:11'),
(2, 3, '147.230.154.119', 'b120.kolej.tul.cz', '2011-03-10 19:46:06'),
(1, 3, '92.43.26.38', 'gw2-e1.mb.havlickova.net-online.cz', '2011-03-11 11:24:56'),
(2, 3, '95.85.240.10', '95.85.240.10', '2011-03-17 00:06:33'),
(2, 3, '92.43.26.42', 'gw1-bgp1.mb.tgm.net-online.cz', '2011-03-27 11:28:45');

-- --------------------------------------------------------

--
-- Struktura tabulky `baraz`
--

CREATE TABLE IF NOT EXISTS `baraz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tym` varchar(255) COLLATE utf8_bin NOT NULL,
  `body` int(11) NOT NULL,
  `rozdil` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Vypisuji data pro tabulku `baraz`
--

INSERT INTO `baraz` (`id`, `tym`, `body`, `rozdil`) VALUES
(1, 'Pixbo Kosmonosy', 6, '41:15'),
(2, 'FBC Vikings', 4, '37:22'),
(3, 'Notor Band Klášter', 2, '24:29'),
(4, 'FBC Young Skill', 0, '13:49');

-- --------------------------------------------------------

--
-- Struktura tabulky `body`
--

CREATE TABLE IF NOT EXISTS `body` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idHrace` int(11) NOT NULL,
  `branky` int(11) NOT NULL,
  `brankyPO` int(11) NOT NULL,
  `odehraneZapasy` int(11) NOT NULL,
  `odehraneZapasyPO` int(11) NOT NULL,
  `rok` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=62 ;

--
-- Vypisuji data pro tabulku `body`
--

INSERT INTO `body` (`id`, `idHrace`, `branky`, `brankyPO`, `odehraneZapasy`, `odehraneZapasyPO`, `rok`) VALUES
(1, 1, 33, 6, 16, 5, '1'),
(2, 2, 14, 0, 8, 0, '1'),
(3, 3, 66, 20, 11, 4, '1'),
(4, 4, 30, 0, 12, 1, '1'),
(5, 5, 0, 4, 4, 4, '1'),
(6, 6, 34, 17, 12, 5, '1'),
(7, 7, 3, 3, 16, 3, '1'),
(8, 8, 36, 17, 16, 5, '1'),
(9, 9, 19, 4, 16, 3, '1'),
(10, 10, 15, 6, 12, 3, '1'),
(11, 12, 24, 5, 16, 3, '1'),
(12, 1, 24, 3, 22, 2, '2'),
(13, 2, 16, 4, 11, 3, '2'),
(14, 3, 3, 5, 2, 2, '2'),
(15, 4, 13, 5, 10, 3, '2'),
(16, 5, 17, 1, 19, 2, '2'),
(17, 6, 74, 1, 22, 3, '2'),
(18, 7, 2, 0, 11, 0, '2'),
(19, 8, 18, 4, 13, 3, '2'),
(20, 9, 15, 0, 13, 0, '2'),
(21, 10, 1, 0, 5, 0, '2'),
(22, 12, 5, 0, 4, 0, '2'),
(23, 13, 22, 7, 18, 3, '2'),
(24, 14, 1, 0, 5, 1, '2'),
(25, 15, 8, 6, 9, 2, '2'),
(26, 1, 15, 0, 18, 0, '3'),
(27, 2, 12, 0, 16, 0, '3'),
(28, 4, 10, 0, 8, 0, '3'),
(29, 5, 5, 0, 10, 0, '3'),
(30, 6, 76, 0, 22, 0, '3'),
(31, 8, 2, 0, 6, 0, '3'),
(32, 13, 51, 0, 19, 0, '3'),
(33, 15, 6, 0, 2, 0, '3'),
(34, 16, 11, 0, 15, 0, '3'),
(35, 17, 3, 0, 4, 0, '3'),
(36, 18, 3, 0, 4, 0, '3'),
(37, 3, 10, 0, 4, 0, '3'),
(38, 1, 11, 0, 18, 0, '4'),
(39, 2, 20, 0, 20, 0, '4'),
(40, 3, 2, 0, 1, 0, '4'),
(41, 4, 8, 0, 13, 0, '4'),
(42, 5, 7, 0, 10, 0, '4'),
(43, 6, 15, 0, 8, 0, '4'),
(44, 8, 9, 0, 8, 0, '4'),
(45, 11, 0, 0, 0, 0, '4'),
(46, 13, 17, 0, 12, 0, '4'),
(47, 15, 29, 0, 18, 0, '4'),
(48, 16, 4, 0, 6, 0, '4'),
(49, 18, 3, 0, 4, 0, '4'),
(50, 19, 0, 0, 22, 0, '4'),
(51, 20, 29, 0, 15, 0, '4'),
(52, 21, 3, 0, 3, 0, '4'),
(53, 22, 10, 0, 5, 0, '4'),
(54, 0, 0, 0, 0, 0, ''),
(55, 0, 0, 0, 0, 0, ''),
(56, 0, 0, 0, 0, 0, ''),
(57, 0, 0, 0, 0, 0, ''),
(58, 0, 0, 0, 0, 0, ''),
(59, 0, 0, 0, 0, 0, ''),
(60, 0, 0, 0, 0, 0, ''),
(61, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabulky `dochazka`
--

CREATE TABLE IF NOT EXISTS `dochazka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zapas` varchar(255) COLLATE utf8_bin NOT NULL,
  `trenink` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Vypisuji data pro tabulku `dochazka`
--

INSERT INTO `dochazka` (`id`, `zapas`, `trenink`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, '', ''),
(13, '', ''),
(14, '', ''),
(15, '', ''),
(16, '', ''),
(17, '', ''),
(18, '', ''),
(19, '', ''),
(20, '', ''),
(21, '', ''),
(22, '', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `downloady`
--

CREATE TABLE IF NOT EXISTS `downloady` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazev` varchar(255) COLLATE utf8_bin NOT NULL,
  `adresa` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Vypisuji data pro tabulku `downloady`
--

INSERT INTO `downloady` (`id`, `nazev`, `adresa`) VALUES
(1, 'Pravidla RAFL', 'http://florbal-rafl.com/download/pravidla.pdf'),
(2, 'Zápis', 'http://florbal-rafl.com/download/zapis20082009.pdf'),
(3, 'Pokuty', 'http://www.fbcvikings.cz/download/FBCVikings_Pokuty.xls');

-- --------------------------------------------------------

--
-- Struktura tabulky `gbook_v2`
--

CREATE TABLE IF NOT EXISTS `gbook_v2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(32) COLLATE utf8_bin NOT NULL,
  `mail` varchar(50) COLLATE utf8_bin NOT NULL,
  `zprava` text COLLATE utf8_bin NOT NULL,
  `cas` varchar(255) COLLATE utf8_bin NOT NULL,
  `obr` varchar(255) COLLATE utf8_bin NOT NULL,
  `ip` varchar(32) COLLATE utf8_bin NOT NULL,
  `ip_cele` varchar(255) COLLATE utf8_bin NOT NULL,
  `odpoved` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=364 ;

--
-- Vypisuji data pro tabulku `gbook_v2`
--

INSERT INTO `gbook_v2` (`id`, `nick`, `mail`, `zprava`, `cas`, `obr`, `ip`, `ip_cele`, `odpoved`) VALUES
(20, 'Klingon', '', 'GJ....\r\nDodělej třeba ve volnu i to bodování..... Ať se Nebe víc snaží:-D ', '2009-03-25 20:06:10', '', '81.25.21.15', '81.25.21.15', 0),
(27, 'Treglis', '', 'Anketa uz beha dobre.:-) ', '2009-03-25 22:48:37', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(18, 'Treglis', '', 'Tak sem můžete dávat nějaké vaše komentáře. Neslušné komentáře budu mazat.', '2009-03-25 18:40:55', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(21, 'Treglis', '', 'Piste sem treba i navrhy, co byste tu jeste chteli, nemam na to cas, mozna kdyz se budu nudit tak to sem nejak doplnim neco. Ale spis bych to vyladil jeste a zacal se vsim od pristi sezony, koukam ted se se mi nevynulovala anketa, pocita se spatne.:-) ', '2009-03-25 22:21:41', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(22, 'Treglis', '', 'Pridat pocet odehranych zapasu k bodovani.', '2009-03-25 22:23:47', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(23, 'Treglis', '', 'Premejslel jsem o necem, ze by si clovek jen zaklik jestli jde na trenink nebo na zapas. Ale to by se tu museli udelat nejaky registrace, to spis to tu nekdo napise do komentare, by bylo dobry aby se tam pak neschazelo ve 2.', '2009-03-25 22:28:13', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(24, 'Treglis', '', 'sekci download, tam by mohla bejt treba tabulka pro zapis a nejaky dalsi podobny veci, pravidla treba.', '2009-03-25 22:38:04', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(25, 'Treglis', '', 'Pokud ma nekdo nejakej web, kterej pridat nebo reklamu, tak at neco posle, nebo da vedet.', '2009-03-25 22:39:50', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(26, 'Treglis', '', 'Asi tady odstranim ten web, to tam stejne nikdo vyplnovat nebude.', '2009-03-25 22:40:26', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(29, 'Treglis', '', 'Tak smajlici zustanou tyhle, nenasel jsem zadny jiny, ktery by byli dobry, vetsinou se spatne zobrazovali totiz.', '2009-03-26 11:51:41', '', '147.230.14.43', 'wifi043.tul.cz', 0),
(36, 'Treglis', '', 'S Majklem jsme se dohodli, ze to udelame takhle jak pise, vzdyckyse za to napise + a ty goly. Pod to se napise legenda. ', '2009-03-26 19:18:58', '', '81.25.16.78', 'byby78.tartarnet.net', 35),
(31, 'Harley', '', 'Na ty lajny zalezi jak se sejdeme,btw ty reklamy tam pridavas ty?', '2009-03-26 14:40:11', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(32, 'Treglis', '', 'Jo pridavam, na ty lajny se asi vyserem no. To je blbost.', '2009-03-26 15:31:56', '', '147.230.14.43', 'wifi043.tul.cz', 0),
(33, 'Nebe', '', 'Good idea s tou sekcí \\&quot;download\\&quot;. Na hlavní stránku pod menu \\&quot;náš tým\\&quot; by se mohla vložit tabulka. Přidat počet odehraných zápasů k bodování, ale to už tady Treglis psal. A celá sekce \\&quot;bodování\\&quot; by se mohla rozdělit na \\&quot;základní část\\&quot; a \\&quot;play-off+baráž\\&quot;. ', '2009-03-26 15:58:00', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(34, 'honza', '', 'A můžeš, ty vole, třeba přidat tabulku zranění a marodka. Ať máme taky šanci v něčem vyniknout :)))', '2009-03-26 16:08:26', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(35, 'Harley', '', 'No ja bych to bodovani nedelil na playoff atd. ale treba by se za to mohlo napsat jenom + a pocet golu ktery padli v playoff,protoze kdyz ji treba hrat nebudeme,nebo hned vypadneme tak to nebude mit ani moc smysl ji delat si myslim', '2009-03-26 16:23:45', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(37, 'Treglis', '', 'Hele to je dobrej napad s tim souhlasim :-D nejak to pak poresim.', '2009-03-26 19:19:32', '', '81.25.16.78', 'byby78.tartarnet.net', 34),
(38, 'Treglis', '', '[b]Pridano[/b]Tak jsem tam Majkle dal ty telefony na nas dva. Bodovani je setrideny od nejvetsiho po nejmensi.:-) ', '2009-03-26 19:39:57', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(39, 'Treglis', '', 'Jeste by me zajimalo jak by sis tu tabulku predstavoval, co treba tam dat, nebo jak to vytvorit. Posli mi kdyztak nejakej navrh, me uz se nechce vsechno vymejslet.', '2009-03-26 19:41:15', '', '81.25.16.78', 'byby78.tartarnet.net', 34),
(40, 'Treglis', '', 'Nahodne foto bude zmeneno na spolecne foto, az teda ta fotka bude:-) ', '2009-03-26 19:48:31', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(41, 'Treglis', '', '[b]Uprava: [/b]Odebrana polozka web z komentare.', '2009-03-26 19:49:57', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(42, 'Treglis', '', '[b]Pro nekoho: [/b]Nemohl by mi nekdo sepsat tabulku, do ktery by mi napsal kolik kdo dal golu v playoff a barazi? Abych to mohl zapsat. [u]Nebe[/u] ty bys mohl, byl to tvuj napad a chtel jsi pomoct.', '2009-03-26 19:57:30', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(43, 'Nebe', '', 'OK, teď na to sednu, pošlu ti mail s tabulkou.', '2009-03-26 20:19:41', '', '213.168.179.162', 'ffw02.dragon.cz', 42),
(44, 'Harley', '', 'Ja to napisu', '2009-03-26 21:12:43', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(45, 'Harley', '', 'Koukam ze ten komentar byl nejakej prehozenej,takze jsem tu tabulku psal asi zbytecne,ale to jedno...', '2009-03-26 21:23:01', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(46, 'Nebe', '', 'Poslal sem Treglisovi tabulku s počtem odehraných zápasů a vstřelených gólů v play-off a baráži ;-) ', '2009-03-26 22:04:54', '', '213.168.179.162', 'ffw02.dragon.cz', 45),
(47, 'Nebe', '', 'Jinak ten komentář není přehozenej, takto se zobrazují reakce na daný komentář - pod ten příspěvek, co na něj reaguješ. Nebo nevím, co si myslel..', '2009-03-26 22:21:53', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(48, 'Harley', '', 'No tak nejak:-D ', '2009-03-26 22:23:36', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(49, 'Treglis', '', 'Takhle nejak to Majkl myslel. [b][u]Tohle plati pro vsechny, kdyz na neco reagujete, piste to jako odpoved na ten komentar, bude to pak prehlednejsi. ;-) [/u][/b]', '2009-03-26 22:25:00', '', '78.110.208.243', 'gate1.metronet.cz', 47),
(50, 'Treglis', '', '[b]Uprava: [/b]Tak jsem upravil to bodovani na statistiky, takhle by to melo bejt dobry. Jak tam vsichni muzete videt, chybi tam pocet vasich odehranych zapasu, takze [b][u]Zadam vsechny, aby mi nejakym zpusobem napsali kolik zapasu odehrali, kdyz kouknete na rafl, a projedete si zapasy, tak si urcite vzpomenete. Jinak nektery jedince zadam jeste o ty informace do soupisky, kazdej se podivejte co vam tam chybi, kdyz mi nekdo neco posle tak to tam hned davam. A tu cepel si prosim vas, nejak najdete na netu, neni to zadnej problem.[/u][/b]', '2009-03-26 23:55:51', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(51, 'Nebe', '', 'to Treglis: no hezky na tom pracuješ ;-) play-off a baráž spoj v jeden údaj, já to do tej tabulky, co sem ti posílal, počítal dohromady, nemá cenu to dávat zvlášť, když v p-o každej odehrál maximálně 2 zápasy s Benbrem a v baráži hrajeme 3 zápasy. Do legendy napiš \\&quot;základní část + playoff a baráž\\&quot;, ok? A čoveče, přepiš slovo body na góly, nehrajeme basket :-D jinak super práce ;-) ', '2009-03-26 23:58:08', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(52, 'Treglis', '', 'S tema bodama to uz je detail', '2009-03-27 00:02:50', '', '78.110.208.243', 'gate1.metronet.cz', 51),
(53, 'Treglis', '', 'to Nebe: jestli budes mit chut, nechtelo by se ti napsat nejaky aktuality? Treba ze bude ten vecirek a neco dalsiho?', '2009-03-27 00:19:23', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(54, 'honza', '', 'dneska opět vyrážim do špitálu, tak doufám, že budu moct v neděli přijít aspoň na koučing:-D a natočit nějaký videa, třeba hráče č. 7? :-) a co ty treglis? jak seš na tom?', '2009-03-27 09:18:46', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(55, 'honza', '', 'jo a s tou marodkou to můžeš udělat třeba jako to maj boleslavský hokejisti.. mrkni na bkboleslav.cz.. tabulka marodka, nějaká ikonka křížku nebo rakve (ta se sem bude barevně hodit) a k tomu jméno a pod to ten problemos.. A JE TO :))))', '2009-03-27 09:22:10', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(56, 'Treglis', '', 'Hele ja se musim dat do kupy abych byl uplne zdravej. Pak zavolam tomu doktorovi a on me to na nekdy zaridi. Chtelo by to co nejdriv, ale uz se z toho dostavam, bylo to kvuli alergii.:-( ', '2009-03-27 11:19:31', '', '78.110.208.243', 'gate1.metronet.cz', 54),
(57, 'Harley', '', 'Koukam hrac c.7 zacina byt nejaky oblibeny:-D ', '2009-03-27 13:43:16', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(58, 'honza', '', 'Ten byl je a bude vždycky ten NEJOBLÍBENĚJŠÍ!!! :-D ', '2009-03-27 13:52:00', '', '81.25.16.78', 'byby78.tartarnet.net', 57),
(59, 'Treglis', '', '[b]Upravy: [/b]Tak jsem sem zas neco pridal, je tu slibena marodka a sekce download. Kdybyste tam chteli nekdo neco pridat nebo nejak upravit tak napiste, delal jsem to narychlo.', '2009-03-27 14:50:41', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(60, 'Harley', '', 'Do marodky muzes pridat indyho,psal mi ze ma horecku,takze nejde dneska ani v nedeli', '2009-03-27 14:55:39', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(61, 'Treglis', '', 'Dneska jim nejak nefunguje pripojeni se na ftp, musim se tam pripojovat z webu, a to je pekne naprd, hrozne to zdrzuje.:-( ', '2009-03-27 15:02:38', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(62, 'Nebe', '', 'A co ta tabulka základní části, případně i baráže? Ta by se hodila mezi marodku a náš tým. Jinak rád bych něco sepsal, ale teď na to nemám moc čas, nicméně ten článek o večírku RAFL můžeš normálně zkopčit ze stránek RAFL a pod to napsat jenom zdroj, ať v těch aktualitách máme aspoň něco.', '2009-03-27 15:14:44', '', '213.168.179.162', 'ffw02.dragon.cz', 59),
(63, 'Nebe', '', 'Svatá pravda ;-) ', '2009-03-27 15:17:08', '', '213.168.179.162', 'ffw02.dragon.cz', 58),
(64, 'Treglis', '', 'Upravil jsem kod u ankety aby nesla odeslat, aby se neodeslalo ze jste odpovidali, kdyz jste nemeli nic zaskrtly, spatne se pak pocitali procenta. Odpoved s nulovou hodnotou se nepocitala, ale byla tam pocitana odpoved navic, tak to pak nesedelo. A hlavne ten clovek nemoh znova odpovidat kvuli odeslany ip. Vid Majkle:-D ', '2009-03-27 15:48:41', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(65, 'Harley', '', 'Ja to nebyl:-D ', '2009-03-27 18:08:43', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(66, 'Šugin', 'subrt_pavel@centrum.cz', 'Ja sem taky marod,tri stehy na pate,okazite pozaduji dopsani na arodku!:-D ', '2009-03-27 23:25:33', '', '88.103.83.172', '88.103.83.172', 0),
(67, 'Šugin', 'subrt_pavel@centrum.cz', 'jo a zapasu 12 plus cely play off a baraz', '2009-03-27 23:35:47', '', '88.103.83.172', '88.103.83.172', 0),
(68, 'Treglis', '', 'Ses tam.', '2009-03-27 23:55:26', '', '81.25.16.78', 'byby78.tartarnet.net', 66),
(69, 'Šugin', 'subrt_pavel@centrum.cz', 'moje cepelecka 7XQuest', '2009-03-28 12:06:42', '', '88.103.83.172', '88.103.83.172', 0),
(70, 'Treglis', '', 'Pridano.', '2009-03-28 12:23:49', '', '78.110.208.243', 'gate1.metronet.cz', 69),
(71, 'Treglis', '', 'Pridano', '2009-03-28 12:23:58', '', '78.110.208.243', 'gate1.metronet.cz', 67),
(72, 'Nebe', '', '[b] Hlavně nezapomeňte, že dnes v noci se mění čas, tak aby nebyl zítra průser. [/b]', '2009-03-28 13:56:48', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(73, 'Treglis', '', 'DObre ty, malem bych mozna zapomnel.:-) ', '2009-03-28 15:41:02', '', '78.110.208.243', 'gate1.metronet.cz', 72),
(74, 'Šugin', 'subrt_pavel@centrum.cz', 'dekuji za rychle vyrizeni mych prani:-D ', '2009-03-28 16:37:57', '', '88.103.83.172', '88.103.83.172', 0),
(75, 'honza', '', 'Ty aby si někde nechyběl, co??? Beztak sis to udělal schválně... :-D ', '2009-03-28 16:53:38', '', '81.25.16.78', 'byby78.tartarnet.net', 74),
(76, 'Šugin', 'subrt_pavel@centrum.cz', 'jenze ja sem zbabele neopustil tym v nejtezsich chvilich a i pres velke bolesti hraju:-D ', '2009-03-28 18:21:25', '', '88.103.83.172', '88.103.83.172', 0),
(77, 'honza', '', 'No tak mi dneska s treglisem nastoipime ale budeme jen číhat u branky a ty to za nás oběháš, ok? Ty obětavče!!! :-D', '2009-03-29 10:42:21', '', '81.25.16.78', 'byby78.tartarnet.net', 76),
(78, 'Treglis', '', 'A do nej.:-D ', '2009-03-29 11:24:35', '', '78.110.208.243', 'gate1.metronet.cz', 77),
(79, 'honza', '', 'Hošáncí, nebylo to ideální, ale nejdůležitější je, že se vyhrálo!!! Už jenom ty pr.del.aci a je TO!!! :-D ', '2009-03-29 15:19:12', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(80, 'Nebe', '', 'Zaplaťpánbůh za dva bodíky. Za sebe říkám, že mimo první třetiny to stálo z mé strany za vyliž pr*el, trochu se projevila i ta nemoc, vůbec sem nestačil fyzicky. Velice dobře ste to s Treglisem odkoučovali.  ', '2009-03-29 16:19:51', '', '213.168.179.162', 'ffw02.dragon.cz', 79),
(81, 'Treglis', '', 'Dík za uznání. Neříká se mi to moc dobře když vám musím říct, že nebudete hrát, ale musí se to brát v zájmu týmu. A všem šlo prostě o to, abysme vyhráli.', '2009-03-29 16:22:57', '', '78.110.208.243', 'gate1.metronet.cz', 80),
(82, 'Treglis', 'treglis@atlas.cz', '[b]Jinak jsem doplnil Rozpis zápasů.[/b]', '2009-03-29 16:23:36', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(83, 'Treglis', 'treglis@atlas.cz', 'Dneska se to zvládlo dobře, jsem za to rád. Na začátku jsme jim dali pár fíků a kvůli tomu jsme to pak podcenili, ale hlavně, že jsme se dali do kupy a zvrátili to na naši stranu.:-D ', '2009-03-29 16:25:08', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(84, 'Nebe', '', 'to Treglis: naprosto správně ste mě ke konci zápasu stáhli, trápil sem se a nešlo mi to, navíc jak říkám, po tej nemoci sem navíc ani nestačil fyzicky. Na Draky bude líp ;-) ', '2009-03-29 16:27:39', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(85, 'Nebe', '', 'btw. nechceš tam teda hodit alespoň tabulku baráže, kdybys měl čas ji udělat?', '2009-03-29 16:31:04', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(86, 'Treglis', 'treglis@atlas.cz', 'Tak jsem dokonce napsal i neco do aktualit. :-) ', '2009-03-29 16:43:06', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(87, 'Treglis', 'treglis@atlas.cz', 'Hele ted jedu na bratruv hokej, ale uvidime, mozna jestli bude vecer cas, tak zkusim neco udelat. A marodku presunu pod anketu.', '2009-03-29 16:44:54', '', '78.110.208.243', 'gate1.metronet.cz', 85),
(88, 'Treglis', 'treglis@atlas.cz', 'Tak jsem pridal tu tabulku baraze a prehodil marodku a jeste jsem dal prvni stranku aktuality.', '2009-03-30 00:49:10', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(89, 'Treglis', 'treglis@atlas.cz', 'Uz nam bezi fotogalerie, jeste akorat potrebujem ty nase portrety no.:-D ', '2009-03-30 16:09:14', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(90, 'Treglis', 'treglis@atlas.cz', 'Pribyla jeste sekce videa.;-) ', '2009-03-30 19:43:48', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(91, 'Šugin', 'subrt_pavel@centrum.cz', 'kterej vocas tam dal to video co:-D ', '2009-03-31 03:11:42', '', '195.113.118.50', '195.113.118.50', 0),
(92, 'Treglis', 'treglis@atlas.cz', '%)  Ja to nebyl.', '2009-03-31 10:11:17', '', '147.230.164.155', 'e156.kolej.tul.cz', 91),
(93, 'honza', '', 'Ty si prostě naše týmová mediální hvězda :-D  :-D  :-D ', '2009-03-31 11:22:06', '', '195.113.126.115', 'pc126-115.upce.cz', 91),
(94, 'honza', '', 'Jo a taky sem koukal, že v tabulce (podle toho jaký je pořadí) rozhoduje vzájemný zápas. Takže by bylo lepší v neděli neprohrát... Ať neni zbytečný drámo %) ', '2009-03-31 11:31:00', '', '195.113.126.115', 'pc126-115.upce.cz', 0),
(95, 'Šugin', 'subrt_pavel@centrum.cz', 'cenna informace...', '2009-03-31 12:08:31', '', '195.113.118.50', '195.113.118.50', 94),
(96, 'Treglis', 'treglis@atlas.cz', 'Abysme ale nepostoupili, tak by jeste museli Young skillove o hodne vyhrat, coz si myslim ze je hodne nerealny.:-) ', '2009-03-31 12:22:49', '', '147.230.14.43', 'wifi043.tul.cz', 94),
(97, 'Treglis', 'treglis@atlas.cz', 'My hlavne neprohajem.:-D ', '2009-03-31 12:23:16', '', '147.230.14.43', 'wifi043.tul.cz', 94),
(98, 'Nebe', '', 'Celou sezonu se neprohrálo... bylo by fajn se v neděli rozloučit se sezonou výhrou ;-) ', '2009-03-31 13:18:42', '', '78.128.155.239', 'pc155-239.upce.cz', 94),
(99, 'Nebe', '', 'to Treglis: nechci bejt puntíčkář, ale máš chybku v rozpisu - se SUPama sme hráli ve 13:15 :-) ', '2009-03-31 13:26:00', '', '78.128.155.239', 'pc155-239.upce.cz', 0),
(100, 'Šugin', 'subrt_pavel@centrum.cz', 'nebe je puntickar:-D ', '2009-03-31 13:51:06', '', '195.113.118.50', '195.113.118.50', 99),
(101, 'Harley', '', 'Tak jsem nas oficialne prihlasil do dalsi sezony raflu... Prej je obrovskej zajem,tak jsem na to zvedavej', '2009-03-31 14:42:44', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(102, 'Treglis', 'treglis@atlas.cz', 'To uz se to zjistovalo tak brzo jo?', '2009-03-31 14:46:59', '', '147.230.14.43', 'wifi043.tul.cz', 101),
(103, 'Treglis', 'treglis@atlas.cz', 'Tak jsem ti udelal radost. ;-) ', '2009-03-31 14:50:03', '', '147.230.14.43', 'wifi043.tul.cz', 99),
(104, 'Harley', '', 'Do 20.4 musej byt odeslany prihlasky,kdo posle pozdejc ma prej smulu', '2009-03-31 14:50:50', '', '81.25.16.78', 'byby78.tartarnet.net', 102),
(105, 'Treglis', 'treglis@atlas.cz', 'Hele ono jestli je o to tak velkej zajem, tak kdyby se prihlasilo celkem 24 tymu co muze bejt, tak by to asi bylo tak, ze vsichni z baraze by sli do prvni ligy. Teoreticky.', '2009-04-01 12:26:54', '', '147.230.14.43', 'wifi043.tul.cz', 0),
(106, 'Harley', '', 'I prakticky', '2009-04-01 13:33:24', '', '81.25.16.78', 'byby78.tartarnet.net', 105),
(107, 'Treglis', 'treglis@atlas.cz', 'to Honza: Kdy budes mit ten clanek?', '2009-04-01 23:44:56', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(108, 'Nebe', '', 'Návrh na změnu ankety: Kde byste chtěli udělat rozlučku a oslavu postupu? Varianty bychom probrali zítra na tréninku. Myslím si, že o postupu již můžeme mluvit nahlas po příspěvky Majkla ohledně přihlášek na novou sezonu, nicméně v neděli bychom měli hrát naplno a Draky porazit ;-) ', '2009-04-02 14:34:31', '', '78.128.153.192', 'pc153-192.upce.cz', 0),
(109, 'Harley', '', 'No ja myslim ze 17.4 ve smaku ne? Nebo ty chces jeste nekde jinde a jindy?', '2009-04-02 17:34:32', '', '81.25.16.78', 'byby78.tartarnet.net', 108),
(110, 'Nebe', '', 'No já myslel něco soukromého, jako sme se v srpnu poprvé sešli ve Šmaku.', '2009-04-02 19:29:35', '', '78.128.153.192', 'pc153-192.upce.cz', 109),
(111, 'Šugin', 'subrt_pavel@centrum.cz', 'Ahoj kluci,tak sem se vratil odpocatej z chorvatska a sem pekne natesenej na zejtra a abych vas dostatecne nabudil,tak vam posilam odkaz kde sem travil minule dny:-) ,a nasel sem uplne presnou fotku to abych vas trochu nasral:-D ,http://www.princess.co.uk/princess-23-metre-23M-motor-yachts.html', '2009-04-04 23:03:08', '', '88.103.83.172', '88.103.83.172', 0),
(112, 'Harley', '', 'Honza to na ten rafl napsal fakt nadherne,az jsem s toho urojil slzu:-D ', '2009-04-05 20:53:58', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(113, 'honza', '', 'Ty vole hošánci, ten sejtko mě zase na stránkách raflu dostal. V podstatě jsme podle něj všichni čuráci, že se to, že je to finále objevilo až po rozkliknutí a majkl je podle něj (jako vedoucí) ještě větší, když to tak odsouhlasil..\r\nAle už tam nic psát nebudu, protože pak budeme vzpadat jako ubrečený princezny. prostě sme měli vyhrát a když ne, tak nás aspoň může těšit, že sme ty \\''\\''sympaťáky\\''\\'' z dračí prdele.. teeeda sluje  :-) aspoň trošku nasrali tim jejich \\''\\''nepostupem\\''\\''', '2009-04-06 18:12:24', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(114, 'Treglis', 'treglis@atlas.cz', 'Souhlas s tebou, me to taky dostalo.', '2009-04-06 20:20:35', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(115, 'Treglis', 'treglis@atlas.cz', 'To vis, Sejtko dostal klepec, tak si to musi na nekom vybit.  Me treba nenapadlo si to tady rozkliknout na celej clanek, kdyz vsechny ostatni co tam v ty barazi jsou, kdyz se rozkliknou, tak jsou uplne stejny.', '2009-04-06 20:27:03', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(116, 'Harley', '', 'No podle me na zacatku sezony nebylo nikde receni ze tohle bude nejaky finale, ale hadej se s nim porad, akorat budeme vypadat jako kokoti, takze to necham byt, skoda ze jsem si ty jednani tenkrat nenahraval:-D ', '2009-04-06 22:47:32', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(117, 'Šugin', 'subrt_pavel@centrum.cz', 'jak vidite sejtka arogantne chodit jak kral na zapasech, tak stejne arogante nam odpovedel,chuj jede:) :-D ', '2009-04-07 00:51:14', '', '195.113.118.50', '195.113.118.50', 0),
(118, 'Treglis', 'treglis@atlas.cz', 'Asi tak, podle me b si to alespon jeden z nas nejak pamatoval, ze by se neco takovyho reklo. Ale taky to nechci resit. Ale kdybysme ho chteli odrovnat, tak by stacilo mu sebrat tu jeho mikinu, to by uz nerozdejchal. :-D', '2009-04-07 10:41:14', '', '147.230.14.50', 'wifi050.tul.cz', 116),
(119, 'Treglis', 'treglis@atlas.cz', 'Kdo z vas nepujde na sraz?', '2009-04-07 19:32:44', '', '147.230.164.155', 'e156.kolej.tul.cz', 0),
(120, 'honza', '', 'majkle, majkle.. to bylo řečí, že nedokážeš nic napsat.. to by mě zajímalo, co teď budu psát do toho \\''\\''o nás\\''\\'' když si mi vzal :) tolik myšlenek.. ale jinak klobouk dolů. vytáhnul ses. ', '2009-04-07 20:09:45', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(121, 'Treglis', 'treglis@atlas.cz', 'Ty hlavne uz neco napis :-D. Majkl to zvladnul za 20min a ty porad nic. Tam prave klidne i z toho neco pouzij aby tam bylo uz i zakombinovany, jak jsme v prvni sezone dopadli.', '2009-04-07 21:56:21', '', '147.230.164.155', 'e156.kolej.tul.cz', 120),
(122, 'honza', '', 'no vidiš jakej je to skvělej spisovatel.. ono to napsání moc dlouho trvat nebude jen se odhodlat a mít nějakej nepřekonatelnej nápad :)', '2009-04-08 10:58:39', '', '81.25.16.78', 'byby78.tartarnet.net', 121),
(123, 'Treglis', 'treglis@atlas.cz', 'to Honza: kdy jdes do ty nemocnice? Me to nakonec dopadlo tak, ze jdu uz 16. 4., nastup mam ve stredu.', '2009-04-08 11:35:20', '', '147.230.14.50', 'wifi050.tul.cz', 0),
(124, 'Harley', '', 'Dekuji za poklonu honziku,co ty fotky kdy to nahodis?', '2009-04-08 15:48:35', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(125, 'Treglis', 'treglis@atlas.cz', 'Ja je nahodim az mi to honza posle:-D ', '2009-04-08 17:30:51', '', '147.230.164.155', 'e156.kolej.tul.cz', 124),
(126, 'honza', '', 'hoši, hoši, dneska sem teď těch 900 (z toho 850 nafotil něma :) ) fotek stáhnul.. dám ty naše nějak dohromady a někam to nasdílim (jestli máte ideu kam, tak mi to napiště)\r\nto treglis: já jdu na tu artroskopii v pátek ráno.', '2009-04-08 19:18:43', '', '81.25.16.78', 'byby78.tartarnet.net', 125),
(127, 'honza', '', 'to treglis: tady sou ty fotky http://uloz.to/1598259/09-04-05 - fbc vikings vs. dr.aci veselá.zip, až to stáhneš, tak mi, prosím, pošli sms a já to z toho uloz.to smažu. ', '2009-04-09 11:19:24', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(128, 'Treglis', 'treglis@atlas.cz', 'Uz to mam stazeny, tak to muzes smaznout.', '2009-04-09 11:46:02', '', '147.230.14.50', 'wifi050.tul.cz', 127),
(129, 'honza', '', 'odkaz znovu (nějak sem ty fotky předtím pojebal)\r\nhttp://uloz.to/1598425/09-04-05%20-%20fbc%20vikings%20vs.%20dr.aci%20vesel%C3%A1.zip', '2009-04-09 12:04:45', '', '81.25.16.78', 'byby78.tartarnet.net', 127),
(130, 'honza', '', 'stáhni ty nový, dík!!! tam sou některý ořezaný a upravený.. nějak se mi ta úprava u těch předchozích jebla...', '2009-04-09 12:05:39', '', '81.25.16.78', 'byby78.tartarnet.net', 129),
(131, 'Treglis', '', 'Tak uz to mam taky', '2009-04-09 13:37:29', '', '78.110.208.243', 'gate1.metronet.cz', 129),
(132, 'Treglis', 'treglis@atlas.cz', 'uz tu jsou ty dalsi fotky', '2009-04-09 15:25:09', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(133, 'honza', '', 'a čekám nějakej koment!!! protože si myslim, že na těhle už je malinko znát kvalita foťáku... a fotografa :-D ', '2009-04-09 18:08:54', '', '81.25.16.78', 'byby78.tartarnet.net', 132),
(134, 'Treglis', 'treglis@atlas.cz', 'To mas pravdu, na tech to je hodne videt, dobry zabery, jen majkl ti tam obcas utikal ze zaberu, jak byl rychlej. ;-) :-D ', '2009-04-10 13:32:27', '', '81.25.16.78', 'byby78.tartarnet.net', 133),
(135, 'Treglis', '', 'Tak uz jsem to dal dohromady, jak to bylo rozhozeny', '2009-04-11 00:13:05', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(136, 'honza', '', 'to treglis: tak nakonec se možná plastice vyhnu, část vazu to drží a koleno tak není nestabilní.. takže sem teď oficiálně v rekonvalescenci po artroskopii. ', '2009-04-13 10:38:10', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(137, 'Treglis', '', 'Tak to mas dobry, hlavne abys to mel dobry a vydrzelo to no. Bude to chtit pak bejt ale opatrnej, asi nejakou ortezu ne, pro jistotu.', '2009-04-13 11:46:04', '', '81.25.21.1', 'gw.comfeel.cz', 0),
(138, 'honza', '', 'tak mě, majkle, napadá... kdy bude OSLAVÁÁÁÁÁÁÁÁÁÁÁ????? :-D ', '2009-04-15 23:00:05', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(139, 'Nebe', '', 'A kdy bude ten článek \\&quot;o nás\\&quot;? Bude to ještě letos? :-D %) ', '2009-04-16 12:04:44', '', '78.128.152.61', 'pc152-61.upce.cz', 138),
(140, 'Nebe', '', 'Hoši, takže zítra všichni v dresech na galavečer? Platí to, na čem sme se domluvili? Máte někdo přehled, kdo od nás dorazí/nedorazí?', '2009-04-16 12:06:09', '', '78.128.152.61', 'pc152-61.upce.cz', 0),
(141, 'honza', '', 'o nás bez nás??!! není můza... :)', '2009-04-17 16:01:52', '', '81.25.16.78', 'byby78.tartarnet.net', 139),
(142, 'Treglis', '', 'Ja bych nakonec navrhoval pak nekdy jeste nekde nejakej sraz, pekne me nasrali.:-( ', '2009-04-18 12:24:50', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(143, 'Treglis', '', 'Hlavne Honza at uz napise ten clanek, a musej se udelat ty fotky, a pokud mate nejaky z toho galaveceru tak mi je poslete taky', '2009-04-18 12:25:34', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(144, 'Treglis', '', 'Jinak to dopadlo dobre, nic jinyho jsem si tam neporouchal, tak jen ten vaz nahradili, muzu na to i zlehka pokladat na zem a pohybat to do nejakejch 70 stupnu, tak si myslim ze by mi to ani nemuselo tolik ochabnout a ze to zas tak hrozny nebude. Bolelo to ale docela fest, ted uz to je v pohode ale. Jen me sere ze jsem nemoh na ten vecer no. Ale tak to se da delat. A prej mel Sejtko nejaky kecy ze jsme si stezovali rikal bratr, to me hlavne stve ze sem tam nebyl, bych se tam to nej pustil za ty jeho debilni kecy.', '2009-04-18 12:29:49', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(145, 'honza', '', 'to treglis:\r\nkdyž uděláme někde nějakou tu akcičku, tak můžu vzít foťák a uděláme ty fotky těch našich ksichtů :) ten článek furt nějak nemůžu udělat, aby se mi líbil ale zapracuju na tom. jinak je dobře, že všechno dopadlo ok. už se těšim až si spolu zahrajeme v lajně mrzáků :)', '2009-04-19 11:24:57', '', '81.25.16.78', 'byby78.tartarnet.net', 0),
(146, 'Treglis', '', 'No na to mam jeste dost, casu, zatim se tesim az budu moct chodit :-) . Ale co jsem na to koukal na netu tak tam to po 6 tydnech uz uplne ohybali a ja to musim mit 6 tydnu o berlich aby se zpravila ta slacha, takze pak uz bych snad moh taky normalne chodit a ani by nemusela bejt tak hrozna rehabilitace, myslim ze to tolik neochabne.', '2009-04-19 14:23:21', '', '78.110.208.243', 'gate1.metronet.cz', 145),
(147, 'Treglis', '', 'Tak jsem zacal uz delat nejaky upravy na webu. Je toho dost, ale vy si toho nevsimnete :-D. Musel jsem nejak vylepsit zadavani udaju. Nakonec udelam asi nejaky rozhrani, kde se bude moct cokoliv pridat, kdyz budete znat heslo. Ale to jeste chvili potrva.', '2009-06-26 02:56:03', '', '78.110.208.243', 'gate1.metronet.cz', 0),
(148, 'Nebe', '', 'Drazí spoluhráči, aby se to tu trochu pohnulo (co se týče diskuze), vkládám zde tento odkaz:\r\nhttp://www.bootcamps.cz/?gclid=COOTp-KOtZsCFUgTzAodDnhERA\r\nMrkněte na to... moje milovaná sestřička pravidelně chodí a je spokojená a mě tak napadlo, že do toho půjdu taky (nemám teď aktuálně téměř žádný pohyb) v rámci takové jakési letní individuální přípravy. Co vy na to, přidá se někdo? Btw. chodí tam převážně jen ženský :-) ', '2009-07-01 20:20:24', '', '81.25.16.77', 'nat77-customers.tartarnet.net', 0),
(152, 'Treglis', 'treglis@atlas.cz', 'Tak uz jsem nam nahodil novou verzi stranek.:-D . Neco malo je upraveny, hlavne jsem si upravil zadavani udaju atd. Doplnil jsem uz i informace o nejblizsich zapasech a pripravil tabulku strelcu na dalsi sezonu. Chci jeste udelat okenko v kterem bude uveden nasledujici zapas.', '2009-08-28 18:48:38', '', '81.25.16.87', '81.25.16.87', 0),
(153, 'honza', '', 'Treglis: SeĹˇ superhvÄ›zda..:-D Ne vĂˇĹľnÄ› si to tady celkem promĂˇknul. A doufĂˇm, Ĺľe si ocenil jak jdeme s Kamilem pĹ™Ă­kladem. A jĂˇ zĂ­tra vyrĂˇĹľim na to ĹˇkolenĂ­ vypeÄŤenĂ˝, abych mohl bĂ˝t ta ÄŤernĂˇ svinÄ› %) ', '2009-08-29 20:53:37', '', '81.25.16.87', '81.25.16.87', 0),
(154, 'honza', '', 'no tak zase takdobrej nejses.. kurva, jaktoze nejde diakritika???!!! :-D ', '2009-08-29 20:54:27', '', '81.25.16.87', '81.25.16.87', 153),
(155, 'honza', '', 'tak uz sem konecne ta CERNA SVINE!... stejne jako Libor.. ale ja sem teda jeste cernejsi a svinstejsi :DDD', '2009-08-30 16:09:19', '', '81.25.16.87', '81.25.16.87', 0),
(156, 'Treglis', 'treglis@atlas.cz', 'no koukam prave ted na to, diakritiku jsem nejak nesledoval, kouknu pak nekdy na to, zatim piste bez diakritiky :-) .', '2009-08-30 21:59:23', '', '81.25.16.87', '81.25.16.87', 0),
(163, 'Treglis', '', 'Tak uz muzete psat i s diakritikou. Můžete to teď i vidět, že to funguje. :-D  Stránky se už i dobre zobrazujou v ie, takze uz jen musim poladit validutu na xhtml, protoze v klasickym html se to v ie zobrazovalo vsechno vlevo.', '2009-08-31 20:00:25', '', '81.25.16.87', '81.25.16.87', 0),
(165, 'Treglis', '', 'Tak uz tu je vsechno a slape to jak ma, jen mi teda jeste chybej nejaky ty fotky. Jeste se chystam udelat tabulku aktualniho poradi tymu v 1. a 2. lize raflu.', '2009-09-01 21:58:02', '', '95.85.214.139', 'sgw139-214.metronet.cz', 0),
(166, 'Treglis', 'treglis@atlas.cz', 'Tak jsem ted akorat napsal mail Hanzlikovi, aby pridal nase stranky mezi odkazy na Raflu.', '2009-09-05 15:57:21', '', '95.85.214.139', 'sgw139-214.metronet.cz', 0),
(168, 'Treglis', 'treglis@atlas.cz', 'Tak uz jsme zakoupili ty mikiny, jsou to ty za 450 teda, ale za zakoupeni 2 byla sleva, takze vysla jedna na 350, plus k tomu pridavam 200 za naftu, protoze jsme museli zajet az do Liberce pro zbytek. Takze to vychazi 370 na jednoho. Jestli bude v patek trenink tak je vezmu a vyzkousite si, kdo bude mit M a kdo L, jsou totiz skoro stejny, ale tak nekomu muze padnout lip jina, musej se proste nejak rozebrat.', '2009-09-06 21:53:46', '', '95.85.214.139', 'sgw139-214.metronet.cz', 0),
(169, 'Treglis', 'treglis@atlas.cz', 'Tak uz je domluvena i hala, 18.9. je prvni trenink, tak doufam ze vas prijde co nejvic.', '2009-09-07 17:54:19', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(170, 'Treglis', 'treglis@atlas.cz', 'Jeste musim predelat ty tabulky, budu to muset udelat tak, ze si vzdycky zadam sam poradi tech tymu, protoze jinak se to neda vist.', '2009-09-07 19:29:39', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(171, 'Treglis', '', 'Udelal jsem navrhy na ty mikiny, tak se na to kouknete. http://www.fbcvikings.cz/mikiny/DSC01209.JPG\r\nhttp://www.fbcvikings.cz/mikiny/DSC01208.JPG', '2009-09-08 17:14:14', '', '95.85.214.139', 'sgw139-214.metronet.cz', 0),
(172, 'honza', '', 'a co nějak jinej font čísla??', '2009-09-09 20:14:04', '', '62.240.183.38', '62.240.183.38', 171),
(173, 'Treglis', '', 'Nevim jakej, dal jsem tam jen obycejnej arial, nevim jestli dat nejaky patkovy nebo bezpatkovy. Nebo tam dat nejaky zajimavy treba.', '2009-09-09 21:17:54', '', '95.85.214.139', 'sgw139-214.metronet.cz', 172),
(174, 'Treglis', '', 'http://www.fbcvikings.cz/mikiny/DSC01209b.jpg\r\n\r\nJeste jsem nasel tohle pismo, to je podle me lepsi.', '2009-09-09 21:23:52', '', '95.85.214.139', 'sgw139-214.metronet.cz', 0),
(175, 'Kapitan', '', 'Panove tenhle patek mame uz halu, takze jako vzdy od 19:30. Doufam, ze bude 100% ucast :-)', '2009-09-09 22:00:17', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(176, 'Treglis', '', 'To ja doufam taky, beru s sebou ty mikiny, tak at si to muzou vsichni vyzkouset a muzu to dat potisknout.', '2009-09-09 22:37:50', '', '95.85.214.139', 'sgw139-214.metronet.cz', 175),
(177, 'honza', '', 'tak to sem zvědavej :)', '2009-09-11 10:53:30', '', '195.113.127.160', 'pc127-160.upce.cz', 175),
(180, 'Treglis', '', 'Potreboval bych nekoho kdo by obcas napsal nejakej clanek resp. zhodnoceni hraciho dne. Nemam na to cas a chtelo by to aby tu neco bylo. Takze doufam ze se nekdo z vas ozve.:-( ', '2009-09-21 17:57:05', '', '95.85.209.59', 'sgw59-209.metronet.cz', 0),
(179, 'Domi', '', 'Cau :)\r\ntak dneska sem zaplatil halu. Cena je 6300,- Takze kdyz vemu ze nas bude 12 tak to vychazi [b]525,-[/b] na kazdyho. Penize mi noste uz tedka v patek 18.9', '2009-09-14 14:02:23', '', '78.110.208.210', '78.110.208.210', 0),
(181, 'Treglis', '', 'Tak jsem dal uz potisknout mikiny, pristi patek budou hotovy.', '2009-09-29 10:00:58', '', '95.85.209.59', 'sgw59-209.metronet.cz', 0),
(182, 'Treglis', 'treglis@atlas.cz', 'Nebe, podivej se do statistik, udelal jsem ti radost. Jinak jsem ted konecne dodelal to prostredi pro spravu, ted uz to je tak jak jsem to chtel.', '2009-10-21 00:02:03', '', '147.230.165.103', 'e360.kolej.tul.cz', 0),
(183, 'Nebe', '', 'To je náhodička, já na to zrovna koukám :-) Dobře Ty!', '2009-10-21 00:07:04', '', '81.25.16.87', 'nat-customers.cbsn.cz', 182),
(184, 'Nebe', '', 'Btw. mně by udělaly tu správnou radost úplně jiné věci v našem týmu.... jistě nemusím dál rozvádět....', '2009-10-21 00:09:18', '', '81.25.16.87', 'nat-customers.cbsn.cz', 182),
(185, 'Treglis', 'treglis@atlas.cz', 'To mi povidej, me uz toho taky dost sere. Proste se musej udelat radikalni zmeny no, takhle to dal nejde. Halu zaplati kazdej, krome tech kdo to rek predtim nez se hala zaplatila. V 5 to cely platit nebudem, proste me to nezajima je to pro tym a jestli nechodej to uz je jejich boj. Samozrejme to nechozeni a treninky a hlavne i na zapasy a jeste v nezpusobilym stavu bude mit nasledky, rikalo se hned na zacatku ze to takhle nechcem, protoze to tak byl uz za Hradiste a je to tu zas. Takze v Listopadu bude nejaka ta schuze a tam se vsechno probere. Kdyz to nekoho hold nebavi tak pujde a vezme se misto nej nekdo jinej. Nemuze hrat prvni ligu v tom co mame.', '2009-10-22 08:38:29', '', '147.230.165.103', 'e360.kolej.tul.cz', 184),
(186, 'honza', '', 'hoši, teď sem trochu nestíhal a zároveň se mi do toho motá ten florbal ve třebový, ale jasně, že hrát chci a halu zaplatím hned jak mi domi pošle částku a číslo účtu. na druhou stranu věřím, že asi v těch komentářích nemyslíte kokrétně mou osobu. kdybych na to chtěl srát, tak bych nepískal a tak. mimochodem dělat rozhodčího je fakt očistec. už neřeknu ani slovo :)))', '2009-10-23 14:52:20', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(187, 'Treglis', 'treglis@atlas.cz', 'Ne tady se prave jedna o ten jeden hraci den, kterej jsi prave ty vynechal, a tam se ukazaly vetsi problemy a uz nas to dost nasralo. Ty s tim ale nemas nic spolecnyho, protoze jsi rek, ze neprijdes. Ale kdyz nekdo rekne ze prijde a pak ne, a jeste se to teda pak snazi napravit a prijede jeste nachcanej tak to uz je pak moc.', '2009-10-24 12:48:05', '', '81.25.16.87', 'nat-customers.cbsn.cz', 186),
(190, 'Nebe', '', 'Krásný pohled na tabulku, že?? \\&quot;Týme\\&quot;!! V SUPEch byl snad lepší kolektiv a to už je skutečně silná káva. Přes zimu to bude fičák v kabině! Tabulka odchodů a příchodů u týmu FBC Vikings bude hodně nabitá... je potřeba tým připravit na baráž. Ještě jednou díky Šuginovi, Majklovi, Lukášovi a Domimu! ', '2009-11-11 12:29:17', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(192, 'Treglis', 'treglis@atlas.cz', 'Uplne uzasny no, jenomze ty co by to meli videt, ty tady snad ani nikdy nebyli, to je ten problem. Jinak 22. si uz proste pujdu urcite zahrat, uz me to nebavi, sel uz bych i ted, ale preci jen zrovna proti srsnum, nechtel bych si to nejak rozkurvit. Musime se hlavne dohodnout ted nekdy na nejaky ty schuzce a vsechno poresit, me se to totiz takhle proste nelibi. Kdyz se na to nektery vyserou a nechaj tam pak placat se 4 hrace, to je fakt moc, a co se tam pak asi ma vytvaret. Minulej rok jsme (jste, ja moc ne) bojovali, abysme se dostali do prvni ligy a ted kdyz tam jsme tak se na to vsichni vyserou, nevim jestli uz je to treba nebavi, kdyz musej poradne uz zacit makat a ne si jen tak prijit zahrat nastrilet mrte golu a jit domu, jak to bylo v ty druhy. Kdo to proste nechce hrat, tak at to rekne a klidne jde, my mu v tom branit nebudem, radsi vezmu nekoho komu to zas tolik nejde, ale vim ze to chce hrat, bude chodit na treninky a na zapasy a ne nejaky ozraly, ktery akorat jeste rozbourej pak celej vlastni tym, jejich neschopnosti.', '2009-11-12 13:24:51', '', '147.230.0.101', 'wifi-00-101.tul.cz', 190),
(209, 'Treglis', 'treglis@atlas.cz', 'Presne tak, je videt, ze kdyz se proste sejdem vsichni, a kdyz na sobe budem trochu pracovat, tak se dokazem vyrovnat i tem dalsim tymum, chce to jen na sobe proste pracovat.', '2009-11-15 16:53:18', '', '81.25.16.87', 'nat-customers.cbsn.cz', 208),
(208, 'honza', '', 'Hoši, sice tam nebyl Račák, ale jinak tam byli všichni a já osobně mám pocit, že sme konečně hráli jako tým a taky sme hráli florbal.. Bylo tam pár chyb (já osobně sem taky asi dva góly viděl až moc zblízka), ale jinak mám celkem dobrej pocit. díky!\r\nškoda, že hrajeme už příští týden..\r\n', '2009-11-15 13:43:42', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(210, 'Nebe', '', 'Souhlas! Konečně jsem neodcházel znechucenej. Taky mě mrzí, že se mi to příští neděli kryje s florbalem v Pardubkách. Nicméně pokud to vezmou všichni zodpovědně, budeme makat a táhnout za jeden provaz, pak nemám strach, že by to na konci sezony skončilo špatně.', '2009-11-15 17:08:31', '', '81.25.16.87', 'nat-customers.cbsn.cz', 208),
(211, 'honza', '', 'tak sem právě vyplnil docházku :) \r\njo a treglisovi sem na účet poslal pokutu za zápas :-D ', '2009-11-17 16:40:18', '', '90.180.242.142', '142.242.broadband13.iol.cz', 0),
(212, 'Treglis', 'treglis@atlas.cz', 'Jo uz mi dorazila. Ted jeste ten druhej hrisnik.', '2009-11-19 14:52:17', '', '81.25.16.87', 'nat-customers.cbsn.cz', 211),
(213, 'Nebe', '', 'Na účet?? Ty posíláš bezhotovostně 20,-?? :-D ', '2009-11-19 20:54:55', '', '213.168.179.162', 'ffw02.dragon.cz', 211),
(214, 'Treglis', 'treglis@atlas.cz', 'Posila no.:-) ', '2009-11-19 21:40:00', '', '81.25.16.87', 'nat-customers.cbsn.cz', 213),
(215, 'Treglis', 'treglis@atlas.cz', 'Pridal jsem novy fotky ze zapasu proti Kralikum a Drakum nad kterejma jsme urvali nejaky ty dalsi podiky zas, tak se muzete pokochat.', '2009-11-24 18:19:07', '', '147.230.165.78', 'e335.kolej.tul.cz', 0),
(216, 'Nebe', '', 'http://www.florbal-rafl.com/index.php?jdina=celanovinka&amp;id=318\r\n\r\nPánové, co vy na to, zúčastníme se? Já za sebe říkám ANO ;-) ', '2009-11-27 11:45:29', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(217, 'Kamil', '', 'Vánoční turnaj - pro mě ANO', '2009-11-28 15:13:06', '', '90.178.188.78', '78.188.broadband11.iol.cz', 0),
(218, 'Nebe', '', 'Ad CDB cup - budu se opakovat, ale tak pro pořádek: ANO. Co se týče sezení s týmem, tak příští víkend jsem v Pardubkách, čili by se mi to hodilo víkend následující 11. - 13.12.', '2009-11-28 19:49:02', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(219, 'Majkl', '', 'To uz je pozde, nezapomen ze budou vanoce a pres ty nikdo nic delat nebude... tudiz se to musi udelat co nejdrive', '2009-11-28 22:01:01', '', '213.168.179.163', 'ffw03.dragon.cz', 218),
(220, 'Nebe', '', 'Majkle, nezlob se na mě, ale já ti nerozumím - pokud se nepletu, tak Vánoce jsou 24.12., nikoliv 11.12. :-) ', '2009-11-28 23:08:50', '', '213.168.179.162', 'ffw02.dragon.cz', 219),
(222, 'Treglis', '', 'To jsou, ale kdyz to bude tamten vikend teda, tak to vychazi tak na 10 dnu do vanoc, behem kterejch se musej koupit dresy pro ty novy hrace a jeste je nechat potisknout. A to vsechno se zas tak rychle nestiha, je to proste nahovno no, ale musi se to udelat nejak aby se to stihlo zas. Ja jak jsem to psal do toho clanku tak mi nejak nedoslo ze uz zacina prosinec skoro.', '2009-11-29 00:01:46', '', '95.85.211.89', 'sgw89-211.metronet.cz', 219),
(223, 'Nebe', '', 'Ale vždyť přestávka je minimálně do poloviny ledna, čili v čem je problém?? Za 14 dní bychom sepsali novou soupisku a dresy pak přece nehoří...', '2009-11-29 01:31:56', '', '81.25.16.87', 'nat-customers.cbsn.cz', 219),
(224, 'Šugin', '', 'Zdar jak svina, taakze sem pro Vanocni turnaj, restiky za dve nehorazne nespravedlivy vylouceni bohuzel nemuzu zaplatit, chlapci blizej se Vanoce a 40kc , to jsou nekde az dve piva, proto podavam odvolani proti pokute  :-D , a cas na schuzku napisu az jak vrchni velitelstvo rozhodne o mem odvolani, treba se urazim:-D ', '2009-11-29 02:15:16', '', '195.113.118.51', '195.113.118.51', 0),
(225, 'Treglis', '', 'Jo tak je tam pak pulka ledna no, takze by se to dalo stihnout, by nam to potiskli za tejden urcite. A dresy by se objednaly pred vanocema, takze po nich by urcite byly. Takze ja s tim klidne i souhlasim aby to bylo i ten druhy vikned.', '2009-11-29 09:42:58', '', '95.85.211.89', 'sgw89-211.metronet.cz', 219),
(226, 'Treglis', '', 'N treninky nechodi a jeste si bude diktovat to je urovane. :-D ', '2009-11-29 09:43:57', '', '95.85.211.89', 'sgw89-211.metronet.cz', 224),
(227, 'Nebe', '', 'Tak já počkám na vyjádření Lukáše a přihlásil bych nás, right? \r\n[b] to Šugin: hele ty primadono, budeme řešit otázku i co se týče postu nejdůležitějšího - potřebujeme ještě jednoho gólmana, tenkrát si říkal, že by ses zeptal Petrovickýho, je to takový problém mu dát nějako vědět, když se s ním dobře znáš? Očekávám maximálně do týdne odpověď \\&quot;ano\\&quot; či \\&quot;ne\\&quot;. Je to na tobě, OK?! S Lukášem by se klasicky střídali...[/b]', '2009-11-29 10:20:45', '', '213.168.179.162', 'ffw02.dragon.cz', 224),
(228, 'Šugin', '', 'To Nebe:Problem v tom neni nejmensi , staci zavolat a vim to treba do hodiny, ale nelibi se mi tvuj ton, a proto apeluji na vedeni a zadam disiplinarni rizeni pana Nebeho za netymove jednani, pokus o zesmesneni a urazce na cti. Uvadim radsi tri, jeden by mi smetli ze stolu, ale tri, to uz neni prdel    :-D ', '2009-11-29 13:30:05', '', '195.113.118.51', '195.113.118.51', 0),
(229, 'Nebe', '', 'Koukám, že jsi dneska jedl vtipnou kaši :-D a když teda už, tak pana inženýra Nebeského, abychom si pro příště rozuměli :-D ', '2009-11-29 18:14:42', '', '213.168.179.162', 'ffw02.dragon.cz', 228),
(231, 'Treglis', '', 'Radsi zavolej tomu Petrovickymu, na tech treninkach to je pak naprd, kdyz si neni na koho zastrilet.', '2009-11-29 18:16:19', '', '95.85.211.89', 'sgw89-211.metronet.cz', 228),
(232, 'Treglis', '', 'Psal jsem si se Standou ohledne Vanocniho turnaje a rikal ze by sel, bylo by to dobry alespon na sehrani a vyzkouseni, jak nam to pujde.', '2009-11-29 23:14:29', '', '95.85.211.89', 'sgw89-211.metronet.cz', 0),
(233, 'Majkl', '', 'Zadny odvolani nebude, platit budes:-D a nebud drzej, nebo dostanes pokutu za pokuty:-D . Informativni schuzka v pulce prosince je proste blbost a nebude takhle pozde, nebudu tady pak litat jako magor ze neco neni atd. Pokud s tim ma nekdo problem, at ty veci potom zarizuje sam...\r\nSugine zavolej tomu golmanovi urychlene at da stanovisko, do patku chci mit jasnou odpoved od tebe.', '2009-11-30 15:52:30', '', '193.108.106.20', 'fw.skoda-auto.cz', 0),
(234, 'Šugin', '', 'Porad nejak nemuzu  najit kouzelne slovicko prosim:-D ', '2009-12-01 13:35:26', '', '195.113.118.51', '195.113.118.51', 0),
(235, 'Treglis', 'treglis@atlas.cz', 'Abrakadabra, nas taky nikdo neprosi ani nam nedekuje, tak si furt nestezuj.', '2009-12-01 17:48:52', '', '147.230.165.78', 'e335.kolej.tul.cz', 0),
(236, 'Majkl', '', 'Nas akorat porad kazdej jebe...', '2009-12-01 19:45:45', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(237, 'Nebe', '', 'No stále se tady nikdo jaksi nevyjádřil, já stále navrhuji 11.12. po tréninku... tento víkend jsem v Pardubicích, čili pokud to uděláte teď, opět se nezúčastním, což mě už docela nasere...', '2009-12-01 21:58:27', '', '213.168.179.162', 'ffw02.dragon.cz', 233),
(238, 'Nebe', '', 'Šugine, ty jsi hrozná guma...', '2009-12-01 21:58:48', '', '213.168.179.162', 'ffw02.dragon.cz', 234),
(239, 'Lukas', '', 'Tento tyden urcite nemuzu, do turnaje bych asi sel.', '2009-12-01 23:56:30', '', '188.95.127.233', 'gprs24.vodafone.cz', 0),
(240, 'honza', '', 'kucí moji, ten víkend co je turnaj ještě hrajem (jedeme si někam pro nadílu :-D ), takže turnaj nee.. jo a tenhle tejden sem taky tady, ale ten příští by to šlo..\r\na děkuju majklovi a tréglisovi za vzorný chod mužstva, stránek a tak... ;-) :-D ', '2009-12-02 07:46:54', '', '195.113.127.121', 'pc127-121.upce.cz', 0),
(241, 'Nebe', '', 'Tak mám nás přihlásit na ten Vánoční turnaj? Nebo to uděláš Treglis ty? Už nás je minimálně 5 do pole...', '2009-12-02 10:01:48', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(242, 'Treglis', 'treglis@atlas.cz', 'Vcera jsme se s Majklem dohodli ze to udelame az ten pristi vikend, a koukam ze jsme rozhodli dobre. Takze teda doufam ale, ze si kazdej ten cas udela.', '2009-12-02 11:54:18', '', '147.230.165.78', 'e335.kolej.tul.cz', 0),
(243, 'Treglis', 'treglis@atlas.cz', 'Hele, tak prihlasit nas muzes klidne. To zarid ty. A kdo teda vubec vsechno bude? Jeste se zeptam bratra, kdyby meli volno, jestli by si nesel zahrat. A jeste kamil kdyby sel i se Spaldou, aby jsme se sehrali treba i.', '2009-12-02 11:57:31', '', '147.230.165.78', 'e335.kolej.tul.cz', 241),
(244, 'Nebe', '', 'Zde na fóru potvrdili: já, ty, Kamil, Šugin, Lukáš. Kamil by vzal Špaldu, čili už nás je minimálně pět do pole, jdu to poslat Hanzlíkovi.', '2009-12-02 12:42:01', '', '213.168.179.162', 'ffw02.dragon.cz', 243),
(245, 'Treglis', 'treglis@atlas.cz', 'A Standa taky jeste pujde.', '2009-12-02 13:00:34', '', '147.230.165.78', 'e335.kolej.tul.cz', 243),
(246, 'Treglis', 'treglis@atlas.cz', 'http://www.tackfilm.se/en/?id=1259768185140RA89', '2009-12-02 16:41:10', '', '147.230.165.78', 'e335.kolej.tul.cz', 0),
(247, 'Nebe', '', 'Hoši, tak co to sezení? Je tu zase nějak mrtvo. V pátek po tréninku, right?', '2009-12-08 12:29:00', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(248, 'Treglis', '', 'Neboj zrovna jsem psal Majklovi ze se vecer musime dohodnout na case, jinak to je dohodnuty na sobotu odpoledne nekdy, dneska vecer, nejpozdejc zejtra to budete vedet. Jinak ja mam jeste teda dotaz jestli jsi nas prihlasil na ten turnaj :-) .', '2009-12-08 13:14:58', '', '95.85.209.120', 'sgw120-209.metronet.cz', 247),
(249, 'Treglis', '', 'Navic tady mozna v patek ani nebudu, takze ani na trenink, to jeste uvidim, nejspis az v patek.', '2009-12-08 13:26:25', '', '95.85.209.120', 'sgw120-209.metronet.cz', 247),
(250, 'Nebe', '', 'Přihlásil jsem nás, ale to už jsem tady psal.', '2009-12-08 14:38:37', '', '213.168.179.162', 'ffw02.dragon.cz', 248),
(251, 'Treglis', 'treglis@atlas.cz', 'To budou pokutky za dochzaku na trenink. :-D  Uz si mnu ruce.', '2009-12-10 09:16:54', '', '147.230.0.101', 'wifi-00-101.tul.cz', 0),
(252, 'Majkl', '', 'Kluci maj jeste cas... ale bude to zajimavy, je tam nastaveny, aby ve 3 skoncilo hlasovani? jde to vubec nastavit?', '2009-12-10 11:42:21', '', '193.108.106.20', 'fw.skoda-auto.cz', 251),
(253, 'Treglis', '', 'Slo by to nastavit, ale jeste jsem to neudelal.', '2009-12-10 14:30:16', '', '95.85.209.120', 'sgw120-209.metronet.cz', 252),
(254, 'Nebe', '', '[b][u]Pánové, jsme přihlášeni na vánoční turnaj CDB cup - jsme ve skupině B, která se bude hrát v sobotu odpoledne, v neděli pak budou zápasy o umístění od 10.00, zítra vezmu propozice a probereme to.[/b][/u] Dnes na trénink nejdu, od rána mi není moc dobře. ', '2009-12-11 13:49:58', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(255, 'Majkl', '', 'http://www.mujventil.cz/sport/amateri-mydlej-florbal-na/', '2009-12-11 16:31:46', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(256, 'Treglis', 'treglis@atlas.cz', 'Takze Sugin dluzi po vcerejsku uz 60.', '2009-12-12 08:56:33', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(257, 'Nebe', '', 'Jednou se zavedla nějaká pravidla, tak je budou všichni dodržovat! Co se týče těch fotek, začni taky kasírovat, za blbost se platí...', '2009-12-12 12:04:41', '', '213.168.179.162', 'ffw02.dragon.cz', 256),
(258, 'Treglis', 'treglis@atlas.cz', 'Tak jsem poslal ty prachy na florbal.', '2009-12-12 19:11:41', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(259, 'Treglis', 'treglis@atlas.cz', 'Na ten vanocni turnaj.', '2009-12-12 19:12:18', '', '81.25.16.87', 'nat-customers.cbsn.cz', 258),
(260, 'Nebe', '', 'Výborně ;-) ', '2009-12-12 19:20:37', '', '213.168.179.162', 'ffw02.dragon.cz', 259),
(261, 'Nebe', '', 'Výborně ;-) ', '2009-12-12 19:20:38', '', '213.168.179.162', 'ffw02.dragon.cz', 259),
(262, 'Domi', '', 'Smlouva je do 18.12. takze v patek trenink je.', '2009-12-12 23:26:33', '', '95.85.213.95', 'sgw95-213.metronet.cz', 0),
(263, 'Lukas', '', 'Jen jsem se chtel zeptat, proc na soupisce pro turnaj neni Domi. Hrat chtel, tak nevidim problem.', '2009-12-13 21:02:22', '', '81.25.20.79', 'rout-snejdarmar.tartarnet.cz', 0);
INSERT INTO `gbook_v2` (`id`, `nick`, `mail`, `zprava`, `cas`, `obr`, `ip`, `ip_cele`, `odpoved`) VALUES
(264, 'Treglis', '', 'Nevim, me to je jedno, kdo chce tak muze jit, ja osobne nikomu nebranim, ale bude nas tam asi dost no, tak abysme si zas zahrali. V sobotu rano jedu jeste do Prahy, tak doufam ze se stihnu vratit v cas. Ale pocitam s tim, takze by to melo vyjit.', '2009-12-14 00:34:19', '', '95.85.209.120', 'sgw120-209.metronet.cz', 263),
(265, 'Domi', '', 'Hrat sem chtel a chci. Ale pac sem si tady na foru nenapsal, ze chci hrat, tak nebe me vzal jako ze nehraju. Pravda je, ze lidi je dost. No rozhodne se tam pujdu koukat a kdyby nekdo musel pryc, tak bych sel misto nej dyztak.', '2009-12-14 01:07:19', '', '147.230.159.140', 'd397.kolej.tul.cz', 263),
(266, 'Domi', '', 'jooooooooooo sem 1000 navstevnik :-D \r\nTak coze to dostanu? :-D', '2009-12-14 01:10:10', '', '147.230.159.140', 'd397.kolej.tul.cz', 0),
(267, 'Treglis', '', 'Ja prave premejslim jestli nepujdes i misto me, protoze jsem zjistil ze se mi to fakt nehodi, bylo by to vsechno moc na rychlo. V sobotu by se mi hodilo nejit, v nedeli bych klidne sel pomoc, ale to uz je pak takovy blby.', '2009-12-14 07:46:00', '', '95.85.209.120', 'sgw120-209.metronet.cz', 265),
(268, 'Treglis', 'treglis@atlas.cz', 'Tak jsem nam tu trosku navodil tu blizici se Vanocni atmosferu. Doufam ze se vam to bude libit. :-) ', '2009-12-14 18:38:10', '', '147.230.164.17', 'e018.kolej.tul.cz', 0),
(269, 'Nebe', '', 'http://www.florbal-rafl.com/index.php?jdina=celanovinka&amp;id=323', '2009-12-14 19:52:12', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(270, 'Treglis', 'treglis@atlas.cz', 'Ja nevim, me se moc nelibej, takze asi ne.', '2009-12-15 12:14:38', '', '147.230.164.17', 'e018.kolej.tul.cz', 269),
(271, 'Nebe', '', 'Jeeeeeee, po roce Vánoce Vánoce přicházejí, zpívejme přátelé :-D  btw. je zajištěn dres pro Standu? Koukám, že už tam má 18, takže odkup od Klingona?', '2009-12-15 13:38:50', '', '213.168.179.162', 'ffw02.dragon.cz', 268),
(272, 'Treglis', 'treglis@atlas.cz', 'Zatim neni, jen jsem to tam dal abych ho pridal proste, to pak muzu kdyztak zmenit, jinak bude mit cerny tricko, protoze dres se podle me jeste nesezene, Wawris na to zapomnel se ho zeptat.', '2009-12-15 16:39:21', '', '147.230.0.101', 'wifi-00-101.tul.cz', 271),
(273, 'Nebe', '', 'Proboha, to je takový problém sehnat do pátku na půjčení dva dresy? Pro Špaldu a Standu? Wawris to prostě zařídí! Půjčit dres od Indyho a Libora a hotovo! Tyhle věci mě fakt vytáčej! Tohle přece není sebemenší problém, to se na mě Treglis nezlob. Kdyžtak mi klidně pošli číslo na Wawrise a já mu zavolám. Nehledě na to, že se s Majklem vídají každý den v práci. Ty dresy od kluků by přinesl rovnou na turnaj...', '2009-12-15 16:52:33', '', '213.168.179.162', 'ffw02.dragon.cz', 271),
(274, 'Nebe', '', 'Nesnáším nespolehlivost, nezodpovědnost a neschopnost, kor když jde o takovou formalitu!', '2009-12-15 16:54:36', '', '213.168.179.162', 'ffw02.dragon.cz', 271),
(275, 'Treglis', 'treglis@atlas.cz', 'Kdyz s tim mas takovej problem tak si mu zavolej 776279019. Podle me je uplne jedno v cem se bude hrat, stejne to je jen obyc vanocni trunaj. Me to je uplne u prdele tohle. Staci abysme byli jen odliseny.', '2009-12-15 18:30:19', '', '147.230.164.17', 'e018.kolej.tul.cz', 271),
(276, 'Majkl', '', 'Nebe nemas kramy? posledni dobou si porad akorat na neco stezujes a jsou to takovy picoviny porad, ze nejsou dresy (stejne nejsou potreba), ze chodej pozde (to chodili vzdycky) atd., uklidni se chlape... Nebo ze by negativne pusobila vanocni atmosfera?', '2009-12-15 21:56:28', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(277, 'Nebe', '', 'Že chci, abychom v sobotu hráli všichni v dresech, je asi tak stejná prkotina, jako si ty dva od kluků, co nebudou hrát, vypůjčit. Pokud je možnost hrát v obyčejném tričku bez čísla (jde mi o to číslo), je mi to víceméně taky šumák. Ale pro sichr bychom ty dva dresy měli mít, toť vše. Řeším v poslední době v práci dost náročné věci, a proto jsem alergický na slova \\&quot;možná\\&quot;, \\&quot;snad\\&quot;, ale rozhodně tady nechci vytvářet nějakou negativní atmosféru. A v sobotu jsem se nerozčílil kvůli tomu, že by někdo přišel pozdě (s tím jsem počítal), ale po tom, co mi Treglis na mou otázku, zda-li dorazí Standa odpověděl \\&quot;SNAD jo\\&quot;... jsem teď trochu víc podrážděnej, toť vše. A co se týče Špaldy, nevím o něm vůbec nic, a proto si nejsem jistej, že nějaké černé tričko vůbec bude mít. Čili proto jednoduché půjčení dvou dresů-naprostá banalita...', '2009-12-16 13:30:49', '', '213.168.179.162', 'ffw02.dragon.cz', 276),
(278, 'jens', '', 'tak kdyby si to řekl v sobotu tak bych ti ten dres snad i možná půjčil :-D ', '2009-12-17 08:19:37', '', '195.113.127.132', 'pc127-132.upce.cz', 277),
(279, 'Domi', '', 'Souhlasim s treglisem. Jsou to docela obycejny trika', '2009-12-18 16:37:45', '', '78.110.208.210', '78.110.208.210', 269),
(280, 'Majkl', '', 'Ju, koukam, ze jsem prisel asi o slusnou zabavu, ale na druhou stranu jsem rad, ze jsem tam nebyl... btw kdo je autorem clanku? Kamil?', '2009-12-20 00:27:05', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(281, 'Treglis', 'treglis@atlas.cz', 'Udelals dobre zes nesel, ale myslim ze tohle nikdo necekal. Alespon jednou jsme remizovali remizovali, jsme se dohodnuli, ze kdyz uz jsme oba 2 tymy byly bez bodu, takze si uhrajem remizu.', '2009-12-20 10:51:45', '', '81.25.16.87', 'nat-customers.cbsn.cz', 280),
(282, 'Treglis', 'treglis@atlas.cz', 'Jinak autorem je Kamil no. Jaks to poznal:-D ', '2009-12-20 10:52:18', '', '81.25.16.87', 'nat-customers.cbsn.cz', 280),
(283, 'Majkl', '', 'Jsem proste dobrej no', '2009-12-20 11:47:33', '', '213.168.179.163', 'ffw03.dragon.cz', 282),
(284, 'Kamil', '', 'Tak kdo jinej by mohl bejt Uplakánek, než stále ubrečený obránce Kamil Meloun :-D :-D', '2009-12-20 13:22:17', '', '90.178.188.78', '78.188.broadband11.iol.cz', 0),
(285, 'Kamil', '', 'A líbil se vám článek? :-D', '2009-12-20 13:22:46', '', '90.178.188.78', '78.188.broadband11.iol.cz', 0),
(286, 'Majkl', '', 'No jasne ze se libil a jeste navic jsem se priucil, nejaky tituly jsem ani neznal:-D ', '2009-12-20 14:52:34', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(287, 'Treglis', 'treglis@atlas.cz', 'Koukam ze tam musim upravit to 2008, jsem si toho nevsim jak jsem to stahnul, me nenapadlo ze kdyz uz tam je PF 2010, tak nad tim ze bude 2008.', '2009-12-22 16:21:09', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(288, 'Treglis', 'treglis@atlas.cz', 'Ten hosting me fakt sere, oni nam prehodej databazi na jinej server a nemuzou poslat treba mail nebo neco, to si to pak clovek musi resit sam.', '2009-12-24 10:26:03', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(289, 'Nebe', '', 'Drazí spoluhráči, chtěl bych Vám popřát příjemné a pohodové prožití vánočních svátků a úspěšný nový rok 2010. A ať máme na konci sezony všichni úsměv na tváři ;-) ', '2009-12-24 13:03:49', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(290, 'Domi', '', 'zmena hostingu?', '2009-12-25 15:09:03', '', '95.85.213.95', 'sgw95-213.metronet.cz', 288),
(291, 'honza', '', 'Tak až mi zase někdo bude naznačovat jak na to seru nebo tak něco: Peníze Treglisovi už sem dávno poslal a to i stím, že tréninky dám max. jednou za 14 dní a jak už sem dopředu řikal, tak pojedu s největší pravděpodobností v dubnu do hajzlu. Jen teda malinko nechápu, proč sou ty tréninky tak na dlouho, když se na to všichni po konci raflu stejně vyserou. A rafl asi nekončí v červnu, ne? \r\nA zbytek doplatim.. I když mě to teda lehce nadzvedlo ze stoličky, pač studuju a penízky bohužel nekálim....\r\nZdar a sílu... :-D ', '2010-01-09 14:27:45', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(292, 'Treglis', 'treglis@atlas.cz', 'No asi to jeste zkratime jak tak na to koukam, protoze se to nikomu nelibi a ja to ze svyho platit nebudu. Jedinej od koho mam penize jsi zatim asi jen ty. Jinak me by to nevadilo chodit si zahrat az do toho cervna, clovek ma alespon trochu odreagovani. Me to ale taky docela prekvapilo ta cena, ale myslim ze se to da jeste zvladnout. Ale chci alespon od kazdyho nejaky vyjadrni k tomu do kdy by chteli aby ty treninky byly. Jestli se to nekomu nelibi tak je muzem zrusit uplne. Protoze to pak jen v par lidech platit nebudem.', '2010-01-09 20:26:38', '', '81.25.16.87', 'nat-customers.cbsn.cz', 291),
(293, 'Nebe', '', 'Přesně nevím, kdy je předpokládaný konec sezony, ale pár tréninků bych po skončení RAFlu ještě možná dal, čili tak maximálně do konce května, což? Jinak na trénink nejdu, jsem celý týden v Pardubkách a v sobotu dopoledne hrajeme ve Vysokém Mýtě, ale ještě večer se vrátím do Bolky a na náš pravděpodobně klíčový dvojzápas budu tedy připraven...', '2010-01-09 20:50:14', '', '213.168.179.162', 'ffw02.dragon.cz', 291),
(294, 'h', '', 'hele, já sem zaplatil, protože chodit chci. a bez trenovani to muzeme odpiskat cely rovnou.. jen mi to přišlo cdlekm na dlouho.', '2010-01-10 00:11:45', '', '81.25.16.87', 'nat-customers.cbsn.cz', 293),
(295, 'Treglis', 'treglis@atlas.cz', 'No tak kdyz by se tam zavolalo jeste a dali bysme to do konce toho kvetna tak to je o 2 treninky min, coz je 900 korun dolu.', '2010-01-10 11:01:58', '', '81.25.16.87', 'nat-customers.cbsn.cz', 293),
(296, 'honza', '', 'dobrejch 900 třeba na balonky nebo na další sezonu, ne?', '2010-01-10 15:30:47', '', '81.25.16.87', 'nat-customers.cbsn.cz', 293),
(297, 'Treglis', 'treglis@atlas.cz', 'Ja nebo Majkl tam zejtra zavolame a zkratime to. Uvidime na kolik to pak vyjde a pripadne nekomu pak neco vratim.', '2010-01-10 18:43:39', '', '81.25.16.87', 'nat-customers.cbsn.cz', 293),
(298, 'Treglis', 'treglis@atlas.cz', 'Jen upozornuju, nezapomente si zaskrtnout trenink a zapas, i kdyz me je to jedno, alespon budou penizky do pokladny.', '2010-01-12 19:08:24', '', '147.230.165.5', 'e262.kolej.tul.cz', 0),
(299, 'Treglis', '', 'Tak uz jsem zaplatil halu. Tak doufam ze budu mit zbytek penez od vas co nejdriv.', '2010-01-22 08:34:40', '', '95.85.208.7', 'sgw7-208.metronet.cz', 0),
(300, 'Nebe', '', 'Hoši, díky všem za parádní výkon v obou zápasech a makáme dál! ;-) ', '2010-01-24 15:07:42', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(301, 'Treglis', 'treglis@atlas.cz', 'Jinak par lidi si toho asi nevsimlo, tenhle tejden trenink neni, skola ma prazdniny. Vsechny treninky ktery nebudou jsou vypsany v jedny z aktualit, je to v ni nakonci zvyrazneny cervene.:-D ', '2010-01-25 09:42:18', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(302, 'Treglis', 'treglis@atlas.cz', 'Jen mensi upozorneni, uz funguje automaticky promazavani dochazky na treninky a zapasy a vymazava se to vzdycky kazdej patek o pulnoci a kazdou nedeli o pulnoci, takze kdyz to nekdo zaskrtnete a je tam tyden pauza, tak se vam to potom stejne vymazne. Ja vim, je to blby, ale me to ulehcuje praci, mozna az budu mit nekdy cas tak to zkusim vylepsit.', '2010-01-31 21:48:57', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(303, 'Lukas', '', 'Rad bych se jeste jednou omluvil za svuj dnesni vykon. Byl hodne daleko tomu co bych mohl a chtel predvadet. Tak snad jeste bude sance to napravit.', '2010-02-07 19:43:44', '', '217.77.165.52', 'gprs5.vodafone.cz', 0),
(304, 'Treglis', '', 'Myslim ze se neni za co omlouvat, to bysme se tu museli omluvit kazdej, protoze dneska co jsme predvedli byla fakt hruza.', '2010-02-07 22:02:00', '', '95.85.208.7', 'sgw7-208.metronet.cz', 303),
(305, 'Treglis', '', 'Jen upozornuju, ze ted v patek trenink neni, jsou prazdniny. Nejak jsem si to taky vubec neuvedomil.', '2010-02-19 01:29:01', '', '95.85.210.66', 'sgw66-210.metronet.cz', 0),
(306, 'Treglis', 'treglis@atlas.cz', 'Hosi, dneska paradne odehrany zapasy, skoda toho druhyho zapasu, ale jinak to bylo pekny. :-D ', '2010-02-28 19:20:13', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(307, 'Treglis', 'treglis@atlas.cz', 'Naprogramoval jsem omezeni casu zadavani dochazky. Zadavani treninku konci v patek v 17:00 a zadavani zapasu v sobotu v 10:00.', '2010-03-03 01:17:21', '', '147.230.165.110', 'e367.kolej.tul.cz', 0),
(308, 'Nebe', '', 'Tak pánové, v neděli budu na dálku držet palce, touhle dobou budeme mít pravděpodobně přestávku na oběd, takže si ho asi moc neužiju, pač budu narvózní jako prase :-) ', '2010-03-05 14:53:07', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(319, 'Treglis', 'treglis@atlas.cz', 'Presne, kdybysme vyhrali, tak bych snad byl jeste vic nasranej, nez ze jsme nevyhrali. :-D ', '2010-03-09 14:57:33', '', '147.230.165.110', 'e367.kolej.tul.cz', 318),
(320, 'Nebe', '', 'Udržíme to a o to víc to pak oslavíme ;-) ', '2010-03-09 17:14:10', '', '212.80.67.130', 'czechsite-pardubice--bbr1.dialtelecom.cz', 318),
(321, 'Nebe', '', 'Treglis, sundej tu vánoční výzdobu, už máme polovičku března a jaro za dveřmi :-D :-D ', '2010-03-17 13:02:45', '', '213.168.179.162', 'ffw02.dragon.cz', 0),
(322, 'honza', '', 'no jo, Teglis je romantik... :DDD', '2010-03-17 16:20:59', '', '81.25.16.87', 'nat-customers.cbsn.cz', 321),
(323, 'Treglis', 'treglis@atlas.cz', 'Vy s tim nadelate. Dyt je venku porad snih, to porad pripomina vanoce. :-D ', '2010-03-17 23:06:09', '', '147.230.165.110', 'e367.kolej.tul.cz', 321),
(318, 'Šugin', 'subrt_pavel@centrum.cz', 'Zdar  chlapi, takze nasi potencionalni vyhra by nam byla stejne na hovno,pac by sme stejne spadli do baraze... ', '2010-03-08 13:09:40', '', '195.113.118.51', '195.113.118.51', 0),
(324, 'Lukáš', '', 'Doporučuji k přečtení hodnocení včerejšího zápasu od Klášterského gólmana na diskusním fóru RAFLu.', '2010-03-29 21:28:41', '', '217.77.165.54', 'gprs7.vodafone.cz', 0),
(325, 'Treglis', 'treglis@atlas.cz', 'Dobrej trouba no, hlavne ze i moji strelu ktera byla od jejich hrace tecovana, tak byla pisknuta pro ne, toho si asi nevsimnul. Spis ho nasralo, ze dostal 2 minutky za ty jeho pitomy kecy. Ja myslim, ze to osekavani bylo vzajemny, nikdo nemuze nikomu nic vycitat, zapas to byl vyrovnanej, akorat pri nas pak nakonec stalo trochu vic stesti no.', '2010-03-29 22:15:37', '', '81.25.16.87', 'nat-customers.cbsn.cz', 324),
(326, 'Captain', '', 'Panove jelikoz jsme se dohodli, ze budeme chodit na zapas v 8 do pole, nebudu tento tyden hrat. Nedokazal jsem se rozhodnout, kdo by nemel hrat, proto beru tuto zodpovednost na sebe. Budu samozrejme sedet na lavicce a krotit vase emoce i nadale, ale herne to musite zvladnout sami. Do budoucna musime vymyslet system, jak toto resit. S pozdravem vas oblibeny hrac a kapitan Majkl', '2010-03-31 23:38:49', '', '213.168.179.163', 'ffw03.dragon.cz', 0),
(327, 'Treglis', 'treglis@atlas.cz', 'Tak jsem nam tu vystavil novou anketku.', '2010-04-01 18:50:52', '', '147.230.165.110', 'e367.kolej.tul.cz', 0),
(328, 'honza', '', 'doporučuji navštívi komentáře na raflu.. je tam nové čtení.. a ne, chlapci.. nekomentoval sem dnešní zápas.. ale nedalo mi to :-D ', '2010-04-04 22:30:00', '', '81.25.16.87', 'nat-customers.cbsn.cz', 0),
(329, 'Lukáš', '', 'K tomu se snad nedá ani nic říct. Krom toho, že buď má Máša rozdvojenou osobnost a nebo jsou v Klášteře všichni magoři.', '2010-04-04 22:49:15', '', '81.25.20.79', 'rout-snejdarmar.tartarnet.cz', 0),
(330, 'honza', '', 'takže KUCÍ!!! konec dobrej, všechno dobrý, ne?\r\nno a příští rok tu ligu vyhrajem, ne? :-D \r\n', '2010-04-11 22:33:25', '', '90.180.242.142', '142.242.broadband13.iol.cz', 0),
(331, 'Treglis', '', 'Hezky, Sugin se zapsal na trenink, zas asi jednou nebude platit pokutu, chudak kasa, nic do ni nepribyde.:-D ', '2010-04-15 18:43:29', '', '95.85.212.230', 'sgw230-212.metronet.cz', 0),
(332, 'Nebe', '', 'Mno... tak to bych na tom tréninku byl asi sám :-D mám dost práce, takže letos čáry neřeším a chtěl jsem si jít večer zahrát... nu co se dá dělat...  ', '2010-04-30 00:04:57', '', '213.168.179.179', 'ffw19.dragon.cz', 0),
(333, 'Nebe', '', 'Šugine, ty gumo, už se nemusíš zaškrtávat na trénink, tréninky skončily na konci května :-D ', '2010-06-10 13:44:53', '', '213.168.180.54', 'nat054.dragon.cz', 0),
(334, 'Treglis', '', 'Tak mame do tymu novou posilu. Podarilo se mi sehnat Davida Macouna. Jeste by to chtelo toho Maru Ulika a bude to v pohode.', '2010-07-02 10:05:16', '', '78.110.210.42', 'gate.agentnet.cz', 0),
(335, 'Nebe', '', 'S Márou zajdu v průběhu července na pivko. Jinak ještě jednou - dobrej kauf ;-) ', '2010-07-02 10:59:08', '', '213.168.180.54', 'nat054.dragon.cz', 334),
(336, 'bena', 'bena3108@gmail.com', 'zdar fikingové :-)\r\n\r\nrád bych vyměnil vzájemně odkazy na florbalové webovky.\r\nVáš odkaz http://fbcvikings.cz již najdete na našich stránkách.\r\n\r\nStejně tak podpořte prosím náš web. Popř. bannerem, který je na www.butchers.tym.cz/grafika/banner.gif (rozměry 88x124px)\r\n\r\nHodně štěstí v nové sezóně Vám přejí řeznící!\r\n\r\nbena\r\nwww.butchers.tym.cz', '2010-08-12 12:08:32', '', '81.201.48.211', 'mh2net.nfx.cz', 0),
(337, 'Treglis', '', 'Tak uz jsem ti to sem bena hodil. JInak odkaz na vas tym uz v tabulce mame;-) ', '2010-08-19 12:03:30', '', '78.110.210.42', 'gate.agentnet.cz', 336),
(338, 'Treglis', '', 'Tak uz to tu je pripraveny na novou sezonu ;-) . Jeste pockat az Nebe napise nejakej clanek :-) ', '2010-08-24 12:44:55', '', '78.110.210.42', 'gate.agentnet.cz', 0),
(339, 'honza', '', 'hahá, tak sem obhájil Áčkovou licenci :-D \r\nVaše černá svině...', '2010-09-02 13:37:46', '', '195.113.126.108', 'pc126-108.upce.cz', 0),
(340, 'Treglis', '', 'Alespon nekdo kdo bude znat snad pravidla :-D ', '2010-09-03 19:09:45', '', '78.110.210.42', 'gate.agentnet.cz', 339),
(341, 'Treglis', '', 'Na ty zapasy se vzdycky zapisujte az od pondelka toho tydne, kdy se hraje dany zapas, je to totiz nastaveny, ze se to vzdycky kazdou nedeli o pulnoci vymaze. Az bude nejak cas, tak to nekdy predelam, ale ted nejak neni.', '2010-09-10 18:06:59', '', '78.110.210.42', 'gate.agentnet.cz', 0),
(342, 'Mek', '', 'Týme omlouvám se, ale bohužel tuto neděli nebudu přítomen na zápasech..jsem mimo MB celý den..přeji hodně štěstí a hlavně 4 body !!! zdar', '2010-10-06 11:21:37', '', '147.230.154.119', 'b120.kolej.tul.cz', 0),
(343, 'Treglis', '', 'To je zas na posrání, zas pauza mezi zápasama 4 hodiny, to je fakt moc. A CDB ma pokazdy pauzu jenom jeden zapas, by to mohli alespon rozlosovavat nejak spravedlivě, ať si to pak jdou zkusit hrát po takovým čekání a navíc celej den v prdeli.&gt;:o ', '2010-10-18 13:08:39', '', '147.230.158.95', 'd096.kolej.tul.cz', 0),
(344, 'Treglis', '', 'Tak konecne nemusim prepisovat statisky jednotlivejch tymu, uz se to hezky nacita samo ze stranek raflu. Nemoh jsem to uz vydrzet :-D ', '2010-10-20 22:33:40', '', '147.230.158.95', 'd096.kolej.tul.cz', 0),
(345, 'Mek', '', 'Týme, bohužel se musím znovu omluvit (doufám, že už naposledy), že nebudu v neděli na zápasech..finanční krize dopadla i na mne a musím tudíž do práce..přeju hodně štěstí a hlavně 4Body :)', '2010-10-22 16:20:14', '', '78.110.210.42', 'gate.agentnet.cz', 0),
(346, 'Treglis', '', 'To nam nejak moc veris :-D ', '2010-10-22 18:23:30', '', '78.110.210.42', 'gate.agentnet.cz', 345),
(347, 'Treglis', '', 'To uz si fakt z nas delaj v raflu prdel, z 11 hracich dnu my 3x hrajem posledni zapas jako domaci a kdyz to budu brat ze 13 tak 4x, protoze to uz se zacina odznova. To uklizime mantinely skoro jen my porad a jeste navic, kdyz to budem mit pak zas znova tak debilne rozlosovany ze zas budem mit ty dlouhy pauzy, se z toho poserem.', '2010-10-26 19:19:05', '', '78.110.210.42', 'gate.agentnet.cz', 0),
(348, 'Nebe', '', 'Čau hoši, kotník není ještě zcela OK, nechci to uspěchat, ptz kdybych si to obnovil, bylo by to v prdeli. Přeju hodně štěstí zítra!', '2010-10-30 13:26:52', '', '78.102.221.80', 'ip-78-102-221-80.net.upcbroadband.cz', 0),
(349, 'Treglis', '', 'Hodilo by se i kdyby si sel jen do brany, tam bys to zvladnul, takhle tam asi budu muset jit ja predpokladam. *TIRED* ', '2010-10-31 00:38:30', '', '78.110.210.42', 'gate.agentnet.cz', 348),
(350, 'Mek', 'd.macoun@seznam.cz', 'Tak po půlce zákl.části to s náma nevypadá moc růžově. V druhý části by to chtělo získat víc bodů, pokud se chceme vyhnout baráži:-D  to jen takovej postřeh..', '2010-11-15 17:28:14', '', '147.230.154.119', 'b120.kolej.tul.cz', 0),
(351, 'Treglis', '', 'Omlouvam se na zapas, mam brutalni anginu. ', '2010-11-27 08:17:38', '', '81.25.16.87', 'nat-customers.c.cbsn.cz', 0),
(352, 'Treglis', '', 'To jsem teda zvedavej kolik nas bude na ten zapas. Zatim to moc vabne nevypada.', '2011-02-03 19:03:05', '', '147.230.159.61', 'd318.kolej.tul.cz', 0),
(353, 'Kěťas', '', 'Ahoj, koleno se mi zlepšilo, ale zatím můžu jen na rotoped, takže tuto neděli ještě musím vynechat. Snad tu příští bych už mohl znovu naskočit ;-) ', '2011-02-15 16:08:08', '', '90.179.22.96', '96.22.broadband12.iol.cz', 0),
(354, 'Mek', '', 'Čau. Budu se snažit samozřejmě dostavit na oba zápasy, ale nevim jestli se na ten první zvednu z postele, hold v so je ples no :D', '2011-02-17 17:49:12', '', '78.110.210.42', 'gate.agentnet.cz', 0),
(355, 'honza', '', 'doufám, že Ti hráči, co ladili formu na play-off (z říše snů - to spíš Kadáfí začne na ulici rozdávat chleba se solí), ji prodají v následující baráži.\r\nmrzí mě, že nemůžu podpořit skvělého týmového ducha v posledních zápasech, ale myslím si, že by nepomohla ani svěcená voda. ale i tak se omlouvám, ale bohužel nejsem v mb. ale na baráž si už čas udělám..\r\nhlavně mám pocit, že už by všichni měli vystrčit hlavu z prdele a začít chtít hrát florbal a ne se chodit proběhnout, zaplácat si a dostat dvacítku. to se netýká těch, co nám vždycky zachraňují prdel tím, že chodí na všechny zápasy a poctivě všechno odserou..\r\nco kdybysme to dohráli se ctí, i třeba v baráži.. a pak se zamysleli bez emocí, co dál?\r\nmějte se\r\n\r\nh', '2011-03-05 10:49:05', '', '81.25.16.87', 'nat-customers.c.cbsn.cz', 0),
(356, 'Keťas', '', 'V neděli bohužel nebudu, hrajem od 15:00 derby s Benátkama', '2011-03-08 21:51:49', '', '90.179.22.96', '96.22.broadband12.iol.cz', 0),
(357, 'Nebe', '', 'Čau,\r\n\r\načkoliv naděje umírá poslední a stále je ještě šance Draky přeskočit, bohužel u toho nemůžu být, ptz v sobotu ráno odjíždím na víkendové školení do Slaného. Hodně štěstí, držte se!', '2011-03-09 18:22:03', '', '213.168.180.86', 'nat086.dragon.cz', 0),
(358, 'Mek', '', 'Bohužel v neděli taky budu chybět, mám hokejovej zápas v České Lípě...držim palce', '2011-03-10 19:47:40', '', '147.230.154.119', 'b120.kolej.tul.cz', 0),
(359, 'Keťas', '', 'gratulace k vítězství a 10týmu místu ;)', '2011-03-14 10:20:51', '', '90.179.22.96', '96.22.broadband12.iol.cz', 0),
(360, 'honza', '', 'nevim, estli to tady kucí někdo čtete.. ale abyste věděli, tak sem právě obdržel licenci rozhodčího ''''A'''', což znamená, že sem ulehčil Vaší kapse a teď už jen záležína naší druhé černé svini Nebesovi.\r\nmějte se!\r\nhonza', '2011-06-19 16:21:58', '', '62.240.183.38', 'gw-p4.vslesy.cz', 0),
(361, 'Treglis', '', 'Parada, diky, doufam ze to ocenej i ti ostatni teda.', '2011-06-21 09:57:22', '', '95.85.240.10', 'gate.agentnet.cz', 360),
(362, 'Nebe', '', 'Já stále ještě nevím výsledky testu, hrozná brzda ten Dibla :) Nicméně já mohu mít maximálně licenci &quot;B&quot;, ptz jsem ještě neodpískal ani jeden zápas RAFL, toť jen info pro ostatní spoluhráče...', '2011-06-22 19:07:43', '', '178.209.134.81', 'nat-081-134.dragon.cz', 360),
(363, 'Keťas', '', 'gratuluju ;)', '2011-06-28 23:44:05', '', '90.179.22.96', '96.22.broadband12.iol.cz', 360);

-- --------------------------------------------------------

--
-- Struktura tabulky `hraci`
--

CREATE TABLE IF NOT EXISTS `hraci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prezdivka` varchar(255) COLLATE utf8_bin NOT NULL,
  `jmenoPrijmeni` varchar(255) COLLATE utf8_bin NOT NULL,
  `datumNarozeni` varchar(255) COLLATE utf8_bin NOT NULL,
  `cisloDresu` int(11) NOT NULL,
  `pozice` varchar(255) COLLATE utf8_bin NOT NULL,
  `znackaHole` varchar(255) COLLATE utf8_bin NOT NULL,
  `cepel` varchar(255) COLLATE utf8_bin NOT NULL,
  `zahnuti` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `telefon` int(11) NOT NULL,
  `icq` int(11) NOT NULL,
  `funkce` varchar(255) COLLATE utf8_bin NOT NULL,
  `funkce2` varchar(255) COLLATE utf8_bin NOT NULL,
  `fotka` varchar(255) COLLATE utf8_bin NOT NULL,
  `heslo` varchar(255) COLLATE utf8_bin NOT NULL,
  `hraje` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Vypisuji data pro tabulku `hraci`
--

INSERT INTO `hraci` (`id`, `prezdivka`, `jmenoPrijmeni`, `datumNarozeni`, `cisloDresu`, `pozice`, `znackaHole`, `cepel`, `zahnuti`, `email`, `telefon`, `icq`, `funkce`, `funkce2`, `fotka`, `heslo`, `hraje`) VALUES
(1, 'Majkl', 'Michal Šverma', '15.4.1986', 7, 'Útočník', 'Salming', '7X original', 'Levé', 'harleymaster@seznam.cz', 775649761, 348554442, '  ''Kapitán''', ' - Vedoucí týmu', 'images/majkl.jpg', 'sverma7', 0),
(2, 'Treglis', 'Pavel Tregl', '28.10.1986', 21, 'Útočník', 'Salming', 'Cypher Zorro', 'Levé', 'treglis@atlas.cz', 737664280, 269915680, '  ''Správce webu''', ' - Zástupce vedoucího', 'images/treglis.jpg', 'tregl21', 0),
(3, 'Treglos', 'Dominik Tregl', '8.11.1990', 13, 'Obránce', 'Unihoc', 'ACE', 'Levé', 'treglos@atlas.cz', 0, 341984667, '', '', 'images/treglos.jpg', 'tregl13', 0),
(4, 'Tuřín', 'Jan Turek', '30.7.1984', 37, 'Obránce', 'Canadien', 'Cypher Zorro', 'Pravé', 'jan_turek@email.cz', 0, 306593906, '  ''Rozhodčí''', '', 'images/honza.jpg', 'turek37', 0),
(5, 'Nebe', 'Jakub Nebeský', '15.5.1984', 24, 'Útočník (obránce)', 'Salming', '7X original', 'Levé', 'jnebesky@centrum.cz', 0, 465323261, '', '', 'images/nebe.jpg', 'nebesky24', 0),
(6, 'Šugin', 'Pavel Šubrt', '8.10.1985', 3, 'Útočník', 'Salming', '7X Quest', 'Pravé', 'subrt_pavel@centrum.cz', 0, 0, '', '', 'images/sugin.jpg', 'subrt3', 0),
(7, 'Domi', 'Vojtěch Domorád', '3.7.1986', 17, 'Obránce', 'Salming', 'Cypher Zorro', 'Levé', 'domorad.vojtech@gmail.cz', 0, 293723641, '', '', 'images/domi.jpg', 'domorad17', 1),
(8, 'Bublin', 'Libor Štros', '6.7.1988', 22, 'Útočník', 'Salming', 'Cypher Playmaker', 'Levé', 'liborstros@seznam.cz', 0, 272948186, '  ', '', 'images/libor.jpg', 'stros22', 0),
(9, 'Wawris', 'Ondřej Vávra', '4.10.1988', 9, 'Útočník', 'Salming', '7X Quest', 'Levé', 'usersifest@post.cz', 0, 337074511, '', '', 'images/vavra.jpg', 'vavra9', 1),
(10, 'Klingon', 'Jiří Hradiský', '8.12.1988', 18, 'Obránce', 'Salming', '7X original', 'Levé', 'jirka.hradisky@seznam.cz', 0, 0, '', '', 'images/klingon.jpg', 'hradisky18', 1),
(11, 'Lukas', 'Lukáš Vydra', '26.10.1983', 1, 'Golman', '', '', 'Pravé', 'carak@post.cz', 0, 0, '', '', 'images/lukas.jpg', 'vydra1', 0),
(12, 'Indy', 'Pavel Hron', '1.6.1988', 67, 'Útočník', 'Unihoc', '', 'Pravé', 'pa-h@post.cz', 0, 303527941, '', '', 'images/indy.jpg', 'hron67', 1),
(13, 'Kamil', 'Kamil Baloun', '6.5.1987', 65, 'Obránce', 'Salming', 'Cypher Playmaker', 'Levé', 'kamil.baloun@seznam.cz', 0, 318615996, '', '', 'images/kamil.jpg', 'baloun65', 0),
(14, 'Standa', 'Stanislav Hejl', '1.5.1986', 18, 'Obránce', 'Unihoc', 'Player', 'Levé', 'stanislav.hejl@tul.cz', 0, 260394670, '', '', 'images/standa.jpg', 'hejl18', 1),
(15, 'Špalda', 'Martin Špalek', '12.5.1988', 92, '', '', '', 'Levé', '@.', 0, 320014200, '', '', 'images/spalda.jpg', 'spalek92', 0),
(16, 'Mek', 'David Macoun', '5.4.1990', 20, 'Obránce', '', '', 'Pravé', '@.', 0, 0, '', '', 'images/maca.jpg', 'macoun20', 0),
(17, 'Zub', 'Ondřej Kozub', '9.10.1989', 33, '', '', '', 'Levé', '@.', 0, 0, '', '', 'images/ondra.jpg', '0', 1),
(18, 'Keťas', 'Martin Kettner', '5.8.1989', 18, 'Obránce (útočník)', '', '', 'Levé', '@.', 0, 0, '', '', 'images/ketas.jpg', 'ketas18', 0),
(19, 'Píďa', 'Martin Petrovický', '29.6.1985', 1, 'Golman', '', '', 'Levé', '@.', 0, 0, '', '', 'images/.jpg', 'petrovicky1', 0),
(20, 'Kohy', 'Ondřej Kohout', '18.1.1989', 9, '', '', '', 'Levé', '@.', 0, 0, '', '- ', 'images/.jpg', 'kohout9', 0),
(21, 'Matějkys', 'Martin Matějka', '1.12.1986', 0, '', '', '', 'Levé', '@.', 0, 0, '', '- ', 'images/.jpg', 'matejka', 0),
(22, 'Melšis', 'Petr Melša', '1.11.1981', 0, '', '', '', 'Levé', '@.', 0, 0, '', '- ', 'images/.jpg', 'melsa', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `liga`
--

CREATE TABLE IF NOT EXISTS `liga` (
  `nazevTymu` varchar(255) COLLATE utf8_bin NOT NULL,
  `odkaz` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`nazevTymu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Vypisuji data pro tabulku `liga`
--

INSERT INTO `liga` (`nazevTymu`, `odkaz`) VALUES
('FBK Pilich Vivatus', ''),
('Mimoňští Sršni', ''),
('CDB Mladá Boleslav', ''),
('Real Mladá Boleslav', ''),
('MHK Butchers', 'http://www.butchers.tym.cz'),
('FBK Sklípkani', 'http://www.fbksklipkani.tym.cz'),
('FBK Cerberos', ''),
('FBK Devils', ''),
('Pixbo Kosmonosy', ''),
('Dr.ACI Veselá', 'http://dracivesela.webnode.cz/'),
('FBC Vikings', 'http://www.fbcvikings.cz/'),
('White Flying Rabbits', 'http://white-rabbits.cz/'),
('Dragons Extasy', ''),
('TJ Sokol Benbro', ''),
('FBC Bakov Satans', ''),
('Puma Mladá Boleslav', ''),
('FBK Dynamo', ''),
('Draci Mimoňe', ''),
('FKB Gunners Brodce', ''),
('Notor Band Klášter', 'http://www.notorband.tym.cz/'),
('FBK Squadra Juniors', ''),
('FBC Gladiators', 'http://fbcgladiators.webnode.cz/'),
('FBC Lightnings', 'http://www.lightnings-rafl.wz.cz/'),
('Ohnostrojaři', ''),
('NO-RULES Sobotka', 'http://norulessobotka.webnode.cz/'),
('FBC Kopidlno', 'http://www.fbckopidlno.7u.cz/');

-- --------------------------------------------------------

--
-- Struktura tabulky `marodka`
--

CREATE TABLE IF NOT EXISTS `marodka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(255) COLLATE utf8_bin NOT NULL,
  `poraneni` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `rocniky`
--

CREATE TABLE IF NOT EXISTS `rocniky` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rocnik` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Vypisuji data pro tabulku `rocniky`
--

INSERT INTO `rocniky` (`id`, `rocnik`) VALUES
(1, '2008/2009'),
(2, '2009/2010'),
(3, '2010/2011'),
(4, '2011/2012');

-- --------------------------------------------------------

--
-- Struktura tabulky `vyprselo`
--

CREATE TABLE IF NOT EXISTS `vyprselo` (
  `zapasy` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `treninky` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1250;

--
-- Vypisuji data pro tabulku `vyprselo`
--

INSERT INTO `vyprselo` (`zapasy`, `treninky`) VALUES
('ne', 'ne');

-- --------------------------------------------------------

--
-- Struktura tabulky `weby`
--

CREATE TABLE IF NOT EXISTS `weby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazev` varchar(255) COLLATE utf8_bin NOT NULL,
  `adresa` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Vypisuji data pro tabulku `weby`
--

INSERT INTO `weby` (`id`, `nazev`, `adresa`) VALUES
(3, 'Stránky RAFL', 'http://www.florbal-rafl.com'),
(4, 'Česká florbalová unie', 'http://www.cfbu.cz'),
(5, 'FBK Sokol MB', 'http://www.florbalmb.cz'),
(6, 'Florbal.cz', 'http://www.florbal.cz'),
(7, 'E-shop Florbal.com', 'http://www.florbal.com'),
(8, 'E-shop Salmingstore.cz', 'http://www.salmingstore.cz');

-- --------------------------------------------------------

--
-- Struktura tabulky `zapasy`
--

CREATE TABLE IF NOT EXISTS `zapasy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domaci` varchar(255) COLLATE utf8_bin NOT NULL,
  `hoste` varchar(255) COLLATE utf8_bin NOT NULL,
  `datumCas` varchar(255) COLLATE utf8_bin NOT NULL,
  `misto` varchar(255) COLLATE utf8_bin NOT NULL,
  `vysledekDomaci` int(11) NOT NULL,
  `vysledekHoste` int(11) NOT NULL,
  `typ` varchar(255) COLLATE utf8_bin NOT NULL,
  `rocnik` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=92 ;

--
-- Vypisuji data pro tabulku `zapasy`
--

INSERT INTO `zapasy` (`id`, `domaci`, `hoste`, `datumCas`, `misto`, `vysledekDomaci`, `vysledekHoste`, `typ`, `rocnik`) VALUES
(1, 'Fbc Lightnings', 'FBC Vikings', '7.9.08 10:30', '6. ZŠ', 5, 16, 'normal', '1'),
(2, 'FBC Vikings', 'FBC Bakov Satans', '7.9.08 13:30', '6. ZŠ', 32, 6, 'normal', '1'),
(3, 'FBC Vikings', 'FBC Dynamo MB', '21.9.08 9:30', '6. ZŠ', 23, 4, 'normal', '1'),
(4, 'White Flying Rabbits', 'FBC Vikings', '21.9.08 11:30', '6. ZŠ', 7, 14, 'normal', '1'),
(5, 'Dr.ACI Veselá', 'FBC Vikings', '12.10.08 9:00', 'Sokolovna', 9, 9, 'normal', '1'),
(6, 'FBC Vikings', 'FBC Gladiators MB', '12.10.08 11:30', 'Sokolovna', 10, 6, 'normal', '1'),
(7, 'FBC Vikings', 'TJ Sokol Benbro', '19.10.08 10:30', '6. ZŠ', 28, 12, 'normal', '1'),
(8, 'Notor Band Klášter', 'FBC Vikings', '26.10.08 15:30', '6. ZŠ', 6, 15, 'normal', '1'),
(9, 'FBC Bakov Satans', 'FBC Vikings', '2.11.08 9:30', '6. ZŠ', 9, 16, 'normal', '1'),
(10, 'FBC Vikings', 'Fbc Lightnings', '2.11.08 12:30', '6. ZŠ', 21, 6, 'normal', '1'),
(11, 'FBC Vikings', 'White Flying Rabbits', '16.11.08 11:30', '6. ZŠ', 15, 6, 'normal', '1'),
(12, 'FBC Dynamo MB', 'FBC Vikings', '16.11.08 13:30', '6. ZŠ', 7, 17, 'normal', '1'),
(13, 'FBC Gladiators MB', 'FBC Vikings', '1.2.09 15:00', 'Sokolovna', 9, 14, 'normal', '1'),
(14, 'FBC Vikings', 'Dr.ACI Veselá', '1.2.09 17:30', 'Sokolovna', 12, 8, 'normal', '1'),
(15, 'TJ Sokol Benbro', 'FBC Vikings', '15.2.09 9:00', 'Sokolovna', 7, 21, 'normal', '1'),
(16, 'FBC Vikings', 'Notor Band Klášter', '15.2.09 11:30', 'Sokolovna', 11, 4, 'normal', '1'),
(17, 'FBC Vikings', 'TJ Sokol Benbro', '8.3.09 15:45', '6. ZŠ', 17, 12, 'playoff', '1'),
(18, 'TJ Sokol Benbro', 'FBC Vikings', '15.3.09 9:30', '6. ZŠ', 17, 25, 'playoff', '1'),
(19, 'FBC Young Skill', 'FBC Vikings', '22.3.09 12:00', '6. ZŠ', 3, 10, 'baraz', '1'),
(20, 'FBC Vikings', 'FBK SUP MB', '29.3.09 13:15', '6. ZŠ', 22, 19, 'baraz', '1'),
(21, 'FBC Vikings', 'Dr.ACI Veselá', '5.4.09 12:00', '6. ZŠ', 9, 10, 'baraz', '1'),
(22, 'FBC Vikings', 'White Flying Rabbits', '6.9.09 11:00', '6. ZŠ', 9, 12, 'normal', '2'),
(23, 'Dr.ACI Veselá', 'FBC Vikings', '6.9.09 13:00', '6. ZŠ', 12, 7, 'normal', '2'),
(24, 'FBC Vikings', 'FBK Cerberos', '27.9.09 10:00', '6. ZŠ', 10, 5, 'normal', '2'),
(25, 'FBC Young Skill', 'FBC Vikings', '27.9.09 12:00', '6. ZŠ', 14, 8, 'normal', '2'),
(26, 'FBC Vikings', 'FBK Devils', '4.10.09 9:00', '6. ZŠ', 16, 13, 'normal', '2'),
(27, 'FBK Pilich Vivatus', 'FBC Vikings', '4.10.09 11:30', '6. ZŠ', 16, 8, 'normal', '2'),
(28, 'CDB Mladá Boleslav', 'FBC Vikings', '18.10.09 12:45', '6. ZŠ', 22, 10, 'normal', '2'),
(29, 'FBC Vikings', 'MHK Butchers', '18.10.09 15:15', '6. ZŠ', 7, 9, 'normal', '2'),
(30, 'Real Mladá Boleslav', 'FBC Vikings', '8.11.09 12:45', '6. ZŠ', 31, 13, 'normal', '2'),
(32, 'FBC Vikings', 'FBK Sklípkani', '8.11.09 15:15', '6. ZŠ', 11, 19, 'normal', '2'),
(33, 'FBC Vikings', 'Mimoňští Sršni', '15.11.09 12:15', '6. ZŠ', 13, 14, 'normal', '2'),
(34, 'White Flying Rabbits', 'FBC Vikings', '22.11.09 11:30', '6. ZŠ', 12, 10, 'normal', '2'),
(35, 'FBC Vikings', 'Dr.ACI Veselá', '22.11.09 14:00', '6. ZŠ', 9, 5, 'normal', '2'),
(36, 'FBK Cerberos', 'FBC Vikings', '17.1.10 10:15', '6. ZŠ', 15, 12, 'normal', '2'),
(37, 'FBC Vikings', 'FBC Young Skill', '17.1.10 12:45', '6. ZŠ', 12, 10, 'normal', '2'),
(38, 'FBK Devils', 'FBC Vikings', '24.1.10 9:00', '6. ZŠ', 6, 9, 'normal', '2'),
(39, 'FBC Vikings', 'FBK Pilich Vivatus', '24.1.10 11:30', '6. ZŠ', 10, 10, 'normal', '2'),
(40, 'FBC Vikings', 'CDB Mladá Boleslav', '7.2.10 12:45', '6. ZŠ', 10, 19, 'normal', '2'),
(41, 'MHK Butchers', 'FBC Vikings', '7.2.10 15:15', '6. ZŠ', 11, 7, 'normal', '2'),
(42, 'FBC Vikings', 'Real Mladá Boleslav', '28.2.10 12:45', '6. ZŠ', 13, 8, 'normal', '2'),
(43, 'FBK Sklípkani', 'FBC Vikings', '28.2.10 15:15', '6. ZŠ', 15, 11, 'normal', '2'),
(44, 'Mimoňští Sršni', 'FBC Vikings', '7.3.10 12:45', '6. ZŠ', 7, 6, 'normal', '2'),
(45, 'Notor Band Klášter', 'FBC Vikings', '28.3.10 14:00', '6. ZŠ', 6, 9, 'baraz', '2'),
(46, 'FBC Vikings', 'Pixbo Kosmonosy', '4.4.10 10:15', '6. ZŠ', 8, 9, 'baraz', '2'),
(47, 'FBC Young Skill', 'FBC Vikings', '11.4.10 14:00', '6. ZŠ', 7, 20, 'baraz', '2'),
(48, 'Real Mladá Boleslav', 'FBC Vikings', '5.9.10 10:00', '6. ZŠ', 8, 13, 'normal', '3'),
(49, 'FBC Vikings', 'FBK Pilich Vivatus', '5.9.10 14:00', '6. ZŠ', 10, 16, 'normal', '3'),
(50, 'FBC Vikings', 'Pixbo Kosmonosy', '26.9.10 9:00', '6. ZŠ', 4, 5, 'normal', '3'),
(51, 'Mimoňští Sršni', 'FBC Vikings', '26.9.10 11:30', '6. ZŠ', 16, 8, 'normal', '3'),
(52, 'FBC Vikings', 'White Flying Rabbits', '10.10.10 12:45', '6. ZŠ', 5, 8, 'normal', '3'),
(53, 'MHK Butchers', 'FBC Vikings', '10.10.10 15:15', '6. ZŠ', 13, 18, 'normal', '3'),
(54, 'CDB Mladá Boleslav', 'FBC Vikings', '24.10.10 10:15', '6. ZŠ', 12, 10, 'normal', '3'),
(55, 'FBC Vikings', 'FBK Devils', '24.10.10 15:15', '6. ZŠ', 11, 13, 'normal', '3'),
(56, 'Dr.ACI Veselá', 'FBC Vikings', '31.10.10 10:15', '6. ZŠ', 8, 10, 'normal', '3'),
(57, 'FBC Vikings', 'FBK Sklípkani', '31.10.10 14:00', '6. ZŠ', 15, 20, 'normal', '3'),
(58, 'FBC Vikings', 'FBK Cerberos', '14.11.10 15:00', '6. ZŠ', 9, 15, 'normal', '3'),
(59, 'FBC Vikings', 'Real Mladá Boleslav', '28.11.10 10:15', '6. ZŠ', 10, 12, 'normal', '3'),
(60, 'FBK Pilich Vivatus', 'FBC Vikings', '28.11.10 15:15', '6. ZŠ', 8, 5, 'normal', '3'),
(61, 'Pixbo Kosmonosy', 'FBC Vikings', '23.1.11 9:00', '6. ZŠ', 13, 11, 'normal', '3'),
(62, 'FBC Vikings', 'Mimoňští Sršni', '23.1.11 11:30', '6. ZŠ', 5, 6, 'normal', '3'),
(63, 'White Flying Rabbits', 'FBC Vikings', '6.2.11 12:45', '6. ZŠ', 7, 13, 'normal', '3'),
(64, 'FBC Vikings', 'MHK Butchers', '6.2.11 15:15', '6. ZŠ', 16, 10, 'normal', '3'),
(65, 'FBC Vikings', 'CDB Mladá Boleslav', '20.2.11 10:15', '6. ZŠ', 6, 16, 'normal', '3'),
(66, 'FBK Devils', 'FBC Vikings', '20.2.11 15:15', '6. ZŠ', 11, 6, 'normal', '3'),
(67, 'FBC Vikings', 'Dr.ACI Veselá', '27.2.11 10:15', '6. ZŠ', 6, 13, 'normal', '3'),
(68, 'FBK Sklípkani', 'FBC Vikings', '27.2.11 14:00', '6. ZŠ', 19, 2, 'normal', '3'),
(69, 'FBK Cerberos', 'FBC Vikings', '13.3.11 15:15', '6. ZŠ', 9, 11, 'normal', '3'),
(70, 'FBC Vikings', 'Dragons Extasy', '4.9.11 12:15', '6. ZŠ', 7, 13, 'normal', '4'),
(71, 'White Flying Rabbits ', 'FBC Vikings', '4.9.11 14:45', '6. ZŠ', 6, 9, 'normal', '4'),
(72, 'FBC Vikings', 'Pixbo Kosmonosy', '18.9.11 9:45', '6. ZŠ', 5, 9, 'normal', '4'),
(73, 'CDB Mladá Boleslav ', 'FBC Vikings', '18.9.1 12:15', '6. ZŠ', 12, 10, 'normal', '4'),
(74, 'FBK Devils', 'FBC Vikings', '2.10.11 8:30', '6. ZŠ', 6, 14, 'normal', '4'),
(75, 'FBC Vikings', 'Dr.ACI Veselá', '2.10.11 13:30', '6. ZŠ', 5, 4, 'normal', '4'),
(76, 'FBK Cerberos', 'FBC Vikings', '16.10.11 9:45', '6. ZŠ', 2, 9, 'normal', '4'),
(77, 'FBC Vikings', 'FBK Sklípkani', '16.10.11 14:45', '6. ZŠ', 10, 7, 'normal', '4'),
(78, 'Real Mladá Boleslav ', 'FBC Vikings ', '6.11.11 8:30', '6. ZŠ', 13, 2, 'normal', '4'),
(79, 'FBC Vikings', 'Mimoňští Sršni', '6.11.11 12:15', '6. ZŠ', 11, 5, 'normal', '4'),
(80, 'FBK Pilich Vivatus ', 'FBC Vikings', '13.11.11 8:30', '6. ZŠ', 13, 3, 'normal', '4'),
(81, 'Dragons Extasy', 'FBC Vikings', '27.11.11 12:15', '6. ZŠ', 6, 12, 'normal', '4'),
(82, 'FBC Vikings', 'White Flying Rabbits', '27.11.11 14:45', '6. ZŠ', 5, 5, 'normal', '4'),
(83, 'Pixbo Kosmonosy', 'FBC Vikings', '22.01.12 9:45', '6. ZŠ', 9, 8, 'normal', '4'),
(84, 'FBC Vikings', 'CDB Mladá Boleslav', '22.01.12 12:15', '6. ZŠ', 4, 11, 'normal', '4'),
(85, 'FBC Vikings', 'FBK Devils', '05.02.12 08:30', '6. ZŠ', 3, 9, 'normal', '4'),
(86, 'Dr.ACI Veselá', 'FBC Vikings', '05.02.12 13:30', '6. ZŠ', 18, 7, 'normal', '4'),
(87, 'FBC Vikings', 'FBK Cerberos', '19.02.12 9:45', '6. ZŠ', 11, 11, 'normal', '4'),
(88, 'FBK Sklípkani ', 'FBC Vikings', '19.02.12 14:45', '6. ZŠ', 12, 8, 'normal', '4'),
(89, 'FBC Vikings', 'Real Mladá Boleslav', '26.02.12 8:30', '6. ZŠ', 7, 7, 'normal', '4'),
(90, 'Mimoňští Sršni', 'FBC Vikings', '26.02.12 12:15', '6. ZŠ', 18, 8, 'normal', '4'),
(91, 'FBC Vikings', 'FBK Pilich Vivatus', '11.03.12 8:30', '6. ZŠ', 9, 9, 'normal', '4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
