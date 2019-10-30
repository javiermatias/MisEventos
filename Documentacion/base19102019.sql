/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.16 : Database - renacer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renacer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `renacer`;

/*Table structure for table `__migrationhistory` */

DROP TABLE IF EXISTS `__migrationhistory`;

CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MigrationId`,`ContextKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `__migrationhistory` */

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201910060709224_incial','Renacer.Nucleo.Migrations.Configuration','ã\0\0\0\0\0\0Ì=Ÿr‹8íÔ±ˇPQè=*ª{z¶€!ÕÑ[≤g3≤ñ˚xS@$$sõE÷í,á˚e˚∞ü¥ø∞‡ç#¡£JÆÉUêH$âD\"3ÒˇÛøÁ{‹∆´œ4À£4πX??{∂^—$H√(y∏XÔã˚?˛∞˛€_ˇ˝ﬂŒ_Ö€«’/mΩÔ z¨eí_¨?≈Ó≈fìüËñ‰g€(»“<Ω/ŒÇtª!a∫˘ˆŸ≥7œüo(±f∞V´Û˚§à∂¥˙¡~^¶I@w≈ûƒ◊iH„º˘ŒJn*®´∑dKÛ	Ë≈˙MÿˇŸŸ€}”tΩzGÑaqC„˚ıä$IZêÇ·¯‚ÁúﬁYö<‹Ïÿ¸≤£¨ﬁ=âs⁄‡˛¢Øn;ågﬂñ√ÿÙ\r[P¡>/“≠#¿Áﬂ5tŸ»ÕQw›—çQÓ£pÒ•uEΩãıÀ< 6∑YØ‰Ó^\\∆YYU&ÔY	%$!Õœ˙Êﬂ¨ƒJﬂt|¡ÿß¸˜ÕÍr˚å^$t_d$˛fı~G¡?ÈóèÈÔ4πHˆqÃcÀee¬ˆÈ}ñÓhV|˘@Ôõ1D·zµ€m‰Ü]3ÆM=∂7IÒ›∑Î’[÷9πãi«nä4£ß	ÕHA√˜§(h∆ÊÚMH+r*Ω+}›§Aîö:4yï${`≥ÎËä$éÈ´œ}O`4/8Ñ~J”òíƒ =\r>ûkpWå⁄ô@0√{K>G’\\IêCq®h\\’ ?EªZ:p|+U~ù•€i,,±ŒÌM∫œÜŒ«‘PÒ#õ9Zÿ„ù1¡∆–,«l¬Z®\n‚Ã’–aÃWs≈7Ø\\èiS	ƒ±*”aWWÄ:ﬂÙRM+Î$æ Ó\'âáˆï§€ªå∂˝±ó)Î’5y¸MäOkˆ\'cÑËëÜÌóáüìàÈ¨QëÌçrÉMIêEª†⁄\Z\'ÓkD˘;Ü‡ePJ’«wW©$ÔÕCÍ.t!Pˇ lC‘O‰?\0H.€—t|◊ÔQìıAîÌ–zwE•4mYê”ÇhªÌjˆ¬\Z¨†Hl∏ñÎvBÒ˝∫Å3Íê+l√F+uò¥¯‚5€ëçµeã–ë]≠d ¥iÔ∂ﬁ#©rôn˜âÀ…5;Ìãh_Op_H9ÛL=Ú›œ>Fªtî=M‹<ˆ≈ÀåûÜÛÔgU√Î4åÓ£\0A≈V<UÓ#y»A·ƒ\njÿÃ@Œ%•Pë¢j\rWÈY≥â}N¿‹\nï9©è‘Qd\'Z—Kt2\"8HLV˚$(gî˙Â—i¯\"Èäoπ≈ƒ±üZ¨™@◊•\"≠Sˇ’,/|Ω;°XΩ`´\"òäRëBAπ¢ûΩ∂”ÈX∫÷ßÖ<˚BñOK;\Z«—GøÇ∆Ù>M¶Ô(†Ò>&Ÿ‰˝–-â‚¨\'•zwï~jYíï0ˆ[ﬁ~2!ŒWÈ6\n¢x#ÀìR&√û0⁄}í´Ìì]±™°umB®∆;`3«ëT∑+Ω∑ZZªZÇM°Ω∂ÜüıºüÀ!ñÛ∂ıiØD˚∫#YÕ∞≥îv£…{ŸE˘ÙCa˚¡Ù‰J√˜)[ﬁ±ﬂ&“›Ë{ñ˝—¥\0Ì∆9`˝\nNkÁ»)Ù]Îyn¸Ão’Ú4ØÛŒÎÈslÁòú>NO≤⁄Ä}}>ÃúG:òE·eö$ΩåØNVoŸôjÒp:ò->úÍÚ=˚ÒQa_E∂∂% ±G*v=êÈè∂5pX+!xMuúu∞®¬àMsÑ≠a«W°\0Aiîckø¬hEm„ìbÑˆuRåNä-Ω_ba˚Z‚Ñ€]	<ﬂ6ÌOã}ﬁ≈n[7‹q˜‰±{b|^è›jQé≥Ìh.ƒ¡~ó^GI¥yÙÜÛ¿xnıT\Z≤M˘„#„äÿ˝¯êz—_Ó”ﬁ˘…9GWXΩIî≈4ÇcBù…{©Ù Gk‹√⁄‡ZÌÈS]™UÅ\\àrû–m5ÿ£∫.≈„´¬Ò ≥ÂÈÆCˆw¬ˇiF2ÃÛâÔ´Øc›ñkÓ*\r¬ï[ÏFò´qK\"´•ä√Pel◊zΩOΩÖ3Ω•Ω—Å’»≤|-√æCê´·g©7«!ë≤ÂIèF˚öIè4•+\ZD€Ú~˙}∆˛jbˆXØnRé—§¯XsM#jÒM”ˆƒ9h_sïÖ‰Àª˚_)˝ΩÎ©äLÍø:™Jüÿ¨\n\nÚdòó=	˙Û‹∆A-∞\0∏ˆßE†ÈkúÛ˙	ÔPÅkŒJö¨_hÙ8\'}Ú=y@ﬂ≤‰VXD=Çrô¢C*\\5H<?UIP†j	7BäÇr†ÉƒKŸ$W–æñPÀ\Z∞í,˝¿‘∏;or|$az◊;[N!òñ”èê}&\Zd+ƒΩ\Zj`òlä%·W}UÑW‰*çÖ…˜« ^êº~u7¸jßo~íKÀøÈÆwÏMqÈÉEá7Í∂\'>öíè¨dÚ|Óçèëôàc∏C59DIEäÃïÀΩDÓ5aÙˆÒ0`◊˙¥PpN\"mÈ3â”l›Ìó2èÊõzWzÓå˚€P	∆ââ5}çí∏íì6ﬁ¨\\ê=yx«Ò3ûÎvÇm?n`/êÿñ´›Ô\nh%e¿kéóÀQÓC±óÄå®é`7˘¿PM<N<ÄìD@˚ :˚¨Ê\ZRÈ`Mì»◊!™AkÔ™Ç>È’º©%3z±6Ûk07≈äÄÍå\'ßËäêRKıËç!ûhêf!ako†Œ¬8â\'|ÈF≈>û!ˇÁå¬°“zD˛q“~Ïcáiê—bﬂ¸ƒüh_ß`ôS∞=E£ÀcŒ(‚S–Ó††]m¥g∑Ä!üJ©\Z˜©VÒ“ª~Œ˜éZ”‚¥á·ãtû=lﬂN›‘;KL>O?öhKËÙ bñN/ÎÁŸ\"gØÆ∆Årmœa@lCl\0v¢søÂ\'Á˙&ìá˛ë,\\îﬁ|…∫Ì›IøYmsvnâ£ª^|˛…V|ﬁ˝Â/‰˚‡˚??ˇÒª?—g?¸XR0§Y¸ÖQúùHèk∫Ω£Y{¢Ÿ\'!aÚÏÔŸœg\nıÑ⁄◊©P˚πæˆ«=Õ˘ÍÍ‘’•a\"6¯Œ\0ˇ”>ÍˇI_ˇuÒµø◊◊æ!åˆ|˝?´\\RÛˇÒe^öB™Io‡@ô≈n_%· \"ÌcÔåÃ1˛5cëh«òÇÒÎ≈˙ êÙ∞;BŒ—πœ€!¬V\'õÌ«4+7D_2á±hîÍÊ%A¥#±\r©©ÂŒ_ŒD◊â\\rEw4)7m3ÅÌzÁ»£¢—ı&©&&Bùo8∂±Â¶>èây∆Åƒ&£qêÜ∫á]Â{◊B4ˆVs6cßh—£ç[Væ˘Qã©\'^G\"≥Æ\"âºv}wÁ‡EVêö¯õkMx7¿¯G|`f¨Â#eã¬0ƒRGıË5˙ì˝†ëtS»>—$ãF`Üï”Æ„û&ã¨9çó~rµ˙ @ÜYTOAPòçgéT?ës¨ÈgX´ó‰ö˘Ù1qõ+ç2púÎ ≥≠é#‘;–◊ôPU”¯T” ç¡ÆÑ´∫?”Ë¥lÊPm\rD∑Á¥éTãp¸T%∆Üw+π]WÃ$bœh˙7/-9y$6”‚2èi©m◊ˇ≤Ãe…UfvrÁ£É`†≈8ÁËYÜœúdòb0çíâuûùù©s¨\rFÎ√—ÃVh&&4ë¥L&BÿRy˘w∞ƒ˜YO¯xÁ[Z8Q,WYCß≈Yó8ÀÜ‘,Z#.4%˚ºKó3÷b≤<`8ÍR>Ù\nÒøˆ˚î.Èó˚⁄¥™pfXN8qè`qAËÿ¸BÈ˝º÷8ˆ‹±õˆ£ëòDÌyÊPâgi≠	±O¬@;ó`f\0O˛\0ìøX	™1y¿b.éàj◊µ@öE∏GÕ†c≥qHÅ£nJbƒÜ…9¡ñ$ 0Ûé$÷ÆÔÜ,KÍu|ÓNÉ‚&Ú·‹\reˇ¥πR˜‡\r`1ﬂ	 ≠•J”gI.‚“´\Z& µ:	Ze+Ûîj1ä≈|,§÷¡¨º§b,åm‰⁄bBÎÚ¬B àÃÏ&Ê£Y/Û(/ ƒ‰6¥≤úa\r nÎÎ∫∞\Z⁄É´Ìl$n3·3≥ôànáÇD¨•˘ÕF∏¡’\'·µÖeöìyyÏ)H3˝PÆ8	G-r\0ƒ˙üóÉéÏ¯\'gD√&Mè∆ô€Ãˆ,É%UõŸﬂAc∆A»j”3ü9o÷¡(a”mëM©üx%’ò=[ôs1A˝Lƒ\\Fdf`3#·Ìp‡HußﬂÈ…∞&·¥E6>-p◊ëmÅP:%læµπï˙Ÿ”°Ÿ≥ì.-”\\Wª\Zf‡%\rÅ-Ò%œx@‚+´©FE”(å¥àP¬1òõãéLI<∞Y÷eÙ‡fôK,ÂÄßô;\Z\0≈dN¬IloVü+.‡UïY†\nÌä.Æ>§q⁄§S“¸ú”&É@ﬁ$GêY¢ÑzCã6πgx’Â2\0,\nkâpD£´\nJk≥S†Q¡3W&:Ó\Z`e è¢\nÔ1a—[ÅT0ëJô>ŒJ•\nÉ•éB\\öÍxƒr¥&ã£îîJÎ.0TÄE\"Ç„È¸å¡— ^»Í,a,g…kÌÎ¨ÍX \"•yˇÏ®†sY4Äàx\rä∆%EÅT¶bn–V‡‘ûD6”ÇøTTY§µ©TmK∏Œ\nÙ‰äCiÉ8¨ﬂÏòøNé\0ï;!•\nK(6-fN#PW4WhÄ”ÂàRÄtâø$‹Œ’ÉÅ≤ò¨∏ö≤\0≈á˝EóÓ§á ±ï⁄.ø	,DÖÛF∏Q˙ÄW-Qê∏Xdjt¨Q‘∞XXÏõ>‰Ë2€ÈàjŒˆ≤ÍÏAYSÊ…†›n›	¢¶ö\0b»G!åœH°üLÄTßåπSBÃÉ\0ëA™Å£ßT‡qœëì°1!#¿Tû°c◊äMπä	s≠∏¥˛lbRäÀ«	`#•ö>òA$\n—Í¯¿Õ¢P®Á3Ë≈\ZÒmV—Ò¢H7≈«[ä3;†Ω∞Ûå;µ‡àmÄT°›¬êÙ¡›¸ö7x‡ÿFsO∑çòâcM39®ôKÄ£≈âÄ€BcÄ¬m\nÆÂ\0µXèJ\n…•ßà&Ö;ú>pÿ≠ÌZÙ§Vo‹–\n!E«§ë\'è2 ÅÍ±˜&\nÙ$∏JSH©0\nMP)7ÜHêdEj$Ó\0zèÔ™t¿¢\"åÅ∏HSŒí•5\r9Ö\0Qü˜E∆åF˝©XCq√∆E˚ŸqêÁBhI˝:\0ÓMQ∆/N=WÅxOj“áJﬁ˝ì®ì0$Ÿ ·A\"Ú∂1àßo@FâÅAC\0Bãëà%íÙ±Ñ#˚b‘—Ìÿƒ*3ÇÆ>#Ô†¡\0ΩÏ=ÑqC=∏aÙ ”‰\n\Zz†ßïc¬ºË¥?°{îﬁ≈∫Cπ”cÚ˝Iy[%Ç÷_\\@ÛÁ\r°ÕûÃ∂%ÕÀ∞*A,Ω†Ö1ô˝†π—)í\Zbôü!¿ê]D.º⁄°À…áLì/,≈Nï8FOTa:_TnÌı≥Ü:∑”)ŒÇ–˚†jò¯D„NÈAã…z±0‰\\ES<Ó»\0ΩÂ7Q\0∑è·t.k]Ÿ˘Ê&¯D∑§˘pæaU∫+ˆ$Æ¸ŸÚ∂‡öÏvlæÚæeÛeu≥#Aπ¸ÒfΩz‹∆I~±˛TªõM^ÅŒœ∂Qê•yz_úÈv√âÕ∑œû˝∏y˛|≥≠al¡>%;ÿu=iF®T ∫fòæé≤º∏\"π#Â„=ó·V©&:Ë!m_äû:w≠+F€§¸ªYw‚[k/Q(=_≥ëï”Z\rírsÆkÃöóœ∑ìx&Ì2ç˜€˜Õ‘µn$ª˜:8ú+ûK≈©É\'ôàEòÜÿcn˚¥ Æ˝f•zzãwÀ‰¡)Ö*‹Ûçƒ	2√méìñøÃ√Vn:©Y3π÷\"o¡ÁÜˆ”∞z˚∆°˝fEx&ô%,πp‡„æT∏¥(,1-´ZW4)∞VöÔé–˛AÚZyÕwGhı;z\n∞˙Û‹‚%îEJã¨=A$ìÓtºòP.\\=d“+\rë§o˛5I§Äîîâ44Ó≥ã|»ERiìÓ„0G‹¬˚∑8ïïﬂ-#I™FLãçÓ£\0√Q,>ò]zby,‰èjsãı∂:ÑeªîXÌîôä±®x€CòtÔ‹—8éd˘“µáT–òﬁßâ©ˇÍ ëiºg_%y‹~têúı+«Ç‡¨?πJÙ ¶¢Js0(O3co·Ê-√mzÏ∏X.È»à?¥Ö√;Ì”F5Œ”ˆQàÕ!o;çÄ∫#Y&Ûe˚ÕE=ãc*´f’\'{ª(ó®ø8-]e≈:ç\"\rﬂßLiìƒ˜ŸEﬁ…Ú£˘t0Ã.\Zs}î# 5Iﬂ˛vÊÖ¶ª±ûöÄ≈î Ìa*NJ“0%)ßè“àÍ/Æá‹ÀË≥Ç_pR€0x}º£áViQoô˛¥ç‘!+ÖOGπt3¥,$∂5à÷í˚Åa!ºÒ¶\'˘}ºÚ;£1∞(˚Ø√˝˙¿;\'≠c©S¢≠a,eÇÛæg|¡z∫Yïü_\0ÆΩ˚ﬁ7ÿÔ“Î(â∂8˛ª#4ÚCkæ€C{»H±è‰YËø⁄C⁄¶ d6ü\\(lùÑ§}úL4§EOË~ª¬AàùÇ—‘æºeÉ±æµ ◊zÔ∑–ûÑF€+ÀP@°ç¶∑;‰…E⁄,4üöê_Îm§πœ)⁄röYııã	…ów˜øR˙ª•ˇlÎ: πœn∞\0qœ}>~ã¥°µ÷,ßâ–µ`;mÎiXoL∑∫q<nøÚç¨èÃˆ`√*£;ˇ¡Õû N¶1˚~†Atß⁄|€œ.ã\0’\rØø‚0kÆOÔ‰õI˛˚rÜT∆3†ˆ⁄~w2n´\'Ù≠ÂeMSﬁêè([√‘Wd	Y ﬂDú˙*`6«\n¨Â!OàˆwÓ¡\"¡Øy»h1F—ÖÒZ≥ 5ƒÇY4mßaí»ö^˝≈¬gß“•HÛ…q/˚•t¸Go0Ö“\'vE(G1è¡|0(ƒ Lu~+ŒèÀ˙-¬“<dÖ√´òØŒâÆ$î*]kßÄŸ!bƒ&R⁄ÉˇÑÏÊÓÃßo>\rÁeBBv·>Uì™›±ºyßâ≤â*ÖŒò¬◊2J°À˘cë^a:ùZzVâ•Vüëﬂgi‡ÿ¨#mÛi÷Î|À~Õ∑Â.Y+A-æì†»q›3\nÚó≠¡ÉìnP(|§k¸ïú_û§ˇ–…ˇÛ‰ai?À~|j§Òí?√ ,$$⁄Úê≈c˜Ñføﬁ£Éƒ‰≥ÍSrX¯[Ú@e{ÛÕA5N%1T}òW®˙b.“ﬂeB7üñÛ\n;4µ^ÃZ% q&sh2_çA¢√ÀÑ\\µ4/9©î≤í>=D¯…LáaË°èvZ°Wæ,‰ÜòúxÃyñÅ\'ñtô\0‰∫@ÿø.s@EÙI¶Ÿhhâñﬂ‘\nÔ¢Ã<«“k=öVjÇ¡qv´WÇÂ9≠5¥&VFÎËV,ÙÑâ¡c]¨lÂ	…;Ù°ì°k¢8Ü(FüNàö3NóiF’◊oÚ∑˚8fJâsj9‡Qô¢‡√ä-˙ÍñÓÑ˙Àœòs»£<ˆP≤å U:M≤˘“˝Ó≤å6>Ö‘£= D¢Ú&€®úÚ≥Æ≤^±¡é¬*›Áóõˇåœ Ú≥Íœ⁄+†ØqMíËûù¨?ñ\n˘≈˙˚≥ø¨W/„à‰u2ÿ&ôÈ˘o´Ï¶œø+≥õ“pªëõªÁH-°‰yRÀµ’pñ&Ù¸üTaÑñAtè∑üo‰ÜÁ\0?÷/—F%Y´Ö˚w ¶ù4|OäÇfåXo á◊™ÎU…reä˘éÌ6ÕâÑÎCyS˝M“«ãıUm^¨ﬁ¸v€4˚fı.cs¸bılıﬂ∫ÊVÆ›wM=Qê“ô∫¢!4˜B•5>’‹•Â)ﬂÑí˛¥Ü2N)¢--◊$\r¢ºZ]œ–˘„¶vEhäÌ¢hÌNuqö<îWÖ<ò\"€°˜:~†b©]##,.Œœπ˜∫°W˜|,ô«öB\07Å„ÆÕh∂pm¯PRÉF/õÜÇ äî≥êò÷2\r∑kúD⁄X\"çKj \r€Y.ôL]e◊xƒΩ{»@$3˙1» √›p÷KS1H}U+“^Ç¡)@ø*bªFÁ&·ßwíîÅ≠èÑòÊ>œW≈Ï¸ÜàQ÷–KÑä˛æC·RW9üË⁄¶˛\Z„Iû[·T†G+®⁄¨¢æ QïV‘HùX‘Fï[‘s,}b—·˙QìUtíΩRìòÛhŸpRÂü¯™uR,\\Ä‘˛óûàÆó\'=ÁpÙ>≠ß+mKEãwQ]%:.-nàÖŒZ√)7O≤ˇ$˚ }ﬁŒ…470˝ÂW≈íˆF°”›§wt|jÀA¶Ë£ø(;Ä{J>ÎÊÛ&üms8î>œ¶«≠~ì-®Üpßd¿hƒ‰öû◊«w™Ê◊ú˘È˙ÁÊı‡Z{UTıd˝ ∑2ANÑå‡€“‰∆ë˛˘ıÄîæu∆ësXtìÎ]CL™{0Ëµz¥l0Ç[óOs∏êÁi˙a√e—ÙtêÃá¶¬<Z\\ÿ≈k1G‘ß≥+™È1èñ\'ÿá)œ\\ñMG%@5¥ÁqÆÒú^\'‰\\öÕ≠’ﬁ6Oß«*é>v6Í≤ô…›LW\'{Ãhˆ˚ÉîµÚ+ß˙h&l.ı•€JÎ[N±ÿê‰ìG;Îu&ÀQmìŸ“”4$‰≤\\‹˛·ŒPf»£ÂíECª∏îîÆ›wM˝Uù:èÂ®å∏„A˙YY¨˘Oy¥Ã)f†.vî§ìæ†‡GPjfIﬂª•Ø·dnø–$êGª⁄|ísù	‰èÙê£ˆæÖH^∆£ùÿ”–ü†ì……¡p*√ìs›åá0ﬂ‚W.ˆ∫Ãçû“™N›ËπÆõ‘çûq©∑ÄEhÿÍ≥”ëÍúéﬁ™¥A√∑É¢Íƒ„¯Ë°yÌDÅ!Ì°⁄\0NkfñbGé◊≤\\[ØÕÆEﬁ≠˚∫’$V}]NDª	D”Ãs≠O4hû√ô»0èåπ#ˇàÕßòI8˚°›jé∑˛˙N‹h◊∂;Êu«•HS§QàîæJ¬’á¥ÏH	ö)Ûêùq_Ø˜qÌbˆ≥¯r±~Æ£•l%(Ó´Í\n(∆4+U,_¶I^d$R3ˇæœ¢$àv$V ’¥TK¬v0Âí+∫£I©ı)C¥Îå££⁄k\\bvÑ¨x∂ú†œG:|ü+Yﬂ%WÏ\\]–’À†Œ]wIÚÄ®/WyçXîRD§*òÑ£\\\'yéíÀ—iñ‚*(Ø$7üÚ4≥˜9…vNÁÊ!<{Ô¨‹”‹s„L#ƒ¢Ï#ñ˙•	™üò#,;C__ôÖ#ÏR°Ñ4ëœ4bŸ1ÀCB˚√+vâÎyQÄÕ£nü,[9Oˆ¸eÒñ¿åVü8˙ªüR9@5ó˝G˚-K∞≠UPö/ì’>\r`o◊Bıî[p“g=Nœ;Ô≥£]&~È#¥ÕsÓ≥6—>“Í¶;‰∏L¶?◊ÿ™?∫wS‡öÉ=/¡13©∞N¸≤®ÓZsÀ«·y˜òŸè¡.¢iŸ#∞†⁄h&ë§Ï+tﬂÏ\"CC#≤8‹iòb¿IG Í\"¸!<,qK\rÃ1hã≥¯0H≠⁄ä%O‚l™y≈ÌpYˆXä/\0ÜxRúp|,¿øxÁ=kœŒŒt≥/Ñë÷ˆç˙À4sÔ2^≥>[§tèµÕ<È∫∑áÃ˝o≥1¬†ç†˙‚¸–Ωo8µhœÄ∫oGŒ»Sê)∏º∑t)\0$q® 	ﬂè|˛—º6hwãÆˇ2ƒÛ6\0≤Å9o⁄∫âÁI+ıáiÓ#¨˜bœôV≥≈†˝4[nÜÒlK^´ÛPÊ‹}—Õ5ÛÒÚ9ü?‡&‚%¸ló\nÓº÷PqI˝.c}©tœèÛÄN˘≥:`:)˜=˘ñúˇÀó$Ÿá’y„?.`˘†ÄxÄ%xfI∞¡Nπ0ËÏø∞xËüªæ\r≠¨AÁS«\"Íì€<˛Û4,ÊÀãA∏Ÿı&ëtiôYt,≈≥\n\rgû8 â1˘ib)òÌ,·<˚K%ö‘èKxù¥Y\'#T˚ÌixûÄâ5ëÆ¯Dëã∞ÇîÒÔvãdàÏgPIhWÕ!˜’û‰tÉ ¿ﬂ@a3s 	1ßamvE¥Ké≤¡!ìÔÀs≈lª∆0éXrÎ‡30Œr”$§|‰AâG~◊Ñ\'∂D˚[Ù,!∞¡‰aIòM`Å%AüüpÁÂ>;¢¿Y‹Áß°Lbi —ﬁÊÙe~U%%©¬≥¢ÑfÌÈ\"\rÈÎ(Àã+Rê;í´&Ü≤’\r-îsËzı™KsúoÇOtK.÷aıEù,Ö/W∏EÏG≤¡(]IÂPoZ3é“°ËY©Ù\'C›â5ΩU1J\'’WvöbAo¢P—ÔÀ@‹1ÎÜ:/}îó:\'}8XÄòJQ“®tÀAäâU6≤YÈ®˘u\0äsp\r©¿Óã X%H´Œ°§TWä—	ÒáU[å∫Uhπ¸\ZW\rïJıwêDµÛ¨	rÁ·¶¿ÓJ ËùWû	æp«ÆÙ!îB˝h<îÆjW•è˙3º.±· lj˘Bî,ß∏µ©ì‹ñÄ”‹\Z¿sGo•ÆÍ=µ„ù¸Üâ•Ü∂√∫íô…D›YÈT,Üzkòzh´Ω	≈`o\\\rÛ‡xEP¡\\!(áπrC?mÆZµìÆÍ°+¥›·Õ],÷Ó¬V€ΩínR\'ÃjãT…b∂∫òSxªDá◊ñ™]p\Z+@N.ö≈’î…ä˝GE}a˝i4Ïéçkã´NqXNCV¬ÿµ#◊Ω˚nÀÕæÿº*òÑM\\∂%†(nÒî+ç\0@|·°∑ÁtÌà¡√ºÓ8œYß!œÃ¯hb)`ÙvI®ºf≠m[ÌIoå¡„Ãnó<Iú=l$∫a,Hé˙‚¢K€A™Å#.üæ*å5	j;(◊>Ô\rûvKì´L≥ùM=Dõ-©Èç¥⁄F˝«—áãØ^§ÊxÇkû°j∂&±¬¥€“tå&yÄ6c´Ñ ‡%ìM7t<6ŸS¢ úÀ\0†ÅE“Éë∑$–<\\?≠’w\0/G?„∞ÅÒé=P>.,\ZΩ>]q◊ÊMÅıñ\r≈qyQ‚˝Hµ>´ﬁûùô≈∞c√ÿ·‰Ü-f´f›7Ô°A∂¿@M°∏#∞WMuÜ_˜·r•¿0±p”!ÎNh√[§´&†≈y‡p\n!É“ÑÖ˘Õ¡,√TÉ\r<\nxoxÎ«Û0(É‘Â}<[÷Ù;)¸ÖèãSFamà”<C≈Éúåj‚Ùs<ﬂæä∆Û\0T∞ã˝c ’q£†q…\"ÉÅl¬[F„Éôáé\nr}á∑ücòr00Jmº¬ËF\0ÈRπV[êc˜·‚˜¿¿-ΩÛÙïKÎj\0:/rçÎ5·7êoF  Â.Ëﬁ¨>Ô–!7j`‡FoÎê@’V{øÔ9dt™Mé≈ﬁÛ<◊pˇX»∏i¢ﬂ¬©8F‘t√]°∑Ø“u†]Ÿ˘¶æ≠o>∞ü;Ö?–Î4§q^}=ﬂ|ÿ\'Â[®ıØ+öG=às3°Å‡p⁄’yì‹ß≠Î´ÑQ[Ez¶Ôöç-$yô—=	\nV–<gÛΩ^˝B‚}πx∂w4|ìº€ª}¡ÜL∑wÒû•ˇ¨ÆˇÛçÇÛ˘ª]˘+cÕ®|>ˆ]Ú”>ä√Ô◊¿kÅà“1∑yŸ∏úÀ¢|·¯·KÈmöXj»◊˘§€]ÃÄÂÔíõÍÅaw‹~ŒÈøË	æ∞Ôü£êf8ÛDàd?øä»CF∂y£oœ~2∑è˝ıˇ6œùÂ\0','6.1.3-40302');

/*Table structure for table `asistencia` */

DROP TABLE IF EXISTS `asistencia`;

CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSocio` int(11) NOT NULL,
  `idEncargado` int(11) NOT NULL,
  `idDetalleEvento` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fechaAsistencia` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `IX_idDetalleEvento` (`idDetalleEvento` DESC) USING BTREE,
  KEY `FK_Asistencia_DetalleEvento_idDetalleEvento` (`idDetalleEvento`),
  KEY `FK_Asistencia_Encargado_idEncargado` (`idEncargado`),
  KEY `FK_Asistencia_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Asistencia_DetalleEvento_idDetalleEvento` FOREIGN KEY (`idDetalleEvento`) REFERENCES `detalleevento` (`id`),
  CONSTRAINT `FK_Asistencia_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Asistencia_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `asistencia` */

insert  into `asistencia`(`id`,`idSocio`,`idEncargado`,`idDetalleEvento`,`estado`,`fechaAsistencia`) values (1,1,1,1,0,'2019-10-18 02:48:12'),(2,2,1,1,0,'2019-10-18 02:48:12'),(3,10,1,1,0,'2019-10-18 02:48:12'),(4,1,1,2,0,'2019-10-18 02:48:17'),(5,3,1,2,0,'2019-10-18 02:48:17'),(6,10,1,2,0,'2019-10-18 02:48:17');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `tipoDoc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_tipoDoc_id` (`tipoDoc_id` DESC) USING BTREE,
  KEY `FK_Cliente_TipoDocumento_tipoDoc_id` (`tipoDoc_id`),
  CONSTRAINT `FK_Cliente_TipoDocumento_tipoDoc_id` FOREIGN KEY (`tipoDoc_id`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cliente` */

/*Table structure for table `contacto` */

DROP TABLE IF EXISTS `contacto`;

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `relacion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contacto` */

insert  into `contacto`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`relacion`) values (1,'juan','jose','3432324324','242143134','juan@juan.com','Familiar'),(2,'Javier','Jimenez','3543604130','','','Hijo/a');

/*Table structure for table `cuotas` */

DROP TABLE IF EXISTS `cuotas`;

CREATE TABLE `cuotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `monto` decimal(18,2) NOT NULL,
  `Evento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Evento_id` (`Evento_id` DESC) USING BTREE,
  KEY `FK_Cuotas_Evento_Evento_id` (`Evento_id`),
  CONSTRAINT `FK_Cuotas_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cuotas` */

insert  into `cuotas`(`id`,`nombre`,`monto`,`Evento_id`) values (2,'Cuota 1',400.00,1),(3,'Cuota 2',400.00,1),(4,'Cuota 3',400.00,1),(5,'Cuota 1',325.00,2),(6,'Cuota 2',325.00,2),(7,'Cuota 3',325.00,2),(8,'Cuota 4',325.00,2),(9,'Cuota 1',600.00,3),(10,'Cuota 2',600.00,3),(11,'Cuota 3',600.00,3);

/*Table structure for table `detalleevento` */

DROP TABLE IF EXISTS `detalleevento`;

CREATE TABLE `detalleevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `idEncargado` int(11) NOT NULL,
  `idEvento` int(11) NOT NULL,
  `idEspacio` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `dia` longtext,
  `asistencia` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio` DESC) USING BTREE,
  KEY `FK_DetalleEvento_EspacioComun_idEspacio` (`idEspacio`),
  KEY `FK_DetalleEvento_Evento_idEvento` (`idEvento`),
  KEY `FK_DetalleEvento_Encargado_idEncargado` (`idEncargado`),
  CONSTRAINT `FK_DetalleEvento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_DetalleEvento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_DetalleEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `detalleevento` */

insert  into `detalleevento`(`id`,`nombre`,`descripcion`,`idEncargado`,`idEvento`,`idEspacio`,`fechaDesde`,`fechaHasta`,`fechaBaja`,`estado`,`dia`,`asistencia`) values (1,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-10-14 10:00:00','2019-10-14 12:00:00',NULL,'Nuevo','Lunes',1),(2,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-10-16 12:00:00','2019-10-16 14:00:00',NULL,'Nuevo','Miercoles',1),(3,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-10-21 10:00:00','2019-10-21 12:00:00',NULL,'Nuevo','Lunes',0),(4,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-10-23 12:00:00','2019-10-23 14:00:00',NULL,'Nuevo','Miercoles',0),(5,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-10-28 10:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(6,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-10-30 12:00:00','2019-10-30 14:00:00',NULL,'Nuevo','Miercoles',0),(7,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-11-04 10:00:00','2019-11-04 12:00:00',NULL,'Nuevo','Lunes',0),(8,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',1,1,1,'2019-11-06 12:00:00','2019-11-06 14:00:00',NULL,'Nuevo','Miercoles',0),(9,'Taller pintura sobre oleo','Se ense√±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-17 14:00:00','2019-10-17 16:00:00',NULL,'Nuevo','Jueves',0),(10,'Taller pintura sobre oleo','Se ense√±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-21 14:00:00','2019-10-21 16:00:00',NULL,'Nuevo','Lunes',0),(11,'Taller pintura sobre oleo','Se ense√±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-24 14:00:00','2019-10-24 16:00:00',NULL,'Nuevo','Jueves',0),(12,'Taller pintura sobre oleo','Se ense√±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-28 14:00:00','2019-10-28 16:00:00',NULL,'Nuevo','Lunes',0),(13,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-22 16:00:00','2019-10-22 18:00:00',NULL,'Nuevo','Martes',0),(14,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-25 16:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',0),(15,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-29 16:00:00','2019-10-29 18:00:00',NULL,'Nuevo','Martes',0),(16,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-01 16:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',0),(17,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-05 16:00:00','2019-11-05 18:00:00',NULL,'Nuevo','Martes',0),(18,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-08 16:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',0),(19,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-12 16:00:00','2019-11-12 18:00:00',NULL,'Nuevo','Martes',0),(20,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-15 16:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',0),(21,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-19 16:00:00','2019-11-19 18:00:00',NULL,'Nuevo','Martes',0),(22,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-22 16:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(23,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-26 16:00:00','2019-11-26 18:00:00',NULL,'Nuevo','Martes',0),(24,'Campa√±a Vacunaci√≥n ','Campa√±a para vacunar a menores de edad',3,4,1,'2019-10-21 20:00:00','2019-10-21 22:00:00',NULL,'Nuevo','Lunes',0);

/*Table structure for table `domicilio` */

DROP TABLE IF EXISTS `domicilio`;

CREATE TABLE `domicilio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barrio` longtext,
  `calle` longtext,
  `piso` longtext,
  `nro` longtext,
  `codPostal` int(11) NOT NULL,
  `depto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `domicilio` */

insert  into `domicilio`(`id`,`barrio`,`calle`,`piso`,`nro`,`codPostal`,`depto`) values (1,'Poeta Lugones','Juan del campillo',NULL,'50',0,NULL),(2,'Los Paraisos','bernis','akakka','3567',5008,'1111ssss'),(3,'Alta Cordoba','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- C√≥rdoba, capital (domicilio de contacto)','1','8744',5018,'Cordoba');

/*Table structure for table `encargado` */

DROP TABLE IF EXISTS `encargado`;

CREATE TABLE `encargado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `idDomicilio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `FK_Encargado_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Encargado_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Encargado_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Encargado_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `encargado` */

insert  into `encargado`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`fechaCreacion`,`fechaBaja`,`fechaModificacion`) values (1,'Augusto','Galan',NULL,NULL,NULL,2,'23423234',1,'0001-01-01 00:00:00',NULL,NULL),(2,'Javier','Pietro',NULL,NULL,NULL,2,'43232323',1,'0001-01-01 00:00:00',NULL,NULL),(3,'Emanuel Alejo','Lopez','skskkskskssksk','jsjsjsjjsjssj','emanuel@gmail',1,'28907654',2,'2019-08-17 20:25:33',NULL,'2019-08-17 20:29:33');

/*Table structure for table `encargadotags` */

DROP TABLE IF EXISTS `encargadotags`;

CREATE TABLE `encargadotags` (
  `Encargado_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  PRIMARY KEY (`Encargado_id`,`Tag_id`),
  KEY `IX_Encargado_id` (`Encargado_id` DESC) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_EncargadoTags_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_EncargadoTags_Encargado_Encargado_id` FOREIGN KEY (`Encargado_id`) REFERENCES `encargado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EncargadoTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `encargadotags` */

/*Table structure for table `espaciocomun` */

DROP TABLE IF EXISTS `espaciocomun`;

CREATE TABLE `espaciocomun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `capacidad` int(11) NOT NULL,
  `idTipoEspacio` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoEspacio` (`idTipoEspacio` DESC) USING BTREE,
  KEY `FK_EspacioComun_TipoEspacio_idTipoEspacio` (`idTipoEspacio`),
  CONSTRAINT `FK_EspacioComun_TipoEspacio_idTipoEspacio` FOREIGN KEY (`idTipoEspacio`) REFERENCES `tipoespacio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `espaciocomun` */

insert  into `espaciocomun`(`id`,`nombre`,`descripcion`,`capacidad`,`idTipoEspacio`,`estado`,`fechaCreacion`,`fechaBaja`,`fechaModificacion`) values (1,'Aula 205','Aula con buen espacio y equipamiento.',20,1,0,'2019-10-06 15:41:24',NULL,NULL),(2,'Aula 207','Aula Mayormente equipada para las expresiones art√≠sticas',15,1,0,'2019-10-18 02:22:32',NULL,NULL),(3,'SUM','Espacio al aire libre',200,4,0,'2019-10-18 02:23:09',NULL,NULL);

/*Table structure for table `evento` */

DROP TABLE IF EXISTS `evento`;

CREATE TABLE `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `idTipoEvento` int(11) NOT NULL,
  `idEspacio` int(11) NOT NULL,
  `idEncargado` int(11) NOT NULL,
  `cupoMinimo` int(11) NOT NULL,
  `cupoMaximo` int(11) NOT NULL,
  `gratuito` tinyint(1) NOT NULL,
  `monto` float NOT NULL,
  `cantidadCuota` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime NOT NULL,
  `fechaDesdeInscripcion` datetime NOT NULL,
  `fechaHastaInscripcion` datetime NOT NULL,
  `estado` longtext,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoEvento` (`idTipoEvento` DESC) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio` DESC) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `FK_Evento_EspacioComun_idEspacio` (`idEspacio`),
  KEY `FK_Evento_Encargado_idEncargado` (`idEncargado`),
  KEY `FK_Evento_TipoEvento_idTipoEvento` (`idTipoEvento`),
  CONSTRAINT `FK_Evento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Evento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_Evento_TipoEvento_idTipoEvento` FOREIGN KEY (`idTipoEvento`) REFERENCES `tipoevento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `evento` */

insert  into `evento`(`id`,`nombre`,`descripcion`,`idTipoEvento`,`idEspacio`,`idEncargado`,`cupoMinimo`,`cupoMaximo`,`gratuito`,`monto`,`cantidadCuota`,`fechaDesde`,`fechaHasta`,`fechaDesdeInscripcion`,`fechaHastaInscripcion`,`estado`,`fechaCreacion`,`fechaBaja`) values (1,'Taller de costura','Taller donde se aprender√°n distintas t√©cnicas de costura',2,1,1,5,20,0,1200,3,'2019-10-11 00:00:00','2019-11-07 00:00:00','2019-10-06 00:00:00','2019-10-10 00:00:00','Progreso','2019-10-06 15:45:22',NULL),(2,'Taller pintura sobre oleo','Se ense√±a a pintar con diferentes tecnicas sobre tela en oleo.',2,1,1,5,20,0,1300,4,'2019-10-15 00:00:00','2019-10-30 00:00:00','2019-10-13 00:00:00','2019-10-18 00:00:00','Progreso','2019-10-13 23:53:46',NULL),(3,'Curso Office Word','Se dictara un curso para aprender a usar el Word',1,1,3,5,20,0,1800,3,'2019-10-22 00:00:00','2019-11-28 00:00:00','2019-10-16 00:00:00','2019-10-23 00:00:00','Nuevo','2019-10-16 23:48:49',NULL),(4,'Campa√±a Vacunaci√≥n ','Campa√±a para vacunar a menores de edad',4,1,3,5,20,1,0,0,'2019-10-21 00:00:00','2019-10-21 00:00:00','2019-10-18 00:00:00','2019-10-20 00:00:00','Nuevo','2019-10-18 01:56:56',NULL);

/*Table structure for table `horarios` */

DROP TABLE IF EXISTS `horarios`;

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` longtext,
  `dayOfWeek` int(11) NOT NULL,
  `horaDesde` longtext,
  `horaHasta` longtext,
  `Evento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Evento_id` (`Evento_id` DESC) USING BTREE,
  KEY `FK_Horarios_Evento_Evento_id` (`Evento_id`),
  CONSTRAINT `FK_Horarios_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `horarios` */

insert  into `horarios`(`id`,`dia`,`dayOfWeek`,`horaDesde`,`horaHasta`,`Evento_id`) values (1,'Lunes',1,'10:00','12:00',1),(2,'Miercoles',3,'12:00','14:00',1),(3,'Lunes',1,'14:00','16:00',2),(4,'Jueves',4,'14:00','16:00',2),(5,'Viernes',5,'16:00','18:00',3),(6,'Martes',2,'16:00','18:00',3),(7,'Lunes',1,'20:00','22:00',4);

/*Table structure for table `inscripcion` */

DROP TABLE IF EXISTS `inscripcion`;

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_Inscripcion_Evento_idEvento` (`idEvento`),
  KEY `FK_Inscripcion_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Inscripcion_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_Inscripcion_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `inscripcion` */

insert  into `inscripcion`(`id`,`idEvento`,`idSocio`,`fechaCreacion`,`fechaBaja`) values (5,1,1,'2019-10-06 16:05:03',NULL),(6,1,2,'2019-10-07 00:26:18',NULL),(7,1,3,'2019-10-07 00:26:46',NULL),(8,1,10,'2019-10-07 00:26:46',NULL),(14,2,11,'2019-10-13 23:54:58',NULL),(15,2,4,'2019-10-13 23:54:58',NULL),(16,2,1,'2019-10-13 23:54:58',NULL),(17,4,2,'2019-10-18 02:25:15',NULL),(18,3,2,'2019-10-18 02:45:16',NULL);

/*Table structure for table `matricula` */

DROP TABLE IF EXISTS `matricula`;

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` datetime NOT NULL,
  `valor` int(11) NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `matricula` */

insert  into `matricula`(`id`,`anio`,`valor`,`fechaVencimiento`,`estado`) values (3,'2019-08-08 04:27:48',1200,'2019-10-31 00:00:00','Activa');

/*Table structure for table `matriculaxsocios` */

DROP TABLE IF EXISTS `matriculaxsocios`;

CREATE TABLE `matriculaxsocios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSocio` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `pago` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `IX_idMatricula` (`idMatricula` DESC) USING BTREE,
  KEY `FK_MatriculaXSocios_Matricula_idMatricula` (`idMatricula`),
  KEY `FK_MatriculaXSocios_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_MatriculaXSocios_Matricula_idMatricula` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`id`),
  CONSTRAINT `FK_MatriculaXSocios_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `matriculaxsocios` */

insert  into `matriculaxsocios`(`id`,`idSocio`,`idMatricula`,`fechaPago`,`pago`) values (1,2,3,'2019-10-17 01:01:47',1200.00),(2,3,3,'2019-10-17 01:02:19',1200.00);

/*Table structure for table `pago` */

DROP TABLE IF EXISTS `pago`;

CREATE TABLE `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `monto` float NOT NULL,
  `nroRecibo` int(11) NOT NULL,
  `idInscripcion` int(11) NOT NULL,
  `fechaCobro` datetime NOT NULL,
  `fechaBaja` datetime NOT NULL,
  `estaPagado` tinyint(1) NOT NULL,
  `idCuota` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idInscripcion` (`idInscripcion` DESC) USING BTREE,
  KEY `IX_idCuota` (`idCuota` DESC) USING BTREE,
  KEY `FK_Pago_Cuotas_idCuota` (`idCuota`),
  KEY `FK_Pago_Inscripcion_idInscripcion` (`idInscripcion`),
  CONSTRAINT `FK_Pago_Cuotas_idCuota` FOREIGN KEY (`idCuota`) REFERENCES `cuotas` (`id`),
  CONSTRAINT `FK_Pago_Inscripcion_idInscripcion` FOREIGN KEY (`idInscripcion`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pago` */

insert  into `pago`(`id`,`nombre`,`monto`,`nroRecibo`,`idInscripcion`,`fechaCobro`,`fechaBaja`,`estaPagado`,`idCuota`) values (5,'Cuota 1',400,0,5,'2019-10-07 00:27:11','0001-01-01 00:00:00',1,2),(6,'Cuota 2',400,0,5,'2019-10-07 00:27:27','0001-01-01 00:00:00',1,3),(7,'Cuota 3',400,0,5,'2019-10-18 02:08:43','0001-01-01 00:00:00',1,4),(8,'Cuota 1',400,0,6,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,2),(9,'Cuota 2',400,0,6,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,3),(10,'Cuota 3',400,0,6,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,4),(11,'Cuota 1',400,0,7,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,2),(12,'Cuota 2',400,0,7,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,3),(13,'Cuota 1',400,0,8,'2019-10-07 00:29:01','0001-01-01 00:00:00',1,2),(14,'Cuota 3',400,0,7,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,4),(15,'Cuota 2',400,0,8,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,3),(16,'Cuota 3',400,0,8,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,4),(20,'Cuota 1',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,5),(21,'Cuota 1',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,5),(22,'Cuota 2',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,6),(23,'Cuota 2',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,6),(24,'Cuota 3',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,7),(25,'Cuota 3',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,7),(26,'Cuota 4',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,8),(27,'Cuota 4',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,8),(28,'Cuota 1',325,0,16,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,7),(29,'Cuota 2',325,0,16,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,8),(30,'Cuota 3',325,0,16,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,5),(31,'Cuota 4',325,0,16,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,6),(32,'Cuota 1',600,0,18,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,10),(33,'Cuota 2',600,0,18,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,11),(34,'Cuota 3',600,0,18,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,9);

/*Table structure for table `ratingevento` */

DROP TABLE IF EXISTS `ratingevento`;

CREATE TABLE `ratingevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratingEvento` int(11) NOT NULL,
  `ratingContenido` int(11) NOT NULL,
  `ratingEncargado` int(11) NOT NULL,
  `textoDescripcion` longtext,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_RatingEvento_Evento_idEvento` (`idEvento`),
  KEY `FK_RatingEvento_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_RatingEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_RatingEvento_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ratingevento` */

/*Table structure for table `recordatorios` */

DROP TABLE IF EXISTS `recordatorios`;

CREATE TABLE `recordatorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` longtext,
  `descripcion` longtext,
  `fechaRecordatorio` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `recordatorios` */

insert  into `recordatorios`(`id`,`titulo`,`descripcion`,`fechaRecordatorio`) values (1,'Sacar la basura','Sacar la basura del patio','2019-07-30 05:28:45'),(2,'Dejar papeles al contador','Dejar papeles afip al contador','2019-07-30 05:29:11'),(3,'Avisar profesora computacion ','Llegada de nuevos mouses','2019-08-01 00:00:00'),(4,'Contadora','dasdas','2019-08-05 22:53:29'),(5,'Sacar el perro','asdasd','2019-08-07 00:00:00');

/*Table structure for table `secretario` */

DROP TABLE IF EXISTS `secretario`;

CREATE TABLE `secretario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `sexo` longtext,
  `estadoCivil` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `fechaNacimiento` datetime DEFAULT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `FK_Secretario_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Secretario_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `secretario` */

insert  into `secretario`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'jose','Jimenez','2312312','231312312','nose@gmail.com','MASCULINO','SOLTERO',1,'30822222','0001-01-01 00:00:00','0001-01-01 00:00:00','2019-08-16 03:19:58','ACTIVO'),(3,'Nelida','Gonzalez','',NULL,'nelida@gmail.com','Femenino','Soltero',1,'38907867',NULL,'2019-08-17 20:19:57',NULL,'Activo');

/*Table structure for table `socio` */

DROP TABLE IF EXISTS `socio`;

CREATE TABLE `socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `sexo` longtext,
  `estadoCivil` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `idDomicilio` int(11) NOT NULL,
  `idContacto` int(11) NOT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `IX_idContacto` (`idContacto` DESC) USING BTREE,
  KEY `FK_Socio_Contacto_idContacto` (`idContacto`),
  KEY `FK_Socio_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Socio_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Socio_Contacto_idContacto` FOREIGN KEY (`idContacto`) REFERENCES `contacto` (`id`),
  CONSTRAINT `FK_Socio_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Socio_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `socio` */

insert  into `socio`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`idContacto`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'JOse','Quinteros','3543604130','3543604130','juanjose@gmail.com',NULL,NULL,1,'32972080',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(2,'Augusto','galan','3543604130',NULL,'juanjose@gmail.com',NULL,NULL,1,'32972081',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(3,'Laura','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'30992080',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(4,'Maria','Del Valle','3543604132',NULL,'mariadelvalle@gmail.com',NULL,NULL,1,'40000001',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(10,'Jorge','galan','3543604130',NULL,'juanjose@gmail.com',NULL,NULL,1,'40000002',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(11,'Soledad','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'40000003',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'DebeMatricula'),(12,'Angelica','Valles','3543604132',NULL,'mariadelvalle@gmail.com',NULL,NULL,1,'40000004',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'DebeMatricula'),(13,'Graciela Mar√≠a','Casartelli','03543403668','03543604130','gracielacasartelli946@hotmail.com','Femenino','Soltero',1,'30999888',3,2,NULL,'2019-10-18 23:08:13',NULL,'DebeMatricula');

/*Table structure for table `sociotags` */

DROP TABLE IF EXISTS `sociotags`;

CREATE TABLE `sociotags` (
  `Socio_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  PRIMARY KEY (`Socio_id`,`Tag_id`),
  KEY `IX_Socio_id` (`Socio_id` DESC) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_SocioTags_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_SocioTags_Socio_Socio_id` FOREIGN KEY (`Socio_id`) REFERENCES `socio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SocioTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sociotags` */

/*Table structure for table `tagespaciocomuns` */

DROP TABLE IF EXISTS `tagespaciocomuns`;

CREATE TABLE `tagespaciocomuns` (
  `Tag_id` int(11) NOT NULL,
  `EspacioComun_id` int(11) NOT NULL,
  PRIMARY KEY (`Tag_id`,`EspacioComun_id`),
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `IX_EspacioComun_id` (`EspacioComun_id` DESC) USING BTREE,
  KEY `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` (`EspacioComun_id`),
  CONSTRAINT `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` FOREIGN KEY (`EspacioComun_id`) REFERENCES `espaciocomun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TagEspacioComuns_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tagespaciocomuns` */

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`nombre`) values (1,'Sum'),(2,'aire libre'),(3,'Laboratorio');

/*Table structure for table `tipodocumento` */

DROP TABLE IF EXISTS `tipodocumento`;

CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tipodocumento` */

insert  into `tipodocumento`(`id`,`nombre`) values (1,'DNI'),(2,'PASAPORTE');

/*Table structure for table `tipoespacio` */

DROP TABLE IF EXISTS `tipoespacio`;

CREATE TABLE `tipoespacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tipoespacio` */

insert  into `tipoespacio`(`id`,`nombre`) values (1,'Aula'),(2,'SUM'),(3,'Patio'),(4,'Abierto'),(5,'Cerrado');

/*Table structure for table `tipoevento` */

DROP TABLE IF EXISTS `tipoevento`;

CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tipoevento` */

insert  into `tipoevento`(`id`,`nombre`,`descripcion`) values (1,'Curso','---'),(2,'Taller','---'),(3,'Conferencia','---'),(4,'Campa√±a social','---'),(5,'Festival','---');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `usuario` longtext,
  `clave` longtext,
  `imagen` longtext,
  `rol` longtext,
  `email` longtext,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime NOT NULL,
  `token` longtext,
  `idEncargado` int(11) DEFAULT NULL,
  `idSocio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`nombre`,`usuario`,`clave`,`imagen`,`rol`,`email`,`fechaCreacion`,`fechaBaja`,`token`,`idEncargado`,`idSocio`) values (1,'Augusto2','admin','123456','images\\perfiles\\perfil-1.jpg','ADMIN','admin@admin.com','0001-01-01 00:00:00','0001-01-01 00:00:00','c2aac104479345a7b3f185c8c92a08e1',1,2),(2,'Laura','secre','123456','assets/img/profile/users/augusto.png','SECRETARIO','secretario@secretario.com','0001-01-01 00:00:00','0001-01-01 00:00:00','fb536cce05054a06b393a54dbd124c87',NULL,2),(3,'Javier','socio','123456','images\\perfiles\\perfil-3.jpg','SOCIO','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','55c78470a45f4204bd9ad26d6f15f162',NULL,2),(4,'Jose','Augusto','123456','images\\perfiles\\perfil-4.jpg','ENCARGADO','encargado@encargado.com','0001-01-01 00:00:00','0001-01-01 00:00:00','0b5ae4be27084d7f9870b3cd0062f61a',1,2),(5,'DASH','dash','123456','assets/img/profile/users/augusto.png','DASH','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','71193aa3c6054719861cc71bc2c90395',1,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
