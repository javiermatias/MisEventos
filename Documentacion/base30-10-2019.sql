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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renacer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

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

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201910060709224_incial','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ÙrÜ8’ï±ÿPQ=*»{z¦Û!Í„[²g3²–ûxS@$$s›EÖ’,‡ûeû°Ÿ´¿°à#Á£J®ğƒUH$‰D\"3ñÿó¿ç{ÜÆ«Ï4Ë£4¹X??{¶^Ñ$HÃ(y¸Xï‹û?ş°şÛ_ÿıßÎ_…ÛÇÕ/m½ïÊz¬e’_¬?ÅîÅf“Ÿè–ägÛ(ÈÒ<½/Î‚t»!aºùöÙ³7ÏŸo(±f°V«óû¤ˆ¶´úÁ~^¦I@wÅÄ×iHã¼ùÎJn*¨«·dKó	èÅúMØÿÙÙÛ}Ót½zG„aqCãûõŠ$IZ‚áøâçœŞYš<ÜìØü²£¬Ş=‰sÚàş¢¯n;Œgß–ÃØô\r[PÁ>/Ò­#Àçß5tÙÈÍQwİÑQî£pñ¥uE½‹õË<Ê6·Y¯äî^\\ÆYYU&ïY	%$!ÍÏúæß¬ÄJßt|ÁØ§ü÷ÍêrûŒ^$t_d$şfõ~GÁ?é—éï4¹HöqÌcËğeeÂöé}–îhV|ù@ï›1DázµÛmä†]3®M=¶7Iñİ·ëÕ[Ö9¹‹iÇnŠ4£§	ÍHAÃ÷¤(hÆæòMH+r*½+}İ¤A”š:4y•${`³ëèŠ$é«Ï}O`4/8„~JÓ˜’ÄÊ=\r>kpWŒÚ™@0Ã{K>GÕ\\ICq¨h\\ÕÊ?E»Z:p|+U~¥Ûi,,±ÎíMºÏ†ÎÇÔPñ#›9ZØã1ÁÆĞ,ÇlÂZ¨\nâÌÕĞaÌWsÅ7¯\\iS	Ä±*ÓaWW€ğ:ßôRM+ë$¾ î\'‰‡ö•¤Û»Œ¶ı±—)ëÕ5yüMŠOkö\'c„è‘†í—‡Ÿ“ˆé¬Q‘írƒMIE» Ú\Z\'îkDù;†àePJÕÇwW©$ïÍCê.t!Pÿ lCÔOä?\0H.ÛÑt|×ïQ“õA”íĞzwE¥4mYÓ‚h»íjöÂ\Z¬ Hl¸–ëvBñıº3ê+lÃF+u˜´øâ5Û‘µe‹Ğ‘]­d ´iï¶Ş#©r™n÷‰ËÉ5;í‹h_Op_H9óL=òİÏ>F»t”=MÜ<öÅËŒ†óïgUÃë4Œî£\0AÅV<Uî#yÈAáÄ\njØÌ@Î%¥P‘¢j\rWéYğ³‰}NÀÜ\n•9©ÔQd\'ZÑKt2\"8HLVû$(g”úåÑiøğ\"éŠo¹ÅÄ±ŸZ¬ª@×¥\"­SÿÕ,/|½;¡X½`«\"˜ŠR‘BA¹¢½¶ÓéXºÖ§…<ûB–OK;\ZÇÑG¿‚Æô>M¦ï( ñ>&ÙäıĞ-‰â¬\'¥zw•~jY’•0ö[Ş~2!ÎWé6\n¢x#Ë“R&Ã0Ú}’«í“]±ª¡umB¨Æ;`3Ç‘T·+½·ZZ»Z‚M¡½¶†Ÿõ¼ŸË!–ó¶õi¯Dûº#YÍ°³”v£É{ÙEùôCaûÁôäJÃ÷)[Ş±ß&Òİè{–ıÑ´\0íÆ9`ı\nNkçÈ)ô]ëynüÌoÕò4¯óÎëéslç˜œ>NO²Ú€}}>ÌœG:˜Eáeš$ğ½Œ¯NVoÙ™jñp:˜->œêò=ûñQa_E¶¶%Ê±G*v=é¶5pğX+!xMuœu°¨ÂˆMs„­aÇW¡\0Ai”ck¿ÂhEmã“b„öuRŒNŠ-½_baûZâ„Û]	<ß6íO‹}ŞÅn[7Üq÷ä±{b|^İjQ³íh.ÄÁ~—^GI´yô†óÀxnõT\Z²Mùã#ãŠØıøzÑ_îÓŞùÉ9GWX½I”Å4‚cBÉ{©ô GkÜÃÚàZíéS]ğªU\\ˆrĞm5Ø£º.Åğã«ÂñÊ³åé®CöwÂÿiF2Ìó‰ï«¯cİ–kî*\rÂ•[ìF˜«qK\"«¥ŠÃPel×z½O½…3½¥½ÑÕÈ²|-Ã¾C«ág©7Ç!‘²åIFûšI4¥+\ZDÛò~ú}ÆşjböX¯nRÑ¤øXsM#jñMÓöÄ9h_s•…äË»û_)ı½ë©ŠLê¿:ªJŸØ¬\n\nòd˜—=	úóÜÆA-°\0¸ö§E ékœóú	ïPkÎJš¬_hô8\'}ò=y@ß²äVXD=‚r™¢C*\\5H<?UIP j	7BŠ‚r ƒÄKÙğ$WĞ¾–PË\Z°’,ıÀÔ¸;or|$az×;[N!˜–Ó}&\Zd+Ä½\Zj`˜lŠ%áW}U„Wä*…É÷Ç ^¼~u7üj§o~’KË¿é®wìMqéƒE‡7ê¶\'>š’¬dò|î‘™ˆc¸C59DIEŠÌ•Ë½Dî5aôöñ0`×ú´PpN\"mé3‰Ólİí—2æ›zWzîŒûÛğP	Æ‰‰5}’¸’“6Ş¬\\=yxÇñ3ëv‚m?n`/Øğ–«İï\nh%eÀk—ËQîC±—€Œ¨`7ùÀPM<N<€“D@ûÊ:û¬æ\ZRé`M“È×!ªAkïª‚>éÕ¼©%3z±6ók07ÅŠ€êŒ\'§èŠRKõè!hf!ako ÎÂ8‰\'|éFÅ>!ÿçŒÂ¡ÒzDşqÒ~ìc‡iÑbğßüÄŸh_§`™S°=E£ËcÎ(âSĞî  ]m´g·€!ŸJ©\Z÷©VñÒ»~Î÷ZÓâ´‡á‹t=lßNİÔ;KL>O?šhKèôÊb–N/ëçÙ\"g¯®ÆrmÏa@lCl\0v¢s¿å\'çú&“‡ş‘,\\”Ş|ÉºíİI¿Ymsvn‰£»^|şÉV|Şıå/äûàû??ÿñ»?Ñg?üXR0¤Yü…QœHkº½£Y{¢Ù\'!aòìïÙÏg\nõ„Ú×©Pû¹¾öÇ=ÍùêêÔÕ¥a\"6øÎ\0ÿÓ>êÿI_ÿuñµ¿××¾!Œö|ı?«\\Róÿñe^šBªIoà@™Ån_%áÊ\"ícïŒÌ1ş5c‘hÇ˜‚ñëÅúÊô°;BÎÑ¹ÏÛ!ÂV\'›íÇ4+7D_2‡±h”êæ%A´#±\r©©åÎ_ÎD×‰\\rEw4)7m3ízçÈ£¢Ñõ&©&&Bo8¶±å¦>‰yÆÄ&£q†º‡]å{×B4öVs6c§hÑ£[V¾ùQ‹©\'^G\"³®\"‰¼v}wçàEVšø›kMx7ÀøG|`f¬å#e‹Â0ÄRGõè5ú“ı ‘tSÈ>Ñ$‹F`†•Ó®ã&‹¬9—~rµúÊ@†YTOAP˜gT?‘s¬égX«—äšùô1q›+2pœë ³­#Ô;Ğ×™PUÓøTÓ Á®„«º?Óè´læPm\rD·ç´T‹püT%Æ†w+¹]WÌ$bÏhú7/-9y$6Óâ2i©m×ÿ²ÌeÉUfvrç£ƒ` Å8çèY†Ïœd˜b0’‰u©s¬\rFëğÃÑÌVh&&4‘´L&BØRyùw°Ä÷YOøxç[Z8Q,WYC§ÅY—8Ë†Ô,Z#.4%û¼K—3Öb²<`8êR>ô\nñ¿öû”.é—ûÚ´ªpfXN8q`qAèØüBéı¼Ö8öÜ±›ö£‘˜DíyæP‰gi­	±OğÂ@;—`f\0Oş\0“¿X	ª1yÀb.ˆj×µ@šE¸GÍ c³qH£nJbÄ†É9Á–$ 0ó$Ö®ï†,Kêu|îNƒâ&òáÜ\reÿ´¹R÷à\r`1ß	 ­¥JÓgI.âÒ«\Z&Êµ:	Ze+ó”j1ŠÅ|,¤ÖÁ¬¼¤b,ŒmäÚbBëòÂBÊˆÌì&æ£Y/ó(/ÊÄä6´²œa\r nëëº°\ZÚƒ«íl$n3á3³™ˆn‡‚D¬¥ùÍF¸ÁÕ\'áµ…eš“yyì)H3ıP®8	G-r\0ÄúŸ—ƒìø\'gDÃ&MÆ™ÛÌö,ƒ%U›ÙßAcÆAÈjÓ3Ÿ9oÖÁ(aÓm‘M©Ÿx%Õ˜=[™s1AıLÄ\\Fdf`3#áípàHu§ßéÉ°&á´E6>-p×‘mP:%l¾µ¹•úÙÓ¡Ù³“.-Ó\\W»\Zfà%\r-ñ%Ïx@â+«©FEÓ(Œ´ˆPÂ1˜›‹LI<°YÖeôàf™K,å€§™;\Z\0ÅdNÂIloVŸ+.àU•Y \níŠ.®>¤qÚ¤SÒüœÓ&ƒ@Ş$GY¢„zC‹6¹gxÕå2\0,\nk‰pD£«\nJk³S QÁ3W&:î\Z`e ¢\nï1aÑ[T0‘J™>ÎJ¥\nƒ¥B\\šêxÄr´&‹£””Jë.0T€E\"‚ãéüŒÁÑ ^Èê,a,gÉkíë¬êX \"¥yÿì¨ sY4€ˆx\rŠÆ%ET¦bnĞVàÔD6Ó‚¿TTY¤µ©TmK¸Î\nôäŠCiƒ8¬ßì˜¿N\0•;!¥\nK(6-fN#PW4Wh€ÓåˆR€t‰¿$ÜÎÕƒ²˜¬¸š²\0Å‡ıE—î¤‡ ±•Ú.¿	,D…óF¸Qú€W-Q¸Xdjt¬QÔ°XXì›>äè2ÛéˆjÎö²êìAYSæÉ İnİ	¢¦š\0bÈG!ŒÏH¡ŸL€T§Œ¹SBÌƒ\0‘Aª£§TàqÏ‘“¡1!#ÀT¡c×ŠM¹Š	s­¸´şlbRŠËÇ	`#¥š>˜A$\nÑêøÀÍ¢P¨ç3èÅ\ZñmVÑñ¢H7ÅÇ[Š3; ½°óŒ;µàˆm€T¡İÂôÁİüš7xàØFsO·˜‰cM39¨™K€£Å‰€ÛBc€Âm\n®å\0µXJ\nÉ¥§ˆ&…;œ>pØ­íZô¤VoÜĞ\n!EÇ¤‘\'2Êê±÷&\nô$¸JSH©0\nMP)7†HdEj$î\0zğïªtÀ¢\"Œ¸HSÎ’¥5\r9…\0QŸ÷EÆŒFı©XCqÃÆEûÙqçBhIı:\0îMQÆ/N=WxOjÒ‡JŞı“¨“0$Ù áA\"ò¶1ˆ§o@F‰AC\0B‹‘ˆ%’ô±„#ûbÔÑíØÄ*3‚®>#ï Á\0½ì=„qC=¸aôÊÓä\n\Zz §•cÂ¼è´?¡{”ŞÅºC¹ÓcòıIy[%‚Ö_\\@óç\r¡ğÍÌ¶%ÍË°*A,½ …1™ı ¹Ñ)’\Zb™Ÿ!À]D.¼Ú¡ËÉ‡L“/,ğÅN•8FOTa:_Tníõ³†:·Ó)Î‚Ğû j˜øDãNéA‹Éz±0ä\\ES<îÈ\0½å7Q\0·át.k]Ùùæ&øD·¤ùp¾aUº+ö$®üÙò¶àšìvl¾ò¾eóeu³#A¹üñf½zÜÆI~±şT»›M^ÎÏ¶Q¥yz_œévÃ‰Í·Ïı¸yş|³­alÁ>%;Øu=iF¨TÊºf˜¾²¼¸\"¹#åã=—áV©&:è!m_Š:w­+FÛ¤ü»Ywâ[k/Q(=_³‘•ÓZ\r’rs®kÌš—Ï·“x&í2÷Û÷ÍÔµn$»÷:8œ+KÅ©ƒ\'™ˆE˜†Øcnû´ ®ıf¥zz‹wËäÁ)…*ÜóÄ	2Ãm“–¿ÌÃVn:©Y3¹Ö\"oÁç†öÓ°zûÆ¡ıfEx&™%,¹pàã¾T¸´(,1-«ZW4)°VšïĞşAòZyÍwGhõ;z\n°úóÜâ%”EJ‹¬=A$“ît¼˜P.\\=dÒ+\r‘¤oş5I¤€””‰44î³‹|ÈERi“îã0GÜÂû·8••ß-#IªFL‹î£\0ÃQ,>˜]zby,äjs‹õ¶:„e»”Xí”™Š±¨xÛC˜tïÜÑ8dùÒµ‡TĞ˜Ş§‰©ÿê ‘i¼g_%yÜ~tœõ+Ç‚à¬?¹JôÊ¦¢Js0(O3coáæ-Ãmzì¸X.éÈˆ?´…Ã;íÓF5ÎÓöQˆÍ!o;€º#Y&óeûÍE=‹c*«fÕ\'{»(—ğ¨¿8-]eÅ:\"\rß§Li“Ä÷ÙEŞÉò£ùt0Ì.\Zs}”# 5Ißşvæ…¦»±š€Å” ía*NJÒ0%)§Òˆê/®‡ÜËè³‚_pRÛ0x}¼£‡ViQo™ş´Ô!+…OG¹t3´,$¶5ˆÖ’ûa!¼ñ¦\'ù}¼ò;£1°(û¯ÃıúÀ;\'­c©S¢­a,e‚ó¾g|ÁzºY•Ÿ_\0®½ûŞ7ØïÒë(‰¶8ş»#4òCk¾ÛC{ÈH±äYè¿ÚCÚ¦Êd6Ÿ\\(l„¤}œL4¤EOè~»ÂAˆ‚ÑÔ¾¼eƒ±¾µÊ×zï·Ğ„FÛ+ËP@¡¦·;äÉEÚ,4Ÿš_ëm¤¹Ï)ÚršYõõ‹	É—w÷¿Rú»¥ÿlë: ğ¹Ïn°\0qÏ}>~‹´¡µÖ,§‰Ğµ`;mëiXoL·ºq<n¿ò¬Ìö`Ã*£;ÿÁÍÊN¦1û~ At§Ú|ÛÏ.‹\0Õ\r¯¿â0k®Oïä›Işûr†TÆ3 öÚ~w2n«\'ô­åeMSŞ([ÃÔWd	YÊßDœú*`6Ç\n¬å!OğˆöwîÁ\"Á¯yÈh1FÑ…ñZ³Ê5Ä‚Y4m§a’Èš^ıÅÂg§Ò¥HóÉq/û¥tüGo0…Ò\'vE(G1Á|0(Ä Lu~+ÎËú-ÂÒ<d…Ã«˜¯Î‰®ğ$”*]k§€Ù!bÄ&RÚƒÿ„ìæîÌ§o>\rçeBBvá>U“ªİ±¼y§‰²‰*…Î˜Â×2J¡Ëùc‘^a:ZzV‰¥VŸ‘ßgiàØ¬#móiÖë|Ë~Í·å.Y+A-¾“ Èqİ3\nò—­Áƒ“nP(|¤kü•œ_¤ÿĞÉÿóäai?Ë~|j¤ñ’?Ã ,$$ÚòÅc÷„f¿Ş£ƒÄä³êSrXø[ò@e{óÍA5N%1T}˜W¨úb.ÒßeB7Ÿ–ó\n;4µ^ÌZ%Êğq&sh2_A¢ÃË„\\µ4/9©”²’>=DøÉL‡aè¡vZ¡W¾,ä†˜œxÌy–\'–t™\0äº@Ø¿.s@EôI¦Ùhh‰–ßÔ\nï¢Ì<ÇÒk=šVj‚Áqv«W‚å9­5´&VFëèV,ô„‰Ác]¬lå	É;ô¡“¡k¢8†(FŸNˆš3N—iFÕ×oò·û8fJ‰sj9àQ™¢àÃŠ-úê–î„úËÏ˜sÈ£<öP²ŒÊU:M²ùÒıî²Œ6>…Ô£=ÊD¢ò&Û¨œò³®²^±ÁÂ*İç—›ÿŒÏÊò³êÏÚ+ ¯qM’è¬?–\nùÅúû³¿¬W/ãˆäu2Ø&™éùo«ì¦Ï¿+³›Òp»‘›»çH-¡äyRËµÕp–&ôüŸTa„–At·Ÿoä†ç\0?Ö/ÑF%Y«…ûwÊ¦4|OŠ‚fŒXoÊ‡×ªëUÉreŠùí6ğÍ‰„ëCySıMÒÇ‹õUm^¬ŞüvÛ4ûfõ.csübõlõßºæV®İwM=QÒ™º¢!4÷B¥5>ÕÜ¥å)ß„’ş´†2N)¢--×$\r¢¼Z]ÏĞùã¦vEhŠí¢híNuqš<”W…<˜\"Û¡÷:~ b©]##,.ÎÏ¹÷º¡W÷|,™ÇšB\07ã®Íh¶pmøPRƒF/›†‚ Š”³˜Ö2\r·kœDÚX\"KjÊ\rÛY.™L]e×xÄ½{È@$3ú1È ÃİpğÖKS1H}U+Ò^‚Á)@¿*b»Fç&á§w’ğ”­„˜æ>ÏWÅìü†ˆQÖĞK„Šş¾CáRW9ŸèÚ¦ş\ZãI[áT G+¨Ú¬¢¾ÊQ•VÔHXÔF•[Ôs,}bÑáúQ“Ut’½R“˜óhÙpRåŸøªuR,\\€Ôş—ˆğ®—\'=çpô>­§+mKE‹wQ]%:.-nˆ…ÎZğÃ)7O²ÿ$û }ŞÎÉ470ıåWÅ’öF¡Óİ¤wt|jËA¦è£¿(;€{J>ëæğó&Ÿms8”>Ï¦Ç­~“-¨†p§dÀhÄäš×Çwªæ×œùéúçæõàZ{UTõdıÊ·2AN„ŒàÛÒäÆ‘şùõ€”ğ¾uÆ‘sXt“ë]CLª{0èµz´l0‚[—Os¸çiúaÃeÑôtÌ‡¦Â<Z\\ØÅk1GÔ§³+ªé1–\'Ø‡)Ï\\–MG%@5´çq®ñœ^\'ä\\šÍ­ÕŞ6O§Ç*>v6ê²™ÉİLW\'{Ìhöûƒ”µò+§úh&l.õ¥ÛJë[N±Øä“G;ëu&ËQm“ÙÒÓ4$ä²\\ÜşáÎPfÈ£å’EC»¸””®İwMıU:å¨Œ¸ãAúYY¬ùOy´Ì)f .v”¤“¾ àGPjfIß»¥¯ádn¿Ğ$G»Ú|’s	äô£ö¾…H^Æ£ØÓĞŸ “ÉÉÁp*Ã“sİŒ‡0ßâW.öºÌÒªNİè¹®›Ôq©·€EhØê³Ó‘êœŞª´AÃ·ƒ¢êÄãøè¡yíD!í¡Ú\0Nkf–bG×²\\[¯Í®EŞ­ûºÕ$V}]ND»	DÓÌs­O4hÃ™È0Œ¹#ÿˆÍ§˜I8û¡İj·şúNÜh×¶;æuÇ¥HS¤Qˆ”¾JÂÕ‡´ìH	š)óq_¯÷qíbö³ør±~®£¥l%(î«ê\n(Æ4+U,_¦I^d$R3ÿ¾Ï¢$ˆv$V Õ´TKÂv0å’+º£I©õ)C´ëŒ££Úk\\bv„¬x¶œ ÏG:|Ÿ+Yß%Wì\\]ĞÕË Î]wIò€¨/WyX”RD¤*˜„£\\\'y’ËÑi–â*(¯$7Ÿò4³÷9ÉvNçæ!<{ï¬ÜÓÜsãL#Ä¢ì#–ú¥	ªŸ˜#,;C__™…#ìR¡„4‘Ï4bÙ1ËCBûÃ+v‰ëyQ€Í£nŸ,[9Oöüeñ–ÀŒVŸ8ú»ŸR9@5—ıGû-K°­UPš/“ğÕ>\r`o×Bõ”[pÒg=NÏ;ï³£]&~é#´Ísî³6Ñ>Òê¦;ä¸L¦?×Øª?ºwSàšƒ=/Á13©°Nü²¨îZsËÇáy÷˜ÙÁ.¢iÙ#° Úh&‘¤ì+tßì\"CC#²8Üi˜bÀIG ê\"ü!<,qK\rÌ1ğh‹³ø0H­ÚŠ%OâlªyÅípYöXŠ/\0†xRœp|,À¿xç=kÏÎÎt³/„‘ÖöúË4sï2^³>[¤tµÍ<éº·‡Ìıo³1Â  úâüĞ½o8µhÏğ€ºoGÎÈS)¸¼·t)\0$q¨ 	ß|şÑ¼6hw‹®ÿ2Äó6\0²9oÚº‰çI+õ‡iî#¬÷bÏ™V³Å ı4[n†ñlK^«óPæÜ}ÑÍ5óñò9Ÿ?à&â%ül—\nî¼ÖPqIı.c}©tÏó€Nù³:`:)÷=ù–œÿË—$Ù‡Õyã?.`ù €x€%xfI°ğÁN¹0èì¿°xèŸ»¾\r­¬AçSÇ\"ê“Û<şó4,æË‹A¸Ùõ&‘ti™Yt,Å³\n\rg8 ‰1ùib)˜í,á<ûK%šÔKx´Y\'#Tûíix€‰5‘®øD‘‹°‚”ñïv‹dˆìgPIhWÍ!÷Õätƒ Àß@a3s 	1§amvE´K²Á!“ïËsÅl»Æ0Xrëà30ÎrÓ$¤|äA‰G~×„\'¶Dû[ô,!°ÁäaI˜M`%AŸŸpçå>;¢ÀYÜç§¡Lbi ÑŞæôe~U%%©Â³¢„fíé\"\réë(Ë‹+R;’«&†²Õ\r-”sèzõªKsœo‚OtK.ÖaõE,…/W¸EìG²Á(]IåPoZ3Ò¡èY©ô\'Cİ‰5½U1J\'ÕWvšbAo¢PÑïË@Ü1ë†:/}”—:\'}8X€˜JQÒ¨tËAŠ‰U6²Yé¨ùu\0Šsp\r©Àî‹ ğX%H«Î¡¤TWŠÑ	ñ‡U[ŒºUh¹ü\ZW\r•JõwDµó¬	rçá¦ÀîJ èW	¾pÇ®ô!”Bıh<”®jW¥ú3¼.±á ljùB”,§¸µ©“Ü–€ÓÜ\ZÀsGo¥®ê=µãü†‰¥†¶Ãº’™ÉDİYéT,†zk˜zh«½	Å`o\\\róàxEPÁ\\!(‡¹rC?m®Zµ“®ê¡+´İáÍ],ÖîÂVÛ½’nR\'Ìj‹TÉb¶º˜Sx»D‡×–ª]p\Z+@N.šÅÕ”ÉŠıGE}aıi4ìk‹«NqXNCVÂØµ#×½ûnËÍ¾Ø¼*˜„M\\¶% (nñ”+\0@|á¡·çtíˆÁÃ¼î8ÏY§!ÏÌøhb)`ôvI¨¼f­m[íIoŒÁãÌn—<Iœ=l$ºa,Húâ¢KÛAª#.Ÿ¾*Œ5	j;(×>ï\rvK“«L³M=D›-©é´ÚFıÇÑ‡‹¯^¤æx‚k¡j¶&±Â´ÛÒtŒ&y€6c«„Êà%“M7t<6ÙS¢ œË\0 EÒƒ‘·$Ğ<\\?­Õw\0/G?ã°ñ=P>.,\Z½>]q×æMõ–\rÅqyQâıHµ>«Ş™Å°cÃØáğä†-f«fİ7ï¡A¶À@M¡¸#°WMu†_÷ár¥À0±pÓ!ëNhÃ[¤«& Åyàp\n!ƒÒ„…ùÍÁ,ÃTƒ\r<\nxoxëÇó0(ƒÔå}<[Öô;)ü…‹SFamˆÓ<CÅƒœŒjâôs<ß¾ŠÆó\0T°‹ıc Õq£ qÉğ\"ƒlÂ[Fãƒ™‡\nr}‡·Ÿc˜r00Jm¼ÂèF\0éR¹V[c÷áâ÷ÀÀ-½óô•Këj\0:/rë5á7oF Êå.èŞ¬>ïĞ!7j`àFoë@ÕV{¿ï9dtªMÅŞó<×pÿXÈ¸iğ¢ßÂ©8FÔtÃ]ğ¡·¯Òu ]Ùù¦¾­o>°Ÿ;…?Ğë4¤q^}=ß|Ø\'å[¨õ¯+šG=ˆs3¡àpÚÕy“Ü§­ë«„Q[Ez¦ïš-$y™Ñ=	\nVĞ<gó½^ıBâ}¹x¶w4|“¼Û»}Á†L·wñ¥ÿ¬®ÿó‚óù»]ù+cÍ¨|>ö]òÓ>ŠÃï×ÀkˆÒ1·yÙ¸œË¢|áøáKémšXjÈ×ù¤Û]Ì€åï’›êawÜ~Îé¿è	¾°ïŸ£f8óDˆd?¿ŠÈCF¶y£oÏ~2·ıõÿ6Ïå\0','6.1.3-40302'),('201910240358280_agregadoEstadoInscripcion','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ÙrÜ8’ï±ÿPQ=*»{z¦Û!Í„[²g3²–ûxS@$$s›EÖ’,‡ûeû°Ÿ´¿°à#Á£J®ğƒUH$‰D\"3ñÿó¿ç{ÜÆ«Ï4Ë£4¹X??{¶^Ñ$HÃ(y¸Xï‹û?ş°şÛ_ÿıßÎ_…ÛÇÕ/m½ïÊz¬e’_¬?ÅîÅf“Ÿè–ägÛ(ÈÒ<½/Î‚t»!aºùöÙ³7ÏŸo(±f°V«óû¤ˆ¶´úÁ~^¦I@wÅÄ×iHã¼ùÎJn*¨«·dKó	èÅúMØÿÙÙÛ}Ót½zG„aqCãûõŠ$IZ‚áøâçœŞYš<ÜìØü²£¬Ş=‰sÚàş¢¯n;Œgß–ÃØô\r[PÁ>/Ò­#Àçß5tÙÈÍQwİÑQî£pñ¥uE½‹õË<Ê6·Y¯äî^\\ÆYYU&ïY	%$!ÍÏúæß¬ÄJßt|ÁØ§ü÷ÍêrûŒ^$t_d$şfõ~GÁ?é—éï4¹HöqÌcËğeeÂöé}–îhV|ù@ï›1DázµÛmä†]3®M=¶7Iñİ·ëÕ[Ö9¹‹iÇnŠ4£§	ÍHAÃ÷¤(hÆæòMH+r*½+}İ¤A”š:4y•${`³ëèŠ$é«Ï}O`4/8„~JÓ˜’ÄÊ=\r>kpWŒÚ™@0Ã{K>GÕ\\ICq¨h\\ÕÊ?E»Z:p|+U~¥Ûi,,±ÎíMºÏ†ÎÇÔPñ#›9ZØã1ÁÆĞ,ÇlÂZ¨\nâÌÕĞaÌWsÅ7¯\\iS	Ä±*ÓaWW€ğ:ßôRM+ë$¾ î\'‰‡ö•¤Û»Œ¶ı±—)ëÕ5yüMŠOkö\'c„è‘†í—‡Ÿ“ˆé¬Q‘írƒMIE» Ú\Z\'îkDù;†àePJÕÇwW©$ïÍCê.t!Pÿ lCÔOä?\0H.ÛÑt|×ïQ“õA”íĞzwE¥4mYÓ‚h»íjöÂ\Z¬ Hl¸–ëvBñıº3ê+lÃF+u˜´øâ5Û‘µe‹Ğ‘]­d ´iï¶Ş#©r™n÷‰ËÉ5;í‹h_Op_H9óL=òİÏ>F»t”=MÜ<öÅËŒ†óïgUÃë4Œî£\0AÅV<Uî#yÈAáÄ\njØÌ@Î%¥P‘¢j\rWéYğ³‰}NÀÜ\n•9©ÔQd\'ZÑKt2\"8HLVû$(g”úåÑiøğ\"éŠo¹ÅÄ±ŸZ¬ª@×¥\"­SÿÕ,/|½;¡X½`«\"˜ŠR‘BA¹¢½¶ÓéXºÖ§…<ûB–OK;\ZÇÑG¿‚Æô>M¦ï( ñ>&ÙäıĞ-‰â¬\'¥zw•~jY’•0ö[Ş~2!ÎWé6\n¢x#Ë“R&Ã0Ú}’«í“]±ª¡umB¨Æ;`3Ç‘T·+½·ZZ»Z‚M¡½¶†Ÿõ¼ŸË!–ó¶õi¯Dûº#YÍ°³”v£É{ÙEùôCaûÁôäJÃ÷)[Ş±ß&Òİè{–ıÑ´\0íÆ9`ı\nNkçÈ)ô]ëynüÌoÕò4¯óÎëéslç˜œ>NO²Ú€}}>ÌœG:˜Eáeš$ğ½Œ¯NVoÙ™jñp:˜->œêò=ûñQa_E¶¶%Ê±G*v=é¶5pğX+!xMuœu°¨ÂˆMs„­aÇW¡\0Ai”ck¿ÂhEmã“b„öuRŒNŠ-½_baûZâ„Û]	<ß6íO‹}ŞÅn[7Üq÷ä±{b|^İjQ³íh.ÄÁ~—^GI´yô†óÀxnõT\Z²Mùã#ãŠØıøzÑ_îÓŞùÉ9GWX½I”Å4‚cBÉ{©ô GkÜÃÚàZíéS]ğªU\\ˆrĞm5Ø£º.Åğã«ÂñÊ³åé®CöwÂÿiF2Ìó‰ï«¯cİ–kî*\rÂ•[ìF˜«qK\"«¥ŠÃPel×z½O½…3½¥½ÑÕÈ²|-Ã¾C«ág©7Ç!‘²åIFûšI4¥+\ZDÛò~ú}ÆşjböX¯nRÑ¤øXsM#jñMÓöÄ9h_s•…äË»û_)ı½ë©ŠLê¿:ªJŸØ¬\n\nòd˜—=	úóÜÆA-°\0¸ö§E ékœóú	¾Ö[9Mì¥³.(«1\ZuÑIm}Oıº,¹Öj \\¦¨ªJWEOƒÀCUò (…ZÂ	¡è )V6<‰/´¯%´¿v²$K?0mñÎ[Ôö\"›Şõ>SHÛ,Æô#$¹‰™$qç‰\Z&›bIøU_áÂ¹Jcaò}Å1ˆ$¯‡ß¿Aê›ŸäßÒòoº[${J\\ºzÑa6”ºí‰¦ä#+™<ŸWIãÊd&â^W\rƒA~WR‘\"sår/‘{M=ƒ}<ÌÔØµ>-œ“È_[úLâ4Awû¥LW„¹ÀÂÍ¡;ãş6<¢B‚qbbM_£äÇä¤7+×dOŞñ@ülôº`ÛØ$6¼åj÷»ZIÙğšã¥Œ”ûPì%`#ª#ØM>0T“Sà$Ğ¾2Î>«¹†TúqÓ$òõ»jĞ\ZÇ‰« Ez5oËÅlëC¬ÍüZÌÍ@±\" :ãÉ)º\"¤ÔR=zcˆ\'\Z¤YHØÚ¨³ğ\0Nâ	_ºQ±gH3:£p¨´‘œ´ûe\Zd´ìGĞ7?ñ\'Ú×)&ç“COÁÊèò˜3Xù<ÈATÚí`d©Rª†—ªU¼ô®Ÿó½ã†Ö´8íaø\"gÛ·S7õÎ“ÏÓ&Ú’:½²˜¥ÓËúy¶ÈÙÄ««q \\ÛsX[Æ€èÜo9ÁÉy¾É_Çä¡‹¥7_ò‚n{¯ÕoVÛœ[âè®Ÿ²Ÿwùù>øşÏÏüîOôÙ?–iaçG\'ÒãšnïhÖhöIH˜<û…Ä{öó™B=¡öu*Ô~®¯ıqOs¾º:5Bõ_i˜ˆ\r¾3Àÿ´Ï„úÒ×E|íïõµo£=_ÿÏ*—ÔüÀ|™—¦jÒ8PBI±ÛWI¸²È.Ùû<sŒÍX$Ú1¦`üz±şƒ2$=ìÎ‡ó§îÓƒˆ°ÕÉfû1ÍÊ\r‘Ä—LÇa,\Z%…ºyGIíHlFCjj¹ó—3Ñu\"—\\ÑMÊMÛL`»Ş9ò¨ht½Iª‰‰Pçml¹©O—bq ÊhÜd»îaWiåµP½ÕœÍØ)Zôhã–•o~ÔbÆÂ‰×‘„È¬«H\"¯]ßİ9x‘¤æ—ÇæZ“lŞ…Ã\r0şß±kùHI©0±U=zşd?h$«²Ot4Éb˜a¥ÀÄ´ë¸§É\"ëDÎ¦Ÿ\\­¾2aÕSfã™#ÕOäTnúÖê%¹f>}DÌ§ÇJ£‡çÂúˆÄl«ãõô(TÕ4¾5Hc°ëáª.•Ğ4:­›9T[Ñí9­#Õ\"Ü¿ˆ‰±áyLn×–Ø3šşiMKN‰Í´¸ÌÀcZjÛõ¿,sYr•™Üùè h1Î9z–á4¦ÌÖdbgggêkAC‡Ñ:üp4³šğÉM$û“‰¶T@,ñ}Ö>Şù–NËUÖĞiñEÖåç²á5Y×ˆMIòÅï²òŒµØ€,º”=†Bü¯ı>¥Ë-æ¾v­*…–NÜ#XG\\:6¿PDz?¯u=·\0Aì¦ıh$&Q{9TâYZDkB,Ç¼0ĞÎ%˜À“?Àä/V‚jL^°˜‹c\0¢Úu-fîQ3èØlRàÅ¨›’±a2GN°%	Ì¼#	„µë»!Ë’zŸ\"Ô xùBG8wCIFm®ÔÇ=xXÌwB\0Hk©ÒôÄY’‹¸,®†É†RºÀC@XÙÊ<¥ZŒb1©„u0+/©‹cy„¶˜Ğº¼°2\"3»‰ùhEÖË<Ê‹21¹\r­,gXˆÛúº.¬†öàj;‰ÛLøÌÀl&¢Û¡ ki~³npõIxma™¦Çd^{\nÒL”+NÂQ‹\0±şçå #;şÉÑ°ÉEÓ£q¦Ä6óŸ=Ë`IÕfö7BĞ˜q²ÚôÌgÎ[„uğJØt[dSê\'^I5fÏVæ\\LP?1—™ØÌHx;8RÇéw:C2¬I8m‘O‹ÄÜud[ ”N	›omn¥~¶Åthöì¤KË4×Õ®‡xIC`KE|É3øÊjªQÑ4\n#-\"”pææ¢#G@l–u=¸YæK9à©@æ@1™“pÛ›ÕçŠxUe¨B»¢„‹«iœ6éT€ô?ç´É 7Éd–(¡ŞĞ¢MnÅ^u¹\0ËÂZ\"Ñèª‚ÒÚìhTğÌU€‰»XEÈ£€¨Â{LXôV ÌB¤R¦³R©‚Å`©£—¦:±Ü\0­Éâ¨@%¥ÒºU`‘ˆàx:?cp4ˆ²:KËYòZû¬:È‡HiŞ¿nª\0è\\\r \"ŞGC¢qIQ •©˜´8µ\'‘Í´`Å/Ui­G*UÛ.³=¹âPÚÃ ë7;æ¯“ã€DåÎEHA©ÂŠM‹™ÓÔÍ\Zàt9¢ ]â/	·sõ` ,&+®¦,@±ÀaAÑ¥;éÆ!Hle‡¶ËoÂQá¼îD”>àUK$.‡\ZëA5,–V\0û¦9ºÌv:b€š3‚½¬:{BÖ”y2h·[w‚¨©&\0‚òQ£À3Rè\'Ó\0 Õ)cî”ó @djàèÃ)xÜsädhLHÁÁ0•gèØµbS®bÂ\\+.m‡?›˜”âòqØˆG©¦f‰B´:>p³(êùzFñ‡F¼CÛ‚Ut¼(ÒMññ–âÌ(B/ì<ãN-8b •Eh·0$}p7¿æ\r8¶ÑÜÓm#fâXSÅLj¦ÃRàÃhq\" Á¶Ğ pÛAÄ€‚k9@-Ö£’B²Cé)¢‰ÁEÇGá§vk»=©Õ7ô„‚CHÑ1)A¤ÃÉ£„Œr zì½‰=	®’ÄR*ŒBTÊ!Ò$YE‘\Z‰;€üã»*°¨Hc .’Ã”³diF\rDCN!@Ôç}‘1£Q*ÖPÜß°ñCÑ~vä¹\ZER¿€{S”qÅ‹SÏU Ş“šôßá‚’wÿÅÅ$ê$I6ÈExˆ„|m\"Ã©ÁQb`EĞ€Ğ¢A¤\0b‰d},áˆÇ¾ut;61‡ÊŒ «ÏÈ;hğ@/»@a\\ÆPnX½ò´9ƒ‚†„èieÇX†0/:-ÃOè¥w±ÇîPîô˜|RÇV‰ õÇ<ÆyC(|³§3ƒmIó2¬JK/haLf?hntÊ…¤†XfÇgğ$C‘…¯vDèrò!Óä|±S%ÑU…Î•C{ı¬¡‡ÎítŠ³ ô>¨\Z&>Ñ¸SzĞbrÆ€^ìù—@Ñ;ò@oùMÀFÀíc8ËZWv¾¹	>Ñ-i>œoX•€îŠ=‰+¶¼-¸&»›¯¼oÙ|YİìHPî¼Y¯·q’_¬?ÅîÅf“W ó³mdiŞgAºİ0Ebóí³g?n?ßlk›@°OÉv]OEš‘*•²®¦¯£,/®HAîHùxÏe¸Uª‰zˆÇEÛ—âƒ§Î]ëŠÑ6)ÿnÖøÖÚKJOÆ×ldå´Vƒ¤Üœë\Z³æåóí$I»Lãı6Á}3u­É.‚@Ä½çŠ\'ÂÒDqêàI&b¦!ö‡Û>-Èƒk¿ÙC©Şâİ2ypJ¡\n÷|#q‚Ìp…ã¤å/ó°‡›NjÖL®µÈ[ğ¹¡ı4¬Ş¾ñÇCh¿ÙCIæA	K.xÅ¸/.­\nKL‹ÃªÖÄÍC\n¬•æ»#´¼€V^óİZı¬ş<·x	e‘ÂbkOÉ¤;/&”„W™ôJÇB$é›M) %%B\"\rûì\"Cr‘TÚ¤û8Ì·ğş-Neå÷EËH’ªÓb£û(Àp‹fE—Xù£ÚÜbı‚­aÙ.%V;åÁG¦b@l*Şö¦İ;w4#Y¾ô_í!4¦÷i\"Aê¿:Hd\ZïÙWI·$gıÊ± 8ëO®½²©¨ÒÊÓÌXÆ[8„yËpÛ‡;.–K:2âmáğN»Ät‡Qó´ıAbsÅÛN# îH–É|Ù~sQÏâ˜ÊªYõÉÆ.Ê%<ê/NKWY±N£HÃ÷)SÚ$qÄ}vQ€w²üh>³‹Æ\\åHÈFMÒ·?„y¡)Â.C¬§æ`1%H»C˜Š“’4LIÊé£4¢ú‹ë!÷2ú¬àÂœÔ6^/‚ÃßèÅ¡UZÔ[¦?m#uÈJáÓQ.İ-‰mM\0¢µä¾D`Xo¼éI~¯üÎh,ÊşëÁp¿>ğÎI«DÀXê”hëCXK™à¼ïY_°nVåç€«‡EoDÇ¾÷\rö»ô:J¢­ÿî<ÂĞšïöĞ2Rì#yú¯ö¶©2™Í\'\n[\'!i\'\r)BÑºß®pb§`4µ/oÙ`¬ïC­òµŞû-´\'¡ÑÅöÊ2Ph£)ÃíyGr‘6Í§&ä×zFÛiîsŠ¶œfV}ıbBòåİı¯”ş.Aé?ÛÃúÄ†|î³,@ÜsŸ†ß\"mh­5Ëi\"t-ØNÛz\ZÖÓ­nÛCÙÈÚzÔÇw{0s•ÒÑ‹áfOe?Ô?Ğ ºS-Çíg—¥„j›†7dq˜õÚIïäûMşûrŠñ¸¨ÚïN&rõüƒ¾Ø¼¬ËÛò…bkŞúŠì)Kò›¸UŸ£	Âæp‚µ<ä	ÑŠÏ={$Øñ5Ï!-Æ(º``kV¹Æ€X0‹¦í4ìBY_¬¿ØCøLâTºZi>9îe¿”áè=¨PúÄTE9zæƒA¹° aªSĞXÑ‚\\îp–æ9,^Å|ufu…\'¡„ë:X;Ì°#6ñÖü\'äHwg>}ói8/Òº·²š„ïfˆåı=M”MT)tÆ¾ÜQ\n]nÚ‹ô\nÓéÔÒc°m,µ‚ø¼ş>ëHÇfi›O³XçûXöÖh¾-wU[	jñµEëcX—¸œœtƒB±à#]ã¯äüò$½N^¤\'?MûY>ğãSû¬‡üa!!Ñ–‡,»‡€x0{ø\r œ &Ÿå€¡ú“ÃÂß’*›Ø›oªq*‰¡êÃ¼BõĞs‘ş.ºù´œoÙ¡©õbî+QÎ€O<™œùÚh$3c^¦õ’¨¥yJ¥”•ôé!Âor8C}úÓ\n½ò}\"7ÄäôeÎ³<Ô¤Ë\' ×’èò\0TDvš†–hùM­ğºÊÌs,½ù£™a¥&bg·z%XÓZCabe´nÅB¡üŞÅÊVş„¼CŸKº&j€cˆbô–¨9ãt™&aT½“ı&»c¦´8§–•)úgB¬Ø¢¯né”h ¿üÊA1‡ü¼ÊSa%W©\\¥Ó$›/İï.Wi“\'TH`ZÑ£LGZÑ!or–Ê‰Cë*ëüç(¬’†~¹ùÏø¬,?«ş¬½ú\Z×$‰îÙÉúc©_¬¿?ûËzõ2H^§”mR¢¾_·Ê‘úü»2G*\r·¹¹{¦ÕJ‡1gµ\\[\rw`ÉFÏÿIFhD÷üùFnxğcımT’µZ¸§lÚIAÃ÷¤(hÆˆõ¦|¾¡º^•,W&ªïØnc\0ßœH¸>”—Ùß$!}¼XÿWÕæÅêÍo·M³oVï26Ç/VÏVÿ= kî`åÚ}×Ô))ª+\ZBs/TZãSÁ]ZòA(ITkX!ã”\"ÚÒrMÒ Ê«ÕõÌ\0?njW„&-éÑ.ŠÖîTw§ÉCyUÈƒ)²½Šp¯ãê –ÊĞ52Ââà¢{¯zuÏG¤y¬)p®0>àÚŒf×†E!5xaô²i(¢H9‰i-Óp»ÆI¤%Ò¸Ô¨Ü°å‚ÕU6pGÜ»‡D2£ƒ,\0òä\ro½4ƒÔWµ\"í%œHô«\"°ktn~pz\'	OØúHøiîó|UÌÎaˆe\r½D¨è¿à;.–ó‰®mê¯1ä¹ÅñN(z´‚ªÍMê«UÉIı€ÔéIı`TJ=ÇÒ§\'®5¹I\'Ù+5é=–\r\'U.€ğ‰¯ŠP\'ÅÂHíé‰ïzyÒsGÏá“ƒºbĞ¶ôW´xÕÑU¢ãÒâ†Xè¬?œ¸ó$ûO²ÒgÿœLs“h~U,io:İÑMzGÇ\'ÈdŠ>ú‹²¸§äsw?oò9;‡Cé³uzÜê7Ù‚j÷qJŒFLÑéyMq|¡j–Î‰Ÿ®qn^^¡µWEUOÖ¯|+äDÈ¾-MnéŸÿÀPH	ï[g9‡E7¹Ş5Ä¤º€^«GË#¸EpY9‡y.§6\\.N?@É|hBÍ£eÀ…]¼sD=ø]qf3šdóhYz‚­u˜\nÎåêôqwLû•Â5a½Ôi=—^,ÖÊs›íÓã$(;KwÙÌän°“Ug4«ıñÊ}ù•S}4C8—@Óm¥õ-§XlH\nË£õ:æ¨‚¶Ééi`2b.nEqç(¿äÑrÉ¢b\\bK×î»¦şªN\rsTFÜñ ıl5Öü‰§ <ZæóX;JêJ_Pğ5ˆ#(5?¥ï\rÕ×p¾·_h*É£]mVÊƒ¹²PzÈQ{E$»ãÑNìièOĞUåä¦8•›âÉEoÆC˜µñ+{]şGOiU\'€ô\\×MHO¿ºÔ[ÀŒ\"4lõÙéHufHoUÚ áÛAQuâq<ıĞì‹v¢À<Qm\0\'G3Ë±#ÇË]®­×f×\"ïÖ}İj«¾.³¢İ¢Éê€¹Ö§+4ÏáLä˜GÆÜ‘ÄæSÌ$œCÑn\n5iÇ[}\'n´kÛóºã­)Ò(DÂR_%áêCZv¤„Ş”ÙÌÎ¸¯×û¸ˆv1ûY|¹X?WˆÑƒR¶’\n÷Uõãš•*‰/Ó$/2©ùƒßgQD;+jZ*‡%a;˜rÉİÑ¤Ôú”!ÚuÆÑQíµ.1»‰Bn=[NĞg5>‹Ï•\\‹ï’+v®.èêePgÀ»$y@ÔW‘«ìƒF,J©\"RLÂQ®“<G)j‡è4Kq”’›Oy\ZÙ{‚œd;§sóxVîiî¹q¦\"ÚöK}Ò„æOÌ–¡o¸ÌÂv	ÕBšÈg\Z	±ì˜eŠ!-şá‰»ô÷¼(ÀæQ7‰O–­œ\'{ş²x‘`F«ÏŒCŞO©œP šËş£ı–%ØÖ*(Í—Iø\0Ÿ†°p¡zÊ-8é³§ç÷YÑ.¿ôÚæQ÷Y›héu\nÓr\\&ÓŸklÕİë+pÍÁ—à˜™TX\'~YTw­¹eãğ¼{ÌìÇ`Ñ´ìXPm4ŒÈRŒºïv‘!‡¡Ùî4L1à¤#uş§¸¥æx´ÅÙ|^¤VmÅ’\'q6Õ¼‚v¸,{,Å\0C<)N8>àßÍóµgggºÙÂHkûFıeš¹w™¯YŸ„-Rº\'ßftİFæş€·ƒÙaĞFĞ}q~è^IœZ´ékx@İ·#ç\0äAÉƒ\\^„[:ƒ\0’8T„ïG>ÿhv´»E×ây\09Åœ7mİÄó¤„úÃ4÷Ö{±çL«ÙbĞ~\Z‚-7ÃxÎ&¯Õy(sî¾èæšyx‹ùˆÏpqˆ~¶Kw^k¨¸¤~—±ƒ>ƒTº\nçÇy@§üY0”û|KÎåK’ìÃê¼ñŸ—°|PÀ<À<³$Xøà?§\\tö_X<ôfß†VÖ ó©cõáî\nÿy\Z–óåÅ Üˆìz“Hº4‡Ì,:–â‹Y…†3OÄ˜ü4±Ìv–pı%MêÇ%¼NÚ¬“‚ªıö4<OÀÄšHW|¢ÈEXAÊøw»E2Dö3¨$´«æûjÏrºAào °‰9„˜Ó0†6»\"Ú%GÙƒàÉ÷Šå¹b¶]cG,¹uğg¹iR>ò Ä‚#¿kÂ[¢ı-z–Ø`r‰°$Ì&°À’‚ ÏO¸ˆórŸQà,îóÓP&±4hosú2¿ª’’TáYQB³öt‘†ôu”åÅ)ÈÉUCÙê†Ê9t½zÕ¥9Nˆ7Á\'º%ë°z‚¢N–Â—+Ü\"ö#Ù`”®¤r¨7­GéPô¬Tú‹¡îÄ\Z†Şª˜\r¥“ê+»M1 7Q¨è÷e î˜uC—>ÊK“¾œ,@L¥(iT:‰å ÅÄ*†Ù¬tÔ|‡:\0Å¹¸†T`÷Ex,Œ¤UçĞ\nRª+Åè„øÃª†-Fİ*´\\~«†J¥ú;H¢ÚyÖ¹ópS`w%ôÎ+Ï_¸cWúJ¡~4\nJWµ+‡ÒGı^—Øp6µ|!Ê?–SÜZÔInKÀin\rà¹£·ÒWuÚñN~ÃD†RCÛa]ÉÌd¢î¬t*C=Š5L½		´ÕŞ„b°7®†yp¼\"¨Š`®”Ã\\¹¡Ÿ6W­ÚIWõĞÚî¿ğæ.kwa«í^I7©fµEªd1[]Ì)¼]¢ÃkKÕ.8 \'Í¿âjÊdÅ‚ş…£ˆ¢¾°ş4š	vÇÆµÅU§8,§!+aìÚ‘ëƒŞ}·åf_l^LB†&.Û’P·xÊ•F\0 ¾ğĞÛsºvÄàa^wœç‡¬Ógf|4±0z»$T^³ˆÖ¶­ö¤7Æàqf·K$Î6İ0$G}qÑ¥íˆ ÕÀ—O_Æš5Š”kŸ÷†O»¥ÉU¦ÙÎ¦¢Í†ÔôFZm#‹€şãèÃÅW/Rs<Á5ÏP5[“XaÚmi:F“<@›±UBeğ’É¦:›ì)ÑÎe\0ĞÀ\"éÁÈ[h®…ŸÖê;€Œ£ŸqØÀxÇ(—^†®¸kó¦ÀzË†â¸<‡(ñ‰~¤ZŸUïÏÎÌbØ±aìpxòÃ–³U³î›÷P [` ¦PÜ†	Ø‡«¦:Ã¯ûp¹€R`˜X¸éu\'´á-ÒUĞâ<p8…AiÂÂüæ`–aªA‚¼7¼õãyˆƒÁêò>-kú”şÂGŠEˆ©\n£Š°6Äi¡âANF5qú9o_Eãy\0*ØÅşŒ1†ê¸QĞ¸dx‘ÁÀ\n6á-£ñÁÌCG¹>†Ã[Ï1L9¥6^at#€t©\\«-È±ûpq‡{`à–ŞùúÊ¥u5\0¹Æõ\Z‚ğÈ7#årtoVŸwè50p£·õ‡	È j«½ß÷2:Õ&Çbïyk¸€,dÜ4xÑoáT#jºá.øĞÛWé:Ğ®ì|SßÖ7ØÏ‚Âèu\ZÒ8¯¾o>ì“ò-Ôú×Í£‡Ä9ƒ™Ğ@p8íê¼IîÓÖõUÂ¨­\"=ÓwÍÆ’‚¼ÌŠè+h³ù^¯~!ñ¾\\<Û;\Z¾IŞí‹İ¾`C¦Û»øOŒÒV×ÿùFÁùüİ®ü•1†fT>û.ùiÅa‡÷kàµ@Dé˜Û¼l\\ÎeQ¾püğ¥ƒô6M,5äëü‰?Òí.fÀòwÉMõÀ°;n?çô_ô_Ø÷ÏQH3ˆy\"D²Ÿ_Eä!#Û¼Ñ·g?‡ÛÇ¿ş?kFuæ\0','6.1.3-40302'),('201910272002472_cambioInscripcionEncuesta','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ÙrÜ8’ï±ÿPQ=*»{z¦Û!Í„[²g3²–ûxS@$$s›EÖ’,‡ûeû°Ÿ´¿°à#Á£J®ğƒUH$2	 3ñÿó¿ç{ÜÆ«Ï4Ë£4¹X??{¶^Ñ$HÃ(y¸Xï‹û?ş°şÛ_ÿıßÎ_…ÛÇÕ/m½ïÊz¬e’_¬?ÅîÅf“Ÿè–ägÛ(ÈÒ<½/Î‚t»!aºùöÙ³7ÏŸo(±f°V«óû¤ˆ¶´úÁ~^¦I@wÅÄ×iHã¼ùÎJn*¨«·dKó	èÅúMØÿÙÙÛ}Ót½zG„aqCãûõŠ$IZ‚áøâçœŞYš<ÜìØü²£¬Ş=‰sÚàş¢¯n;Œgß–ÃØô\r[PÁ>/Ò­#Àçß5tÙÈÍQwİÑQî£pñ¥uE½‹õË<Ê6·Y¯äî^\\ÆYYU&ïY	%$!ÍÏúæß¬ÄJßt|ÁØ§ü÷ÍêrûŒ^$t_d$şfõ~GÁ?é—éï4¹HöqÌcËğeeÂöé}–îhV|ù@ï›1DázµÛmä†]3®M=¶7Iñİ·ëÕ[Ö9¹‹iÇnŠ4£§	ÍHAÃ÷¤(hÆæòMH+r*½+}İ¤A”š:4y•${`³ëèŠ$é«Ï}O`4/8„~JÓ˜’ÄÊ=\r>kpWŒÚ™B0Ã{K>GÕ\\ICq¨h\\ÕÊ?E»Z;p|+U~¥Ûi,‰Xçö&İgCçcj¨ø‘Í-ìñÎ˜bch–c6a-Tqæjè0æ«¹â›×®Ç´©âX•é°«+@xoz­¦ÕußPw„“ÆCûJÒí]FÛşØŠË‡õêš<ş‹&Å§‹5û“1BôHÃöKƒÃÏIÄìÖ¨ÈöF½Á¦$È¢]P-÷5¢şCñ2(¥éã»ªTš÷Šæ!uWº¨¶ Œê\'ò\0$—åh:¾ë×¨Éú Êrh½º¢Zš¶,èiAµİv5{e\rVP46\\Ëu9¡øzİ@uÈ¶`£•:LZ|ñšíÈÆZ²EèÈªV2Ú´v[¯‘V¹L·ûÄe‰äšÖE´¯\'¸.¤œyfù®g£]:Êš&.ëâeF	OÃù×³ªáu\ZF÷Q€ b«*\r÷‘<ä rbµlf ç•’R¨hQµ†«ö,øÙ‡Ô>§`n…ÊœÖGê(º­è¥:4&«}R”³+J½xt>,$]ñ-\'Lû©Åª¹ÔqINı¥Y\\ŞP¬½`«\"˜ŠR‘BA¹¢½µÓoéœt­O‚<» Ë»¥ãh†­_AczŸ&ÓwĞx“lò~è–Dñ§\'¥yw•~fY’•0ö[şüdBœ¯ÒmDñ(‡,OÊ˜{Âh×I®´NvÅª…Ô´¡ï€ÅGR]®\\ìŞJ,´(vµ ›B\rzm\r¿Óó~.‡œœ·­Ok%Ú×É²h†•¥<7š¼—]”O?¶LO®4|Ÿ2ñıîF_³ì·¦µhÎò+@8É0Î‘SØ»ÖóÜø˜ßªåi^ç×Ó>æØö19}œdõöeôù´1Cpic…—iRÀ÷2¾ÚY½e{ªmÄÀic¶üşpªËstïtÄGû*ò	a[¢l{¤b×\r™~k[·µR‚×TÛY‡U±i¶°5l`û* (²mí%|€UÔ6>Fh_\'ÃèdÑÒû%–¯%v¸İ•ğÀımÓş$ìó\n»ımİpÇİ“Çîa¨ñy=v+¡>gÛÑ\\ˆƒı.½’h;òè\rçñÜ>ê©<4d›òÛGÆ±ûö\' µĞ_îÓŞùÉ9GWX½Ia\ZÁ1¡Îä½Ôz£5îamp­öô©®6x•T ¢œ\'t[\rö¨®K1üø*ƒp¼2Ælyú€ë‡½ÅğÿGš‘ó|âûê+ÂX·åZ„»Jƒpå„Âs5n©BdµTqØªŒíZ¯÷©·p¦·ô¢7:°\ZY–¯¥`Øbr5üEêÅqÈ‰HÙòdG£}ÍdG–Ò\r¢my?ı>c51û?¬W7)Çh2|¬¹¦Q5ƒø¦i{â´¯9‚ÊBòåİı¯”şŞõTE&õ_M¥OlVy2ÌËûyîÃÁ, \0\\û“hú\Zg¿>BÂ…\'~+vó*	ö”²BNq“ÈÙ²”\"ñéd¿\'ˆµ^–Ü\n’ß#(—)†¯RÁÕìÅ“*ğP•¬\nJ¡–p#äU(:H\'–\rOÊík	[rà©[’¥˜íyç­¸Ó\'õŞõ¢SèîçaŒéGH™\r:àÄ]1j`˜\nlŠ%åW}U”Wäª…É÷UÇ ^¾~ß8ü>ªo~ÒKë¿éî¤ìÏcâÒqŒ;‘©ÛøhJ>²ÒÉóù¨4Qf\"áÃÕ0äÅ%):W.÷R¹×„Ñ3ØÇÃ.»Ö\'AÁ8‰ü­¥Ï$N³l·_ÊäG˜Cí!ÜCº3îoÃã3$\'&Öô5J¶MNÛx³r½AöäáÄïÄ_·lûqkÄ†·\\í~U@+)ë^s¼”rÊy	XÁˆêç&ªÉƒÇ.‚pÒh_™@gi®!•^á4‰|½¸\Z´Æq	+èc‘^Í›s±“ú!§Í¼¬\0ÇÍ@±¢ :ãé)º¢¤ÔR=zc¨\'\Z¤YH˜ì\r´Yx\0\'õ„‹nTìã’–Î¨*«Gä\'ëÇ>à™-{%ôÍOü‰öuŠğ9EøĞSè3*s†>Ÿ\"E\ZkCT»5\0ŒSUJÕ`UµŠ—İõs¾w\\Ğš§5ÒyÖ°};uS¯,1ù<ıh¢-y Ó‹Y:½®Ÿg‰œM½º”²=Ç‰\0r–1äÀNuî·œâäüXßä¯còĞ¿ì…«Ò›/yA·½ì7«mÎö-qt×«Ï?ÙªÏ»¿ü…||ÿçç?~÷\'úì‡K\n†4‹¿0Šó£éqM·w4kw4û$$LŸıBâ=ûùL¡Pû:j?××ş¸§9_]\Z¡ú¯4LÄßàÚgBı?éë¿Î\"¾ö÷úÚ7„Ñ¯ÿg•Kj~à?¾ÌË£jÒ8PzJ±ÛWI¸²ÈUÙ{PsŒÍX$Ú1¦`üz±şƒ2$=ìÎ‡óÎî“ˆ°ÕÉfë1ÍÊ‘Ä—ÌÆa,\Z%…ºxGIíHlFCjj¹ò—3Ñu\"—\\ÑMÊEÛL`»Ş9ò¨ht½I¦‰‰Pçml¹©O¾bq ËhÜäÎîaWIêµP½µœÍØ)Vôhã–o~ÔbşÃ‰åHBdV)’Èk×w·^D‚ÔlõØ\\kR×»p¸&À?â«8c‰”â\nÃËwÕ£×ØOöƒFrdq û´I“ŒÀ’Ó®ã&‹È‰œ{L?¹Z{e Ã,j§ (ÌÆ3GjŸÈ‰áô3¬µKrÍ|öˆ˜mN•Æ8Î…í‰Ù¤ãíôI)ÔÔ4¾/5Èb°ëáª.1Ñ46­›9L[Ñí9­#Õ\"Ü¿¯‰±á±MnÕÓŸØ3šş¡NKN‰Í´¸ÌÀcZjÛõ¿,sYr•™Üùè h1Î9z–áÓ=¦ÌıdbgggêkAC›Ñ:üp´c+4}”\ršH.)!l©€<W<XãûÈ>ŞùD\'Š¥”5tZ\\Èºl_6\\ ¦ş\ZQĞ””ağ.ÇÏXÂdyÀpÔ¥|è1âí×)]¦2wÙ$U8\n3ˆNÜ##.›_(\"½Ÿ×:Ç[€ vÓz4“¨=ÏÀ*ñ,ODkB,Ç¼2ĞÎ%˜À“?Àä/VŠjL^°˜‹c\0¢Úu-fîQ3èØ,RàÅ¨‹’±a:œ`I˜yEk×wC–%í:>á¨Áğ³°ï†R–Ú\\©»ñ°˜o‡\0ÖÒ¤é‰³$q9a\r“\r%ˆ‡€¬²ò)ó”f1ŠÅ|,¤ÖáXyIÃXÜÛè#´Å„§Ë+)#2³1­Êz™GyQ&æ ·¡ÕÉÖ\0â¶¾®«¡=¸Äm&|f`6ÑíPˆµ4¿Ù(7¸ú$¼¶°NÓc2/=m¦ßÊ\'á¨E6€XÿórĞ‘mÿäŒhØä¢éÑ¸£Ä6óŸ=Ë`IÕfö7BĞ˜q²ÚôÌgÎ[„uğJØt[dSê\'^I5fÏVæ\\LP?1—™ØÌHx;8RÇéW:C2¬I8m‘…O‹ÄÜudK ”N	›omn¥~¶Åthöì¤KË4×Õ®‡xIC`KC|É=øÊjªQÕ4\n#-¢”pææ¢#SG@l–u=¸YæK9à©@æ@1™“pÛ«ÏğªÊ,P…vE	WÒ8mÒ©\0é~Îi“A o’#È,QB½¡E›ÜŠ;xÕå2\0NÖáˆ‡®*(í™\n¹\n0Ñq×\0«(yUx	‹şHE;!R)ÓÇY©TÁb°ÔQˆ¢©G,7@k²8*P@M©´îCU\0X$\"8ÎÏ\râ…¬ÎÆr–¼Ö>)«ò!Rš÷o¥*\0:—Eˆˆ÷ÑP h\\RHe*æmNíId3-AñKE•EÚÓ#•ªm‰—ÀYî\\q(íf‡õ›ó×Éq@¢qg‚\"¤ Ta	Å&aæ,U¢¹Bœ.G”¤Kü%AàV®”ÅdÅÕ”(8,Ø/ºt\'İ8­¬ĞvùM8`!ªœ7âÀˆÒ¼j‰‚ÄÅ\"ãP£c=ˆ¢†ÅrÀ\n`İô!G—ÙNGĞrF°—MgBÈ–2OírëN5Õ@C>\naxF\nıd\Z€\0¤ :cÌbˆR\r}8¥{ì	)8fò»VmÊUL˜kÕ¥íğgS“R\\>N\0õ(Õô!À*QˆVÇnV…B=ŸAÏ¨şĞˆwhY°ŠUº)>ŞRÙEè…ígÜ©Gl¤²í†¤îæeŞàcÍ=İ2b&5UÌä f:,E\0>Œ\'\Zl\n·D(¸–Ôb=*)¤s(=E41¸èxà(ÜáôÃnmeÑ“Zıá†Pp):&%ˆt8y”QT½7Q \'ÁU’˜BJ…Qh‚J¹1DÚ€$«(R#qĞƒ|W¥)`ÄEr˜r\'YšQÑS(õy_dÌhÔŸŠ5÷7lüP´Ÿy\nBcHêå\0¸7EW¼8õ”ñÔdÿW”¼û/®&Q\'aH³A.ÂƒT$äls 2œ\Zü2J,°\ZZ4ˆ@,‘l ¥ñØ£nÇ&æP™lõy\rŞ\0èeè!ŒËêÁ\r‹ Wv g0ĞĞ=­ìË¦àE§eø	]£ô.öØ ĞÊ“¯OÊóØ*´şââ˜Ç8\nßìiÁÌp¶¤yV%ˆ¥´0&³47:åBRC,³ã3x’¡BdáÂ«*N>dš\\°À;Uâ=Q…Qè|Q¹1´×Ï\ZzèÜN§ØBïƒ\Z¨aâ;¥-&gèÅ.à ßà(ÅãNü\0Ğ[~°pûNç²Ö•on‚OtKšçV% »bOâÊŸ-o®ÉnÇæ+ï[6_V7;”ëÇoÖ«ÇmœäëOE±{±ÙäèülYš§÷ÅYn7ÌØ|ûìÙ›çÏ7Û\ZÆ&Î§d»®§\"ÍÈ•JY×Ó×Q–W¤ w¤|¼ç2Ü*ÕD=Äã¢íKñÁSç®uÅh›”7r\'¾µö…Ò“ñ5Y9­Õ )7çºÆ¬yù|;É€gÒ.Óx¿MpßL]ëF³‹ u¯ƒÃ¹â‰°4Qœ:xÒ±Ó{ŒÃmŸäÁµßì¡TOoñn™<8¥P…{¾‘8Af¸Âq’øË<lÅá¦š5“kOä-øÜĞ~\ZVoßøã!´ßì¡Ï$ó „‚%–wQá2ĞJ °Ä´8¬J&®hR@VšïĞşAò’¼æ»#´ú=XıynõÊ*%„ÕÖ šI·;^L)	®:é•…JÒ7ÿš4R@JJ„D\Z\Z÷ÙE‡>ä\"©´I÷q˜#.áı[œŠä÷EËh’ª³b£û(Àp‹F¢KO,Aş¨6·_°Õ!ˆíRjµ3|t*ÄF¡âmaZĞµsGã8’õKÿÕRAczŸ&¤ş«ƒF¦ñ}•ôqûÑAsÖ¯Š³şäªÑ«3U›ƒAyšËøaŞ2üìCË%mñ‡¶px§UbºÍ¨ÆyÚ~#Š±Ù„âm§QPw$Ëd¾l¿¹˜gqLeÓ¬údcåõ\'ÑU$Öiiø>eF›¤¸Ï.ğNÖÍ§ƒavñ0×Ç8Ò²1“ôíae^hŠ°Ëë©¹\0XL	Òî¦âd$\r3’rú(¨şâºÉ½Œ>+¸ğ\'³\rƒ×GÀ‹àğ7zqh•õ–ÙOÛH²RøtŒK·ƒ–…Ô¶&\0ÑZs_\"0,”7Şô¤¿Wg4„²ÿz0Ü¯¼s²*0–6%ÚúÄ`©#8ï{ÖÁ¬§›UùùàêaÑÑ±ï}ƒı.½’h+ã¿;B#0´æ»=´‡ŒûH…ş«=¤mªLfóÉå\0…ÉIHÚÇÉÄƒ¡è	İoW8±S0šÚ—·l0Ö÷¡VùZïıZ“Ğèb{c\n(´±”áv‡¼\"¹h›…æSòk=£m‚4÷9E[N3«¾~1!ùòîşWJ— ôŸía}bC>÷Ù\r î¹ÏÃo‘6´Öšå4ºl§m=\rëéV7Çí¡,dÓ.×ufï©\"rÙÁI5î!\"U¢HwÙ€›=•UVs$ıÑzİ~vPÔ†5¼L‹Ã¬%2½“oMùïË‰)ãPTÛïNïê®\n}zÙc3ïÓ™(ÛC³¯è”f©ë&\ZÖgÃƒ°Ùò`-y‚G¼àSn4,-Æ(ºckV¹Æ€X0‹¦í4ìBÙ\n­¿ØCøLâTº°i>9®e¿”A	èíªPúÄ®/åë1˜åÂ‚„©öVcÅ rÉEXšG¶pxóÕùÚ„Ò¸ë`í0;ÂBŒØDq{ğŸyİùôÍ§á¼LH/ÜõjÒÈ›!–^4QQ¥ĞSøÊH)t¹¿,Ò+Ì¦SKáÄd)	â_ğ‘#\r9Ò6ŸFXçûXöi¾-w\\)jñ\rEëxX—¸LœtƒB±à#]ã¯dÿò$}›N¾©\'ïOûY>ğíSûX‡’üa¡!Ñ–‡¬»ç…x0{øe!œ &Ÿå0¤ú“ƒàoÉ•Ø›o¦q*©¡êÃ¼JõĞ…¹H—	İ|ZÎcíĞÌz1£–¨gÀ‡£ÌaÓ|m4>\Zˆ\\/“…IÔÒ¼2¥RÊJûôáç<9†¡‡>(j…^ùê‘brR4çYÒe)ë)	tYE\0*¢ÏEÍFCK´ü¦Vx³eæ9–^ÒÌ°RÜ³“^	–ç´ÖĞF˜X­£“Xèyƒ7½XÙÊKÒwè#,Ce¢8†*FŸuˆš3N—iFÕëÛoò·û8fF‰sj9àQ™¢|ÄŠ-úê–®úËO¬sÈ¶<öP2 ÊU:K²ùÒıî2 6ÙG…´¨=Ê$§ò&ªœ´®²^±ÁÂ*é—›ÿŒÏÊò³êÏÚ+ ¯qM’èí¬?–ùÅúû³¿¬W/ãˆäu¢Ú&Ñêùq«Ì«Ï¿+3¯Òp»‘›»ço-¡äyÙ[KÙj¸KazşOª0BË º‡åÏ7rÃs€ëWr£’¬•àş²i\'\rß“¢ #Ö›òQx†êzU²\\™ş¾c»|³#áúPŞ{“„ôñbı_U›«7¿İ6Í¾Y½ËØ¿X=[ı÷€®¹•k÷]SO¤T«®hÍ½PiŸjîÒr—ïBIÍZÃ\n§Ñ––2Iƒ(¯¤ë™:¿İÔJ„&ÙéÑ\nE{îTw§ÉCyUÈƒ)²½Šp¯ãê De¨ŒŒ \\¢sïuC¯îù87™B\07Aã®ÑláÚğ¡¨¤F¯›†‚ Š–³Ğ˜Ö:\r?×8©´±T\Z—p•¶³^²¬ºê®ñˆk÷HÇèÇ €ì{ÃÁ[‹¦r õUI¤½ƒÓ“~UÄVÎMÂNï$á©[	?0Í}¯‰Ùù#Q£¬¡—\nı|‡Â¥ÕrŞÑµMı-Æ“>·Ø>ÂiJVQµO}£*å©:é©Œ*ï©çXú¤§Ãí£&ãé$k¥&ièÑ²á¤Æ>ñUêdX¸\0©ı/=á]/OvÎáØ9|ÊQWÚ–ş†ï¢:ºIt\\VÜ:kÅ§=éş“îG€ô9E\'³ÜÀÔœ_KÚ\nîè&½£ãÓn:Š>ú‹²¸§ä3‚ßoò™@‡Cés€zÜê7Ù‚j÷qJŒFLüéyMq|¡jîÏ‰Ÿ®qn^Ş µ7EUOÖ¯|)ôDÈ¾-Ü8Ò?ÿ¡Ş·Î8r‹nz½kˆiu&\0½V–\rFp‹àr}Wò\\’O?l¸Ÿ~€’ùĞ4GË€»x-æˆzğ«âTæ€œbt|O*5_çÑJÇ«ô0kKûéã9ØªöBÇ5Aôê¡KËµŞ&õØÔEÀ^ÌîĞ¼læ@r·³´ÓÑhDö;(æWNõÑÎÔ¹\\œn’Ö·œBØl˜G;ëujÍQm“jÓó¬JH®¹øŒ;@©*–K5ãrdºvß5õ7uêÄš£2âéwìcÍŸx6Ë£eN1%æpµ£dÁôß¨8‚RS]ú^v}\rGöò€f¥<Zyh\\Ìı*ĞÒCÚ;;\"‰\"vbÌB‚^/\'Ç©<OŞ~3nBÀ_¹ÚëRIzj«:—¤§\\7¹$=]ôRo3ŠÒ<0é³³‘ê$“Ş¦´ÁÂ·ƒ¢ÚÄã8\r¢‰íT!£Ú\0Î³fÖbG÷Ä\\[¯Å®EŞ­ûºÕ$§úº$vˆæ½æZŸùĞ<‡3‘`sGş›O1“p:F»)ÔdTOşúNÜh×¶;f¹ãr¶)Ú(D\"\\_%áêCZv¤Dñ”‰ÑÎ¸¯×û¸ˆv1ûY|¹X?WˆÑƒR–’\n÷Uõãš•&‰/Ó$/2©©ˆßgQD;+jZ\Z‡%a;˜rÉİÑ¤´ú”!ÚuÆÑQíµ.1»‰Bš>[NĞ\'H>‹Ï•´ï’+¶¯.èêeP\'Ó»$y@Ôg›«D†F,J­\"RLÂQ®“<GÙn‡Ø4Kq”è’›Oy\ZÙ{‚œd;§sóNxVîiî¹q¦‚ãöK}ÒDùOÌ–¡ÏÁÌÂv¹ÙB›È{\Z	±ì˜uŠ!Ãşá©»Lú¼*ÀæQ7‰O–­œ\'{ş²xÜ`F«÷ŒŞO©œ› šËş£ı’%œ­UPš/“ğf?\r`éBõ”[pÒgİNÏ;ï³n£]&~é-´Íû\"î³6Ñ:ÒÔ)L·Éq™L®±5t¹,À5»=^‚cf2aøeQÛµæ–¶Ãó®1³oƒ]TÓ²[`Á´-ĞÔ2\"3Hé6:Vè¾;œ‹ÙÈàp§aŠ;¨‹ğ‡ğÒÅ-50ÇÀ­-ÎàK%µi+–<‰½©æY´ÃeÙc)¾\0âIqÂñ±\0ÿŸ÷¬=;;ÓÍ¾FZŸoÔ_¦™{—¹ğšuğ¥BøDJ÷zÜÌ“®{iÀÜğr0#Zš¡/Îİƒ‹S«6¨ûvä€¼MyÊ€Ë‹pKgĞ@‡\n’ğıÈçM´ƒv·¨ü—!·ÌyÑÖM<HZA¨?Lsa½{Î´š-í§!Ør3Œ§ò’ÎC™sw¡›kæâ-®äs >ÀMÄ!jøÙ.Üy­¡â’ö]Æ6úRé*<çíòguÀt2î{ò-9ÿ–/I:Vçÿ|¸€åƒ:\0à	x\0\'Á3k‚…7şsê…A{ÿ…ÕCÿşömhu\Z4p>u,¢¾^Áã?OãÀ2`¾¼„‘]oI—æ™UÇR|1«Òpæ‰Ò“ï&–â€ÙöÎ³¿äV¢Iı¸„×I›uR8„j¿=\rÏ0±&ÒŸ(rV2şİn‘‘ı*	íª9ä¾Ú3ƒœnø¨lFb$!æ4Œ¡Í®ˆvÉQö 8dòµby®˜mÕÆK.|ÆYnš„”<(±àÈïšğÄ–h‹î%6˜\\#,É³é‚,°¤\"èó.â¼ÜgG8‹ûü4ŒI,\r$ÚÛœ¾Ì¯ª¤$UxV”Ğ¬İ]¤!}eyqE\nrGrõˆ¡luCeº^½êÒœ\0;Ä›àİ’‹uX=AQ\'KáËnû‘Î`”®¤r¨7í1Ò¡èY©ô\'Cİ‰5½U1J\'ÕWvšbAD¡¢ß—¸c§ê¼ôQ^êœôeà|`b*uDM£ÒI,)&V1tØèf¥£æ;Ô¨ÎÀ}4¤»/‚Àca” ­:‡VR])F\'ÄVe0LuRh)~«†J¥ú;H¢ÚyÖ¹ópS`w%ôÎ+Ï_¸cWúJ¡~4\nJWµ+‡ÒGı^—Øp6µ|!Ê?–SÜ©“Ü–€ÓÜ\ZÀs[o¥®êİµãü†©¥†¶Ãº’™ÉDÛYéT,†zk˜zh«½	Å`o\\\róàxCPUÁ\\!¨‡¹rC?m®Zµ“®ê¡+´]áÅ],Ö®ÂVË½’n2\'Ìf‹TÉb¶º˜Sx¹D‡×–ª]p+@N.šÅÕ”ÉŠı[Å|aıi,ìk‹›NqXNCVÂØµ#×½ûnËÍ¾Ø¼*˜„M\\¶% (nq—+\0@|á¡·ûtíˆÁÍ¼n;ÏYg!ÏÌøhb)`ôvI¨¼fQ­m[íNoŒÁãÌn—<Iœ=l$ºa,Húâ¢KÛAª#.ï¾*Œ5	j”sP®¼ß:<í’&W™f9›zˆ6KRÓiµ¬ú£—^¤æxŠk¡j–&±Â´ËÒtŒ&y€c«„Êà¥#›nèxl²§F@8—@‹¤#/Iàñp­ü´§¾xÁ8ú‡\rŒwìòqéø`ÑèõaèŠ«6X/ÙP—ç%>ÑTë³ê=àÙ™Y;6ŒOaØÒÁlÕ¬ûæ=T È¨)w„açÃUSİÁ¯ûp¹€R`˜X¸é¹Úğ\'ÒUğÄyàp\n!ƒÒ„…ùÍÁ,ÃTƒ\r<\nxoxÛÇó0(ƒ+Ôå}¼³¬éWR.ø)!¦\ZŒ*ÂÚ§y†Š9ÍÄéçx¾uç¨`û3Æ@ªãF@ã’áE+Ø„·ŒÆ3Uäúo=>Ç0å``”Úx…Ñ¤KåÚlAnŒİ‡‹;Ü·ôÎĞW.­«è¼È5®×„ß@¾(—[¸ {³ú¼C‡Ü¨½­GØL@~\0U[íı¾çÑ©69{Ïó\\Ãüc¡ÃMƒíø\'œŠcDM7Üåzû*]ç\0Ú•oêÛúæûY°]ø½NC\ZçÕ×óÍ‡}R¾…Zÿº¢yôĞƒ8g0\Z§]7É}Úº¾JµU¤gú®ÙØBR—Yİ“ `ÅÍs6ßëÕ/$Ş—Â³½£á›äİ¾Øí6dº½‹¿ğÄ(ıguıŸoœÏßíÊ_ùC`hFåó±ï’ŸöQvx¿^D@”¹ÍËÆå\\åÇ_:HoÓÄPC¾ÎŸø#İîb,—ÜT»ãösNÿEHğ…}ÿ…4Ã˜\'B$ûùUD2²Í}{ö“ñp¸}üëÿ:}[ç\0','6.1.3-40302');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `asistencia` */

insert  into `asistencia`(`id`,`idSocio`,`idEncargado`,`idDetalleEvento`,`estado`,`fechaAsistencia`) values (1,1,1,1,0,'2019-10-18 02:48:12'),(2,2,1,1,0,'2019-10-18 02:48:12'),(3,10,1,1,0,'2019-10-18 02:48:12'),(4,1,1,2,0,'2019-10-18 02:48:17'),(5,3,1,2,0,'2019-10-18 02:48:17'),(6,10,1,2,0,'2019-10-18 02:48:17'),(7,4,1,9,0,'2019-10-27 14:18:30'),(8,1,1,9,0,'2019-10-27 14:18:30'),(9,11,1,9,0,'2019-10-27 14:18:30'),(10,4,1,10,0,'2019-10-27 14:18:35'),(11,1,1,10,0,'2019-10-27 14:18:35'),(12,11,1,10,0,'2019-10-27 14:18:35'),(13,3,1,3,0,'2019-10-27 20:47:04'),(14,1,1,3,0,'2019-10-27 20:47:04'),(15,10,1,3,0,'2019-10-27 20:47:04'),(16,2,1,3,0,'2019-10-27 20:47:04'),(17,3,1,4,0,'2019-10-27 20:47:16'),(18,1,1,4,0,'2019-10-27 20:47:16'),(19,10,1,4,0,'2019-10-27 20:47:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contacto` */

insert  into `contacto`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`relacion`) values (1,'juan','jose','3432324324','242143134','juan@juan.com','Hermano/a'),(2,'Javier','Jimenez','3543604130','','','Hijo/a'),(3,'Agua Sacha','JIMENEZ','03543604130','','','Madre'),(4,'Agua Sacha','JIMENEZ','03543604130','','','Madre');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cuotas` */

insert  into `cuotas`(`id`,`nombre`,`monto`,`Evento_id`) values (2,'Cuota 1',400.00,1),(3,'Cuota 2',400.00,1),(4,'Cuota 3',400.00,1),(5,'Cuota 1',325.00,2),(6,'Cuota 2',325.00,2),(7,'Cuota 3',325.00,2),(8,'Cuota 4',325.00,2),(9,'Cuota 1',600.00,3),(10,'Cuota 2',600.00,3),(11,'Cuota 3',600.00,3),(12,'Cuota 1',500.00,5),(13,'Cuota 2',500.00,5),(14,'Cuota 3',500.00,5),(15,'Cuota 1',1000.00,6),(16,'Cuota 2',1000.00,6),(17,'Cuota 1',500.00,8),(18,'Cuota 2',500.00,8),(19,'Cuota 3',500.00,8);

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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `detalleevento` */

insert  into `detalleevento`(`id`,`nombre`,`descripcion`,`idEncargado`,`idEvento`,`idEspacio`,`fechaDesde`,`fechaHasta`,`fechaBaja`,`estado`,`dia`,`asistencia`) values (1,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-14 10:00:00','2019-10-14 12:00:00',NULL,'Nuevo','Lunes',1),(2,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-16 12:00:00','2019-10-16 14:00:00',NULL,'Nuevo','Miercoles',1),(3,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-21 10:00:00','2019-10-21 12:00:00',NULL,'Nuevo','Lunes',1),(4,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-23 12:00:00','2019-10-23 14:00:00',NULL,'Nuevo','Miercoles',1),(5,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-28 10:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(6,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-30 12:00:00','2019-10-30 14:00:00',NULL,'Nuevo','Miercoles',0),(7,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-11-04 10:00:00','2019-11-04 12:00:00',NULL,'Nuevo','Lunes',0),(8,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-11-06 12:00:00','2019-11-06 14:00:00',NULL,'Nuevo','Miercoles',0),(9,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-17 14:00:00','2019-10-17 16:00:00',NULL,'Nuevo','Jueves',1),(10,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-21 14:00:00','2019-10-21 16:00:00',NULL,'Nuevo','Lunes',1),(11,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-24 14:00:00','2019-10-24 16:00:00',NULL,'Nuevo','Jueves',0),(12,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-28 14:00:00','2019-10-28 16:00:00',NULL,'Nuevo','Lunes',0),(13,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-22 16:00:00','2019-10-22 18:00:00',NULL,'Nuevo','Martes',0),(14,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-25 16:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',0),(15,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-29 16:00:00','2019-10-29 18:00:00',NULL,'Nuevo','Martes',0),(16,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-01 16:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',0),(17,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-05 16:00:00','2019-11-05 18:00:00',NULL,'Nuevo','Martes',0),(18,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-08 16:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',0),(19,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-12 16:00:00','2019-11-12 18:00:00',NULL,'Nuevo','Martes',0),(20,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-15 16:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',0),(21,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-19 16:00:00','2019-11-19 18:00:00',NULL,'Nuevo','Martes',0),(22,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-22 16:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(23,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-26 16:00:00','2019-11-26 18:00:00',NULL,'Nuevo','Martes',0),(24,'CampaÃ±a VacunaciÃ³n ','CampaÃ±a para vacunar a menores de edad',3,4,1,'2019-10-21 20:00:00','2019-10-21 22:00:00',NULL,'Nuevo','Lunes',0),(25,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-01 19:00:00','2019-11-01 20:00:00',NULL,'Nuevo','Viernes',0),(26,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-04 19:00:00','2019-11-04 21:00:00',NULL,'Nuevo','Lunes',0),(27,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-08 19:00:00','2019-11-08 20:00:00',NULL,'Nuevo','Viernes',0),(28,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-11 19:00:00','2019-11-11 21:00:00',NULL,'Nuevo','Lunes',0),(29,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-15 19:00:00','2019-11-15 20:00:00',NULL,'Nuevo','Viernes',0),(30,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-18 19:00:00','2019-11-18 21:00:00',NULL,'Nuevo','Lunes',0),(31,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-22 19:00:00','2019-11-22 20:00:00',NULL,'Nuevo','Viernes',0),(32,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-25 19:00:00','2019-11-25 21:00:00',NULL,'Nuevo','Lunes',0),(33,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-29 19:00:00','2019-11-29 20:00:00',NULL,'Nuevo','Viernes',0),(34,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-02 19:00:00','2019-12-02 21:00:00',NULL,'Nuevo','Lunes',0),(35,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-06 19:00:00','2019-12-06 20:00:00',NULL,'Nuevo','Viernes',0),(36,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(37,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-13 19:00:00','2019-12-13 20:00:00',NULL,'Nuevo','Viernes',0),(38,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(39,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-06 15:00:00','2019-11-06 17:00:00',NULL,'Nuevo','Miercoles',0),(40,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-12 14:00:00','2019-11-12 16:00:00',NULL,'Nuevo','Martes',0),(41,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-13 15:00:00','2019-11-13 17:00:00',NULL,'Nuevo','Miercoles',0),(42,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-19 14:00:00','2019-11-19 16:00:00',NULL,'Nuevo','Martes',0),(43,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-20 15:00:00','2019-11-20 17:00:00',NULL,'Nuevo','Miercoles',0),(44,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-26 14:00:00','2019-11-26 16:00:00',NULL,'Nuevo','Martes',0),(45,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-27 15:00:00','2019-11-27 17:00:00',NULL,'Nuevo','Miercoles',0),(46,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-03 14:00:00','2019-12-03 16:00:00',NULL,'Nuevo','Martes',0),(47,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-04 15:00:00','2019-12-04 17:00:00',NULL,'Nuevo','Miercoles',0),(48,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-10 14:00:00','2019-12-10 16:00:00',NULL,'Nuevo','Martes',0),(49,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-11 15:00:00','2019-12-11 17:00:00',NULL,'Nuevo','Miercoles',0),(50,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-17 14:00:00','2019-12-17 16:00:00',NULL,'Nuevo','Martes',0),(51,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-18 15:00:00','2019-12-18 17:00:00',NULL,'Nuevo','Miercoles',0),(52,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,7,3,'2019-10-28 09:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(53,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-04 14:00:00','2019-11-04 16:00:00',NULL,'Nuevo','Lunes',0),(54,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-06 16:00:00','2019-11-06 18:00:00',NULL,'Nuevo','Miercoles',0),(55,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-11 14:00:00','2019-11-11 16:00:00',NULL,'Nuevo','Lunes',0),(56,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-13 16:00:00','2019-11-13 18:00:00',NULL,'Nuevo','Miercoles',0),(57,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-18 14:00:00','2019-11-18 16:00:00',NULL,'Nuevo','Lunes',0),(58,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-20 16:00:00','2019-11-20 18:00:00',NULL,'Nuevo','Miercoles',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `domicilio` */

insert  into `domicilio`(`id`,`barrio`,`calle`,`piso`,`nro`,`codPostal`,`depto`) values (1,'Alta Cordoba','Juan del campillo','1','50',5000,'A'),(2,'Los Paraisos','bernis','akakka','3567',5008,'1111ssss'),(3,'Alta Cordoba','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- CÃ³rdoba, capital (domicilio de contacto)','1','8744',5018,'Cordoba'),(4,'Alta Cordoba','Agua Sacha','1','500',5000,'A'),(5,'Alta Cordoba','Agua Sacha','1','500',5000,'A');

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

insert  into `espaciocomun`(`id`,`nombre`,`descripcion`,`capacidad`,`idTipoEspacio`,`estado`,`fechaCreacion`,`fechaBaja`,`fechaModificacion`) values (1,'Aula 205','Aula con buen espacio y equipamiento.',20,1,0,'2019-10-06 15:41:24',NULL,NULL),(2,'Aula 207','Aula Mayormente equipada para las expresiones artÃ­sticas',15,1,0,'2019-10-18 02:22:32',NULL,NULL),(3,'SUM','Espacio al aire libre',200,4,0,'2019-10-18 02:23:09',NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `evento` */

insert  into `evento`(`id`,`nombre`,`descripcion`,`idTipoEvento`,`idEspacio`,`idEncargado`,`cupoMinimo`,`cupoMaximo`,`gratuito`,`monto`,`cantidadCuota`,`fechaDesde`,`fechaHasta`,`fechaDesdeInscripcion`,`fechaHastaInscripcion`,`estado`,`fechaCreacion`,`fechaBaja`) values (1,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',2,1,1,5,20,0,1200,3,'2019-10-11 00:00:00','2019-11-07 00:00:00','2019-10-06 00:00:00','2019-10-10 00:00:00','Progreso','2019-10-06 15:45:22',NULL),(2,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',2,1,1,5,20,0,1300,4,'2019-10-15 00:00:00','2019-10-30 00:00:00','2019-10-13 00:00:00','2019-10-18 00:00:00','Finalizado','2019-10-13 23:53:46',NULL),(3,'Curso Office Word','Se dictara un curso para aprender a usar el Word',1,1,3,5,20,0,1800,3,'2019-10-22 00:00:00','2019-11-28 00:00:00','2019-10-16 00:00:00','2019-10-23 00:00:00','Progreso','2019-10-16 23:48:49',NULL),(4,'CampaÃ±a VacunaciÃ³n ','CampaÃ±a para vacunar a menores de edad',4,1,3,5,20,1,0,0,'2019-10-21 00:00:00','2019-10-21 00:00:00','2019-10-18 00:00:00','2019-10-20 00:00:00','Finalizado','2019-10-18 01:56:56',NULL),(5,'Baile de salsa','Aprender a bailar salsa.',6,2,1,5,15,0,1500,3,'2019-10-30 00:00:00','2019-12-18 00:00:00','2019-10-28 00:00:00','2019-11-05 00:00:00','Progreso','2019-10-27 16:26:33',NULL),(6,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',2,2,1,4,14,0,2000,2,'2019-11-06 00:00:00','2019-12-23 00:00:00','2019-10-27 00:00:00','2019-11-05 00:00:00','Nuevo','2019-10-27 16:35:47',NULL),(7,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,3,3,5,25,1,0,0,'2019-10-28 00:00:00','2019-10-28 00:00:00','2019-10-27 00:00:00','2019-10-28 00:00:00','Finalizado','2019-10-27 18:01:03',NULL),(8,'Taller de prueba','Es un taller de prueba',2,2,1,5,15,0,1500,3,'2019-10-31 00:00:00','2019-11-20 00:00:00','2019-10-28 00:00:00','2019-10-31 00:00:00','Nuevo','2019-10-28 19:32:47',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `horarios` */

insert  into `horarios`(`id`,`dia`,`dayOfWeek`,`horaDesde`,`horaHasta`,`Evento_id`) values (1,'Lunes',1,'10:00','12:00',1),(2,'Miercoles',3,'12:00','14:00',1),(3,'Lunes',1,'14:00','16:00',2),(4,'Jueves',4,'14:00','16:00',2),(5,'Viernes',5,'16:00','18:00',3),(6,'Martes',2,'16:00','18:00',3),(7,'Lunes',1,'20:00','22:00',4),(8,'Lunes',1,'19:00','21:00',5),(9,'Viernes',5,'19:00','20:00',5),(10,'Martes',2,'14:00','16:00',6),(11,'Miercoles',3,'15:00','17:00',6),(12,'Lunes',1,'09:00','12:00',7),(13,'Lunes',1,'14:00','16:00',8),(14,'Miercoles',3,'16:00','18:00',8);

/*Table structure for table `inscripcion` */

DROP TABLE IF EXISTS `inscripcion`;

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `estadoEncuesta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_Inscripcion_Evento_idEvento` (`idEvento`),
  KEY `FK_Inscripcion_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Inscripcion_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_Inscripcion_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `inscripcion` */

insert  into `inscripcion`(`id`,`idEvento`,`idSocio`,`fechaCreacion`,`fechaBaja`,`estado`,`estadoEncuesta`) values (5,1,1,'2019-10-06 16:05:03',NULL,NULL,0),(6,1,2,'2019-10-07 00:26:18',NULL,'PAGADO',0),(7,1,3,'2019-10-07 00:26:46',NULL,NULL,0),(8,1,10,'2019-10-07 00:26:46',NULL,NULL,0),(14,2,11,'2019-10-13 23:54:58',NULL,NULL,0),(15,2,4,'2019-10-13 23:54:58',NULL,NULL,0),(16,2,1,'2019-10-13 23:54:58',NULL,NULL,0),(17,4,2,'2019-10-18 02:25:15',NULL,NULL,1),(18,3,2,'2019-10-18 02:45:16',NULL,'PAGADO',0),(19,7,1,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(20,7,2,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(21,7,4,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(22,7,3,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(23,5,2,'2019-10-27 20:49:57',NULL,'ADEUDADO',0),(24,5,1,'2019-10-28 17:56:55',NULL,'ADEUDADO',0),(25,8,2,'2019-10-28 19:33:41',NULL,'ADEUDADO',0),(26,8,1,'2019-10-28 19:33:41',NULL,'ADEUDADO',0),(27,8,11,'2019-10-28 19:33:41',NULL,'ADEUDADO',0),(28,5,14,'2019-10-30 02:43:23',NULL,'ADEUDADO',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `matriculaxsocios` */

insert  into `matriculaxsocios`(`id`,`idSocio`,`idMatricula`,`fechaPago`,`pago`) values (1,2,3,'2019-10-17 01:01:47',1200.00),(2,3,3,'2019-10-17 01:02:19',1200.00),(3,12,3,'2019-10-27 18:02:57',1200.00),(4,13,3,'2019-10-27 21:10:41',1200.00),(5,11,3,'2019-10-28 19:38:21',1200.00);

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pago` */

insert  into `pago`(`id`,`nombre`,`monto`,`nroRecibo`,`idInscripcion`,`fechaCobro`,`fechaBaja`,`estaPagado`,`idCuota`) values (5,'Cuota 1',400,0,5,'2019-10-07 00:27:11','0001-01-01 00:00:00',1,2),(6,'Cuota 2',400,0,5,'2019-10-07 00:27:27','0001-01-01 00:00:00',1,3),(7,'Cuota 3',400,0,5,'2019-10-18 02:08:43','0001-01-01 00:00:00',1,4),(8,'Cuota 1',400,10034,6,'2019-10-24 01:30:49','0001-01-01 00:00:00',1,2),(9,'Cuota 2',400,10034,6,'2019-10-24 01:32:02','0001-01-01 00:00:00',1,3),(10,'Cuota 3',400,10034,6,'2019-10-24 01:32:26','0001-01-01 00:00:00',1,4),(11,'Cuota 1',400,0,7,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,2),(12,'Cuota 2',400,0,7,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,3),(13,'Cuota 1',400,0,8,'2019-10-07 00:29:01','0001-01-01 00:00:00',1,2),(14,'Cuota 3',400,0,7,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,4),(15,'Cuota 2',400,0,8,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,3),(16,'Cuota 3',400,0,8,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,4),(20,'Cuota 1',325,10037,15,'2019-10-27 21:10:07','0001-01-01 00:00:00',1,5),(21,'Cuota 1',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,5),(22,'Cuota 2',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,6),(23,'Cuota 2',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,6),(24,'Cuota 3',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,7),(25,'Cuota 3',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,7),(26,'Cuota 4',325,0,15,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,8),(27,'Cuota 4',325,0,14,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,8),(28,'Cuota 1',325,10034,16,'2019-10-21 20:25:44','0001-01-01 00:00:00',1,7),(29,'Cuota 2',325,0,16,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,8),(30,'Cuota 3',325,10034,16,'2019-10-19 15:35:26','0001-01-01 00:00:00',1,5),(31,'Cuota 4',325,0,16,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,6),(32,'Cuota 1',600,10034,18,'2019-10-20 16:09:03','0001-01-01 00:00:00',1,10),(33,'Cuota 2',600,10034,18,'2019-10-20 16:09:10','0001-01-01 00:00:00',1,11),(34,'Cuota 3',600,10034,18,'2019-10-20 16:10:56','0001-01-01 00:00:00',1,9),(35,'Cuota 1',500,10040,23,'2019-10-28 17:57:46','0001-01-01 00:00:00',1,12),(36,'Cuota 2',500,0,23,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13),(37,'Cuota 3',500,0,23,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14),(38,'Cuota 1',500,0,24,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,12),(39,'Cuota 2',500,0,24,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13),(40,'Cuota 3',500,0,24,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14),(41,'Cuota 1',500,10049,25,'2019-10-28 19:34:35','0001-01-01 00:00:00',1,17),(42,'Cuota 2',500,10049,25,'2019-10-28 19:36:55','0001-01-01 00:00:00',1,18),(43,'Cuota 1',500,0,26,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,17),(44,'Cuota 3',500,0,25,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,19),(45,'Cuota 2',500,0,26,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,18),(46,'Cuota 3',500,0,26,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,19),(47,'Cuota 1',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,19),(48,'Cuota 2',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,17),(49,'Cuota 3',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,18),(50,'Cuota 1',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14),(51,'Cuota 2',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,12),(52,'Cuota 3',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ratingevento` */

insert  into `ratingevento`(`id`,`ratingEvento`,`ratingContenido`,`ratingEncargado`,`textoDescripcion`,`idEvento`,`idSocio`) values (1,5,3,3,'',4,2),(2,3,2,4,'',4,2),(3,4,4,4,'',7,2),(4,4,3,4,'',4,2);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `socio` */

insert  into `socio`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`idContacto`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'JOse','Quinteros','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972080',1,1,'1986-03-04 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(2,'Augusto','galan','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972081',1,1,NULL,'0001-01-01 00:00:00',NULL,'Activo'),(3,'Laura','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'30992080',1,1,NULL,'0001-01-01 00:00:00',NULL,'Activo'),(4,'Maria','Del Valle','3543604132',NULL,'mariadelvalle@gmail.com','Femenino','Soltero',1,'40000001',1,1,'2003-07-27 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(10,'Jorge','galan','3543604130',NULL,'juanjose@gmail.com',NULL,NULL,1,'40000002',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(11,'Soledad','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'40000003',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(12,'Angelica','Valles','3543604132',NULL,'mariadelvalle@gmail.com',NULL,NULL,1,'40000004',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(13,'Graciela MarÃ­a','Casartelli','03543403668','03543604130','gracielacasartelli946@hotmail.com','Femenino','Soltero',1,'30999888',3,2,'2019-07-03 01:12:28','2019-10-18 23:08:13',NULL,'Activo'),(14,'JAVIER','JIMENEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'30992080',5,4,'1946-03-04 00:00:00','2019-10-30 02:24:52',NULL,'DebeMatricula');

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

insert  into `sociotags`(`Socio_id`,`Tag_id`) values (14,1),(14,5),(14,18),(3,2),(3,5),(3,13),(3,14),(3,15),(3,16),(2,5),(2,6),(2,8),(2,9),(2,10),(2,11),(2,12),(2,17),(1,1),(1,2),(1,4),(1,5),(1,6),(1,7);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`nombre`) values (1,'Sum'),(2,'aire libre'),(3,'Laboratorio'),(4,'caminar'),(5,'computacion'),(6,'android'),(7,'telefonos'),(8,'word'),(9,'pintura'),(10,'teatro'),(11,'ajedrez'),(12,'truco'),(13,'gimnasia'),(14,'telefono'),(15,'zumba'),(16,'baile'),(17,'salsa'),(18,'sa');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tipoevento` */

insert  into `tipoevento`(`id`,`nombre`,`descripcion`) values (1,'Curso','---'),(2,'Taller','---'),(3,'Conferencia','---'),(4,'CampaÃ±a social','---'),(5,'Festival','---'),(6,'Baile','---'),(7,'Recreacion','---'),(8,'Seminario','---');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`nombre`,`usuario`,`clave`,`imagen`,`rol`,`email`,`fechaCreacion`,`fechaBaja`,`token`,`idEncargado`,`idSocio`) values (1,'Augusto2','admin','123456','images\\perfiles\\perfil-1.jpg','ADMIN','admin@admin.com','0001-01-01 00:00:00','0001-01-01 00:00:00','4695cf44401f4d9d836099858dd1cebe',1,2),(2,'Laura','secre','123456','assets/img/profile/users/augusto.png','SECRETARIO','secretario@secretario.com','0001-01-01 00:00:00','0001-01-01 00:00:00','6d3ec35bac2b4479a33d410e451f07b2',NULL,2),(3,'Javier','socio','123456','images\\perfiles\\perfil-3.jpg','SOCIO','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','382b3bece2cc410d91fb2c19155dfe71',NULL,2),(4,'Josecito','encargado','123456','images\\perfiles\\perfil-4.jpg','ENCARGADO','encargado@encargado.com','0001-01-01 00:00:00','0001-01-01 00:00:00','a1fe919690e1455599ac8c5128143cf4',1,2),(5,'DASH','dash','123456','assets/img/profile/users/augusto.png','DASH','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','48dfee9df6a24ede8049645ed8d18d17',1,2),(6,'JAVIER','JIMENEZ227','JAVIER30992080','images\\perfiles\\perfil-6.jpg','SOCIO','javierjimenez78@gmail.com','2019-10-30 02:25:28','0001-01-01 00:00:00','f031bcd825684f6ab3223c9a1ef6dd0b',NULL,14);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
