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

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201910060709224_incial','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ÙrÜ8’ï±ÿPQ=*»{z¦Û!Í„[²g3²–ûxS@$$s›EÖ’,‡ûeû°Ÿ´¿°à#Á£J®ğƒUH$‰D\"3ñÿó¿ç{ÜÆ«Ï4Ë£4¹X??{¶^Ñ$HÃ(y¸Xï‹û?ş°şÛ_ÿıßÎ_…ÛÇÕ/m½ïÊz¬e’_¬?ÅîÅf“Ÿè–ägÛ(ÈÒ<½/Î‚t»!aºùöÙ³7ÏŸo(±f°V«óû¤ˆ¶´úÁ~^¦I@wÅÄ×iHã¼ùÎJn*¨«·dKó	èÅúMØÿÙÙÛ}Ót½zG„aqCãûõŠ$IZ‚áøâçœŞYš<ÜìØü²£¬Ş=‰sÚàş¢¯n;Œgß–ÃØô\r[PÁ>/Ò­#Àçß5tÙÈÍQwİÑQî£pñ¥uE½‹õË<Ê6·Y¯äî^\\ÆYYU&ïY	%$!ÍÏúæß¬ÄJßt|ÁØ§ü÷ÍêrûŒ^$t_d$şfõ~GÁ?é—éï4¹HöqÌcËğeeÂöé}–îhV|ù@ï›1DázµÛmä†]3®M=¶7Iñİ·ëÕ[Ö9¹‹iÇnŠ4£§	ÍHAÃ÷¤(hÆæòMH+r*½+}İ¤A”š:4y•${`³ëèŠ$é«Ï}O`4/8„~JÓ˜’ÄÊ=\r>kpWŒÚ™@0Ã{K>GÕ\\ICq¨h\\ÕÊ?E»Z:p|+U~¥Ûi,,±ÎíMºÏ†ÎÇÔPñ#›9ZØã1ÁÆĞ,ÇlÂZ¨\nâÌÕĞaÌWsÅ7¯\\iS	Ä±*ÓaWW€ğ:ßôRM+ë$¾ î\'‰‡ö•¤Û»Œ¶ı±—)ëÕ5yüMŠOkö\'c„è‘†í—‡Ÿ“ˆé¬Q‘írƒMIE» Ú\Z\'îkDù;†àePJÕÇwW©$ïÍCê.t!Pÿ lCÔOä?\0H.ÛÑt|×ïQ“õA”íĞzwE¥4mYÓ‚h»íjöÂ\Z¬ Hl¸–ëvBñıº3ê+lÃF+u˜´øâ5Û‘µe‹Ğ‘]­d ´iï¶Ş#©r™n÷‰ËÉ5;í‹h_Op_H9óL=òİÏ>F»t”=MÜ<öÅËŒ†óïgUÃë4Œî£\0AÅV<Uî#yÈAáÄ\njØÌ@Î%¥P‘¢j\rWéYğ³‰}NÀÜ\n•9©ÔQd\'ZÑKt2\"8HLVû$(g”úåÑiøğ\"éŠo¹ÅÄ±ŸZ¬ª@×¥\"­SÿÕ,/|½;¡X½`«\"˜ŠR‘BA¹¢½¶ÓéXºÖ§…<ûB–OK;\ZÇÑG¿‚Æô>M¦ï( ñ>&ÙäıĞ-‰â¬\'¥zw•~jY’•0ö[Ş~2!ÎWé6\n¢x#Ë“R&Ã0Ú}’«í“]±ª¡umB¨Æ;`3Ç‘T·+½·ZZ»Z‚M¡½¶†Ÿõ¼ŸË!–ó¶õi¯Dûº#YÍ°³”v£É{ÙEùôCaûÁôäJÃ÷)[Ş±ß&Òİè{–ıÑ´\0íÆ9`ı\nNkçÈ)ô]ëynüÌoÕò4¯óÎëéslç˜œ>NO²Ú€}}>ÌœG:˜Eáeš$ğ½Œ¯NVoÙ™jñp:˜->œêò=ûñQa_E¶¶%Ê±G*v=é¶5pğX+!xMuœu°¨ÂˆMs„­aÇW¡\0Ai”ck¿ÂhEmã“b„öuRŒNŠ-½_baûZâ„Û]	<ß6íO‹}ŞÅn[7Üq÷ä±{b|^İjQ³íh.ÄÁ~—^GI´yô†óÀxnõT\Z²Mùã#ãŠØıøzÑ_îÓŞùÉ9GWX½I”Å4‚cBÉ{©ô GkÜÃÚàZíéS]ğªU\\ˆrĞm5Ø£º.Åğã«ÂñÊ³åé®CöwÂÿiF2Ìó‰ï«¯cİ–kî*\rÂ•[ìF˜«qK\"«¥ŠÃPel×z½O½…3½¥½ÑÕÈ²|-Ã¾C«ág©7Ç!‘²åIFûšI4¥+\ZDÛò~ú}ÆşjböX¯nRÑ¤øXsM#jñMÓöÄ9h_s•…äË»û_)ı½ë©ŠLê¿:ªJŸØ¬\n\nòd˜—=	úóÜÆA-°\0¸ö§E ékœóú	ïPkÎJš¬_hô8\'}ò=y@ß²äVXD=‚r™¢C*\\5H<?UIP j	7BŠ‚r ƒÄKÙğ$WĞ¾–PË\Z°’,ıÀÔ¸;or|$az×;[N!˜–Ó}&\Zd+Ä½\Zj`˜lŠ%áW}U„Wä*…É÷Ç ^¼~u7üj§o~’KË¿é®wìMqéƒE‡7ê¶\'>š’¬dò|î‘™ˆc¸C59DIEŠÌ•Ë½Dî5aôöñ0`×ú´PpN\"mé3‰Ólİí—2æ›zWzîŒûÛğP	Æ‰‰5}’¸’“6Ş¬\\=yxÇñ3ëv‚m?n`/Øğ–«İï\nh%eÀk—ËQîC±—€Œ¨`7ùÀPM<N<€“D@ûÊ:û¬æ\ZRé`M“È×!ªAkïª‚>éÕ¼©%3z±6ók07ÅŠ€êŒ\'§èŠRKõè!hf!ako ÎÂ8‰\'|éFÅ>!ÿçŒÂ¡ÒzDşqÒ~ìc‡iÑbğßüÄŸh_§`™S°=E£ËcÎ(âSĞî  ]m´g·€!ŸJ©\Z÷©VñÒ»~Î÷ZÓâ´‡á‹t=lßNİÔ;KL>O?šhKèôÊb–N/ëçÙ\"g¯®ÆrmÏa@lCl\0v¢s¿å\'çú&“‡ş‘,\\”Ş|ÉºíİI¿Ymsvn‰£»^|şÉV|Şıå/äûàû??ÿñ»?Ñg?üXR0¤Yü…QœHkº½£Y{¢Ù\'!aòìïÙÏg\nõ„Ú×©Pû¹¾öÇ=ÍùêêÔÕ¥a\"6øÎ\0ÿÓ>êÿI_ÿuñµ¿××¾!Œö|ı?«\\Róÿñe^šBªIoà@™Ån_%áÊ\"ícïŒÌ1ş5c‘hÇ˜‚ñëÅúÊô°;BÎÑ¹ÏÛ!ÂV\'›íÇ4+7D_2‡±h”êæ%A´#±\r©©åÎ_ÎD×‰\\rEw4)7m3ízçÈ£¢Ñõ&©&&Bo8¶±å¦>‰yÆÄ&£q†º‡]å{×B4öVs6c§hÑ£[V¾ùQ‹©\'^G\"³®\"‰¼v}wçàEVšø›kMx7ÀøG|`f¬å#e‹Â0ÄRGõè5ú“ı ‘tSÈ>Ñ$‹F`†•Ó®ã&‹¬9—~rµúÊ@†YTOAP˜gT?‘s¬égX«—äšùô1q›+2pœë ³­#Ô;Ğ×™PUÓøTÓ Á®„«º?Óè´læPm\rD·ç´T‹püT%Æ†w+¹]WÌ$bÏhú7/-9y$6Óâ2i©m×ÿ²ÌeÉUfvrç£ƒ` Å8çèY†Ïœd˜b0’‰u©s¬\rFëğÃÑÌVh&&4‘´L&BØRyùw°Ä÷YOøxç[Z8Q,WYC§ÅY—8Ë†Ô,Z#.4%û¼K—3Öb²<`8êR>ô\nñ¿öû”.é—ûÚ´ªpfXN8q`qAèØüBéı¼Ö8öÜ±›ö£‘˜DíyæP‰gi­	±OğÂ@;—`f\0Oş\0“¿X	ª1yÀb.ˆj×µ@šE¸GÍ c³qH£nJbÄ†É9Á–$ 0ó$Ö®ï†,Kêu|îNƒâ&òáÜ\reÿ´¹R÷à\r`1ß	 ­¥JÓgI.âÒ«\Z&Êµ:	Ze+ó”j1ŠÅ|,¤ÖÁ¬¼¤b,ŒmäÚbBëòÂBÊˆÌì&æ£Y/ó(/ÊÄä6´²œa\r nëëº°\ZÚƒ«íl$n3á3³™ˆn‡‚D¬¥ùÍF¸ÁÕ\'áµ…eš“yyì)H3ıP®8	G-r\0ÄúŸ—ƒìø\'gDÃ&MÆ™ÛÌö,ƒ%U›ÙßAcÆAÈjÓ3Ÿ9oÖÁ(aÓm‘M©Ÿx%Õ˜=[™s1AıLÄ\\Fdf`3#áípàHu§ßéÉ°&á´E6>-p×‘mP:%l¾µ¹•úÙÓ¡Ù³“.-Ó\\W»\Zfà%\r-ñ%Ïx@â+«©FEÓ(Œ´ˆPÂ1˜›‹LI<°YÖeôàf™K,å€§™;\Z\0ÅdNÂIloVŸ+.àU•Y \níŠ.®>¤qÚ¤SÒüœÓ&ƒ@Ş$GY¢„zC‹6¹gxÕå2\0,\nk‰pD£«\nJk³S QÁ3W&:î\Z`e ¢\nï1aÑ[T0‘J™>ÎJ¥\nƒ¥B\\šêxÄr´&‹£””Jë.0T€E\"‚ãéüŒÁÑ ^Èê,a,gÉkíë¬êX \"¥yÿì¨ sY4€ˆx\rŠÆ%ET¦bnĞVàÔD6Ó‚¿TTY¤µ©TmK¸Î\nôäŠCiƒ8¬ßì˜¿N\0•;!¥\nK(6-fN#PW4Wh€ÓåˆR€t‰¿$ÜÎÕƒ²˜¬¸š²\0Å‡ıE—î¤‡ ±•Ú.¿	,D…óF¸Qú€W-Q¸Xdjt¬QÔ°XXì›>äè2ÛéˆjÎö²êìAYSæÉ İnİ	¢¦š\0bÈG!ŒÏH¡ŸL€T§Œ¹SBÌƒ\0‘Aª£§TàqÏ‘“¡1!#ÀT¡c×ŠM¹Š	s­¸´şlbRŠËÇ	`#¥š>˜A$\nÑêøÀÍ¢P¨ç3èÅ\ZñmVÑñ¢H7ÅÇ[Š3; ½°óŒ;µàˆm€T¡İÂôÁİüš7xàØFsO·˜‰cM39¨™K€£Å‰€ÛBc€Âm\n®å\0µXJ\nÉ¥§ˆ&…;œ>pØ­íZô¤VoÜĞ\n!EÇ¤‘\'2Êê±÷&\nô$¸JSH©0\nMP)7†HdEj$î\0zğïªtÀ¢\"Œ¸HSÎ’¥5\r9…\0QŸ÷EÆŒFı©XCqÃÆEûÙqçBhIı:\0îMQÆ/N=WxOjÒ‡JŞı“¨“0$Ù áA\"ò¶1ˆ§o@F‰AC\0B‹‘ˆ%’ô±„#ûbÔÑíØÄ*3‚®>#ï Á\0½ì=„qC=¸aôÊÓä\n\Zz §•cÂ¼è´?¡{”ŞÅºC¹ÓcòıIy[%‚Ö_\\@óç\r¡ğÍÌ¶%ÍË°*A,½ …1™ı ¹Ñ)’\Zb™Ÿ!À]D.¼Ú¡ËÉ‡L“/,ğÅN•8FOTa:_Tníõ³†:·Ó)Î‚Ğû j˜øDãNéA‹Éz±0ä\\ES<îÈ\0½å7Q\0·át.k]Ùùæ&øD·¤ùp¾aUº+ö$®üÙò¶àšìvl¾ò¾eóeu³#A¹üñf½zÜÆI~±şT»›M^ÎÏ¶Q¥yz_œévÃ‰Í·Ïı¸yş|³­alÁ>%;Øu=iF¨TÊºf˜¾²¼¸\"¹#åã=—áV©&:è!m_Š:w­+FÛ¤ü»Ywâ[k/Q(=_³‘•ÓZ\r’rs®kÌš—Ï·“x&í2÷Û÷ÍÔµn$»÷:8œ+KÅ©ƒ\'™ˆE˜†Øcnû´ ®ıf¥zz‹wËäÁ)…*ÜóÄ	2Ãm“–¿ÌÃVn:©Y3¹Ö\"oÁç†öÓ°zûÆ¡ıfEx&™%,¹pàã¾T¸´(,1-«ZW4)°VšïĞşAòZyÍwGhõ;z\n°úóÜâ%”EJ‹¬=A$“ît¼˜P.\\=dÒ+\r‘¤oş5I¤€””‰44î³‹|ÈERi“îã0GÜÂû·8••ß-#IªFL‹î£\0ÃQ,>˜]zby,äjs‹õ¶:„e»”Xí”™Š±¨xÛC˜tïÜÑ8dùÒµ‡TĞ˜Ş§‰©ÿê ‘i¼g_%yÜ~tœõ+Ç‚à¬?¹JôÊ¦¢Js0(O3coáæ-Ãmzì¸X.éÈˆ?´…Ã;íÓF5ÎÓöQˆÍ!o;€º#Y&óeûÍE=‹c*«fÕ\'{»(—ğ¨¿8-]eÅ:\"\rß§Li“Ä÷ÙEŞÉò£ùt0Ì.\Zs}”# 5Ißşvæ…¦»±š€Å” ía*NJÒ0%)§Òˆê/®‡ÜËè³‚_pRÛ0x}¼£‡ViQo™ş´Ô!+…OG¹t3´,$¶5ˆÖ’ûa!¼ñ¦\'ù}¼ò;£1°(û¯ÃıúÀ;\'­c©S¢­a,e‚ó¾g|ÁzºY•Ÿ_\0®½ûŞ7ØïÒë(‰¶8ş»#4òCk¾ÛC{ÈH±äYè¿ÚCÚ¦Êd6Ÿ\\(l„¤}œL4¤EOè~»ÂAˆ‚ÑÔ¾¼eƒ±¾µÊ×zï·Ğ„FÛ+ËP@¡¦·;äÉEÚ,4Ÿš_ëm¤¹Ï)ÚršYõõ‹	É—w÷¿Rú»¥ÿlë: ğ¹Ïn°\0qÏ}>~‹´¡µÖ,§‰Ğµ`;mëiXoL·ºq<n¿ò¬Ìö`Ã*£;ÿÁÍÊN¦1û~ At§Ú|ÛÏ.‹\0Õ\r¯¿â0k®Oïä›Işûr†TÆ3 öÚ~w2n«\'ô­åeMSŞ([ÃÔWd	YÊßDœú*`6Ç\n¬å!OğˆöwîÁ\"Á¯yÈh1FÑ…ñZ³Ê5Ä‚Y4m§a’Èš^ıÅÂg§Ò¥HóÉq/û¥tüGo0…Ò\'vE(G1Á|0(Ä Lu~+ÎËú-ÂÒ<d…Ã«˜¯Î‰®ğ$”*]k§€Ù!bÄ&RÚƒÿ„ìæîÌ§o>\rçeBBvá>U“ªİ±¼y§‰²‰*…Î˜Â×2J¡Ëùc‘^a:ZzV‰¥VŸ‘ßgiàØ¬#móiÖë|Ë~Í·å.Y+A-¾“ Èqİ3\nò—­Áƒ“nP(|¤kü•œ_¤ÿĞÉÿóäai?Ë~|j¤ñ’?Ã ,$$ÚòÅc÷„f¿Ş£ƒÄä³êSrXø[ò@e{óÍA5N%1T}˜W¨úb.ÒßeB7Ÿ–ó\n;4µ^ÌZ%Êğq&sh2_A¢ÃË„\\µ4/9©”²’>=DøÉL‡aè¡vZ¡W¾,ä†˜œxÌy–\'–t™\0äº@Ø¿.s@EôI¦Ùhh‰–ßÔ\nï¢Ì<ÇÒk=šVj‚Áqv«W‚å9­5´&VFëèV,ô„‰Ác]¬lå	É;ô¡“¡k¢8†(FŸNˆš3N—iFÕ×oò·û8fJ‰sj9àQ™¢àÃŠ-úê–î„úËÏ˜sÈ£<öP²ŒÊU:M²ùÒıî²Œ6>…Ô£=ÊD¢ò&Û¨œò³®²^±ÁÂ*İç—›ÿŒÏÊò³êÏÚ+ ¯qM’è¬?–\nùÅúû³¿¬W/ãˆäu2Ø&™éùo«ì¦Ï¿+³›Òp»‘›»çH-¡äyRËµÕp–&ôüŸTa„–At·Ÿoä†ç\0?Ö/ÑF%Y«…ûwÊ¦4|OŠ‚fŒXoÊ‡×ªëUÉreŠùí6ğÍ‰„ëCySıMÒÇ‹õUm^¬ŞüvÛ4ûfõ.csübõlõßºæV®İwM=QÒ™º¢!4÷B¥5>ÕÜ¥å)ß„’ş´†2N)¢--×$\r¢¼Z]ÏĞùã¦vEhŠí¢híNuqš<”W…<˜\"Û¡÷:~ b©]##,.ÎÏ¹÷º¡W÷|,™ÇšB\07ã®Íh¶pmøPRƒF/›†‚ Š”³˜Ö2\r·kœDÚX\"KjÊ\rÛY.™L]e×xÄ½{È@$3ú1È ÃİpğÖKS1H}U+Ò^‚Á)@¿*b»Fç&á§w’ğ”­„˜æ>ÏWÅìü†ˆQÖĞK„Šş¾CáRW9ŸèÚ¦ş\ZãI[áT G+¨Ú¬¢¾ÊQ•VÔHXÔF•[Ôs,}bÑáúQ“Ut’½R“˜óhÙpRåŸøªuR,\\€Ôş—ˆğ®—\'=çpô>­§+mKE‹wQ]%:.-nˆ…ÎZğÃ)7O²ÿ$û }ŞÎÉ470ıåWÅ’öF¡Óİ¤wt|jËA¦è£¿(;€{J>ëæğó&Ÿms8”>Ï¦Ç­~“-¨†p§dÀhÄäš×Çwªæ×œùéúçæõàZ{UTõdıÊ·2AN„ŒàÛÒäÆ‘şùõ€”ğ¾uÆ‘sXt“ë]CLª{0èµz´l0‚[—Os¸çiúaÃeÑôtÌ‡¦Â<Z\\ØÅk1GÔ§³+ªé1–\'Ø‡)Ï\\–MG%@5´çq®ñœ^\'ä\\šÍ­ÕŞ6O§Ç*>v6ê²™ÉİLW\'{Ìhöûƒ”µò+§úh&l.õ¥ÛJë[N±Øä“G;ëu&ËQm“ÙÒÓ4$ä²\\ÜşáÎPfÈ£å’EC»¸””®İwMıU:å¨Œ¸ãAúYY¬ùOy´Ì)f .v”¤“¾ àGPjfIß»¥¯ádn¿Ğ$G»Ú|’s	äô£ö¾…H^Æ£ØÓĞŸ “ÉÉÁp*Ã“sİŒ‡0ßâW.öºÌÒªNİè¹®›Ôq©·€EhØê³Ó‘êœŞª´AÃ·ƒ¢êÄãøè¡yíD!í¡Ú\0Nkf–bG×²\\[¯Í®EŞ­ûºÕ$V}]ND»	DÓÌs­O4hÃ™È0Œ¹#ÿˆÍ§˜I8û¡İj·şúNÜh×¶;æuÇ¥HS¤Qˆ”¾JÂÕ‡´ìH	š)óq_¯÷qíbö³ør±~®£¥l%(î«ê\n(Æ4+U,_¦I^d$R3ÿ¾Ï¢$ˆv$V Õ´TKÂv0å’+º£I©õ)C´ëŒ££Úk\\bv„¬x¶œ ÏG:|Ÿ+Yß%Wì\\]ĞÕË Î]wIò€¨/WyX”RD¤*˜„£\\\'y’ËÑi–â*(¯$7Ÿò4³÷9ÉvNçæ!<{ï¬ÜÓÜsãL#Ä¢ì#–ú¥	ªŸ˜#,;C__™…#ìR¡„4‘Ï4bÙ1ËCBûÃ+v‰ëyQ€Í£nŸ,[9Oöüeñ–ÀŒVŸ8ú»ŸR9@5—ıGû-K°­UPš/“ğÕ>\r`o×Bõ”[pÒg=NÏ;ï³£]&~é#´Ísî³6Ñ>Òê¦;ä¸L¦?×Øª?ºwSàšƒ=/Á13©°Nü²¨îZsËÇáy÷˜ÙÁ.¢iÙ#° Úh&‘¤ì+tßì\"CC#²8Üi˜bÀIG ê\"ü!<,qK\rÌ1ğh‹³ø0H­ÚŠ%OâlªyÅípYöXŠ/\0†xRœp|,À¿xç=kÏÎÎt³/„‘ÖöúË4sï2^³>[¤tµÍ<éº·‡Ìıo³1Â  úâüĞ½o8µhÏğ€ºoGÎÈS)¸¼·t)\0$q¨ 	ß|şÑ¼6hw‹®ÿ2Äó6\0²9oÚº‰çI+õ‡iî#¬÷bÏ™V³Å ı4[n†ñlK^«óPæÜ}ÑÍ5óñò9Ÿ?à&â%ül—\nî¼ÖPqIı.c}©tÏó€Nù³:`:)÷=ù–œÿË—$Ù‡Õyã?.`ù €x€%xfI°ğÁN¹0èì¿°xèŸ»¾\r­¬AçSÇ\"ê“Û<şó4,æË‹A¸Ùõ&‘ti™Yt,Å³\n\rg8 ‰1ùib)˜í,á<ûK%šÔKx´Y\'#Tûíix€‰5‘®øD‘‹°‚”ñïv‹dˆìgPIhWÍ!÷Õätƒ Àß@a3s 	1§amvE´K²Á!“ïËsÅl»Æ0Xrëà30ÎrÓ$¤|äA‰G~×„\'¶Dû[ô,!°ÁäaI˜M`%AŸŸpçå>;¢ÀYÜç§¡Lbi ÑŞæôe~U%%©Â³¢„fíé\"\réë(Ë‹+R;’«&†²Õ\r-”sèzõªKsœo‚OtK.ÖaõE,…/W¸EìG²Á(]IåPoZ3Ò¡èY©ô\'Cİ‰5½U1J\'ÕWvšbAo¢PÑïË@Ü1ë†:/}”—:\'}8X€˜JQÒ¨tËAŠ‰U6²Yé¨ùu\0Šsp\r©Àî‹ ğX%H«Î¡¤TWŠÑ	ñ‡U[ŒºUh¹ü\ZW\r•JõwDµó¬	rçá¦ÀîJ èW	¾pÇ®ô!”Bıh<”®jW¥ú3¼.±á ljùB”,§¸µ©“Ü–€ÓÜ\ZÀsGo¥®ê=µãü†‰¥†¶Ãº’™ÉDİYéT,†zk˜zh«½	Å`o\\\róàxEPÁ\\!(‡¹rC?m®Zµ“®ê¡+´İáÍ],ÖîÂVÛ½’nR\'Ìj‹TÉb¶º˜Sx»D‡×–ª]p\Z+@N.šÅÕ”ÉŠıGE}aıi4ìk‹«NqXNCVÂØµ#×½ûnËÍ¾Ø¼*˜„M\\¶% (nñ”+\0@|á¡·çtíˆÁÃ¼î8ÏY§!ÏÌøhb)`ôvI¨¼f­m[íIoŒÁãÌn—<Iœ=l$ºa,Húâ¢KÛAª#.Ÿ¾*Œ5	j;(×>ï\rvK“«L³M=D›-©é´ÚFıÇÑ‡‹¯^¤æx‚k¡j¶&±Â´ÛÒtŒ&y€6c«„Êà%“M7t<6ÙS¢ œË\0 EÒƒ‘·$Ğ<\\?­Õw\0/G?ã°ñ=P>.,\Z½>]q×æMõ–\rÅqyQâıHµ>«Ş™Å°cÃØáğä†-f«fİ7ï¡A¶À@M¡¸#°WMu†_÷ár¥À0±pÓ!ëNhÃ[¤«& Åyàp\n!ƒÒ„…ùÍÁ,ÃTƒ\r<\nxoxëÇó0(ƒÔå}<[Öô;)ü…‹SFamˆÓ<CÅƒœŒjâôs<ß¾ŠÆó\0T°‹ıc Õq£ qÉğ\"ƒlÂ[Fãƒ™‡\nr}‡·Ÿc˜r00Jm¼ÂèF\0éR¹V[c÷áâ÷ÀÀ-½óô•Këj\0:/rë5á7oF Êå.èŞ¬>ïĞ!7j`àFoë@ÕV{¿ï9dtªMÅŞó<×pÿXÈ¸iğ¢ßÂ©8FÔtÃ]ğ¡·¯Òu ]Ùù¦¾­o>°Ÿ;…?Ğë4¤q^}=ß|Ø\'å[¨õ¯+šG=ˆs3¡àpÚÕy“Ü§­ë«„Q[Ez¦ïš-$y™Ñ=	\nVĞ<gó½^ıBâ}¹x¶w4|“¼Û»}Á†L·wñ¥ÿ¬®ÿó‚óù»]ù+cÍ¨|>ö]òÓ>ŠÃï×ÀkˆÒ1·yÙ¸œË¢|áøáKémšXjÈ×ù¤Û]Ì€åï’›êawÜ~Îé¿è	¾°ïŸ£f8óDˆd?¿ŠÈCF¶y£oÏ~2·ıõÿ6Ïå\0','6.1.3-40302'),('201910240358280_agregadoEstadoInscripcion','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ÙrÜ8’ï±ÿPQ=*»{z¦Û!Í„[²g3²–ûxS@$$s›EÖ’,‡ûeû°Ÿ´¿°à#Á£J®ğƒUH$‰D\"3ñÿó¿ç{ÜÆ«Ï4Ë£4¹X??{¶^Ñ$HÃ(y¸Xï‹û?ş°şÛ_ÿıßÎ_…ÛÇÕ/m½ïÊz¬e’_¬?ÅîÅf“Ÿè–ägÛ(ÈÒ<½/Î‚t»!aºùöÙ³7ÏŸo(±f°V«óû¤ˆ¶´úÁ~^¦I@wÅÄ×iHã¼ùÎJn*¨«·dKó	èÅúMØÿÙÙÛ}Ót½zG„aqCãûõŠ$IZ‚áøâçœŞYš<ÜìØü²£¬Ş=‰sÚàş¢¯n;Œgß–ÃØô\r[PÁ>/Ò­#Àçß5tÙÈÍQwİÑQî£pñ¥uE½‹õË<Ê6·Y¯äî^\\ÆYYU&ïY	%$!ÍÏúæß¬ÄJßt|ÁØ§ü÷ÍêrûŒ^$t_d$şfõ~GÁ?é—éï4¹HöqÌcËğeeÂöé}–îhV|ù@ï›1DázµÛmä†]3®M=¶7Iñİ·ëÕ[Ö9¹‹iÇnŠ4£§	ÍHAÃ÷¤(hÆæòMH+r*½+}İ¤A”š:4y•${`³ëèŠ$é«Ï}O`4/8„~JÓ˜’ÄÊ=\r>kpWŒÚ™@0Ã{K>GÕ\\ICq¨h\\ÕÊ?E»Z:p|+U~¥Ûi,,±ÎíMºÏ†ÎÇÔPñ#›9ZØã1ÁÆĞ,ÇlÂZ¨\nâÌÕĞaÌWsÅ7¯\\iS	Ä±*ÓaWW€ğ:ßôRM+ë$¾ î\'‰‡ö•¤Û»Œ¶ı±—)ëÕ5yüMŠOkö\'c„è‘†í—‡Ÿ“ˆé¬Q‘írƒMIE» Ú\Z\'îkDù;†àePJÕÇwW©$ïÍCê.t!Pÿ lCÔOä?\0H.ÛÑt|×ïQ“õA”íĞzwE¥4mYÓ‚h»íjöÂ\Z¬ Hl¸–ëvBñıº3ê+lÃF+u˜´øâ5Û‘µe‹Ğ‘]­d ´iï¶Ş#©r™n÷‰ËÉ5;í‹h_Op_H9óL=òİÏ>F»t”=MÜ<öÅËŒ†óïgUÃë4Œî£\0AÅV<Uî#yÈAáÄ\njØÌ@Î%¥P‘¢j\rWéYğ³‰}NÀÜ\n•9©ÔQd\'ZÑKt2\"8HLVû$(g”úåÑiøğ\"éŠo¹ÅÄ±ŸZ¬ª@×¥\"­SÿÕ,/|½;¡X½`«\"˜ŠR‘BA¹¢½¶ÓéXºÖ§…<ûB–OK;\ZÇÑG¿‚Æô>M¦ï( ñ>&ÙäıĞ-‰â¬\'¥zw•~jY’•0ö[Ş~2!ÎWé6\n¢x#Ë“R&Ã0Ú}’«í“]±ª¡umB¨Æ;`3Ç‘T·+½·ZZ»Z‚M¡½¶†Ÿõ¼ŸË!–ó¶õi¯Dûº#YÍ°³”v£É{ÙEùôCaûÁôäJÃ÷)[Ş±ß&Òİè{–ıÑ´\0íÆ9`ı\nNkçÈ)ô]ëynüÌoÕò4¯óÎëéslç˜œ>NO²Ú€}}>ÌœG:˜Eáeš$ğ½Œ¯NVoÙ™jñp:˜->œêò=ûñQa_E¶¶%Ê±G*v=é¶5pğX+!xMuœu°¨ÂˆMs„­aÇW¡\0Ai”ck¿ÂhEmã“b„öuRŒNŠ-½_baûZâ„Û]	<ß6íO‹}ŞÅn[7Üq÷ä±{b|^İjQ³íh.ÄÁ~—^GI´yô†óÀxnõT\Z²Mùã#ãŠØıøzÑ_îÓŞùÉ9GWX½I”Å4‚cBÉ{©ô GkÜÃÚàZíéS]ğªU\\ˆrĞm5Ø£º.Åğã«ÂñÊ³åé®CöwÂÿiF2Ìó‰ï«¯cİ–kî*\rÂ•[ìF˜«qK\"«¥ŠÃPel×z½O½…3½¥½ÑÕÈ²|-Ã¾C«ág©7Ç!‘²åIFûšI4¥+\ZDÛò~ú}ÆşjböX¯nRÑ¤øXsM#jñMÓöÄ9h_s•…äË»û_)ı½ë©ŠLê¿:ªJŸØ¬\n\nòd˜—=	úóÜÆA-°\0¸ö§E ékœóú	¾Ö[9Mì¥³.(«1\ZuÑIm}Oıº,¹Öj \\¦¨ªJWEOƒÀCUò (…ZÂ	¡è )V6<‰/´¯%´¿v²$K?0mñÎ[Ôö\"›Şõ>SHÛ,Æô#$¹‰™$qç‰\Z&›bIøU_áÂ¹Jcaò}Å1ˆ$¯‡ß¿Aê›ŸäßÒòoº[${J\\ºzÑa6”ºí‰¦ä#+™<ŸWIãÊd&â^W\rƒA~WR‘\"sår/‘{M=ƒ}<ÌÔØµ>-œ“È_[úLâ4Awû¥LW„¹ÀÂÍ¡;ãş6<¢B‚qbbM_£äÇä¤7+×dOŞñ@ülôº`ÛØ$6¼åj÷»ZIÙğšã¥Œ”ûPì%`#ª#ØM>0T“Sà$Ğ¾2Î>«¹†TúqÓ$òõ»jĞ\ZÇ‰« Ez5oËÅlëC¬ÍüZÌÍ@±\" :ãÉ)º\"¤ÔR=zcˆ\'\Z¤YHØÚ¨³ğ\0Nâ	_ºQ±gH3:£p¨´‘œ´ûe\Zd´ìGĞ7?ñ\'Ú×)&ç“COÁÊèò˜3Xù<ÈATÚí`d©Rª†—ªU¼ô®Ÿó½ã†Ö´8íaø\"gÛ·S7õÎ“ÏÓ&Ú’:½²˜¥ÓËúy¶ÈÙÄ««q \\ÛsX[Æ€èÜo9ÁÉy¾É_Çä¡‹¥7_ò‚n{¯ÕoVÛœ[âè®Ÿ²Ÿwùù>øşÏÏüîOôÙ?–iaçG\'ÒãšnïhÖhöIH˜<û…Ä{öó™B=¡öu*Ô~®¯ıqOs¾º:5Bõ_i˜ˆ\r¾3Àÿ´Ï„úÒ×E|íïõµo£=_ÿÏ*—ÔüÀ|™—¦jÒ8PBI±ÛWI¸²È.Ùû<sŒÍX$Ú1¦`üz±şƒ2$=ìÎ‡ó§îÓƒˆ°ÕÉfû1ÍÊ\r‘Ä—LÇa,\Z%…ºyGIíHlFCjj¹ó—3Ñu\"—\\ÑMÊMÛL`»Ş9ò¨ht½Iª‰‰Pçml¹©O—bq ÊhÜd»îaWiåµP½ÕœÍØ)Zôhã–•o~ÔbÆÂ‰×‘„È¬«H\"¯]ßİ9x‘¤æ—ÇæZ“lŞ…Ã\r0şß±kùHI©0±U=zşd?h$«²Ot4Éb˜a¥ÀÄ´ë¸§É\"ëDÎ¦Ÿ\\­¾2aÕSfã™#ÕOäTnúÖê%¹f>}DÌ§ÇJ£‡çÂúˆÄl«ãõô(TÕ4¾5Hc°ëáª.•Ğ4:­›9T[Ñí9­#Õ\"Ü¿ˆ‰±áyLn×–Ø3šşiMKN‰Í´¸ÌÀcZjÛõ¿,sYr•™Üùè h1Î9z–á4¦ÌÖdbgggêkAC‡Ñ:üp4³šğÉM$û“‰¶T@,ñ}Ö>Şù–NËUÖĞiñEÖåç²á5Y×ˆMIòÅï²òŒµØ€,º”=†Bü¯ı>¥Ë-æ¾v­*…–NÜ#XG\\:6¿PDz?¯u=·\0Aì¦ıh$&Q{9TâYZDkB,Ç¼0ĞÎ%˜À“?Àä/V‚jL^°˜‹c\0¢Úu-fîQ3èØlRàÅ¨›’±a2GN°%	Ì¼#	„µë»!Ë’zŸ\"Ô xùBG8wCIFm®ÔÇ=xXÌwB\0Hk©ÒôÄY’‹¸,®†É†RºÀC@XÙÊ<¥ZŒb1©„u0+/©‹cy„¶˜Ğº¼°2\"3»‰ùhEÖË<Ê‹21¹\r­,gXˆÛúº.¬†öàj;‰ÛLøÌÀl&¢Û¡ ki~³npõIxma™¦Çd^{\nÒL”+NÂQ‹\0±şçå #;şÉÑ°ÉEÓ£q¦Ä6óŸ=Ë`IÕfö7BĞ˜q²ÚôÌgÎ[„uğJØt[dSê\'^I5fÏVæ\\LP?1—™ØÌHx;8RÇéw:C2¬I8m‘O‹ÄÜud[ ”N	›omn¥~¶Åthöì¤KË4×Õ®‡xIC`KE|É3øÊjªQÑ4\n#-\"”pææ¢#G@l–u=¸YæK9à©@æ@1™“pÛ›ÕçŠxUe¨B»¢„‹«iœ6éT€ô?ç´É 7Éd–(¡ŞĞ¢MnÅ^u¹\0ËÂZ\"Ñèª‚ÒÚìhTğÌU€‰»XEÈ£€¨Â{LXôV ÌB¤R¦³R©‚Å`©£—¦:±Ü\0­Éâ¨@%¥ÒºU`‘ˆàx:?cp4ˆ²:KËYòZû¬:È‡HiŞ¿nª\0è\\\r \"ŞGC¢qIQ •©˜´8µ\'‘Í´`Å/Ui­G*UÛ.³=¹âPÚÃ ë7;æ¯“ã€DåÎEHA©ÂŠM‹™ÓÔÍ\Zàt9¢ ]â/	·sõ` ,&+®¦,@±ÀaAÑ¥;éÆ!Hle‡¶ËoÂQá¼îD”>àUK$.‡\ZëA5,–V\0û¦9ºÌv:b€š3‚½¬:{BÖ”y2h·[w‚¨©&\0‚òQ£À3Rè\'Ó\0 Õ)cî”ó @djàèÃ)xÜsädhLHÁÁ0•gèØµbS®bÂ\\+.m‡?›˜”âòqØˆG©¦f‰B´:>p³(êùzFñ‡F¼CÛ‚Ut¼(ÒMññ–âÌ(B/ì<ãN-8b •Eh·0$}p7¿æ\r8¶ÑÜÓm#fâXSÅLj¦ÃRàÃhq\" Á¶Ğ pÛAÄ€‚k9@-Ö£’B²Cé)¢‰ÁEÇGá§vk»=©Õ7ô„‚CHÑ1)A¤ÃÉ£„Œr zì½‰=	®’ÄR*ŒBTÊ!Ò$YE‘\Z‰;€üã»*°¨Hc .’Ã”³diF\rDCN!@Ôç}‘1£Q*ÖPÜß°ñCÑ~vä¹\ZER¿€{S”qÅ‹SÏU Ş“šôßá‚’wÿÅÅ$ê$I6ÈExˆ„|m\"Ã©ÁQb`EĞ€Ğ¢A¤\0b‰d},áˆÇ¾ut;61‡ÊŒ «ÏÈ;hğ@/»@a\\ÆPnX½ò´9ƒ‚†„èieÇX†0/:-ÃOè¥w±ÇîPîô˜|RÇV‰ õÇ<ÆyC(|³§3ƒmIó2¬JK/haLf?hntÊ…¤†XfÇgğ$C‘…¯vDèrò!Óä|±S%ÑU…Î•C{ı¬¡‡ÎítŠ³ ô>¨\Z&>Ñ¸SzĞbrÆ€^ìù—@Ñ;ò@oùMÀFÀíc8ËZWv¾¹	>Ñ-i>œoX•€îŠ=‰+¶¼-¸&»›¯¼oÙ|YİìHPî¼Y¯·q’_¬?ÅîÅf“W ó³mdiŞgAºİ0Ebóí³g?n?ßlk›@°OÉv]OEš‘*•²®¦¯£,/®HAîHùxÏe¸Uª‰zˆÇEÛ—âƒ§Î]ëŠÑ6)ÿnÖøÖÚKJOÆ×ldå´Vƒ¤Üœë\Z³æåóí$I»Lãı6Á}3u­É.‚@Ä½çŠ\'ÂÒDqêàI&b¦!ö‡Û>-Èƒk¿ÙC©Şâİ2ypJ¡\n÷|#q‚Ìp…ã¤å/ó°‡›NjÖL®µÈ[ğ¹¡ı4¬Ş¾ñÇCh¿ÙCIæA	K.xÅ¸/.­\nKL‹ÃªÖÄÍC\n¬•æ»#´¼€V^óİZı¬ş<·x	e‘ÂbkOÉ¤;/&”„W™ôJÇB$é›M) %%B\"\rûì\"Cr‘TÚ¤û8Ì·ğş-Neå÷EËH’ªÓb£û(Àp‹fE—Xù£ÚÜbı‚­aÙ.%V;åÁG¦b@l*Şö¦İ;w4#Y¾ô_í!4¦÷i\"Aê¿:Hd\ZïÙWI·$gıÊ± 8ëO®½²©¨ÒÊÓÌXÆ[8„yËpÛ‡;.–K:2âmáğN»Ät‡Qó´ıAbsÅÛN# îH–É|Ù~sQÏâ˜ÊªYõÉÆ.Ê%<ê/NKWY±N£HÃ÷)SÚ$qÄ}vQ€w²üh>³‹Æ\\åHÈFMÒ·?„y¡)Â.C¬§æ`1%H»C˜Š“’4LIÊé£4¢ú‹ë!÷2ú¬àÂœÔ6^/‚ÃßèÅ¡UZÔ[¦?m#uÈJáÓQ.İ-‰mM\0¢µä¾D`Xo¼éI~¯üÎh,ÊşëÁp¿>ğÎI«DÀXê”hëCXK™à¼ïY_°nVåç€«‡EoDÇ¾÷\rö»ô:J¢­ÿî<ÂĞšïöĞ2Rì#yú¯ö¶©2™Í\'\n[\'!i\'\r)BÑºß®pb§`4µ/oÙ`¬ïC­òµŞû-´\'¡ÑÅöÊ2Ph£)ÃíyGr‘6Í§&ä×zFÛiîsŠ¶œfV}ıbBòåİı¯”ş.Aé?ÛÃúÄ†|î³,@ÜsŸ†ß\"mh­5Ëi\"t-ØNÛz\ZÖÓ­nÛCÙÈÚzÔÇw{0s•ÒÑ‹áfOe?Ô?Ğ ºS-Çíg—¥„j›†7dq˜õÚIïäûMşûrŠñ¸¨ÚïN&rõüƒ¾Ø¼¬ËÛò…bkŞúŠì)Kò›¸UŸ£	Âæp‚µ<ä	ÑŠÏ={$Øñ5Ï!-Æ(º``kV¹Æ€X0‹¦í4ìBY_¬¿ØCøLâTºZi>9îe¿”áè=¨PúÄTE9zæƒA¹° aªSĞXÑ‚\\îp–æ9,^Å|ufu…\'¡„ë:X;Ì°#6ñÖü\'äHwg>}ói8/Òº·²š„ïfˆåı=M”MT)tÆ¾ÜQ\n]nÚ‹ô\nÓéÔÒc°m,µ‚ø¼ş>ëHÇfi›O³XçûXöÖh¾-wU[	jñµEëcX—¸œœtƒB±à#]ã¯äüò$½N^¤\'?MûY>ğãSû¬‡üa!!Ñ–‡,»‡€x0{ø\r œ &Ÿå€¡ú“ÃÂß’*›Ø›oªq*‰¡êÃ¼BõĞs‘ş.ºù´œoÙ¡©õbî+QÎ€O<™œùÚh$3c^¦õ’¨¥yJ¥”•ôé!Âor8C}úÓ\n½ò}\"7ÄäôeÎ³<Ô¤Ë\' ×’èò\0TDvš†–hùM­ğºÊÌs,½ù£™a¥&bg·z%XÓZCabe´nÅB¡üŞÅÊVş„¼CŸKº&j€cˆbô–¨9ãt™&aT½“ı&»c¦´8§–•)úgB¬Ø¢¯né”h ¿üÊA1‡ü¼ÊSa%W©\\¥Ó$›/İï.Wi“\'TH`ZÑ£LGZÑ!or–Ê‰Cë*ëüç(¬’†~¹ùÏø¬,?«ş¬½ú\Z×$‰îÙÉúc©_¬¿?ûËzõ2H^§”mR¢¾_·Ê‘úü»2G*\r·¹¹{¦ÕJ‡1gµ\\[\rw`ÉFÏÿIFhD÷üùFnxğcımT’µZ¸§lÚIAÃ÷¤(hÆˆõ¦|¾¡º^•,W&ªïØnc\0ßœH¸>”—Ùß$!}¼XÿWÕæÅêÍo·M³oVï26Ç/VÏVÿ= kî`åÚ}×Ô))ª+\ZBs/TZãSÁ]ZòA(ITkX!ã”\"ÚÒrMÒ Ê«ÕõÌ\0?njW„&-éÑ.ŠÖîTw§ÉCyUÈƒ)²½Šp¯ãê –ÊĞ52Ââà¢{¯zuÏG¤y¬)p®0>àÚŒf×†E!5xaô²i(¢H9‰i-Óp»ÆI¤%Ò¸Ô¨Ü°å‚ÕU6pGÜ»‡D2£ƒ,\0òä\ro½4ƒÔWµ\"í%œHô«\"°ktn~pz\'	OØúHøiîó|UÌÎaˆe\r½D¨è¿à;.–ó‰®mê¯1ä¹ÅñN(z´‚ªÍMê«UÉIı€ÔéIı`TJ=ÇÒ§\'®5¹I\'Ù+5é=–\r\'U.€ğ‰¯ŠP\'ÅÂHíé‰ïzyÒsGÏá“ƒºbĞ¶ôW´xÕÑU¢ãÒâ†Xè¬?œ¸ó$ûO²ÒgÿœLs“h~U,io:İÑMzGÇ\'ÈdŠ>ú‹²¸§äsw?oò9;‡Cé³uzÜê7Ù‚j÷qJŒFLÑéyMq|¡j–Î‰Ÿ®qn^^¡µWEUOÖ¯|+äDÈ¾-MnéŸÿÀPH	ï[g9‡E7¹Ş5Ä¤º€^«GË#¸EpY9‡y.§6\\.N?@É|hBÍ£eÀ…]¼sD=ø]qf3šdóhYz‚­u˜\nÎåêôqwLû•Â5a½Ôi=—^,ÖÊs›íÓã$(;KwÙÌän°“Ug4«ıñÊ}ù•S}4C8—@Óm¥õ-§XlH\nË£õ:æ¨‚¶Ééi`2b.nEqç(¿äÑrÉ¢b\\bK×î»¦şªN\rsTFÜñ ıl5Öü‰§ <ZæóX;JêJ_Pğ5ˆ#(5?¥ï\rÕ×p¾·_h*É£]mVÊƒ¹²PzÈQ{E$»ãÑNìièOĞUåä¦8•›âÉEoÆC˜µñ+{]şGOiU\'€ô\\×MHO¿ºÔ[ÀŒ\"4lõÙéHufHoUÚ áÛAQuâq<ıĞì‹v¢À<Qm\0\'G3Ë±#ÇË]®­×f×\"ïÖ}İj«¾.³¢İ¢Éê€¹Ö§+4ÏáLä˜GÆÜ‘ÄæSÌ$œCÑn\n5iÇ[}\'n´kÛóºã­)Ò(DÂR_%áêCZv¤„Ş”ÙÌÎ¸¯×û¸ˆv1ûY|¹X?WˆÑƒR¶’\n÷Uõãš•*‰/Ó$/2©ùƒßgQD;+jZ*‡%a;˜rÉİÑ¤Ôú”!ÚuÆÑQíµ.1»‰Bn=[NĞg5>‹Ï•\\‹ï’+v®.èêePgÀ»$y@ÔW‘«ìƒF,J©\"RLÂQ®“<G)j‡è4Kq”’›Oy\ZÙ{‚œd;§sóxVîiî¹q¦\"ÚöK}Ò„æOÌ–¡o¸ÌÂv	ÕBšÈg\Z	±ì˜eŠ!-şá‰»ô÷¼(ÀæQ7‰O–­œ\'{ş²x‘`F«ÏŒCŞO©œP šËş£ı–%ØÖ*(Í—Iø\0Ÿ†°p¡zÊ-8é³§ç÷YÑ.¿ôÚæQ÷Y›héu\nÓr\\&ÓŸklÕİë+pÍÁ—à˜™TX\'~YTw­¹eãğ¼{ÌìÇ`Ñ´ìXPm4ŒÈRŒºïv‘!‡¡Ùî4L1à¤#uş§¸¥æx´ÅÙ|^¤VmÅ’\'q6Õ¼‚v¸,{,Å\0C<)N8>àßÍóµgggºÙÂHkûFıeš¹w™¯YŸ„-Rº\'ßftİFæş€·ƒÙaĞFĞ}q~è^IœZ´ékx@İ·#ç\0äAÉƒ\\^„[:ƒ\0’8T„ïG>ÿhv´»E×ây\09Åœ7mİÄó¤„úÃ4÷Ö{±çL«ÙbĞ~\Z‚-7ÃxÎ&¯Õy(sî¾èæšyx‹ùˆÏpqˆ~¶Kw^k¨¸¤~—±ƒ>ƒTº\nçÇy@§üY0”û|KÎåK’ìÃê¼ñŸ—°|PÀ<À<³$Xøà?§\\tö_X<ôfß†VÖ ó©cõáî\nÿy\Z–óåÅ Üˆìz“Hº4‡Ì,:–â‹Y…†3OÄ˜ü4±Ìv–pı%MêÇ%¼NÚ¬“‚ªıö4<OÀÄšHW|¢ÈEXAÊøw»E2Dö3¨$´«æûjÏrºAào °‰9„˜Ó0†6»\"Ú%GÙƒàÉ÷Šå¹b¶]cG,¹uğg¹iR>ò Ä‚#¿kÂ[¢ı-z–Ø`r‰°$Ì&°À’‚ ÏO¸ˆórŸQà,îóÓP&±4hosú2¿ª’’TáYQB³öt‘†ôu”åÅ)ÈÉUCÙê†Ê9t½zÕ¥9Nˆ7Á\'º%ë°z‚¢N–Â—+Ü\"ö#Ù`”®¤r¨7­GéPô¬Tú‹¡îÄ\Z†Şª˜\r¥“ê+»M1 7Q¨è÷e î˜uC—>ÊK“¾œ,@L¥(iT:‰å ÅÄ*†Ù¬tÔ|‡:\0Å¹¸†T`÷Ex,Œ¤UçĞ\nRª+Åè„øÃª†-Fİ*´\\~«†J¥ú;H¢ÚyÖ¹ópS`w%ôÎ+Ï_¸cWúJ¡~4\nJWµ+‡ÒGı^—Øp6µ|!Ê?–SÜZÔInKÀin\rà¹£·ÒWuÚñN~ÃD†RCÛa]ÉÌd¢î¬t*C=Š5L½		´ÕŞ„b°7®†yp¼\"¨Š`®”Ã\\¹¡Ÿ6W­ÚIWõĞÚî¿ğæ.kwa«í^I7©fµEªd1[]Ì)¼]¢ÃkKÕ.8 \'Í¿âjÊdÅ‚ş…£ˆ¢¾°ş4š	vÇÆµÅU§8,§!+aìÚ‘ëƒŞ}·åf_l^LB†&.Û’P·xÊ•F\0 ¾ğĞÛsºvÄàa^wœç‡¬Ógf|4±0z»$T^³ˆÖ¶­ö¤7Æàqf·K$Î6İ0$G}qÑ¥íˆ ÕÀ—O_Æš5Š”kŸ÷†O»¥ÉU¦ÙÎ¦¢Í†ÔôFZm#‹€şãèÃÅW/Rs<Á5ÏP5[“XaÚmi:F“<@›±UBeğ’É¦:›ì)ÑÎe\0ĞÀ\"éÁÈ[h®…ŸÖê;€Œ£ŸqØÀxÇ(—^†®¸kó¦ÀzË†â¸<‡(ñ‰~¤ZŸUïÏÎÌbØ±aìpxòÃ–³U³î›÷P [` ¦PÜ†	Ø‡«¦:Ã¯ûp¹€R`˜X¸éu\'´á-ÒUĞâ<p8…AiÂÂüæ`–aªA‚¼7¼õãyˆƒÁêò>-kú”şÂGŠEˆ©\n£Š°6Äi¡âANF5qú9o_Eãy\0*ØÅşŒ1†ê¸QĞ¸dx‘ÁÀ\n6á-£ñÁÌCG¹>†Ã[Ï1L9¥6^at#€t©\\«-È±ûpq‡{`à–ŞùúÊ¥u5\0¹Æõ\Z‚ğÈ7#årtoVŸwè50p£·õ‡	È j«½ß÷2:Õ&Çbïyk¸€,dÜ4xÑoáT#jºá.øĞÛWé:Ğ®ì|SßÖ7ØÏ‚Âèu\ZÒ8¯¾o>ì“ò-Ôú×Í£‡Ä9ƒ™Ğ@p8íê¼IîÓÖõUÂ¨­\"=ÓwÍÆ’‚¼ÌŠè+h³ù^¯~!ñ¾\\<Û;\Z¾IŞí‹İ¾`C¦Û»øOŒÒV×ÿùFÁùüİ®ü•1†fT>û.ùiÅa‡÷kàµ@Dé˜Û¼l\\ÎeQ¾püğ¥ƒô6M,5äëü‰?Òí.fÀòwÉMõÀ°;n?çô_ô_Ø÷ÏQH3ˆy\"D²Ÿ_Eä!#Û¼Ñ·g?‡ÛÇ¿ş?kFuæ\0','6.1.3-40302'),('201910272002472_cambioInscripcionEncuesta','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ÙrÜ8’ï±ÿPQ=*»{z¦Û!Í„[²g3²–ûxS@$$s›EÖ’,‡ûeû°Ÿ´¿°à#Á£J®ğƒUH$2	 3ñÿó¿ç{ÜÆ«Ï4Ë£4¹X??{¶^Ñ$HÃ(y¸Xï‹û?ş°şÛ_ÿıßÎ_…ÛÇÕ/m½ïÊz¬e’_¬?ÅîÅf“Ÿè–ägÛ(ÈÒ<½/Î‚t»!aºùöÙ³7ÏŸo(±f°V«óû¤ˆ¶´úÁ~^¦I@wÅÄ×iHã¼ùÎJn*¨«·dKó	èÅúMØÿÙÙÛ}Ót½zG„aqCãûõŠ$IZ‚áøâçœŞYš<ÜìØü²£¬Ş=‰sÚàş¢¯n;Œgß–ÃØô\r[PÁ>/Ò­#Àçß5tÙÈÍQwİÑQî£pñ¥uE½‹õË<Ê6·Y¯äî^\\ÆYYU&ïY	%$!ÍÏúæß¬ÄJßt|ÁØ§ü÷ÍêrûŒ^$t_d$şfõ~GÁ?é—éï4¹HöqÌcËğeeÂöé}–îhV|ù@ï›1DázµÛmä†]3®M=¶7Iñİ·ëÕ[Ö9¹‹iÇnŠ4£§	ÍHAÃ÷¤(hÆæòMH+r*½+}İ¤A”š:4y•${`³ëèŠ$é«Ï}O`4/8„~JÓ˜’ÄÊ=\r>kpWŒÚ™B0Ã{K>GÕ\\ICq¨h\\ÕÊ?E»Z;p|+U~¥Ûi,‰Xçö&İgCçcj¨ø‘Í-ìñÎ˜bch–c6a-Tqæjè0æ«¹â›×®Ç´©âX•é°«+@xoz­¦ÕußPw„“ÆCûJÒí]FÛşØŠË‡õêš<ş‹&Å§‹5û“1BôHÃöKƒÃÏIÄìÖ¨ÈöF½Á¦$È¢]P-÷5¢şCñ2(¥éã»ªTš÷Šæ!uWº¨¶ Œê\'ò\0$—åh:¾ë×¨Éú Êrh½º¢Zš¶,èiAµİv5{e\rVP46\\Ëu9¡øzİ@uÈ¶`£•:LZ|ñšíÈÆZ²EèÈªV2Ú´v[¯‘V¹L·ûÄe‰äšÖE´¯\'¸.¤œyfù®g£]:Êš&.ëâeF	OÃù×³ªáu\ZF÷Q€ b«*\r÷‘<ä rbµlf ç•’R¨hQµ†«ö,øÙ‡Ô>§`n…ÊœÖGê(º­è¥:4&«}R”³+J½xt>,$]ñ-\'Lû©Åª¹ÔqINı¥Y\\ŞP¬½`«\"˜ŠR‘BA¹¢½µÓoéœt­O‚<» Ë»¥ãh†­_AczŸ&ÓwĞx“lò~è–Dñ§\'¥yw•~fY’•0ö[şüdBœ¯ÒmDñ(‡,OÊ˜{Âh×I®´NvÅª…Ô´¡ï€ÅGR]®\\ìŞJ,´(vµ ›B\rzm\r¿Óó~.‡œœ·­Ok%Ú×É²h†•¥<7š¼—]”O?¶LO®4|Ÿ2ñıîF_³ì·¦µhÎò+@8É0Î‘SØ»ÖóÜø˜ßªåi^ç×Ó>æØö19}œdõöeôù´1Cpic…—iRÀ÷2¾ÚY½e{ªmÄÀic¶üşpªËstïtÄGû*ò	a[¢l{¤b×\r™~k[·µR‚×TÛY‡U±i¶°5l`û* (²mí%|€UÔ6>Fh_\'ÃèdÑÒû%–¯%v¸İ•ğÀımÓş$ìó\n»ımİpÇİ“Çîa¨ñy=v+¡>gÛÑ\\ˆƒı.½’h;òè\rçñÜ>ê©<4d›òÛGÆ±ûö\' µĞ_îÓŞùÉ9GWX½Ia\ZÁ1¡Îä½Ôz£5îamp­öô©®6x•T ¢œ\'t[\rö¨®K1üø*ƒp¼2Ælyú€ë‡½ÅğÿGš‘ó|âûê+ÂX·åZ„»Jƒpå„Âs5n©BdµTqØªŒíZ¯÷©·p¦·ô¢7:°\ZY–¯¥`Øbr5üEêÅqÈ‰HÙòdG£}ÍdG–Ò\r¢my?ı>c51û?¬W7)Çh2|¬¹¦Q5ƒø¦i{â´¯9‚ÊBòåİı¯”şŞõTE&õ_M¥OlVy2ÌËûyîÃÁ, \0\\û“hú\Zg¿>BÂ…\'~+vó*	ö”²BNq“ÈÙ²”\"ñéd¿\'ˆµ^–Ü\n’ß#(—)†¯RÁÕìÅ“*ğP•¬\nJ¡–p#äU(:H\'–\rOÊík	[rà©[’¥˜íyç­¸Ó\'õŞõ¢SèîçaŒéGH™\r:àÄ]1j`˜\nlŠ%åW}U”Wäª…É÷UÇ ^¾~ß8ü>ªo~ÒKë¿éî¤ìÏcâÒqŒ;‘©ÛøhJ>²ÒÉóù¨4Qf\"áÃÕ0äÅ%):W.÷R¹×„Ñ3ØÇÃ.»Ö\'AÁ8‰ü­¥Ï$N³l·_ÊäG˜Cí!ÜCº3îoÃã3$\'&Öô5J¶MNÛx³r½AöäáÄïÄ_·lûqkÄ†·\\í~U@+)ë^s¼”rÊy	XÁˆêç&ªÉƒÇ.‚pÒh_™@gi®!•^á4‰|½¸\Z´Æq	+èc‘^Í›s±“ú!§Í¼¬\0ÇÍ@±¢ :ãé)º¢¤ÔR=zc¨\'\Z¤YH˜ì\r´Yx\0\'õ„‹nTìã’–Î¨*«Gä\'ëÇ>à™-{%ôÍOü‰öuŠğ9EøĞSè3*s†>Ÿ\"E\ZkCT»5\0ŒSUJÕ`UµŠ—İõs¾w\\Ğš§5ÒyÖ°};uS¯,1ù<ıh¢-y Ó‹Y:½®Ÿg‰œM½º”²=Ç‰\0r–1äÀNuî·œâäüXßä¯còĞ¿ì…«Ò›/yA·½ì7«mÎö-qt×«Ï?ÙªÏ»¿ü…||ÿçç?~÷\'úì‡K\n†4‹¿0Šó£éqM·w4kw4û$$LŸıBâ=ûùL¡Pû:j?××ş¸§9_]\Z¡ú¯4LÄßàÚgBı?éë¿Î\"¾ö÷úÚ7„Ñ¯ÿg•Kj~à?¾ÌË£jÒ8PzJ±ÛWI¸²ÈUÙ{PsŒÍX$Ú1¦`üz±şƒ2$=ìÎ‡óÎî“ˆ°ÕÉfë1ÍÊ‘Ä—ÌÆa,\Z%…ºxGIíHlFCjj¹ò—3Ñu\"—\\ÑMÊEÛL`»Ş9ò¨ht½I¦‰‰Pçml¹©O¾bq ËhÜäÎîaWIêµP½µœÍØ)Vôhã–o~ÔbşÃ‰åHBdV)’Èk×w·^D‚ÔlõØ\\kR×»p¸&À?â«8c‰”â\nÃËwÕ£×ØOöƒFrdq û´I“ŒÀ’Ó®ã&‹È‰œ{L?¹Z{e Ã,j§ (ÌÆ3GjŸÈ‰áô3¬µKrÍ|öˆ˜mN•Æ8Î…í‰Ù¤ãíôI)ÔÔ4¾/5Èb°ëáª.1Ñ46­›9L[Ñí9­#Õ\"Ü¿¯‰±á±MnÕÓŸØ3šş¡NKN‰Í´¸ÌÀcZjÛõ¿,sYr•™Üùè h1Î9z–áÓ=¦ÌıdbgggêkAC›Ñ:üp´c+4}”\ršH.)!l©€<W<XãûÈ>ŞùD\'Š¥”5tZ\\Èºl_6\\ ¦ş\ZQĞ””ağ.ÇÏXÂdyÀpÔ¥|è1âí×)]¦2wÙ$U8\n3ˆNÜ##.›_(\"½Ÿ×:Ç[€ vÓz4“¨=ÏÀ*ñ,ODkB,Ç¼2ĞÎ%˜À“?Àä/VŠjL^°˜‹c\0¢Úu-fîQ3èØ,RàÅ¨‹’±a:œ`I˜yEk×wC–%í:>á¨Áğ³°ï†R–Ú\\©»ñ°˜o‡\0ÖÒ¤é‰³$q9a\r“\r%ˆ‡€¬²ò)ó”f1ŠÅ|,¤ÖáXyIÃXÜÛè#´Å„§Ë+)#2³1­Êz™GyQ&æ ·¡ÕÉÖ\0â¶¾®«¡=¸Äm&|f`6ÑíPˆµ4¿Ù(7¸ú$¼¶°NÓc2/=m¦ßÊ\'á¨E6€XÿórĞ‘mÿäŒhØä¢éÑ¸£Ä6óŸ=Ë`IÕfö7BĞ˜q²ÚôÌgÎ[„uğJØt[dSê\'^I5fÏVæ\\LP?1—™ØÌHx;8RÇéW:C2¬I8m‘…O‹ÄÜudK ”N	›omn¥~¶Åthöì¤KË4×Õ®‡xIC`KC|É=øÊjªQÕ4\n#-¢”pææ¢#SG@l–u=¸YæK9à©@æ@1™“pÛ«ÏğªÊ,P…vE	WÒ8mÒ©\0é~Îi“A o’#È,QB½¡E›ÜŠ;xÕå2\0NÖáˆ‡®*(í™\n¹\n0Ñq×\0«(yUx	‹şHE;!R)ÓÇY©TÁb°ÔQˆ¢©G,7@k²8*P@M©´îCU\0X$\"8ÎÏ\râ…¬ÎÆr–¼Ö>)«ò!Rš÷o¥*\0:—Eˆˆ÷ÑP h\\RHe*æmNíId3-AñKE•EÚÓ#•ªm‰—ÀYî\\q(íf‡õ›ó×Éq@¢qg‚\"¤ Ta	Å&aæ,U¢¹Bœ.G”¤Kü%AàV®”ÅdÅÕ”(8,Ø/ºt\'İ8­¬ĞvùM8`!ªœ7âÀˆÒ¼j‰‚ÄÅ\"ãP£c=ˆ¢†ÅrÀ\n`İô!G—ÙNGĞrF°—MgBÈ–2OírëN5Õ@C>\naxF\nıd\Z€\0¤ :cÌbˆR\r}8¥{ì	)8fò»VmÊUL˜kÕ¥íğgS“R\\>N\0õ(Õô!À*QˆVÇnV…B=ŸAÏ¨şĞˆwhY°ŠUº)>ŞRÙEè…ígÜ©Gl¤²í†¤îæeŞàcÍ=İ2b&5UÌä f:,E\0>Œ\'\Zl\n·D(¸–Ôb=*)¤s(=E41¸èxà(ÜáôÃnmeÑ“Zıá†Pp):&%ˆt8y”QT½7Q \'ÁU’˜BJ…Qh‚J¹1DÚ€$«(R#qĞƒ|W¥)`ÄEr˜r\'YšQÑS(õy_dÌhÔŸŠ5÷7lüP´Ÿy\nBcHêå\0¸7EW¼8õ”ñÔdÿW”¼û/®&Q\'aH³A.ÂƒT$äls 2œ\Zü2J,°\ZZ4ˆ@,‘l ¥ñØ£nÇ&æP™lõy\rŞ\0èeè!ŒËêÁ\r‹ Wv g0ĞĞ=­ìË¦àE§eø	]£ô.öØ ĞÊ“¯OÊóØ*´şââ˜Ç8\nßìiÁÌp¶¤yV%ˆ¥´0&³47:åBRC,³ã3x’¡BdáÂ«*N>dš\\°À;Uâ=Q…Qè|Q¹1´×Ï\ZzèÜN§ØBïƒ\Z¨aâ;¥-&gèÅ.à ßà(ÅãNü\0Ğ[~°pûNç²Ö•on‚OtKšçV% »bOâÊŸ-o®ÉnÇæ+ï[6_V7;”ëÇoÖ«ÇmœäëOE±{±ÙäèülYš§÷ÅYn7ÌØ|ûìÙ›çÏ7Û\ZÆ&Î§d»®§\"ÍÈ•JY×Ó×Q–W¤ w¤|¼ç2Ü*ÕD=Äã¢íKñÁSç®uÅh›”7r\'¾µö…Ò“ñ5Y9­Õ )7çºÆ¬yù|;É€gÒ.Óx¿MpßL]ëF³‹ u¯ƒÃ¹â‰°4Qœ:xÒ±Ó{ŒÃmŸäÁµßì¡TOoñn™<8¥P…{¾‘8Af¸Âq’øË<lÅá¦š5“kOä-øÜĞ~\ZVoßøã!´ßì¡Ï$ó „‚%–wQá2ĞJ °Ä´8¬J&®hR@VšïĞşAò’¼æ»#´ú=XıynõÊ*%„ÕÖ šI·;^L)	®:é•…JÒ7ÿš4R@JJ„D\Z\Z÷ÙE‡>ä\"©´I÷q˜#.áı[œŠä÷EËh’ª³b£û(Àp‹F¢KO,Aş¨6·_°Õ!ˆíRjµ3|t*ÄF¡âmaZĞµsGã8’õKÿÕRAczŸ&¤ş«ƒF¦ñ}•ôqûÑAsÖ¯Š³şäªÑ«3U›ƒAyšËøaŞ2üìCË%mñ‡¶px§UbºÍ¨ÆyÚ~#Š±Ù„âm§QPw$Ëd¾l¿¹˜gqLeÓ¬údcåõ\'ÑU$Öiiø>eF›¤¸Ï.ğNÖÍ§ƒavñ0×Ç8Ò²1“ôíae^hŠ°Ëë©¹\0XL	Òî¦âd$\r3’rú(¨şâºÉ½Œ>+¸ğ\'³\rƒ×GÀ‹àğ7zqh•õ–ÙOÛH²RøtŒK·ƒ–…Ô¶&\0ÑZs_\"0,”7Şô¤¿Wg4„²ÿz0Ü¯¼s²*0–6%ÚúÄ`©#8ï{ÖÁ¬§›UùùàêaÑÑ±ï}ƒı.½’h+ã¿;B#0´æ»=´‡ŒûH…ş«=¤mªLfóÉå\0…ÉIHÚÇÉÄƒ¡è	İoW8±S0šÚ—·l0Ö÷¡VùZïıZ“Ğèb{c\n(´±”áv‡¼\"¹h›…æSòk=£m‚4÷9E[N3«¾~1!ùòîşWJ— ôŸía}bC>÷Ù\r î¹ÏÃo‘6´Öšå4ºl§m=\rëéV7Çí¡,dÓ.×ufï©\"rÙÁI5î!\"U¢HwÙ€›=•UVs$ıÑzİ~vPÔ†5¼L‹Ã¬%2½“oMùïË‰)ãPTÛïNïê®\n}zÙc3ïÓ™(ÛC³¯è”f©ë&\ZÖgÃƒ°Ùò`-y‚G¼àSn4,-Æ(ºckV¹Æ€X0‹¦í4ìBÙ\n­¿ØCøLâTº°i>9®e¿”A	èíªPúÄ®/åë1˜åÂ‚„©öVcÅ rÉEXšG¶pxóÕùÚ„Ò¸ë`í0;ÂBŒØDq{ğŸyİùôÍ§á¼LH/ÜõjÒÈ›!–^4QQ¥ĞSøÊH)t¹¿,Ò+Ì¦SKáÄd)	â_ğ‘#\r9Ò6ŸFXçûXöi¾-w\\)jñ\rEëxX—¸LœtƒB±à#]ã¯dÿò$}›N¾©\'ïOûY>ğíSûX‡’üa¡!Ñ–‡¬»ç…x0{øe!œ &Ÿå0¤ú“ƒàoÉ•Ø›o¦q*©¡êÃ¼JõĞ…¹H—	İ|ZÎcíĞÌz1£–¨gÀ‡£ÌaÓ|m4>\Zˆ\\/“…IÔÒ¼2¥RÊJûôáç<9†¡‡>(j…^ùê‘brR4çYÒe)ë)	tYE\0*¢ÏEÍFCK´ü¦Vx³eæ9–^ÒÌ°RÜ³“^	–ç´ÖĞF˜X­£“Xèyƒ7½XÙÊKÒwè#,Ce¢8†*FŸuˆš3N—iFÕëÛoò·û8fF‰sj9àQ™¢|ÄŠ-úê–®úËO¬sÈ¶<öP2 ÊU:K²ùÒıî2 6ÙG…´¨=Ê$§ò&ªœ´®²^±ÁÂ*é—›ÿŒÏÊò³êÏÚ+ ¯qM’èí¬?–ùÅúû³¿¬W/ãˆäu¢Ú&Ñêùq«Ì«Ï¿+3¯Òp»‘›»ço-¡äyÙ[KÙj¸KazşOª0BË º‡åÏ7rÃs€ëWr£’¬•àş²i\'\rß“¢ #Ö›òQx†êzU²\\™ş¾c»|³#áúPŞ{“„ôñbı_U›«7¿İ6Í¾Y½ËØ¿X=[ı÷€®¹•k÷]SO¤T«®hÍ½PiŸjîÒr—ïBIÍZÃ\n§Ñ––2Iƒ(¯¤ë™:¿İÔJ„&ÙéÑ\nE{îTw§ÉCyUÈƒ)²½Šp¯ãê De¨ŒŒ \\¢sïuC¯îù87™B\07Aã®ÑláÚğ¡¨¤F¯›†‚ Š–³Ğ˜Ö:\r?×8©´±T\Z—p•¶³^²¬ºê®ñˆk÷HÇèÇ €ì{ÃÁ[‹¦r õUI¤½ƒÓ“~UÄVÎMÂNï$á©[	?0Í}¯‰Ùù#Q£¬¡—\nı|‡Â¥ÕrŞÑµMı-Æ“>·Ø>ÂiJVQµO}£*å©:é©Œ*ï©çXú¤§Ãí£&ãé$k¥&ièÑ²á¤Æ>ñUêdX¸\0©ı/=á]/OvÎáØ9|ÊQWÚ–ş†ï¢:ºIt\\VÜ:kÅ§=éş“îG€ô9E\'³ÜÀÔœ_KÚ\nîè&½£ãÓn:Š>ú‹²¸§ä3‚ßoò™@‡Cés€zÜê7Ù‚j÷qJŒFLüéyMq|¡jîÏ‰Ÿ®qn^Ş µ7EUOÖ¯|)ôDÈ¾-Ü8Ò?ÿ¡Ş·Î8r‹nz½kˆiu&\0½V–\rFp‹àr}Wò\\’O?l¸Ÿ~€’ùĞ4GË€»x-æˆzğ«âTæ€œbt|O*5_çÑJÇ«ô0kKûéã9ØªöBÇ5Aôê¡KËµŞ&õØÔEÀ^ÌîĞ¼læ@r·³´ÓÑhDö;(æWNõÑÎÔ¹\\œn’Ö·œBØl˜G;ëujÍQm“jÓó¬JH®¹øŒ;@©*–K5ãrdºvß5õ7uêÄš£2âéwìcÍŸx6Ë£eN1%æpµ£dÁôß¨8‚RS]ú^v}\rGöò€f¥<Zyh\\Ìı*ĞÒCÚ;;\"‰\"vbÌB‚^/\'Ç©<OŞ~3nBÀ_¹ÚëRIzj«:—¤§\\7¹$=]ôRo3ŠÒ<0é³³‘ê$“Ş¦´ÁÂ·ƒ¢ÚÄã8\r¢‰íT!£Ú\0Î³fÖbG÷Ä\\[¯Å®EŞ­ûºÕ$§úº$vˆæ½æZŸùĞ<‡3‘`sGş›O1“p:F»)ÔdTOşúNÜh×¶;f¹ãr¶)Ú(D\"\\_%áêCZv¤Dñ”‰ÑÎ¸¯×û¸ˆv1ûY|¹X?WˆÑƒR–’\n÷Uõãš•&‰/Ó$/2©©ˆßgQD;+jZ\Z‡%a;˜rÉİÑ¤´ú”!ÚuÆÑQíµ.1»‰Bš>[NĞ\'H>‹Ï•´ï’+¶¯.èêeP\'Ó»$y@Ôg›«D†F,J­\"RLÂQ®“<GÙn‡Ø4Kq”è’›Oy\ZÙ{‚œd;§sóNxVîiî¹q¦‚ãöK}ÒDùOÌ–¡ÏÁÌÂv¹ÙB›È{\Z	±ì˜uŠ!Ãşá©»Lú¼*ÀæQ7‰O–­œ\'{ş²xÜ`F«÷ŒŞO©œ› šËş£ı’%œ­UPš/“ğf?\r`éBõ”[pÒgİNÏ;ï³n£]&~é-´Íû\"î³6Ñ:ÒÔ)L·Éq™L®±5t¹,À5»=^‚cf2aøeQÛµæ–¶Ãó®1³oƒ]TÓ²[`Á´-ĞÔ2\"3Hé6:Vè¾;œ‹ÙÈàp§aŠ;¨‹ğ‡ğÒÅ-50ÇÀ­-ÎàK%µi+–<‰½©æY´ÃeÙc)¾\0âIqÂñ±\0ÿŸ÷¬=;;ÓÍ¾FZŸoÔ_¦™{—¹ğšuğ¥BøDJ÷zÜÌ“®{iÀÜğr0#Zš¡/Îİƒ‹S«6¨ûvä€¼MyÊ€Ë‹pKgĞ@‡\n’ğıÈçM´ƒv·¨ü—!·ÌyÑÖM<HZA¨?Lsa½{Î´š-í§!Ør3Œ§ò’ÎC™sw¡›kæâ-®äs >ÀMÄ!jøÙ.Üy­¡â’ö]Æ6úRé*<çíòguÀt2î{ò-9ÿ–/I:Vçÿ|¸€åƒ:\0à	x\0\'Á3k‚…7şsê…A{ÿ…ÕCÿşömhu\Z4p>u,¢¾^Áã?OãÀ2`¾¼„‘]oI—æ™UÇR|1«Òpæ‰Ò“ï&–â€ÙöÎ³¿äV¢Iı¸„×I›uR8„j¿=\rÏ0±&ÒŸ(rV2şİn‘‘ı*	íª9ä¾Ú3ƒœnø¨lFb$!æ4Œ¡Í®ˆvÉQö 8dòµby®˜mÕÆK.|ÆYnš„”<(±àÈïšğÄ–h‹î%6˜\\#,É³é‚,°¤\"èó.â¼ÜgG8‹ûü4ŒI,\r$ÚÛœ¾Ì¯ª¤$UxV”Ğ¬İ]¤!}eyqE\nrGrõˆ¡luCeº^½êÒœ\0;Ä›àİ’‹uX=AQ\'KáËnû‘Î`”®¤r¨7í1Ò¡èY©ô\'Cİ‰5½U1J\'ÕWvšbAD¡¢ß—¸c§ê¼ôQ^êœôeà|`b*uDM£ÒI,)&V1tØèf¥£æ;Ô¨ÎÀ}4¤»/‚Àca” ­:‡VR])F\'ÄVe0LuRh)~«†J¥ú;H¢ÚyÖ¹ópS`w%ôÎ+Ï_¸cWúJ¡~4\nJWµ+‡ÒGı^—Øp6µ|!Ê?–SÜ©“Ü–€ÓÜ\ZÀs[o¥®êİµãü†©¥†¶Ãº’™ÉDÛYéT,†zk˜zh«½	Å`o\\\róàxCPUÁ\\!¨‡¹rC?m®Zµ“®ê¡+´]áÅ],Ö®ÂVË½’n2\'Ìf‹TÉb¶º˜Sx¹D‡×–ª]p+@N.šÅÕ”ÉŠı[Å|aıi,ìk‹›NqXNCVÂØµ#×½ûnËÍ¾Ø¼*˜„M\\¶% (nq—+\0@|á¡·ûtíˆÁÍ¼n;ÏYg!ÏÌøhb)`ôvI¨¼fQ­m[íNoŒÁãÌn—<Iœ=l$ºa,Húâ¢KÛAª#.ï¾*Œ5	j”sP®¼ß:<í’&W™f9›zˆ6KRÓiµ¬ú£—^¤æxŠk¡j–&±Â´ËÒtŒ&y€c«„Êà¥#›nèxl²§F@8—@‹¤#/Iàñp­ü´§¾xÁ8ú‡\rŒwìòqéø`ÑèõaèŠ«6X/ÙP—ç%>ÑTë³ê=àÙ™Y;6ŒOaØÒÁlÕ¬ûæ=T È¨)w„açÃUSİÁ¯ûp¹€R`˜X¸é¹Úğ\'ÒUğÄyàp\n!ƒÒ„…ùÍÁ,ÃTƒ\r<\nxoxÛÇó0(ƒ+Ôå}¼³¬éWR.ø)!¦\ZŒ*ÂÚ§y†Š9ÍÄéçx¾uç¨`û3Æ@ªãF@ã’áE+Ø„·ŒÆ3Uäúo=>Ç0å``”Úx…Ñ¤KåÚlAnŒİ‡‹;Ü·ôÎĞW.­«è¼È5®×„ß@¾(—[¸ {³ú¼C‡Ü¨½­GØL@~\0U[íı¾çÑ©69{Ïó\\Ãüc¡ÃMƒíø\'œŠcDM7Üåzû*]ç\0Ú•oêÛúæûY°]ø½NC\ZçÕ×óÍ‡}R¾…Zÿº¢yôĞƒ8g0\Z§]7É}Úº¾JµU¤gú®ÙØBR—Yİ“ `ÅÍs6ßëÕ/$Ş—Â³½£á›äİ¾Øí6dº½‹¿ğÄ(ıguıŸoœÏßíÊ_ùC`hFåó±ï’ŸöQvx¿^D@”¹ÍËÆå\\åÇ_:HoÓÄPC¾ÎŸø#İîb,—ÜT»ãösNÿEHğ…}ÿ…4Ã˜\'B$ûùUD2²Í}{ö“ñp¸}üëÿ:}[ç\0','6.1.3-40302'),('201911070031045_metodo-pago','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ËrÜ8’÷Ø¨¨ãDÊîévH3á–ìÇŒl‡å~Ü	ÉÜf‘µ$Ë!ÇÆ~Ùö“ö|ã‘‰A‚Ur…V@\"‘ÈL$€ÌÄÿıÏÿÿíq›¬>“¼ˆ³ôbıüìÙzEÒ0‹âôáb½/ïÿøÃúoı÷;mW¿tõ¾«êÑ–iq±şT–»›M~\"Û 8ÛÆaÙ}yfÛMe›oŸ=ûqóüù†Pk\nkµ:ÿ°OËxKêôçe–†dWîƒä:‹HR´ßiÉM\ruõ6Ø’b„äbı¤ôÿüìí>LH¶^½Lâ€bqC’ûõ*HÓ¬JŠã‹ŸrSæYúp³£‚äã—¡õîƒ¤ -î/†ê¦Ãxöm5ŒÍĞ°î‹2ÛZ|ş]K—Ø|u×=İ(å^Q\n—_ªQ×Ô»X¿,â¢¤së•Øİ‹Ë$¯ªŠä=« DADŠ³¡ù7+¾Ò7=_Pö©ş}³ºÜ\'å>\')Ù—y|³z¿¿KâğŸäËÇìw’^¤û$a±¥øÒ2îıô>Ïv$/¿| ÷íâh½Úğí6bÃ¾Ó¦Û›´üîÛõê-í<¸KHÏnÊ,\'\')Éƒ’Dïƒ²$9Ë7©É)õ.õu“…q¦ëPäU\Zù]W@W¤’„¼úLÑwFŠ’Aè§,KHZC¹\'á§€åÄÜ¥öGªôğŞŸã‡z®È?Ô$©kŸâ]£¾*¿Î³í‡,á„„¯s{“íó¢ó1ÓTüHg”æxçT±Q4«1ë°æª‚835T³Õlñ-\ZWcÚVq¬ËTØ5 ¼Î7ƒVSê:ïG¨;ÂIã¡}¥Ùö.\']tÅ¥†Ãzu<ş‹¤å§‹5ı“2BüH¢îK‹ÃÏiLíÚ¨Ì÷Z½A§$Ìã]X/3÷5¡şBñR(•éãºªÔš÷Š±Wº¨tA˜ÔOÁ\0l–£ùønX£fë#–CãÕÕÒ¤c@Osªí¶¯9(k°‚¤±áZ¶Ë	Á×ërB©\\a6Z©Ç¤Ã¯Ùlª%›‡¬Úh%\r¡uk·ñ\ZÙj•Ël»Om–H¦Ùi]Dûz‚ëbT3OÍ#×õìc¼Ë&YÓøEÀa]¼ÌIÀÒĞÿzV7¼Î¢ø>TLÕS­á>¨œhA£Û(X¥$JZT®a«=Kvö!µÏ(˜[®2£õ‘:’îD+:©NJIkŸ¥wE©ŞÂ‡…¤/¾e„‰a?¹X67€:¶¢\"È©»4‹âË»Šõ¡Œ`]SQ(’((–CÔ3·v†-İˆÓ€¾õI½²¸[Ú‘$‰=lıJ’û,¿£$û$Ègï‡lƒ8ñpzR™wWYèf–¥yc¿eÏOfÄù*ÛÆaœLrÈò¤ŒÉh ŒrdêAëd_,[h@Q‹jñXÌq$ååÊÆî­ÅB‰b_B°-T ×Õp;=ærÌÉy×ú´V¢}İy{XYªs£Ù{ÙÅÅüC¡ëÁüäÊ¢÷ïÄmˆÈnò5Ë|kÚ(€ná!¿„“ã9‡½k<Ï­ŸÁˆù­[æÕï¼ö1Ç¶)Èãü$k°/ãÏ§‚óD³8ºÌÒ2]/ãëÕ[º§ÚÆ,¬6fËïçº<G÷>aO|ôˆp¨\"v%Ò¶G(¶İ©·¶\rpp[+!xÍµµ8Q…›gÛÀ¶¯\\‚Ò$ÛÖAÂGXE]ã“a„öu2ŒN†©¼_nùZb‡Û_	Üß¶íOÂîWØÍoëÆ;î<vCûõØ­…úpœm\'s!÷»ì:Nãíp‚Gg8”çöñ@å±q ÛŒİ>R®Hì·?aĞıå><‘ŸœstÕ›T¦	œª\'ì¥6Ğ£­qkkµ£Ou½Á«¥¹e<¡»j°GuSŠáÇV…ã•6fËÑ\\…8ì-n…ÿ?²<È1Ï\'¶¯¡\"ŒuW®D¸¯4\nWFØ	Œ0Sã–HD–K%‡- ÊÔ®õjŸzgzC/z­«–eÙZ†C!† SÃíP¤YÇœˆT-Ov4Ú—\';š³”®Ho«ûé÷9ı«Ùÿa½º	ƒjŒ:ÃÇ˜kZU3ŠoÚ¶\'ÎAûòT_ŞİÿJÈï}OudÒğÕÒTúDg•3gÃ¼ê‰³Ÿ}>pfñ`ÚŸ„@Ñ×4ûõ	.<ñ[9°›Wi¸\'ŒMrŠ›DÖ–¥h)ŒO+#ø}ğ€XëUÉ-\'ù‚b™døJlÍ^<©UÊª *	7A^…j £tbÕğ¤Ñ¾–°%Gº¥yöÚwÎŠ8}rQßÙİà!:‡îqF™~‚”9ñœ[RfQÖˆ¯?¯oLÛ¶Å‚­¿JzŒ)²UüŸ¹j~/hiµ9şêkh~Rµ¸ş:öë/ó£Ÿ¤òQ#ãš¶\'>š“Œ4·?w˜ÖKOÄ)ÜÅZƒÆ„\"IçŠåN*÷: ô÷É¸3Ò¾õIPpNcwÃìsdùfâ/U%Ìw÷®<í÷·ñ¡ Œ+úš$±\'£mœY™5æGóğâv¹ Z	¶Ã¸µ@`Ã[¦ö°* •¤õ¯9]®K±éh¬ Eu‚#šÕôÁaÁ8i´¯œ£³‹47*t’Æ®c-ZÓxŸ•ä±Ì®ü¦Ş\\ìR`ÌÁ6++ÀÉ6P,©\0¨ÎtzŠƒ.))¹TŞê‰„YTöFÚ,,€“zÂE7.÷‰‡ü¨•Cmõğüceı˜ÇV“0\'åhˆ¡ù‰?Ñ¾NÁD§`\"rŠ²FÅÃg”õ)¨yÔõ–2\Z¶_ÀX©T‹•«8Ù]?{Ë­mqZÃp!õ³†í»©›{eI‚Ïó&Şd~c1Ïæ×õ~–HoêÕöp ’m\'ÈYÆ˜3\03Õ¹ß2Š“q™}S¼N‚‡á1\\•Ş|)J²Üm¿YmºoIâ»A}şÉT}Şıå/Á÷á÷~şãw\"Ï~ø±¢`Dòä¥8;:×d{GònG³O£€ê³_‚dO>“¨ÇÕ¾Î¸ÚÏÕµ?îIÁV—§†«ş+‰R¾Áw\ZøŸö9WÿOêú¯ó˜­ı½ºöM@iÏÖÿ³Ì%\r?°_ÕQH=é-(&ßí«4Z¤ÅœµÆ¿¦,ï(SP~½XÿA\Z’\Zvï®È8‚yMxØòdÓõ˜äÕ‚$—ÔÆ¡,\Z§¥¼xÇiï‚D†ĞÔpå¯f¢ïD,¹\";’V‹¶Àf½3ä‘Ñè{L¡Î7Û˜rÓçE?ã@â—É¸	HÓ=À®óá+¡\Z{g9ë±“¬èÉÆ-\Zßì¨ùT‹3Ë‘€ˆW)ÈkÖw¿^D‚äÄøØ\\+²äÛp¸&À?ü<S‰MÃK­5 ×ÚOæƒFÒq1 ‡M³Œ€I‰iÖñ@“EäDLs¦\\¥½2’aµS¼ñÌ‘Ú\'b:õ+í’‘\\ãÏáÛ©±RØ!#Ç¹°ı\"áM:Ğî@_¯BMMíSV£,³>®ês ÍcÓj°ñaÚjˆnÎi=©á6ø)OŒ\r4ïz2«.ŸiÅœÑÔo‚\ZròDl¦ÄÅ)©mÖÿ²ÌeÈUzv²ç£ƒ` Å8çèY†Í,¥™b0Í”uÉs¬\rmF›ğÃÉ­ĞLU&h\"i«t„0¥ò2òhï\"Oøxı‰NC)ké´¸õ‰ÅL¸@Î26¡ IÙÉà}:¡©„\rH(á¨Ê.1`ÈÅÿš¯Sª¤hö²;Jªp<ˆNÜ##&›_(\"}˜×&Çœ[€ vİz4“È={`™x†\'¢\r!–ã	V(çÌàÈ`#E5%¯\0Xøâ€¨f]s¤Y„{äd=&‡x1é¢ÄGlè#gX’8<¯HaÍúnÉ²¤]Çæ6Õ^`¢Ó	öİPvT“+õi7Ş\0şv\0i\rMš8Kr“~V3ÙP.Ú	xH`+2Ïi£Xøc!™°ÇÊK\ZÆüÆØD¡-f<]^XIi‘ñ~Ä|´*ëee•˜#¸ŒNÎ°·\rumX\ríÁöìl\"nÓáãÙtD7CA ÖÒüf¢Üàê³ğÚÂ:M‰_{\nÚL½+ÎÂQ‹l\0±şırĞ‘mÿÄŒhØä¢éÑ˜£Ä.óŸ9Ë`IÕ<û!hx`„¬&=³™óa<6İÙ”†‰—R™³•>ÔÏLÌ¥EÆ›i	o†Cªƒà8õJ§I†5§-²ğ)‘X€»l	„Ò)aó­Ì­4Ì6ŸÍœTi™|]í*pğÀK\n\ZâKîñ€ÄWFSª¦Ii¥„cà›‹LI<°YVeô`f™I,e€§ñ\r€bâ“p›«ûŠxUg¨C»â”‰«H’µéT€ô?¤Í P´ÉD–¨ Ş²KnÅ¼ês\0\'kñpøCW”òÌN‚F8Ï\\	ï¸«UV<ˆ:¼G‡Åp\n$£€É”â¬dª`1Xò(xÑ”ÇÃ—k µY%( ¦”Z÷¡2\0,OïgñB–g	c9C^ë^¯•ÇùIÍ‡gY%\0½Ë¢DÌúhHP.)¤*s‹¶§ñ$2™Œ ø¥¢Ì\"İé‘LÕ®DIà,Á@w®8”n3ˆÃúÍŒù›ä¸\0 Ş¸ÓAáRPÊ°¸b03,ÑL¡NŸ#JÒ\'ş 0+×\0Êb²bjŠ\næìUº“~œÆ–Vh³ü&°UÎ~àVD^•DAâb‘qÈÑ±D‘Ãb`%°nº£Ïl§\"h9#Ø‹¦³!DK™%ƒr¹µ\'ˆœj ˆ&7\n<#…z25@\0R•1fO	>D¡>œRÅ½@v†Ú„Œ3yÆ]©6Å*:Ì•êÒtøŞÔ¤—ÀD=\n5]àA%rÑêøÀõª«ç2hêx‡–£èx^¥ëâã\rÕ™P„^Ø~ÆZpÄ6@*ƒĞnnHêànVæ58¦ÑÜó-#zâSEO¢§ÃR`Ãhq\" Á¶Ğ pÛQÄ€‚k@Ö“’B8‡RSDƒ‹ÂO8ìÖT©5n¨	‡¢c’‚HÇ“G\ne@\rØ;z}\\&‰.¤”…\"¨”C¬H2Š\"Õw=ØÇwe:`Q‘Æ@\\$ƒ)s’¥5\r9‡‘Ÿ÷EÆŒFıÉXCqãÆEû™q£ ´†¤Z€{S”qù‹SG)àïIuöïxEÉºÿâju†4ä\"<JEB¾À&\"ã©Á £ÄÀ‹ !\0¡E£HÄ‰úTÊ}ÑÚèfl¢•™ÀV÷È;hğ@/³@n\\ÚPfXzåiÒƒ†„¨ieÆXš0\':-ÃOè\Z¥v±Ç®Pöô˜}}’Ç–‰ ôçÇ<ÆÙƒPøfO	ÆÃÙ’âeX™ †^ĞÜ˜ô~ĞÌè¤I±ôÏàH†\n‘¯rD¨8¹ivÁ_ì”‰£õDåF¡òEeÆĞ]?+è¡r;c/½ª¡†Oî”´˜1 »€ƒ|K ;²@oùuÀ&TÀİc8½ËZ_v¾¹	?‘mĞ~8ßĞ*!Ù•û ©ıÙŠ®à:Øíè|CËöËêf„ÕúñÇ›õêq›¤ÅÅúSYî^l6E\rº8ÛÆaÙ}yfÛ\r5$6ß>{öãæùóÍ¶±	¹ó)ÑÁ®ï©Ìòà¥´kŠéë8/Ê« î‚êñËh+Uãô‹®/ÉO»Î£kRıİÊÿÖÚKÊ@Æ×tdÕ´Öƒ$Ìœ«\ZÓæÕóíA<“v™%ûmŠûfªZ·š¨{Æ‡¥ˆâTÁˆy˜šØcn÷´ ®ûf¥~z‹uËdÁI…2ÜóÀ	\"Ãm$Ä_äa#×íÔŒ™\\y\"oÀçšöó°z÷Æ¡ûf…{&™Å,)8°ÄØ‹\n“V\0…%¦ÅaÕ2qEŠˆ\0²Ò~·„ö (!Ék¿[BkŞÑ“€5Ÿ}«—HT)¬F°ö¢™T»ãÅ”wáê “^)à¨$uó¯I#…AE‰(†Æ|¶Ñ!œ9O*eÒ}æ„Køğ§$ùCÑ2š¤nD­Øø>1ùâƒ‘èÊËA?ÊÍ\rälub»”ZíŠ1Q¨xÛC˜tíÜ‘$‰Eı2|5‡T’„Üg©\0iøj¡‘I²§_}Ü}´ĞœÍ+Çœâl>ÙjôúLEÖæ`PbÆrö„ƒ›·?ûPcÇÄr	[Fü¡-Şi•˜o3ªp6ßˆb@L6¡xÛyÔ]ç\"_vßlÌ³$!¢iV2‡±‹æ‹•èJk5Š,zŸQ£MPGÌgx\'êöÓÁ0;˜ëb©\0™˜Iêö‡°2/4EØeˆñÔÜ@\0¦iwSq2’ÆIyFÔ|±İä^ÆŸ%\\Ø‚“Ù†Á\"àypø½8´ÚŠzKí§m,Y*|:Æ¥İAËBj[€h¬¹/ÊozÒßÇ«¿s’\0B9|=îWŞYY•C›m}b°Ôœó=ëèÖÓÍªøüpõ°èèÔ÷¾á~—]Çi¼À±ß-¡0´ö»9´‡<(÷±8ÃWsHÛLšÌö“Í\n•“(è\'ãR¸¢\'t¿]ãÀÅNÁh*_Ş2ÁXİ‡\\åk½÷[hMB£‹Íe( ĞÄR†ÛòŠd£mšOEÈ¯ñŒv	Òìçm9Ï¬ºúÅDÁ—w÷¿ò»\0eølë: ğ™Ïv°\0uÏ|>~‹•¡µÆ,§ˆĞ5`;eëyXoJ·ºi<ne!›w¹nZP‹xO$ùËFH†¨q©EÚËÜì©¬²Š#é$Œïäóèî³€¢6¬æeZf#‘ÙxkÊ~_NL)Ï€¢Ú}·:x—wUè;Ğ\n eeM®T1˜ï#îÊ8z»3¸±ç=ªÆ‡,ûcÏ|–ºlhck]¶O0“\rÖò\'xÂ›æi&î®AñdÓbŒ¢\nX6f•kˆ³(ÚÎÃ.A*Ú´ÍsŸƒ$®ÚO–+ã/UˆzWË•>±ËP1^{\næƒAÙ° a®ÚTL~s–âÉ.^Í|²EÃ|¶ğß“ÀìË$jcÂøËãnÏ|êæóp^Î¥çnIéõ+’J‹¨Th)|%Úx<–ÙfÓÉ¥Çpş²”±o¸È‘‰)›Ï#G´ó}\"z”´ß–»N®5ÿ\"„¤ÇUF,ÈKL^\nNºA¡ğ‘ªñW²y’R\'O×“/©ù,øö©{zÇAIşƒ0ĞhËCVıcE,˜=üN‘\nN˜ŸÅ ¦æ“…àoƒ\"Ø·ß,LãLPCõ¿JõĞ…¹Ì~	İ~ZÎÿíĞÌz>?¯gÀg¨ôAØlm4Ú\Zˆƒ¯R	ÔR¼Y%SÊHûáÇAÆ¡‡>Oj„^õ†’bbŠ5ëY“Rå<ë	T9J\0*¢Oy£¡!ZnSË½\0ãy…w‰3,ÕÃ\0Í¤W€å8­\r´	&VDëè$z¬Eã›ÏW6òy„ôú¤ËX™h\0N¡ŠÑGbF¢fÓe–Fqı–÷›âí>I¨Ñ$1ğ¤L1<ebÄCuCÇI\rıÅ[Š9Ä\'`\n{HùTÅ*½%Ù~é÷ùTÛ\\¦\\’ÕšUÊÔšE›WULnÚTY¯èà?ÇQØôËÍ&gUùYıgã0Ô¸Òøî¬?VùÅúû³¿¬W/“8(š´·mÚÖâ‹åFy\\ŸWåq%Ñv#6·Ï[A)Š(rÁV²Õr–õüŸDb„ATÏÔŸoÄ†ç\0?6oîÆYkÁı;¡Ó”$z”%É)±ŞTOÌST×«Šåªdú=Ûm4àÛ	Ó‡ôzü›4\"ëÿªÛ¼X½ùí¶möÍê]NçøÅêÙê¿GtÍl¬l»ï›:¢ $nµEƒkî„JwøÔ`p—U»|KR¢×VD9¥Œ·¤’IÆE-]Ï4ĞÙí¦R\"©SV(ºs§¦‹$Kª«BL™ïµP¸{7P!*cedá`\"\Z­{o\Z:uÏFÍ9È¸\r©˜psŒf\n×„y%5Z0İ4D i9i¬Óğs“J›J¥1é[™a[ë.g«­n`\ZO¸vˆpŒ~º\0Èå7¼±hJR_•Dšk08ÙéWE,`Õèİ$ÜàN:°ó‘pÓŞç¹š˜½?Â5J:©PŞÁu(L’.ë]×Ôİb<ésƒí#œôôhU—?ÕÕ8ª¨ºiR¨ºÁ¨³¨:eH¡:Ş>jó§Î²V*R-Îj\\\0á_¡N†…\rÆÿÒÖõòdçÃ&0µÅ kénh±.ª“›DÇeÅ9¡3VüprÑ“î?é~È¡t6Ë\rLôùU±¤ù¡ĞénÖ;:6‰ç¨£è£¿(;€{J6¿èøı&›Wt<”!£¨Ã­~›{¨pŸdÁˆÑğiD¯)ï\"TÎ$:òóõ1ÍÍëÁ´æ¦¨ìÉú•/eœˆ(Á·Õ‘Cúç?PÔÃ ‚÷­5ŒÃ¢^ïbZİ	@¯Õ£eƒ	Ü\"˜Ì¡ã•<“2Ô\r&_¨ ƒd>4éçÑ2àÂ.^‹9¢üª8—9 &,Ş“JÎşy´Ò1Ã*=Îšg’ˆºxN¶ª¹Ğ1\'½&ßèÒrgl‡wiH6u1°3;4¯š9‘œMY:ß©Üé¨i²£&ó=”ó+§úd§óLVO;™ZZˆ­ñœ#y5vÖ›$“ªì6i§ã©—¦sñ£{ş€’^-—,\ZµÆdÛ´í¾oên4±øDŒ¸cAº ó\'óh™“O®9^íHù4]AÁw3– ä¤™®×f_Ã¡ƒ¹< ù-VºT™sS¤ÆtĞ£æn“HÊÉ£Ø³ĞŸ ÿÌÉwr.ßÉ“ß ÇM˜Jò+W{}RJGmÕd¥t”ë6+¥£³_æ¬`&Qš&}f6R“®ÒÙ”ÖXøfPd›x\Z÷C4%¤™*Ğdt”ÀÛôúƒïÈòÆ™ië´ØuÈÛuß´šcc¢L÷h6h=`®Õ9õsè‰|\0óˆ˜[òß|™„;šM¡\"7ãtò7tbG»®İ1Ë“ıMÒF+û*V²ª#)¨J±vÆ|½Ş\'e¼KèÏòËÅú¹DŒ”´”Ô ˜¯<¨?H (¼2±‚ä2K‹2b9©ñû<NÃx$Ò\0„š†ÆaEØ¦XrEv$­¬>iˆf1t”{íÌ®#—ğÏ”Ô©VÇÏâs)ä»ôŠî«K²z6iù.ƒ\"äç¤ë”ˆZ,*­\"RÌÂQ¶“<\rGysÇØ4Kq”2“™Oq\ZÙ{‚œd:§¾yOLì•{Ú{nœi¸0{}ø’C_£ùfæÃÎĞ‡e¼p„Y–÷ƒĞ&âFÀ‚/;f¢ÉÕxjÅ,\'?«\n°yTMâ“e+ëÉ^€¿IğÀhÍ1„Û‡)³Ôs9|4_²¸³µ\ZJûe>€öçáìY^¨£rNº×í´ßy÷º¶™ø¥·Ğ&/•ØÏÚLëHP\'!0ß&Çf2İ¹ÆÔüQ=	³\0×ìöx	ñdÂZñË¢¶kÃ-l‡ı®1Ş·Á6ªiÙ-0gÚ–h’\Z„Ä=+ôß-ÎEÆl†&dp¸ó0ÅˆGÔEøƒ{3ã–h˜cäÖgğÍ“Æ´åKÄŞTñ@	Úá²ì±_\0ñ¤8áøX€}ÌÏyÖ©fŸHmÎ7š/óÌ½Í\\8Í:øæ!|\"¥z‡Îó¤«U\Z1÷¼xc„QA;ôÅù¡ºqn5ĞåÔaõßœW.R0n‰-\0¤ƒ¨!qß|şÑ”=hw‹Êây‰Î¬mÕÄ³¤5„æÃ<÷Æk±ãLËygĞ~Z‚-7Ãx\")\'é<”9·:_3Ïoq%_\0ñù#n\"QÃ{»T°çµ–ŠKÚw9İèSH•«ğt~œ´Ë÷ê€ieÜä[rşK,_’p>,Ïûùp\0Ëu\0Àğ\0N‚=k‚…7ş>õÂ¨½ÿÂêaxÉû62:\r\Z9Ÿ*‘_¯á±Ÿçq`1_NÂŒÈ¬7¤KsˆgÕ±_xU\ZÖ<q@\ZcöİÄRàm/a=ûKn%ÚÔKxtY\'¹C¨îÛÓğ<k\"]±‰\"a!ãßíÉ9Ì ”Ğ®Cæ«93ˆéA€¿Êf\"æ@bÎÃÊìŠh—e‚Cf_+–ç\no«Æ8Xré`30z¹iâR>² ø‚#¿kÂ[¢ı-º—àØ`v°$xÓ#X`IE0ä\'\\ÄyyÈÈqóùi“X\ZH´7Ÿ¾Ì¯ê¤$uxVœ’¼Û]dyçEy”Á]PÈGU«RJûĞõêUŸæØ!Ş„ŸÈ6¸XGõcM²¶\\â¾áFêJ(‡zSãHò•R|1Ô_CÓ[³!uR…`W¡)úG2úCˆ;vº!ÏËå%ÏÉPÎ &S‡×42ørb|M‡­n–:j¿C€ê\\<DCJ°‡\"<F	Òªwh)Õ—btBüaeÃ„Q%…†â×ºjÈTj¾ƒ$jœgu{7	v_Aï½òtğ¹;v©®êGá© uÕ¸rH}4Ÿ!àM‰	aSË¢üc8ÅİÉ‘<É]	8Í]¡<³õ–:`Ê .Ğ];ŞÉo˜Êj(;l*é™Œ·¥Nùb¨G¾†®7.¶ÜWöÆÔĞ5eÌ‚z˜)×ôÓåª•;éK úBÓõ^Üùbå*l´ÜKé& sBo¶•f«9…—Ktx]©Üc±äd¢ùWLM‘¬XĞ?·‘ÌÚŸÂ2ÁîØ˜¶¸é´á‡e5d)Œ]9ruĞ»Ë à¶ÌìóÍë‚YÈĞÆe’Šâæw¹Â\0Äz·OWÜÌ«¶óìU²gÆGK£7KBå4ÛˆjíÚ*wzSgv³äIüìa#Q\rcAr4}Ú€B\rqq÷Uc¬HP#ƒ2ÍàıŞØá)—4±Ê<ËÙÜC4YÂšÎHËmD0|œ|¸¸ô\"5§S\\~†ªXšø\nó.Kó10šäZŒBHƒlú¡ã±É\Z}à\\\0\r’L¼$ÇÃòSúàíè=ïÔeãÒñÁ¢ÑëãĞåWmö(°Y²¡8.Ç!\n|¢©ÒgÕyÀŞ™™;ÖŒO`ØÂÁlİ¬ÿæ<T È¨.w‚açÃuSÕÁ¯ıp™€R`˜X¸é¹ãÚ°\'ÒuğÄyäp8\n!ƒR„…¹Í—aÊA‚\Z¼7œíc?\nÄÁàŠuyŸî,kş•”	şÂGŠEˆÉ£Œ°2ÄÉÏPñ \'­™8ÿû[WÑx€\nf±?S„ƒ!;nÔ\0.NdĞ°‚IxËd|àyè¨\"WÇp8ëqÃƒ€Q*ã&?.•³¹1¶.îpÜĞ;ŸC_º´® ò\"W¸^C~ùfR \\nà‚îÌê~‡¹Q×z[O°™€ü\0ê¶Êû}Ç!£S­s,vg_Ãüc¡ÃMíô\'œ’cDC7Üåz÷*]ï\0Ú—ošÛúöıYÒ]ø¹Î\"’õ×óÍ‡}Z½…Úüº\"Eü0€8§0Sr§}7é}Ö¹¾\nuU„gú®éØ¢ ^æe|„%-IQĞù^¯~	’}%<Û;½IßíËİ¾¤C&Û»äKŒÊVÕÿùFÂùüİ®úUL1Šf\\=û.ıi\'Q÷kàµ@Då˜Û¾l\\ÍeY½püğ¥‡ô6K\rµäëı‰?’í.¡ÀŠwéMıÀ°=n?ä_ä!¿ĞïŸãˆä8ıDğd?¿Šƒ‡<Ø-Œ¡=ıIy8Ú>şõÿØÏp–‚è\0','6.1.3-40302'),('201911090000083_estadoEventoPago','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ËrÜ8’÷Ø¨¨ãDÊîévH3á–ìÇŒl‡å~Ü	ÉÜf‘µ$Ë!ÇÆ~Ùö“ö|ã‘‰A‚Ur…V@\"‘ÈL$€ÌÄÿıÏÿÿíq›¬>“¼ˆ³ôbıüìÙzEÒ0‹âôáb½/ïÿøÃúoı÷;mW¿tõ¾«êÑ–iq±şT–»›M~\"Û 8ÛÆaÙ}yfÛMe›oŸ=ûqóüù†Pk\nkµ:ÿ°OËxKêôçe–†dWîƒä:‹HR´ßiÉM\ruõ6Ø’b„äbı¤ôÿüìí>LH¶^½Lâ€bqC’ûõ*HÓ¬JŠã‹ŸrSæYúp³£‚äã—¡õîƒ¤ -î/†ê¦Ãxöm5ŒÍĞ°î‹2ÛZ|ş]K—Ø|u×=İ(å^Q\n—_ªQ×Ô»X¿,â¢¤së•Øİ‹Ë$¯ªŠä=« DADŠ³¡ù7+¾Ò7=_Pö©ş}³ºÜ\'å>\')Ù—y|³z¿¿KâğŸäËÇìw’^¤û$a±¥øÒ2îıô>Ïv$/¿| ÷íâh½Úğí6bÃ¾Ó¦Û›´üîÛõê-í<¸KHÏnÊ,\'\')Éƒ’Dïƒ²$9Ë7©É)õ.õu“…q¦ëPäU\Zù]W@W¤’„¼úLÑwFŠ’Aè§,KHZC¹\'á§€åÄÜ¥öGªôğŞŸã‡z®È?Ô$©kŸâ]£¾*¿Î³í‡,á„„¯s{“íó¢ó1ÓTüHg”æxçT±Q4«1ë°æª‚835T³Õlñ-\ZWcÚVq¬ËTØ5 ¼Î7ƒVSê:ïG¨;ÂIã¡}¥Ùö.\']tÅ¥†Ãzu<ş‹¤å§‹5ı“2BüH¢îK‹ÃÏiLíÚ¨Ì÷Z½A§$Ìã]X/3÷5¡şBñR(•éãºªÔš÷Š±Wº¨tA˜ÔOÁ\0l–£ùønX£fë#–CãÕÕÒ¤c@Osªí¶¯9(k°‚¤±áZ¶Ë	Á×ërB©\\a6Z©Ç¤Ã¯Ùlª%›‡¬Úh%\r¡uk·ñ\ZÙj•Ël»Om–H¦Ùi]Dûz‚ëbT3OÍ#×õìc¼Ë&YÓøEÀa]¼ÌIÀÒĞÿzV7¼Î¢ø>TLÕS­á>¨œhA£Û(X¥$JZT®a«=Kvö!µÏ(˜[®2£õ‘:’îD+:©NJIkŸ¥wE©ŞÂ‡…¤/¾e„‰a?¹X67€:¶¢\"È©»4‹âË»Šõ¡Œ`]SQ(’((–CÔ3·v†-İˆÓ€¾õI½²¸[Ú‘$‰=lıJ’û,¿£$û$Ègï‡lƒ8ñpzR™wWYèf–¥yc¿eÏOfÄù*ÛÆaœLrÈò¤ŒÉh ŒrdêAëd_,[h@Q‹jñXÌq$ååÊÆî­ÅB‰b_B°-T ×Õp;=ærÌÉy×ú´V¢}İy{XYªs£Ù{ÙÅÅüC¡ëÁüäÊ¢÷ïÄmˆÈnò5Ë|kÚ(€ná!¿„“ã9‡½k<Ï­ŸÁˆù­[æÕï¼ö1Ç¶)Èãü$k°/ãÏ§‚óD³8ºÌÒ2]/ãëÕ[º§ÚÆ,¬6fËïçº<G÷>aO|ôˆp¨\"v%Ò¶G(¶İ©·¶\rpp[+!xÍµµ8Q…›gÛÀ¶¯\\‚Ò$ÛÖAÂGXE]ã“a„öu2ŒN†©¼_nùZb‡Û_	Üß¶íOÂîWØÍoëÆ;î<vCûõØ­…úpœm\'s!÷»ì:Nãíp‚Gg8”çöñ@å±q ÛŒİ>R®Hì·?aĞıå><‘ŸœstÕ›T¦	œª\'ìƒÚ@_‘}DUqáq#­òëÆº5Ü.Üõ~²Bäş•q¼îªÁÜM)†[eWÚ1G—sâ°sºşÿÈò Ç­Ø¾†Š0Ö]¹á¾Ò(\\İB`„™\Z·D\"²\\*ù‡U¦öäW»ğøî:íkıeµ,ËÖ’0\n1™\Zng0ÍZ<æ\0¦jy2ÛÑ¾<™íœavEÂx[]‡¿Ïé_mŠ€Ö«›0¨Æ¨³³Œ¹¦U5£ø¦m{â´/1lQğåİı¯„üŞ÷TB\r_--³OtV9{|6Ì«8sİ÷Yg…\0¦ıI}Ms<0A~‡ƒÚÃxºâ~•†{ÂÙ®¸IdmYŠF‘Âø´2‚ßˆµ^•Ür’? (–I†¯TÁÖìÅs8°P¥$R¡’p¤q¨:J\'V\rOÊík	[rä!_šg¨íyç¬¸Ã.õİ\r©sèîÇo”é\'ÈĞOqº%eeøús2iğÆ´m[,èÙú«¤Ç˜\"[ÅÏñ™«æñ‚–†ñ7©ãoÚ†æ\'U‹ë¯c¿m3?úI*—82îğ§i{â£9ùÈHsûó¾i]¾ôDœÂ;­e0È?M(’t®Xî¤r¯JÏpŸŒ;#í[Ÿgà4v7Ì>I–O`&şR¥uÂ\\…á†Õqy\"À81±¢¯Iòˆ2ÚÆ™•Yc~4ïX n—ª•`;ŒX6¼ej«ZIZğšÓ¥ÖûfÀ\nZT\'8¢ù@QMv,€“F@ûÊ9:»Hs©òw\'iìêŸÖ¢5³[IËìÊo¦ÏÅ.Æl³²œlÅ’\n€êL§§8è’’’KÕèM¡H˜åQ@eo¤ÍÂ8©\'\\tãrŸxHÇêQ9ÔVÏ?VÖy(7	sRv€šŸøíë»tŠ]\"§ nT<|uŸb¨G]o)ƒoû5\0ŒÀ•Jå0\\¹Š“İõs±·\\ĞÚ§5R?kØ¾›º¹W–$ø<ÿhâmğ@æ7ól~]ïg‰ô¦^m*Ùöq\"€œeŒ90Sû-£8—Ù7Åë$xŞ,ÃUéÍ—¢$ÛÁİö›Õ¶ û–$¾ÔçŸLÕçİ_ş|~ÿçç?~÷\'òì‡+\nF$O¾PŠ³£ãéqM¶w$ïv4û4\n¨>û%Höôç3‰z\\íëŒ«ı\\]ûãluyj¸ê¿’(å|§ÿiŸsõÿ¤®ÿ:ÙÚß«kß”ölı?Ë\\ÒğûñeQ…Ô“ŞÂoòİ¾J£•AÎÁY›aükÊ\"ñ2å×‹õ¤!©a÷îŠŒ#øF…‡-O6]I^-ˆArImÊ¢qZÊ‹wœ†ñ.HôhM\rWşj&úNÄ’+²#iµhë	lÖ;C¾7Á4Ñê|Ã°)7\rieô3ä™™Œ›€¬àì:ı¾ê¨±w–³;ÉŠlÜ¢ñÍšÏì8³	ˆx•\"¼f}÷ûàE$HÎÃÍµ\")¿\r‡k`üÃ¿÷3•øÉ»0±L^z­ıd>h$ûrH5‹°Àx˜˜f4YDNÄ¬jêÉUÚ+#fQ;AÁÏ©}\"¦¼SÏ°Ò.É5şì>\Z+…2rœÛ Ş¤ãíô±,ÔÔÔ¾œ5Êb0ëáª>åÒ<6­¦­†èæœÖ“jnƒ_ÅØ@óŒ(³êò™VÌMı©!\'OÄfJ\\<ğ˜’Úfı/Ë\\†\\¥g\'{>:ZŒseØÌRš)ÓLéXçÙÙ™<ÇJĞĞf´	?œìØ\nÍTe‚&’¶JGS* 1Öø.ò„×ŸháD1”²–N‹YŸXÌ„ä,c\nš”ŒŞ§šJØ€„ªì†\\ü¯ù:¥JŠf/»£¤\nGÁƒ8áÄ=9b‚Ğ±ù…\"Ò‡ym\"pÌ¹b×­G1‰Ü³æ‰gx\"Úb9`•r.ÁÌ\0üæ™1RTSò\n€…/ˆjÖ5GšE¸GNÖc²p“.J|Ä†î8r†%‰CÀóŠÄÖ¬ï–,KÚulnSá&:`ß\reG5¹RŸvã\r`áo‡\0ÖĞ¤ˆ³$1ég5“\rå¢€‡€¶â)óœf1Š…?’	kq¬¼¤aÌoŒMôÚbÆÓå…•”ïGÌG«²^qQV‰9‚ÛÈèäk\0qÛP×†ÕĞlÏÎ&â6>˜MGt3b-Ío&Ê\r®>¯-¬ÓÔ˜øå±§ ÍÔ{@±â,µÈëß/ÙöOÌˆ†M.š9Jì2ÿ™³–TÍ³¿‚†ÆAÈjÒ3›9oÖÁ(aÓmMi˜x)Õ˜9[és1AıÌÄ\\Zd<°™–ğf80¤:S¯tšdX³pÚ\"Ÿ‰¸ëÈ–@(6ßÊÜJÃlóéĞÌÙI•–É×Õ®¼¤ °¡!¾äH|e4Õ¨jš„‘QJ8¾¹èÈÔÄ›eUFf–™ÄR\0x*ßÑ\0(&8	\'±ù±º¯¸€Wuf:´+N™¸úˆ$Y›NHğsAÚE›Ad‰\nê\r)»äVÌáÀ«>—pr ±‡?t•A)Ïì$h„óÌ•€ñ»\ZXeÈ#¨Ã{tX§@2\nØ	‘L™!ÎJ¦\nƒ%‚My<|¹Z›ÅQ‚jJ©u*À\"Áñô~Æàh/dy–0–3äµîõZy,‘Ô|x–UĞ»,j@Ä¬†Eá’\"AªR1·hKp\ZO\"“iÁŠ_*Ê,ÒÉTíJ4˜ÎtçŠCé6ƒ8¬ßÌ˜¿I\0â;.¥‹+Ö	3cÈÍjàô9¢$ }â/³r\r` ,&+¦¦¨@±ÀaÎ~Q¥;éÇÁili…6ËoÂ\0‹På¼ánE”!àUI$.‡ë@9,–Vë¦9úÌv*b€–3‚½h:;B´”Y2(—[{‚È©&\0‚hòQp£À3R¨\'S Qcö”àó @djàèÃ)XÜdg¨MHÁÀ1“gìØ•jS¬¢Ã\\©.M‡ïMM\nqù8LÔ£PÓ…\0T\"­\\¯\n¹z.ƒö¨şĞˆwhY0ŠçUº.>ŞP™Eè…ígì©Gl¤2íæ†¤îfe^ãc\ZÍ=ß2¢\'1Uôä z:,E\06Œ\'\Zl\n·E(¸–Ôa=))„s(5E1¸èxà(ÜñôÃnMeÑ‘ZÃá†šPp):&)ˆt<y¤QÔ€½3Q ×Çe’èBJ¹Q(‚J™1ÄÊ€$£(R-qGĞƒ}|W¦ÉaÄE2˜2\'YŠQÑs(ùy_dÌhÔŸŒ5÷7nüP´Ÿ9\nBkHªå\0¸7E—¿8u”şTgÿW”¬û/®&Q\'aH³A.Â£T$älr 2\Zì2J,°\ZZ4Š@,‘h O¥ñØ­nÆ&úP™	lu¼ƒo\0ô2ôàÆ¥\rõ`† Wf =hHèšVfŒ¥	Sp¢Ó2ü„®Qj{lè\neOÙ×\'éyl™JqqÌcœ=…oö”`<œ-)^†•	bèÍIïÍŒNºTKïød¨¸ğ*G„Š“™f,ğÅN™8ZOTn*_Tfİõ³‚*·Ó9ö‚Ğû \ZjèøDáNé@‹Ùz±8È×¸òGñ¸S ;\0ô–_lBÜ=†Ó»¬õeç››ğÙí‡ó\r­’]¹’ÚŸ­è\n®ƒİÎW1´l¿¬nvAX­¼Y¯·IZ\\¬?•åîÅfSÔ ‹³mæY‘İ—ga¶İPCbóí³g?n?ßl›;ŸìúÊ,ˆPJ»¦˜¾ó¢¼\nÊà.¨ï¹Œ¶R5ŞAñ¸èú’|ğä¹ë\\1º&Õß­Üño­½D¡d|MGVMk=HÂÌ¹ª1m^=ßäÀ3i—Y²ß¦¸o¦ªu«ÙyˆºWÁa\\ñxXŠ(N<áˆ˜‡©‰=ÆávO²àºoæPê§·X·LœT(Ã=ßœ 2ÜFâ8AüE6âpİNÍ˜É•\'ò|®i?«woü±ºoæP¸g’YP\\Á’‚KŒ½¨0hPXbZV-W¤ˆ +íwKhÿŠ’¼ö»%´æ=	XóÙ·z‰D•Ájk šIµ;^L)q®:é•JR7ÿš4RT”ˆahÌgÂùó¤R&İÇaN¸„oqJ’?-£IêFÔŠïãÃ‘/>‰®<±ù£ÜÜ@~ÁV‡ ¶K©ÕŞxpÑ©…Š·=„iA×ÎI’XÔ/ÃWsH%IÈ}–\n†¯\Z™${úUĞÇİGÍÙ¼rÌ)Îæ“­F¯ÏTdmå)f,gO8¸yËñ³5vL,—°eÄÚÂáV‰ù6£\nçió(ÄdŠ·GAİy.òe÷ÍÆ<K\"šfõ\'s»¸ğh¾X‰®$±V£È¢÷5ÚuÄ|¶1€w¢şh?³ó‡¹.Æ‘\n‰™¤n+óBS„]†OÍ\rÀ`Jv‡0\'#iœ‘TGaDÍÛMîeüYÂ…-8™m¼!‡¿Ñ‹C«­¨·Ô~ÚÆò¥Â§c\\Ú´,¤¶ˆÆšûa ¼ñ¦\'ı}¼ú;\'	 ”Ã×ƒá~uà•U‰€1´)ÑÖ‡ KÁ9ß³¾`=İ¬ŠÏ/\0W‹ŞˆN}ïîwÙuœÆ[ûİZğCk¿›C{Èƒr‹³0|5‡´Í¤Él?Ù P9‰‚îq2ş …+zB÷Û5\\ìŒ¦òå-ŒÕ}ÈUN÷~Ğ(¯È>¢\Z½€F;”ÌJ‡Æ,››àP˜¢‰ı\r·;äuÎF‡-4ŸŠ@bãíÒ®ÙÏ)ÚrYuõ¶‰‚/ïî%äwÊğÙÖ\':t`a>ÛÁæóÁğ[¬Ø5f9EÜ¯Û)[ÏÃzS:ëMãÇ{Ë£«Ğ´ vöHò!–Œ±è\"R§Ÿ´—\r¸ÙSYeİHßÉ§ÜİgE-cÍ{·8ÌF\"³;ñ.–ı¾œ˜REµûnuœ/ïÕĞ×¥<AÊ,Êš¬c0ßFÜ•Ñùv\'{cO‘TYöÇ$-u…ÑFìºlŸ`&(¬å!Oğ„÷ÌƒOÜ\r†â!¨ÅEmÌ*×fQ´‡]‚T´i›/æ>I&\\*µŸ,WÆ_ªÀ	ô˜+}bW¬bøÌƒ²aAÂ\\;µ©â$™¬é<,ÅC`8¼šùd‹†ùlá(Ù–IÔFš;ğ—ŞùÔÍçá¼œKhÏİG+Rİë!V$•Q©Ğ\ZSøZK*´ñ1x,³+Ì¦“Káüe)	b_4p‘#9R6ŸGhçûDôSi¿-wI]+jş	I«¡X—˜lœtƒB1à#Uã¯dÿò$ı¯Nş³\'UóY>ğíS÷ ƒ’üa !Ñ–‡¬û\'X0{øõ#œ0	>‹¡RÍ\'ÁßD<°o¿Y˜Æ™ †ê~•ê¡s™ı.ºı´œWİ¡™õ|Ö/^Ï€[éC»ÙÚh7]_%4¨¥x	K¦”‘ö ÂO28ŒC}ôÔ½êe&;ÄÄÄmÖ³<Q¥Ê¤ ÖÒ&¨2Ÿ\0TDŸ´òFCC´Ü¦–{WÆó¯)fXª	šI¯\0ËqZhL¬ˆÖÑI,ôŒÆãŸ¯läóé;ô¡˜±2Ñ\0œB£OÏŒDÍ\Z§Ë,âú…ğ7ÅÛ}’P£%H\nb8àI™bx Åˆ-†ê†“\Zú‹ÏÀsˆË<ö²´ŠUzK²ıÒÿî³´¶R¹Ô­5=ªD¬5Š6[«˜2µ©²^ÑÁ£:]ê—›ÿLÎªò³úÏÆ+`¨q¤ñ=İY¬ò‹õ÷gY¯^&qP4ÉtÛd°/ÄwĞ²Ã>ÿ®ÊK¢íFlnŸc¶‚RQd˜­d«å,Íêù?‰Äƒ°ïÏËÓ-6<ø±yÉ7®ÈZîß	ö $Ñû ,IN‰õ¦z¸¢º^U,W¥èïÙn£ßîH˜>¤7éß¤y¼XÿWİæÅêÍo·m³oVïr:Ç/VÏVÿ=¢kfceÛ}ßÔ!¬-\Z\\s\'TºÃ§ƒ»¬Úå[‚ÒÇ6°\"Ê)e¼%•L’0.jéz¦În7•¡HÈz´BÑ;5]$YúP]²`Ê|¯…Âİë¸:Q+#\'iİ{ÓĞ©{6ÏA¦ÀmHÅô€›c4S¸&|È+©Ñ‚1è¦± IËhLc†ŸkœTÚT*I\nËÛZ/p™`muÓxÂµ{Ì@„côcĞ@†ÀñàES:úª$Ò\\ƒÁ)T¿*b«Fï&ágp’pÔ„˜ö>ÏÕÄìıÆ¨QÚĞI…òş®CaRYïèº¦îãIŸláTªG«¨º¬¬®ÆQ–Õ\rH“˜Õ\rF›Õq,CbÖñöQ›•u–µR‘ØôhÙpVãŸøªu2,l€4ş—ˆ°®—\';çpì6-ª-]KwC‹uQÜ$:.+nÌ	±â‡S–tÿI÷#@†¼§³Yn`úĞ¯Š%Í…Nwt³ŞÑ±©AGEıEÙÜS²YKÇï7Ùl¥ã¡yJnõÛÜC\r„û$FŒ†ONêxMq|¡r~Ò™Ÿ¯in^Ö 2—ÎcØÊ~±_ùÂÈiˆNß¶:Àc&òùõ0¨à}k#ãşh·Jô\r±5Â	@Ø£eƒ	œ,˜<¤ã—&©6LöQ7@É|h\nÑ£eÀ…Æsk=Ú5všCÚ!ıéô~Yr.Ñ£•Véq{&%©‹`ùšÓxÑk²—.-wÆV}—ÔÔa‹;;³#øª™ÉÙ¨óñ®&;¸2ßAé=¿rªOvÖÏäµ“Ù¡¥…Ø\ZÏ9’¥óhg½Iù9©ÊnS€:¡qI??(²ç(…æÑrÉ¢1pLîNÛîû¦îF»€OÄˆ;¤Û’1âY6–9ùTãÕ”Ó|Óc	JNÁéz	÷5:˜Ëš-óhå¡K¼y0÷¾@¢M=jî„‰$°<Ú‰=0ı	zãœ<1çòÄ<y!zÜ„€‰)¿rµ×§¸tÔVMKG¹ns\\:ºfÎ\nf¥y`Ògf#5É/Mi…oE¶‰§qfDLš©M~H¹œÿM¯?ø,oœ™¶N‹]‡¼]÷M«96&Êä‘fˆæãæZ‘Q?‡È0ˆ¹%ÿğÍç˜I8M¤Ù*2=N\'C\'v´ëÚ³Ü1¹ä$m!‘·¯Òhõ!«:’¢‹ª„mgÌ×ë}RÆ»„ş,¿\\¬ŸKÄ@IKI\rŠùÊƒúƒŠòÉ++H.³´(ó –S$¿Ïã4ŒwA\"\r@¨ihV„íaŠ%WdGÒÊê“†hÖCG¹×¸Àì:2péM9A¸uü,>—ÒI¾K¯è¾º$«—a“äï2(Â@~œºN°¨Å¢Ò: \"uÁ,e;ÉÓp…wŒM³WA	8™ù§˜½\'ÈI¦sê›‡ğ4Ç^¹§½çÆ™†ÚçØ‡/9ô5J‘}`f0ì}¦ÆG˜åŒ?m\"îi,ø²cÖ)šÌÿ‡§VÌ2ü³ª\0›GÕ$>Y¶²ìøËàÑŒÖìC8L~˜R1gB=—ÃGó%‹;[«¡´_fá8üÀù…:\Z(·à¤{İNûw¯Ûh›‰_zmòî‰ı¬Í´ôuómrl&ÓkLÍÕ3pÍÁn—àO&¬¿,j»6Ü²ÀvØï\Zã}l£š–İs¦m‰¦¼á™AHÒ³Bÿİâ\\dÌfhB¶\0‡;SŒØépD]„?¸8n‰†9Fnmqö\0_PiL[¾äIìMÏ .ËKñÀOŠØ§gíÙÙ™jö¹€Ôæ|£ù2ÏÜÛÌ…Ó¬ƒ/(Â\'RªWí<Oºê‘¦sÀË7Fµ´C_œú‡ çV]NPÿíÈ9\0y3ó •“aá–xĞ@:ˆ\Z÷ıÈçMÙƒv·¨üW!·!èÌzÑVM<HZCh>Ìsa¼;Î´œwí§%Ør3Œ\'’r’ÎC™s{¡ó5óñWòŸ?â&â5¼·K{^k©¸¤}—Ó>…T¹\nOçÇy@»|¯˜VÆı@¾%ç¿Äò%	çÃò¼±Ÿ—°|PÀ,à$Ø³&XxãïS/ŒÚû/¬†wÁo#£Ó ‘ó©bùmò\Zûy–óåÄ ÌˆÌzHº4‡xVKñ…W¥aÍ¤1fßM,ÅŞöÖ³¿äV¢Mı¸„×I—u’;„ê¾=\rÏ0±&Ò›(rV2şİn‘‘ÃJ	íê9d¾š3ƒ˜nø¨l&b$!æ<Œ¡Ì®ˆvÉPö 8döµby®ğ¶jŒãˆ%—6£—›&.å#Š/8ò»&<±%Úß¢{	\rf×Kò€7]0‚–TC~ÂEœ—‡ìˆg1ŸŸ†1‰¥D{óéËüªNJR‡gÅ)É»İE‘×q^”WAÜ…|ÄPµº!¥´]¯^õiN€âMø‰lƒ‹uT?fÑ$KaË%náûÎ`¤®„r¨7å1Ô!ïY)õÇCİñ54½Õ1R\'õWvš¢ÁpD!£?”¸c§ò¼Q^òœeà|`b2uxM#Ó‰/)ÆWÑtØêf©£ö;Ô¨Î%ÀC4¤{(‚Àca” ­z‡VR})F\'ÄVf0LURh(~­«†L¥æ;H¢ÆyV¹÷p“`÷%ôŞ+OŸ»c—úàJ¡~\nRW+‡ÔGóŞ”˜p6µl!Ê?†SÜÉ“Ü•€ÓÜjÀ3[o©¦êİµãü†©©†²Ã¦’ÉxÛYê”/†zäkèzãhË½qÅ`oL\rıàXCPVÁL!¨‡™rM?]®Z¹“¾ê¡/4]áÅ/V®ÂFË½”n2\'ôf‹PÉ`¶ú˜Sx¹D‡×•Ê]0+@N&šÅÔÉŠıs[É|¡ı),ìi‹›N~XVC–ÂØ•#W½»nËÌ>ß¼.˜…m\\¶! (n~—+Œ\0@|á¡wûtåˆÁÍ¼j;ÏYe!{f|4±0z³$TN³¨Ö®­r§7Åàqf7KÄÏ6Õ0$GsqÑ§íˆ ÔÀw_5ÆŠ5Ò9(ÓŞïrI«Ì³œÍ=D“%©éŒ´ÜFTÃÇÉ‡‹K/Rs:Ååg¨Š¥‰¯0ï²4£I ÅØ(!„4xáÈ¦:›ì¨ÑGÎe\0ĞÀ éÁÄKx<Ü(?å©ï^ĞŞã°ñN=P6.,\Z½>]~Õf›%Šãr¢À\'ê‘*}Vì™ù°cÍØáğä	†-ÌÖÍúoÎC‚lêBq\'&p>\\7UüÚ—	(†‰…›‘;®\r{\"]7OœG‡£2(EX˜Ûx¦$¨áQÀ{ÃÙ>öÃ @®xP—÷éÎ²æ_I™à/|¤X„˜l0Ê+CœürÒš‰óÏ±¿uç¨`û3Å@8²ãF\r@á’áD\r+˜„·LÆ‡*ru‡³÷1L1¥2^aòC\0áR¹1[cûáâ÷ÀÀ\r½ó9ô¥Këz\0*/r…ë5á7o& Êå.èÎ¬îwè50p­·õ›	È n«¼ßw2:Õ:Çbçyö5\\À?:ÜÔxÑNÂ)9F4tÃ]ğ¡w¯Òõ }Ùù¦¹­o?ĞŸ%İ…?ë,\"IQ=ß|Ø§Õ[¨Í¯+RÄˆs\n3%!çpÚ×y“Şgë«€QWEx¦ïš-\nÊàe^Æ÷AXÒâïõê— ÙWÂ³½#Ñ›ôİ¾ÜíK:d²½K¾°Ä¨ügUıŸo$œÏßíª_ÅC hÆÕó±ïÒŸöqõx¿^D@T¹íËÆÕ\\–ÕÇ_zHo³ÔPK¾ŞŸø#Ùî\n¬x—ŞÔÛãösAşE‚ğış9HÑOOöó«8xÈƒmÑÂÚÓŸ”‡£íã_ÿîµ<Ø•é\0','6.1.3-40302'),('201911150626525_agregoEstadoEncargado','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ËrÜ8’÷Ø¨¨ãDÊîévH3á–ìÇŒl‡å~Ü	ÉÜf‘µ$Ë!ÇÆ~Ùö“ö|ã‘‰A‚Ur…V@\"‘ÈL$€ÌÄÿıÏÿÿíq›¬>“¼ˆ³ôbıüìÙzEÒ0‹âôáb½/ïÿøÃúoı÷;mW¿tõ¾«êÑ–iq±şT–»›M~\"Û 8ÛÆaÙ}yfÛMe›oŸ=ûqóüù†Pk\nkµ:ÿ°OËxKêôçe–†dWîƒä:‹HR´ßiÉM\ruõ6Ø’b„äbı¤ôÿüìí>LH¶^½Lâ€bqC’ûõ*HÓ¬JŠã‹ŸrSæYúp³£‚äã—¡õîƒ¤ -î/†ê¦Ãxöm5ŒÍĞ°î‹2ÛZ|ş]K—Ø|u×=İ(å^Q\n—_ªQ×Ô»X¿,â¢¤së•Øİ‹Ë$¯ªŠä=« DADŠ³¡ù7+¾Ò7=_Pö©ş}³ºÜ\'å>\')Ù—y|³z¿¿KâğŸäËÇìw’^¤û$a±¥øÒ2îıô>Ïv$/¿| ÷íâh½Úğí6bÃ¾Ó¦Û›´üîÛõê-í<¸KHÏnÊ,\'\')Éƒ’Dïƒ²$9Ë7©É)õ.õu“…q¦ëPäU\Zù]W@W¤’„¼úLÑwFŠ’Aè§,KHZC¹\'á§€åÄÜ¥öGªôğŞŸã‡z®È?Ô$©kŸâ]£¾*¿Î³í‡,á„„¯s{“íó¢ó1ÓTüHg”æxçT±Q4«1ë°æª‚835T³Õlñ-\ZWcÚVq¬ËTØ5 ¼Î7ƒVSê:ïG¨;ÂIã¡}¥Ùö.\']tÅ¥†Ãzu<ş‹¤å§‹5ı“2BüH¢îK‹ÃÏiLíÚ¨Ì÷Z½A§$Ìã]X/3÷5¡şBñR(•éãºªÔš÷Š±Wº¨tA˜ÔOÁ\0l–£ùønX£fë#–CãÕÕÒ¤c@Osªí¶¯9(k°‚¤±áZ¶Ë	Á×ërB©\\a6Z©Ç¤Ã¯Ùlª%›‡¬Úh%\r¡uk·ñ\ZÙj•Ël»Om–H¦Ùi]Dûz‚ëbT3OÍ#×õìc¼Ë&YÓøEÀa]¼ÌIÀÒĞÿzV7¼Î¢ø>TLÕS­á>¨œhA£Û(X¥$JZT®a«=Kvö!µÏ(˜[®2£õ‘:’îD+:©NJIkŸ¥wE©ŞÂ‡…¤/¾e„‰a?¹X67€:¶¢\"È©»4‹âË»Šõ¡Œ`]SQ(’((–CÔ3·v†-İˆÓ€¾õI½²¸[Ú‘$‰=lıJ’û,¿£$û$Ègï‡lƒ8ñpzR™wWYèf–¥yc¿eÏOfÄù*ÛÆaœLrÈrŒÆ¤§Óüô~ ¿r9fêAËq_,‚@QkjX°p$åUÑÆ¼®¥O‰b_B°-T ×Õp;¤ærÌ}×ú´$£}İy{XÀªã©Ù{ÙÅÅüC¡ËÎüäÊ¢÷ïÄm­‰Ènò¥Ñ|Ü(€n}!¿„“ã9‡Ym<Ï­;Ãˆù­[æÕï¼¶KÇ¶]*Èãü$kÌùËøóiÿ‡à<Ñş/.³´B×;ÿz÷–nİ¶1K\0«ıßòÛPï»È°\'>z9T\"»iÛ#ÛnÈÔ[Û8¸­Š¼æÚÎZÜÂˆÍ³…m`ÛW®\0Ai’më á#¬¢®ñÉ0Bû:F\'ÃˆTN6	·|-±ÃíoGîoÛö\'a÷+ìæ—‚ãıƒOÁ‡¡Æı:×B}8>½“y*‡û]v§ñv\n8Á£3œÊsûx òØp“mÆn)W$öÛŸ0h„şrŸ\rÏOÎ»ÆêM*	ÓN	Õ“Û÷Am ¯È>¢ª¸ğ¸‘V¹ã~ã\Z‡qGOñz?Y!rÿÊøwwÕ`?ñ¦Ã­2\nÇ+m$š£g»\nqØŞ\nÿdycş\\l_CEë®\\‰p_i®Œn!0ÂL[\"Y.•ÜĞ€*S¨#Bc´n¹Z–ekI…‚L\r·3˜f-s\0Sµ<™íh_ÌvÎ0»\"a¼­®Ãßçô¯6ÁëÕMTcÔÙYÆ\\ÓªšQ|Ó¶=qÚ—P¹(øòîşWB~ï{ªã­†¯––Ù\':«œ=>æUOœ¹îû¬ƒ³ÂG\0Óş$Š¾¦9˜ ÄAía<]q¿JÃ=a„l‚@ZÜ$²¶,E£Ha|ZÁïƒÄZ¯Jn9ÉË$ÃWª`köâ©\"X¨R®©PI¸	²ET¥«†\'eˆöµ„-9ò/Í³Ôö¼sVÜÀa—‹úÎî‡Ô9t÷ˆã7Êô$Š§8Oİ’2‹²F|ı9™4xcÚ¶-ôlıUÒcL‘­âçøÌUóƒxAKÃø›Ôñ7mCó“ªÅõ×±ß¶™ı$•KwøÓ´=ñÑœ|d¤¹ıyß´._z\"NáÖ2äŸ&I:W,wR¹×¥g¸OÆ‘ö­O‚‚3p\Z»fŸƒ$Ë\'0©²Ga®Â‡pÃjÏ¸¿<`œ˜XÑ×$éJmãÌÊ¬1?š‡w,·ËÕJ°Æ\r¬Ş2µ‡U­$­xÍé2xŠ}HG3`-ªÑ| ¨¦»ÀI# }å]¤¹Tù»“4võOkÑšÆÙ­$evå7¡èb—c¶YYN¶bI@u¦ÓStIIÉ¥jô¦PO$Ìò( ²7ÒfaœÔ.ºq¹O<d}õ¨j«‡ç+ëÇ<”›„9)G;@ÍOü‰öuŠ]:Å.‘SP7*>ƒºO1Ô£®·”Á·ı\Z\0FàJ¥r®\\ÅÉîú¹Ø[.hm‹Ó\Z†©Ÿ5lßMİÜ+K|4ñ6x ó‹y6¿®÷³DzS¯¶‡•lû8@Î2Æœ˜©Îı–QœŒËì›âu<O£áªôæKQ’íànûÍj[Ğ}Kß\rêóO¦êóî/	¾¿ÿóó¿ûyöÃ#’\'_(ÅÙÑñô¸&Û;’w;š}\ZTŸı${úó™D=®öuÆÕ~®®ıqO\n¶º<5\\õ_I”ò\r¾ÓÀÿ´Ï¹úR×ÇlíïÕµoJ{¶şŸe.iøıø²¨BêIoá@‰7ùn_¥ÑÊ çà¬Í0ş5e‘xG™‚òëÅúÒÔ°{wEÆ|H£ÂÃ–\'›®Ç$¯Ä ¹¤6eÑ8-åÅ;NÃx$z4„¦†+5}\'bÉÙ‘´Z´õ6ë!ŒFß›`šèu¾aØÆ”›†´2úòÌLÆM@òñvå_	uÔØ;ËYdEO6nÑøfGÍgvœYD¼J‘@^³¾û}ğ\"$§ûÇæZ‘ûß†Ã50şáŸšJ|„ä]†X&¯½Ö~24’ı‹9$„šEX`<H\nLL³š,\"\'bV5õä*í•‘³¨‚ àgÔ>SŞ©gXi—Œä\ZöŸGO•Â9Î…í	oÒq„vú&jjjè\Ze1˜õpUŸri›VƒÓVCtsNëIµ·Á”bl y­”YuùL+æŒ¦~éÔ“\'b3%.xLIm³ş—e.C®Ò³“=-Æ9GÏ2lf)Íƒi¦t¬óììLc%hh3Ú„Nvl…fª2AI[¥#„)÷Gk|yÂÇëO´p¢JYK§Å…¬O,fÂr–±	MÊNÆ\0ïÓ	M%l@B	GUv‰C.ş×|R%E³—İQR…£àAœpâ1AèØüBéÃ¼68æÜ±ëÖ£‰˜DîÙsÈÄ3<m±O°Ê@9—`f\0Gş\0óÌ)ª)yÀÂÇ\0D5ëš#Í\"Ü#\'ë1Y8„À‹I%>bCw9Ã’Ä!àyEâkÖwK–%í:6·©ÆğN°ï†²£š\\©O»ñ°ğ·C\0HkhÒÄY’‹˜ô³šÉ†rÑNÀC@[ñ”yN³ÅÂÉ„µ8V^Ò0æ7Æ&úm1ãéòÂJJ‹Œ÷#æ£UY/‹¸(«ÄÁmdtr†5€¸m¨kÃjh¶ggq›Ì¦#º\n±–æ7åWŸ…×ÖijLüòØSĞfê= XqZdˆõï—ƒlû\'fDÃ&MÆ%v™ÿÌYKªæÙßAÃã d5é™Íœ·ëà	”°é6È¦4L¼”jÌœ­ô¹˜ ~fb.-2ØLKx3RÇ©W:M2¬Y8m‘…O‰ÄÜudK ”N	›oen¥a¶ùthæì¤JËäëjWƒ^RØĞ_r$¾2šjT5MÂH‹(%ß\\tdêHâÍ²*£3ËLb)‹@\0<ˆïh\0œ„“ØüXİW\\À«:³@Ú§L\\}D’¬M§¤ø¹ m¢M ²Dõ†”]r+æpàUŸË\089X‹‡ÃºÊ ”gv4ÂyæJÀxÇ]\r¬²\nä‘@Ôá=:,†S ì„H¦Ìg%S‹Á’GÁ‹¦<¾\\­Íâ(A5¥Ôº•`‘ˆàxz?cp4ˆ²<KËòZ÷z­<È‡Hj><Ë*è]5 bÖGC‚¢pI‘ U©˜[´%8\'‘É´`Å/eéNdªv%\ZLg	ºsÅ¡t›AÖofÌß$Ç\0ñÆ\n—‚R†Åë„™±d‰f\n5púQ>ñ—\0Y¹0P“SST Xà0g¿¨Òôãà4¶´B›å7a€E¨rŞğ·\"Êğª$\n‹ŒCu ŠË\0+uÓ…}f;1@ËÁ^4!ZÊ,”Ë­=AäT\0A4ù(¸Qà)Ô“©‚¨Œ1{Jğy 25pôá”\n,î²3Ô&¤``„˜É3vìJµ)VÑa®T—¦Ã÷¦&…¸|œ\0&êQ¨éB\0*‘‹VÇ®W…\\=—A{ThÄ;´,EÇó*]o¨ÎÌ€\"ôÂö3öÔ‚#¶R„vsCRw³2¯ñÀ1æoÑÇ˜*zr=–\"\0F‹\r¶…Æ\0…Û\"\\Ë\0ê°”Â9”š\"Š\\t<pîxúÀa·¦²èH­ápCM(8„“D:<RÈ(jÀŞ™(Ğëã2It!¥Ü(A¥Ìbe@’Q©–¸#èÁ>¾+Ó‹Šä0â\"L™“,Å¨hÈ9ˆü¼/2f4êOÆ\ZŠû7~(ÚÏŒƒ¡5$Õr\0Ü›¢ŒË_œ:JOª³Ç+JÖıW“¨“0¤Ù áQ*ò69O\rö\0%X\r-\ZE\n –H4Ğ§Rxì‹ÖF7c}¨Ì¶ºGŞAƒ7\0z™zpãÒ†z0Ã\nĞ+O34$ô@M+3ÆÒ„)8Ñi~B×(µ‹=6t…²§Çìë“ô<¶L¥¿8‡8æ1Î„Â7{J0Î–/ÃÊ1ô‚æÆ¤÷ƒfF\']H*ˆ¥w|†\0Ï@2Tˆ\\x•#BÅÉ…L³øb§L­\'*7\n•/*3†îúYA•Ûé{Aè}P\r5t|¢p§t ÅìŒ½Øäk\\ù£xÜ)\0zË¯6¡îÃé]Öú²óÍMø‰lƒöÃù†V	É®ÜIíÏVt×ÁnGç«Z¶_V7» ¬Ö?Ş¬WÛ$-.ÖŸÊr÷b³)jĞÅÙ6ó¬ÈîË³0Ûn¨!±ùöÙ³7ÏŸo¶\rŒMÈO‰v}Oe–D(¥]SL_ÇyQ^epT÷\\F[©\Zï ‡x\\t}I>xòÜu®]“êïVîø·Ö^¢P2¾¦#«¦µ$aæ\\Õ˜6¯orà™´Ë,ÙoSÜ7SÕºÕì<Dİ«à0®x<,E§\npDÌÃÔÄãp»§Ypİ7s(õÓ[¬[&N*”áoNn#qœ ş\"q¸n§fÌäÊy>×´Ÿ‡Õ»7şXİ7s(Ü3É,(®`IÁ%Æ^T˜´(,1-«–‰+RD•ö»%´E	I^ûİZó¬ùì[½D¢J‰`5‚µÍ¤Ú/¦”¸WôJÇ@%©›M\Z)*JD04æ³á|ÈyR)“îã0\'\\Â‡·8%ÉŠ–Ñ$u#jÅÆ÷qˆáÈŒDWX‚üQnn ¿`«CÛ¥Ôjo<¸èTˆ‰BÅÛÂ´ kç$I,ê—á«9¤’$ä>KHÃWL’=ı*èãî£…æl^9ægóÉV£×g*²6ƒò3–³\'Ü¼åøÙ‡\Z;&–KØ2âmáğ¾†Ubšuv©-­ÂÛ|;‹1ÙÊâmçQswA‹Üİ}³1ò’„ˆ^ıÉÆ..<š/V\n@’{«QdÑûŒ²¤ Ô˜Ï6fôNÔBí§ƒavşHØÅÄR21¶Ôía}_hŠ°+ã©¹\0L	Òî¦âdj3µ\nò(Œ¨ùb»„_ÆŸ%\\Ø‚“ñ‡ÁâèypøK¿8´Ú{K­°m,Y*|:&êQ˜‘Š0FcÍ}‰À0PŞxÓ“ş>^ı“ÊáëÁp¿:|ÏÊªDÀÚ”hëCƒ¥òœokG_ÓîgÅG€ŒEïU§¾=÷»ì:Nã­\0ın	-x„¡µßÍ¡=äA¹ÅY¾šCÚfÒd¶ŸlP¨œDA÷ÄÂ=¡[ò\Z.FSù~—	Æê>ä*§ÛCh”WdQ^@£Êf¥C#ŸÍMp(ØÑÄş†Ûò:g£ÃšOE8²ñŒvÉÛìçm9Ï¬ºúìDÁ—w÷¿ò»\0eølë:°Œ0Ÿí`‹óù`ø-V†ı\Z³œ\"zØ€í”­ça½)]ş¦ñ>åÑÕhZP;{O$ùËFH†ˆv©“XÚËÜì©¬²Šƒî$ŒïäSîî³€¢–±æÕ\\f#‘ÙxË~_NL)Ï€¢Ú}·:Î—÷jèÕ\n eeMW1˜ï#îÊ»“½±§HªÆ‡,ûcO’–ºÂhã~]¶O0“\rÖò\'xÂûæÙ(îCñœÔbŒ¢\n¦6f•kˆ³(ÚÎÃ.A*Ú´ÍsŸƒ$.•ÚO–+ã/UøzÌ•>±+V1–|\næƒAÙ° a®ÚTÑ–Lîu–â91^Í|²EÃ|¶ğ\n”ÀìË$jãÕøË1oÏ|êæóp^Î¥Åçî£	óõ+Ï’J‹¨Th)|­%Úø<–ÙfÓÉ¥Çpş²”±ï\"¸È‘‰)›Ï#G´ó}\"ú©´ß–»¤®5ÿZ…¤ÇUY,ÈKLÎNºA¡ğ‘ªñW²y’şW\'ÿÙ“‡ªù,øö©{ÈAIşƒ0ĞhËCVıCJ,˜=ü†’\nN˜ŸÅP©æ“…àoƒ\"Ø·ß,LãLPCõ¿JõĞ…¹Ì~	İ~ZÎ«îĞÌz>w¯gÀ\'²ôâlm4ˆÑ¯Ò¢	ÔR¼§%SÊHûá‡KÆ¡‡>j„^õ¾“bbú7ëYºRåcëÉTùS\0*¢cy£¡!ZnSË½Nãy…7“3,ÕƒÍ¤W€å8­\r´	&VDëè$zHFãñÏW6òy„ôúÜÌX™h\0N¡ŠÑlF¢fÓe–FqıÎø›âí>I¨Ñ$1ğ¤L1<³bÄCuCÇI\rıÅÇdŠ9Äçi\n{H¹^Å*½%Ù~é÷¹^Û<«\\ØšU:×šE›óUL¼ÚTY¯èà?ÇQtõËÍ&gUùYıgã0Ô¸Òøî¬?VùÅúû³¿¬W/“8(š”¼mJÙâkêF9fŸWå˜%Ñv#6·ÏT[A)Š(òÔV²Õr–¬õüŸDb„AØWìåéüØ¼Wd­÷ï„N{P’è}P–$§Äz‘\ZÕõªb¹*ÑÏv\røvGÂô!½lÿ&ÈãÅú¿ê6/Vo~»m›}³z—Ó9~±z¶úï]3+Ûîû¦(IemÑàš;¡Ò>5ÜeÕ.ß„”„¶QN)ã-©d’„qQK×3\rtv»©”EZ×£ŠîÜ©é\"ÉÒ‡êªSæ{-î^Ç\rÔAˆÊX™@8˜8IëŞ›†Nİ³±x2…\0nC*¦Ü£™Â5áC^IŒA7HZÎ@c\Zë4ü\\ã¤Ò¦RiLjYfØÖzË\'k«˜Æ®İc\"£ƒ.\0òo,šÒÔW%‘æ\ZNÄúUX5z7	78ƒ“„£ì|$ÜÀ´÷y®&fï0FÒ†N*”÷_p\n“úËzG×5u·¿b}>éh¾	…²­ºër»ºšXurW7 MzW7u†WÇ±é]Ç[Ymn×YXP‘õhÙpVÂøªu2Ol€4^œˆ°œ\'kép¬%6¹ª-]KwsutÜ°:.[pVc\rN|zÒı\'İ\0²§Îf¹IH¿*–4?Z:İôÍzÓÇ&u }ô×mpÛÉæ>¿ßds‡2d;uğ\rh35î“,1\Z>Å©ãeÇñ]§ÊYNgB~¾>¦¹¿=ZƒvÈ:a+{×~å#§u\":}Ûê\0™Èç?PÔÃ ‚÷­5Œ¥İ*Ñ7ÄÖ&\0=i–\r&pÕ`²™_2˜4¦nØ09Lİ\0$ó¡‰H–v;[Ì9öh×Øii‡$ªÓ{wÉIV:fX¥Çí\r˜Ä¦.Ş\\€åk.tLã	D¯Éº´Ü[õ]jT‡-bììÌà«fN$gÓ¨ÎwÆw:¸šìàÊ|O%	ıÊ©>ÙY?“iÔNf‡–bk<çH®Ï£õ&qè¤*»M$êx†Æ¥]ü È? DœGË%‹FÒ1@m»ï›ºMì>#îXnHÆü‰çê<Zæä~W;ROWPğM%(9‘§ë%Ü×pè`.hÎÍ£•‡.}çÁÜûé:ô¨¹&’óh\'öÀ,ô\'èsòÄœËóä…èq¦·üÊÕ^Ÿ(ÓQ[5™2åºÍ”éè:˜9+˜I”æIŸ™Ô¤Ğt6¥5¾Ù&Æ™MSi¦\n4Y&åp9½şà;²¼qfÚ:-vòvİ7­æØ˜(SPšM šÕ˜ku^Gız\"À<\"æ–üÃ7Ÿc&ád“fS¨È9ü\rØÑ®kwÌrÇd¤“´Q„DŞ¾J£Õ‡¬êHŠ.ªÒ¾1_¯÷Iïú³ür±~.c\0%-%5(æ+ê(Ê$¯L¬ ¹ÌÒ¢ÌƒXN´ü>Ó0Ş‰4\0¡¦¡qX¶‡)–\\‘I+«O\Z¢Ygå^{à³ëÈÀ%!4åuú×ñ³ø\\JJù.½¢ûê’¬^†MªÀË ù‰ë:M£‹Jë€ˆÔ³p”í$OÃQ@.ß16ÍR\\¥ñdæSœF`ö \'™Î©oÂ“%{åög\Z.hŸc¾äĞ×(Eö™9Â°3ô±/a–yş ´‰¸§°àËY§hŞ8<µböN\0«\n°yTMâ“e+ëÉ^€¿nğÀhÍ1„Ãä‡)s&Ôs9|4_²¸³µ\ZJûe>€Ãÿçáì©`¨£rNº×í´ßy÷º¶™ø¥·Ğ&¯§ØÏÚLëHP\'!0ß&Çf2İ¹ÆÔüQ=S³\0×ìöx	ñdÂZñË¢¶kÃ-l‡ı®1Ş·Á6ªiÙ-0gÚ–hÊ„4 =+ôß-ÎEÆl†&dp¸ó0ÅˆGÔEøƒ{Çã–h˜cäÖgğ–Æ´åKÄŞTñh\nÚá²ì±_\0ñ¤8áøX€}`ĞyÖ©fŸHmÎ7š/óÌ½Í\\8Í:ø#|\"¥zÏó¤«z\Z1÷¼xc„QA;ôÅù¡Nrn5ĞåÔaõßœ—7R0n‰-\0¤ƒ¨!qß|şÑ”=hw‹Êây‰Î¬mÕÄ³¤5„æÃ<÷Æk±ãLËygĞ~Z‚-7Ãx\")\'é<”9·:_3Ïoq%_\0ñù#n\"QÃ{»T°çµ–ŠKÚw9İèSH•«ğt~œ´Ë÷ê€ieÜä[rşK,_’p>,Ïûùp\0Ëu\0Àğ\0N‚=k‚…7ş>õÂ¨½ÿÂêax]ü62:\r\Z9Ÿ*‘_8¯á±Ÿçq`1_NÂŒÈ¬7¤KsˆgÕ±_xU\ZÖ<q@\ZcöİÄRàm/a=ûKn%ÚÔKxtY\'¹C¨îÛÓğ<k\"]±‰\"a!ãßíÉ9Ì ”Ğ®Cæ«93ˆéA€¿Êf\"æ@bÎÃÊìŠh—e‚Cf_+–ç\no«Æ8Xré`30z¹iâR>² ø‚#¿kÂ[¢ı-º—àØ`v°$xÓ#X`IE0ä\'\\ÄyyÈÈqóùi“X\ZH´7Ÿ¾Ì¯ê¤$uxVœ’¼Û]dyçEy”Á]PÈGU«RJûĞõêUŸæØ!Ş„ŸÈ6¸XGõcM²¶\\â¾áFêJ(‡zSãHò•R|1Ô_CÓ[³!uR…`W¡)úG2úCˆ;vº!ÏËå%ÏÉPÎ &S‡×42ørb|M‡­n–:j¿C€ê\\<DCJ°‡\"<F	Òªwh)Õ—btBüaeÃ„Q%…†â×ºjÈTj¾ƒ$jœgu{7	v_Aï½òtğ¹;v©®êGá© uÕ¸rH}4Ÿ!àM‰	aSË¢üc8ÅİÉ‘<É]	8Í]¡<³õ–:`Ê .Ğ];ŞÉo˜Êj(;l*é™Œ·¥Nùb¨G¾†®7.¶ÜWöÆÔĞ5eÌ‚z˜)×ôÓåª•;éK úBÓõ^Üùbå*l´ÜKé& sBo¶•f«9…—Ktx]©Üc±äd¢ùWLM‘¬XĞ?·‘ÌÚŸÂ2ÁîØ˜¶¸é´á‡e5d)Œ]9ruĞ»Ë à¶ÌìóÍë‚YÈĞÆe’Šâæw¹Â\0Äz·OWÜÌ«¶óìU²gÆGK£7KBå4ÛˆjíÚ*wzSgv³äIüìa#Q\rcAr4}Ú€B\rqq÷Uc¬HP#ƒ2ÍàıŞØá)—4±Ê<ËÙÜC4YÂšÎHËmD0|œ|¸¸ô\"5§S\\~†ªXšø\nó.Kó10šäZŒBHƒlú¡ã±É\Z}à\\\0\r’L¼$ÇÃòSúàíè=ïÔeãÒñÁ¢ÑëãĞåWmö(°Y²¡8.Ç!\n|¢©ÒgÕyÀŞ™™;ÖŒO`ØÂÁlİ¬ÿæ<T È¨.w‚açÃuSÕÁ¯ıp™€R`˜X¸é¹ãÚ°\'ÒuğÄyäp8\n!ƒR„…¹Í—aÊA‚\Z¼7œíc?\nÄÁàŠuyŸî,kş•”	şÂGŠEˆÉ£Œ°2ÄÉÏPñ \'­™8ÿû[WÑx€\nf±?S„ƒ!;nÔ\0.NdĞ°‚IxËd|àyè¨\"WÇp8ëqÃƒ€Q*ã&?.•³¹1¶.îpÜĞ;ŸC_º´® ò\"W¸^C~ùfR \\nà‚îÌê~‡¹Q×z[O°™€ü\0ê¶Êû}Ç!£S­s,vg_Ãüc¡ÃMíô\'œ’cDC7Üåz÷*]ï\0Ú—ošÛúöıYÒ]ø¹Î\"’õ×óÍ‡}Z½…Úüº\"Eü0€8§0Sr§}7é}Ö¹¾\nuU„gú®éØ¢ ^æe|„%-IQĞù^¯~	’}%<Û;½IßíËİ¾¤C&Û»äKŒÊVÕÿùFÂùüİ®úUL1Šf\\=û.ıi\'Q÷kàµ@Då˜Û¾l\\ÍeY½püğ¥‡ô6K\rµäëı‰?’í.¡ÀŠwéMıÀ°=n?ä_ä!¿ĞïŸãˆä8ıDğd?¿Šƒ‡<Ø-Œ¡=ıIy8Ú>şõÿYgó¸ˆê\0','6.1.3-40302'),('201911150634510_cambiosEncargado','Renacer.Nucleo.Migrations.Configuration','‹\0\0\0\0\0\0í=ËrÜ8’÷Ø¨¨ã„G%wOOw;¤™pKö´cF¶Ã²»}SP$$s›EÖ’,‡ûe{ØOÚ_XğG&_%Wø`$‰D\"‘ÈLüßÿüïÙß¶Ñê+I³0‰Ï×ÏON×+ûIÆ÷çë}~÷çŸÖÿÛ¿ÿÛÙ«`û°ú­©÷}Q¶Œ³óõ—<ß½Øl2ÿÙzÙÉ6ôÓ$Kîò?Ùn¼ Ù|wzúóæùó\r¡ ÖÖjuöaçá–”?èÏ‹$öÉ.ß{ÑU(«¿Ó’ëêê­·%ÙÎóÉùú‰éÿéÉÛ½‘d½z…ÅâšDwë•ÇIîåÇŸ2r§I|½£¼èããĞzw^”‘\Z÷]uÓaœ~WcÓ5l@ùû,O¶–\0Ÿ_Óe#6ïEİuK7J¹W”Âùc1ê’zçë—Y˜åtnCo½»{q¥EU‘¼\'”ÀHvÒ5¶â+=kù‚²OñïÙêbåû”œÇdŸ§^ôlõ~…ş?ÉãÇäŸÇû(b±¥øÒ2îıô>Mv$Í?»za°^møv±aÛŒiSíMœÿİzõ–vîİF¤e†×y’’˜¤^N‚÷^“”Îå›€”ä”z—úºNü0Ñu¨ò*ö½ôÎ®+ K’{QD^}¥è;#YÎ ôK’DÄ‹­¡Üÿ‹Çrbî’Rû#zxo½¯á}9Wä€ê•µ²/á®’ß•_§ÉöCq‹„¯ssìSŸ¢ó1ÑTüHgäæx§T°Q4‹1ë°æª‚835T³ÕlñÍ*WcZWq,ËTØU ¼Î6TSÊ:ï{ˆ;ÂQâ¡}ÅÉö6%MtÇ¥ŠÃzuå=ü‹Ä÷ù—ó5ı“2Bø@‚æKÃ§8¤zm”§{­Ü Sâ§áÎ/·Æ‘û\ZPş!x)”BõqİUJÉ{I²€Ø]Ô¯İ†õ‹÷\0$›íh<¾ëö¨Ñúğ¤íĞxwE¥4iXÓœh»ikvÂ\Z¬ Il¸–ívBğıº†Qêx—Ø†Vj1iğÅk6#jËæ¡#»6ZIChİŞm¼GÖRå\"Ùîc›-’ivÜÑ¾à¾è{ÅÌSõÈu?ûî’Aö4~pØ/Râ±4œ~?+^%Axú*¦â©”p½ûN´ ’õd¬P’\n%)*×°•9;ûØgÌ\rW™‘úHIv¢D\'%‚…Ä¤µ‚rrA©^­†¯[$L=h™´ÅçAul•#aº¯fIq½[¡X\Z½`Ë¢F$uè	E’¨Ë!Ac®ítGºÖ€¶õq!O¾ÅÓÒDQ8ÁÑ/\'¹Kâñ;òI´¼tô~ÈÖ£	¬\'…zw™ønjYœ0ö[Ö~2\"Î—É6ôÃh#ËüÊäXÆÜøŞ‘Òè\ZéyÃÔc”9¹XÖã€:¶[UŞğ¥Å¶„`]¨@¯©áf¾îÈÔÇtİ´>nVh_·^š†ˆöÂp3z/»0(T O®$xŸPÙ¹Iá€ìß4ÌÏ†•\0hv®ë—ƒp\\Ã8G¡p\ZÏs}Ñßc~Ë–Çyv^‰C;Hdäa|’UšòEøõx2BpèdIœ{¾ëmxy&zKÏWÛ%€•™ı< ù-ñQ]WE4Ñ5%Ò±G(¶=©OpğÄ(!xõ?)ªoP,Lš0b²Ésˆ#l8¾rJƒ[»ŞC+j\Z#´¯£btTŒHá~qÛ×\'ÜöN¶çù¶n\\ìÓ.vóë²ş³G—Ùeˆñi]fËE½o×Á|xıı.¹\nãp;ïÁÎ=å¹}ØQ¹o Æ6a”+\"ûãïU‹şbŸt®ÀOÎ;¹ÄêM,-¦êDÑ‹:@_’}@Eq6áAZåX{Tk\\©}¨Ëód¹á+ëùÜTƒ=¨«R?¶J//µ1Z>ß*Äaïp+üMR/Å<Ø¾ºŠ0ÖM¹á¶R/\\ÙB`„™\Z7D\"²\\*9hU†v¥WûĞ8ÏzÍkVµ,ËÖ’0ì\n1™\Zn6˜j/îc€)ZÕv´¯‰ÔvN1»$~¸-®Ãß§ô¯:Fÿ§õêÚ÷Š1êô,c®©EM/¾©Û9íkŠ ²À{|w÷;!´=•‘HİWKÍìUN\ró¢\'N]ŸÚÖÁiá=\0Óş¸}\rc ÁÂ¢Î0]q¿Šı=aÙ\0!¦¸Jd­YŠJ‘Bù´R‚ß{÷ˆ¶^”Üp+¿CP,“_©‚­Ú‹\'Q`¡JY¤B%áÈ£P´—L,\Z…!Ú×ºdO#_œ&¨îyë,¸c—‹øNn;‡Ô1dwóeúRä„CØS·$O‚¤Z¾Ó9™TxcÒ¶.älùU’cL‘­àçøÌUòƒxA[Cÿ›Ôş7m]ó£¨Åå×¡ß¶™›~¢Â%ô3şTm|4&Iîé¼oj—/=‡ğN«òOŠ$™+–;‰Ü+ÒÓßGıl¤mëãBÁ8İ³¯^”¤¨‰¿y•0Wá%Ü°Ú3îçş‘\'Œ#+ú\Z$‘\'#mœY™Uæ{óğâv¹ Ú	¶İ¸½@`Ã¦v·+ •¤ı¯9\\nK±É4VĞ¢:€‰æE5¾w8E°\0í+åèì²š+H…¿;‰CWÿ´\Z­aœİrò\'—Ó¦ÚœíR a›]+€e(–D\0Tg89ÅA—„”\\ªFoñDü$\r<ºözê,,€£xÂ—n˜ï£	ò¡N(J­‡ç+íÇ<”›ø)É{;@tÍü‰öuŒ]:Æ.‘cP7º<¦ê>ÆP÷ºŞRß¶{\0+•Êa¸r\'½ëS¶·ÜĞêÇ=_¤ÓìaûfêÆŞY\"ïëø£	·Ş=_YL“ñeı4[ädâÕÖ8P¬í),ˆ-£\rÀLtî·Œàd\\fßd¯#ï¾{4¥×YN¶»í³Õ6£ç–(¼íÄç_LÅçí?z?ø?üõùÏßÿ…œşôsAÁ€¤Ñ#¥8;:Wd{KÒæD³Ê³ß¼hOJÔãj_%\\íçêÚ÷$c«ËSÃUÿ1ßà{\rü/û”«ÿuı×iÈÖşA]ûÚ£´gëÿUæ’ŠØ/³ÂRNz\rÊiÉwû*V	.;gm†ñ¯(‹„;Ê”_Ï×’†¤†İº+2à]\Z¶<Ùt?&i±!zÑÕq(‹†q.oŞaì‡;/Ò£!45Üù‹™h;K.ÉÄÅ¦­\'°Yïyd4ÚŞÕDG¨³\rÃ6¦ÜÔhúù–4ÉÁ8IT@ÈBvÃ‘yI@dRNÈkÖw{œ…‹ ¬õØl+SØ3ó]¼tÀÏòéÉ‰<ÑjÀ\0#™²h¯á7¹ğõ8J‰ñ•CW-ÅÓÌ¨¹7w†\Z¸¿ÃKæÕ¡W«PæƒF€1 »œP£È\n	LL³;šÌ\"&ÄÄjêÉUª,=fVUAa29PEÌz§a 3×\0/…ØHkë±êT1$¯ó8gV¿@$&[¨v¡V¡š¶öõª^\ZƒYWµY—ÆQé5ØL¡ÙkˆnÎi-©fá6øõNŒ\r4Oy2».ŸlÅœÑÔÏ€\Zrò@l¦ÄeSRÛ¬ÿy™Ë«ôìdÏG‹` Ù8çàY†M.¥™b0Ó”u4VE†*ö0ZE ¥&âÉªLĞD2WéaJä1äŞße=áãniáD1\\e5f_dmn1.\r¸Ğ¤eğ6£ĞP‹\rÈ)á¨J0ÑaÈ…\0›ïSª¼hök·×ªÂQ˜`9áÄ=€uÄÄ¡có¥wóZá˜sÇ®Ûb¹ç	˜C&¡E´\"Ä|<Á\nå\\‚ÉùL5c$¨†ä\0‹©8 ªY×ifá9_ÉÆ!Ä^º)ñA:sä[‡ÀÄ;GX³¾k²Ì©×±éM5Š˜ët€s7” ÕäºvØƒ7€Åt\'€´†*MGœ9¹ˆÉ@«™l(í\0<ä°­ÌcªÅ(Ó±LX³òœŠ106‘Gh‹­Ë3)-2“›˜Vd½ÌÂ,/rsx7‘åk\0q[W×†ÕĞlmgq›Ÿ	˜MGt3bÍÍo&Â\r®>\n¯Í,ÓÔ˜LËcOAš©Ï€bÅQ8j– Öÿ´t`Ç?1)\Z6¹h†4Æ”Ø$ÿ3g,¯ÚÄşF\Z0BV“Ùäy³°C	›nƒ„JİÄKÙÆÌÙJŸ	êg$æÒ\"3›i	o†CªEpœz§ÓäÃ\Z…ÓfÙø”HÌÀ]¶B•°ùV¦Wêf›ÏˆfÎNªÌLS]í*p˜€—6TÄç<ã¹¯Œ¦\ZMƒ0Ò,B	Ç`j.:0qäñÀfY•Ôƒ™e&·”E \0\rdêh\0“	8	\'±¹Y}ª¸€Wer2´+Œ™Ğú€DIQÈ ğ)#u¬Î ²DõšäM~+Æ8ğªMg\0X$ÖâáğFW”Òf\'A#œg®ŒwÜÕÀÊ‹@	DŞ£Ã¢³É(`\"™2]œ•L,K¿4åñğå\Zhu\"G	\n()¥Öm`¨\0‹DÇÓúƒ£A¼åYÂXÎ×šlå±@>DRóîeV	@ë²¨²>\Z…KŠ©ÈÆ\\£-Á©<‰L¦#(~©(³Hc=’©Ú”h 09œ%èÉ‡ÒqXŸÍ˜¿Ê\0â•;.¥‹+Ö-fF#W4S¨Ó¦‰’€´¹¿ÌÎÕ™¬˜š¢\0Å‡9ıE•ñ¤\'±¥Ú,Å	,@…ó†¸QÚln*’€ª\"2QWt ‡¨\Z2 råşbO(µ@m\nn$ªìXä½_ 	J]\'r4©&”Ä\0óQ c3Rô\"„˜‚‚%ƒJ³§Ÿ\"ƒPGN©Àâ!\'CmB\n†©<}Ç®›bæJqi:üÉÄ¤—\0I\0à.\'èA\09S€zõºbwà+è0Vì\n¦ƒp7@#Ş¡]Ò(:ßátññ†âÌ(B/ì<cO-8b •Ah77$up7»æ58¦ÑÜãm#zâSEO¢§Ã\\`Ãhq\" Á¶Ğ pÛ^Ä€‚k@\rÖƒ’B°C©)¢ˆÁEÇGáö§vkº©Õ7Ô„‚CHÑ1IA¤ıÉ#…Œ2 :ì‰=@.“DRÊBTÊŒ!T$E‘j‰Ûƒìû»2°¨Hc .’Á”±d)F\rDC!@ä~‘1£Q2ÖPÜ_¿ñCÑ~fä¸jER½€{S”qù‹SÇUÀß“êôßş‚’uÿÅÅ$ê$I6ÈE¸—ˆ„|G²`È1C81°À\"h@hQ/R\0±D¢‚>”pÄc_´:º›èCeĞÕ\'ä4x —Y 7.m¨3,½ò49‚†„¨ieÆXš0\':ÍÃOè¥v±ÇîPöô}’^È–‰ ôçÇ<ÆYC(|³§3mIñ8¬LC/hnLz?hftÒ…¤‚XzÇgğ$C‘¯rDèrr!Óè|´S&Ö•…Ê•Csı¬ ‡ÊítŒ³ ôD¨†\Z:>Q¸S:ĞbtÆ€íù\Z—@Ş;²@oùuÀÀÍ{8­ËZ[v¶¹ö¿­W8ÛĞ*>Ùå{/*ıÙ²¦àÊÛíè|e]ËúËêzçùÅşñçëõêaÅÙùúKï^l6Y	:;Ù†~šdÉ]~â\'Û\rU$6ßş¼yş|³­`l|Î>%:Øµ=åIêİ¡”vM1}¦Y~éåŞ­W¼ßsl¥j¼ƒâqÑô%ùàÉs×¸b4MŠ¿ëuÇ?·ö…Ò‘ñ5Y1­å 	3çªÆ´yñ‚»—/¥]$Ñ~ã¾™ªÖµdçA â^‡qÅãa)¢8Uğ1S{ŒÃm^dÁ5ßÌ¡”¯o±n™,8©P†{¶8Ad¸ÄqÂòyØˆÃu\'5c&WZä\rø\\Ó~Voùc!4ßÌ¡p/%³ ¸‚9¼bì—\n“V\0…%¦Åa•kâ’dÖJıİÚ¯^–C+¯şn	­zJOV}Z¼¢H	`1‚µ÷É¤:Ï&”¸W™ôJÇ@$©›KÉ÷\nJ04æ³á|ÈyR)“îã0ÜÂ»ç8¥•ßÍ#IÊFT‹\rïBÃ‘/^ÌŠ.<±òG¹¹Áú[-aÙÎ%V[åÁE¦b@L*Şv	Ó‚î;E¡(_º¯ær‘»$ u_-$2‰öô« ›’³zè˜œÕ\'[‰^ÚTdiå)f,e-Ü¼¥¸íCË%ñ‡¶pxKß%ìöÂ¹\n7ió#\'Ää¸‰·Gİzi*r`óÍF‹\"\"*aå\'s»0ğ¨¾X-RimZ\"	Ş\'”%ÁÃ|¶Quw¢¤¨?-†Ùy³­‹\Z¤d¢©Û/aiŠ°kã©¹†\0L	Òn	SqT‡ú©CyFT}±İÂ/Â¯.lÁQAÃàu±î<8ü5^Z©ƒ½¥\Zİ6”‡,ÕÈIÅ¶\"ÔĞXr_ 0„7Şô(¿W~§$e÷u1Ü¯±³Ò*0†:%Úz	Ë`.c›ójï«ÔãªøĞpÉ0ëİçĞ7¼ş~—\\…q¸À±ß-¡y0´ú»9´ûÔË÷¡8İWsHÛDšÌú“…®“Àk!ã\r)\\ÑºÉ.qà¢¤`4•ol™`¬îC®r¼áƒFyIö•è4Ú®l1;\Zl®‚C‰&ú7ÜnÉûœ›i>!ÃÆ3Ú$X³ŸS´å8³êêWxïî~\'äJ÷ÙÖ:t`a>ÛÁ6æóbø-T†æ\Z³œ\"Â×€í”­Ça½!İò†ñØ=ŒíÑU	¨ZP={O¤õ!–-f‘tQçK¤L4i¿6àfOe—Uº??¼•­ÜÍg›ŠjÆš—mq˜ÕŠLnÅ»Xöû|Ë”ò¸T›ïVæ|ù¬†¾#­à	’\'ARåZåƒù¾˜å®ŒÃ·³ìõµ\"©\Z/yí÷µ$Íu…QÇæºŸ`&(¬å’\'xÀûæi\'îCñäÓlŒ¢\nx6f•+ˆ³(ÚÃ.^,ê´Õs_½(.•êO–;ãoEˆzÌ•>±+V1Ş{æƒAÙ° a¬“ÚP‘L~t–âÉ/^É|²FÃ|¶ğ\n”Àì–¥Õ1åüÇå·g>uóq8/åR×s÷ÑŠ¤özˆ…ç‰¥MT*´Æ¾Ö’\nm|òäÓéäÒC°¿Ìµ‚Ø·\\Ö‘É:R6gÑÎ÷‘è§R›ï’ºÔü‹’W=81#/1y-8é\Z…bÀGªÆßÈùåIú_ıgªæ³¼ğãSótƒüƒ0hË%‹Çö±#Ì~çHÇ¼¯b¨TõÉbáo½{\"\Zìëoªq\"ˆ¡òÃ´Bué‹9Oş	]šÏ«nij=Ÿß‹—3à«Mªxz¹¶q´v‘·L •â}\'™LF¢§€¿)ÊôŞ1ôUÓŞ2Q‰=Naùğì›ìí>Šè\nñ¢Œ˜WÌéæÀíëULÑÖ2*¨’¢(é/¼vµ¶ŞÏê‰÷äŒ~Îs,<„¤˜a©&¤Í\0((ÀrœÖ\nÚ\0+¢å6­öÜæ<›Ğë0š¾²‘“$@9ü\r™¾k¢8À¤â¯Ò,J†£”)º·SŒØ¢«nèi©¡¿øBÌ¢˜C|sæ©°‡”ÀU¬Òªõ—öw›ÀµNÊeu-éQäh-éÕ‰\\ÅlªU•õŠşk”™T¯ÿ3:)ÊOÊ?+7‚®Æ•‡wô(ş±ĞàÏ×?œü¸^½ŒB/«òìÖyb_ˆO¤%}ş}‘8–ÛØÜ>ıl%Ë‚H>[¬­š;°¬gÿ$#4Â>M/O·ØğàÇê‘ß° k¹pÿAè´{9	Ş{yNRJ¬7Å›öÕõª`¹\"{Ëv\røúÃô!=Wÿ&ÈÃùú¿Ê6/Vo>ßÔÍ­Ş¥t_¬NWÿİ£kæ$fÛ}ÛÔ!S¬-\Z\\s\'T\ZkU…ÁmR˜,AH™e+Xå”<Ü’bM?ÌÊÕuªÎO•+B‘«õ`Ec¨ªºˆ’ø¾¸[dÁäé^…»rµˆ¥Òw°8˜ÀJëŞ«†Nİ³Á{k\n\\Ç`¸²»™Â5áC^Hõ^lêÂ“¤œÄ4–i¸]ã(Ò†iL¾XfØÖrKk+˜Æîİ}\"ØİA\0)fûƒ7^š’Aê›Z‘æ¶×SÄvÖ¯Â\rNçUá(§\n70õ «ŠÙ:0ô£´¡“å\\‡Âä\n³>Ñ5Mİ5ÆÃ’çÃèv•ÜìU+ŒârIíz°r°Éëª{•ibİ€T‰bİ`”¹bÇÒ%Ší¯~ÕYbGÙŠ‰V–\rGÕ]€poŠPG½ÅHåêˆë\nzT£–£F±iZm1hZºëq¬Ëìà\'è§¯$\Z~8…êQöe?¤ËÃ:šæ¦3ı¦XÒÜæt¼õ\nMUÚËÒ}ğ÷p¸e³¨ö?o²ÙSûCéò¦:8\rÔ¹*wQâõ\rŸ,ÕñäğîYå|©#!?^ÃÿV¡í2©£ØÊn·ßøÆÈI€Nß¶0à1ùü\'Šºïğ¾³Æ‘ñ®´Û%Ú†#˜¢AÛƒeƒ|8˜¼¨ı·&!ª6L6T7@‹d>4¥éÁ2àÌşh³yÍì;Œ‘¶KÇ:¼Û—œÛô`WÇ»t¿³“\"ÕÅÍĞ|ÍÓx€¥WeS{İkõM’U‡#bœìÌLğE3\'’³	YÇ³ñ\rWƒ®ÌÏDPºÑoœêƒÙú™œ¥vk¶ki±lçÉ\Zz°³^¥ Td×)Imh\\ÒÙ\rEöü¥ô<X.™5ÄÉ%jÛ}ÛÔ]ib7ğqÇ‚t3 ó\'õó`™“OÚ_ìHÙB]AÁ7=– ä” ®—pß‚ÑÁ|= Ù;v=4‰@sï$şt£æN˜HBÍƒØ…ièOĞçè‰9–\'æÑqÂC˜(ó{mÊMGiUåÜt\\×uÎMG×ÁÄYÀ\"4¶úÌt¤*§³*­ÑğÍ È:ñ0vaUvC3i€&Œ“«jRê¥Èawf®\"æ–wŞ|ó1)pC³)T¤\"4oıÜuØÑ®iç416[L²³†¡\Z©p ±›¯â`õ!):’âSŠŒb\'Ì×«}”‡»ˆşÌÏ×Ï%bt $aT‚b¾ò ş$¢|@Òb“ö¢‹$ÎòÔå¤¿ïÓ0öÃIj\Zªa[˜bÉ%Ù‘¸Ğ¤!šuÆĞQîµ.0»\\~;SN¨o%P>àC,Ù	J–ÎŠXÑeğúÈÁ$¥ªFy‚J|Šßü¤œ,äŒ»óO<ûvÒYW¥¶›úçR¦Ówñ%‰HNV/ı*ÿä…—ùüĞz™ûSÑ3§5\nXğe‡Ì>šäß‡ÀDPZXvõcó¨šÄ\'ËVÖ“=ä]Ÿ€Ñ*­Ü‡CY»)ãšË¹ì>š+*Üù·„R…àİqx\0{ê¨£ÜŒ“>éeÚyŸô b3ñsRL>°Ÿµ‘ö‘Ö\"!\0¨HqÍdºs©ú£zcb®Ñè\"ó)´spÌD*¬¿Ìª»VÜ2ƒdÚ=frã‡hš×ğÁ©¶9š–‚g!T¿e…ö»…5¬Ïah@¶\0‡;Sô8épD…?¸$ü7DÃ=¶8{€(Tª-_ò$Î¦ŠĞçe¹ø`ˆ\'Å	‡Çìë`Î³¦±ŸsAc•}£ú2ÎÜÛÌ…Ó¬ƒ¨Á)ÕÃVOºê–s¿àí`2FèµÔCŸÚ·àÆMŞPûíÀ9\0y6o‘Â€‰‚¾!H d»„Ä}?ğùGÓj İÍºş‹0¬HFd½i«&\rö*!TÆ¹0Ş‹gZÎ\röSl¾Æ“½8­Î¥Ì¹ı¢›jæ9âÍ.ä3 †¶ÇMÄ%üd—\nö¼VSqNı.¥}\n©pÆÄ·x;ç¦Eò-}Ö&<âwä›sşs,§‰`–çı¼\\Àr¶,€X.À<±$˜ùà?¥\\èuöŸY<tOßFÖ ó©bùyâûy–óåÄ ØKáhoIçæ‰EÇ\\|1©Ğ°æ‰IŒÑOsqÀdg	ëÙŸó(Q§g›Ãë¤ÉÇ¡šoOÃóL~‡tÅ&s›…„¬\\7[$‹[7ƒRÒ©r™¯æÌ ¦~…Í@Ì$­‡1”ĞĞ.Ê.‚CFß+æçŠÉv~1çÖÁfI›ä¦‰KËÆ‚âü®	O>‡ö7ëY‚cƒÑ%Âœ<0™,èÁs\n‚.‡Ø,ÎË]3³˜ÏOC™ÄRµ¡½MéËüªLûP†g…1I›ÓE×ašå—^îİz™lb(Z]“\\:‡®W¯ÚDÀ	ñÚÿB¶Şù:(ÎWé(Ør‰[ø~ŒÔ•Põ¦4ãHò•R|1Ô_CÓ[³!uR~…`¡)út&\nı®Ä³nÈóÒEyÉsÒ•óˆÉÔá%L\'¾¤_EÓa-›¥êïP 8—\0wÑì®…Q‚´jZAJµ¥X™Á°Å¨Z…†Ë¯vÕ©T}IT9Ïê ·nì¶‚ŞzåéàswìR\\)ÔÂSAêªråú¨>CÀ«Â¦–-DùÇpŠË‘<ÉM	8ÍM¡<sô–:`Ê .ĞS;ŞÉgLdH5”V•ôLÆëÎR§|1Ô#_C×—äVî+{cjèÇ*‚²f\nA9Ì”kúiòIÊ´%Pm¡~O×(R\rd¯g+¯\r…÷/T«hJå.Ğ/˜ğúSST5°(|îl é´?…ª€]z1mq]fÃËjÈÍ±I9`ğl¥:]1h+–‰‡\rew®MÅ½ãĞjÀÅï…SHg¤«*õ‘Ó€ùÑ´U/†|ún4x(LŸ=l$ªaÌHÊ\\Ş&‹ˆ ÔÀuşcEZÉúÆ4ƒO}‡§”Ûb•qdöØC”ò #Ug\néƒ´ÜFİÇÁ‡‹¯^¤æp‚kš¡*v`¾Â¸»ïxŒ¦€t£4ÒàCA;t<\"ÖQ¢÷ AĞÀ Ô~à-	4JVÂOikìÁÚÑO8l`¼C”†Æ‹ÆL÷C—ßµYTµeCÑCCøD=R¥§¤ó€\'gf>ØU3v8(v€aæÀ²YûÍy¨@h\'0P]\0è\0Ã¬’eS•¹Ñ~¸L#0L,È±ÏºãÚ°vĞ²	hçì9BÈ ÁHns0É0åĞ4\r>Îúñ4\nD_à‚u´v±KL½“2!GøH±¸$Ya”VÖL3T<´F«&?ÇÓí«h	@³ˆ“!ÂÁİJ\0\nG\0\'2hXÁ$¨b0>˜xè¨ WG8Ëñ)†)ºÀ£TzÉn®2+µ¹§´.îæ\rÜĞ\'œC_º*- ò]V8üB>ƒ|3\0)P.7p|vfõi‡9ï×úøp˜€nŸË¶Ê[eÇ!£S­sguç©†xeBÆMïæğNé:¾¢~Ñ½ymªu;lËÎ6Õ•tışÌé)ü\\%‰²òëÙæÃ>.^É«~]’,¼ï@œQ˜1ñ97Ç¶Î›ø.i.Œš*Âó[Wtl—{/Ó<¼óüœû$Ëè|¯W¿yÑ¾X<Û[¼‰ßíóİ>§C&ÛÛè‘%Fáµ©êÿl#á|önWüÊ†E3,|ÿ²£ Åû5ğ\n¢p­ß¼,æ2/Ş¾¼l!½MbC@5ùZ/Öd»‹(°ì]|]>=iÛ§Œü‹Ü{ş#ış5HŠÑOOö³ËĞ»O½mVÃèÚÓŸ”‡ƒíÃßş‘H8ò­ã\0','6.1.3-40302');

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `asistencia` */

insert  into `asistencia`(`id`,`idSocio`,`idEncargado`,`idDetalleEvento`,`estado`,`fechaAsistencia`) values (1,1,1,1,0,'2019-10-18 02:48:12'),(2,2,1,1,0,'2019-10-18 02:48:12'),(3,10,1,1,0,'2019-10-18 02:48:12'),(4,1,1,2,0,'2019-10-18 02:48:17'),(5,3,1,2,0,'2019-10-18 02:48:17'),(6,10,1,2,0,'2019-10-18 02:48:17'),(7,4,1,9,0,'2019-10-27 14:18:30'),(8,1,1,9,0,'2019-10-27 14:18:30'),(9,11,1,9,0,'2019-10-27 14:18:30'),(10,4,1,10,0,'2019-10-27 14:18:35'),(11,1,1,10,0,'2019-10-27 14:18:35'),(12,11,1,10,0,'2019-10-27 14:18:35'),(13,3,1,3,0,'2019-10-27 20:47:04'),(14,1,1,3,0,'2019-10-27 20:47:04'),(15,10,1,3,0,'2019-10-27 20:47:04'),(16,2,1,3,0,'2019-10-27 20:47:04'),(17,3,1,4,0,'2019-10-27 20:47:16'),(18,1,1,4,0,'2019-10-27 20:47:16'),(19,10,1,4,0,'2019-10-27 20:47:16'),(20,1,1,5,0,'2019-11-11 03:11:29'),(21,3,1,5,0,'2019-11-11 03:11:29'),(22,3,1,6,0,'2019-11-11 03:11:38'),(23,2,1,6,0,'2019-11-11 03:11:38'),(24,10,1,6,0,'2019-11-11 03:11:38'),(25,1,1,7,0,'2019-11-11 03:11:46'),(26,10,1,7,0,'2019-11-11 03:11:46'),(27,3,1,7,0,'2019-11-11 03:11:46'),(28,1,1,8,0,'2019-11-11 03:11:57'),(29,10,1,8,0,'2019-11-11 03:11:57'),(30,4,1,11,0,'2019-11-11 03:12:07'),(31,11,1,11,0,'2019-11-11 03:12:07'),(32,4,1,12,0,'2019-11-11 03:12:13'),(33,1,1,12,0,'2019-11-11 03:12:13'),(34,1,1,25,0,'2019-11-11 03:12:46'),(35,4,1,25,0,'2019-11-11 03:12:46'),(36,11,1,25,0,'2019-11-11 03:12:46'),(37,14,1,26,0,'2019-11-11 03:12:52'),(38,1,1,26,0,'2019-11-11 03:12:52'),(39,4,1,26,0,'2019-11-11 03:12:52'),(40,14,1,27,0,'2019-11-11 03:12:58'),(41,11,1,27,0,'2019-11-11 03:12:58'),(43,1,1,39,0,'2019-11-11 03:13:05'),(44,4,1,39,0,'2019-11-11 03:13:05'),(45,4,1,59,0,'2019-11-13 00:15:15'),(46,1,1,59,0,'2019-11-13 00:15:15'),(47,12,1,59,0,'2019-11-13 00:15:15'),(48,3,1,59,0,'2019-11-13 00:15:15'),(49,10,1,59,0,'2019-11-13 00:15:15'),(50,2,1,59,0,'2019-11-13 00:15:15'),(51,1,1,60,0,'2019-11-13 00:24:51'),(52,3,1,60,0,'2019-11-13 00:24:51'),(53,2,1,60,0,'2019-11-13 00:24:51'),(54,10,1,60,0,'2019-11-13 00:24:51'),(55,12,1,60,0,'2019-11-13 00:24:51'),(56,2,3,13,0,'2019-11-17 18:44:14'),(57,2,3,14,0,'2019-11-17 18:44:17'),(58,2,3,15,0,'2019-11-17 18:44:20'),(59,2,3,16,0,'2019-11-17 18:44:23'),(60,2,3,17,0,'2019-11-17 18:44:26'),(61,2,3,18,0,'2019-11-17 18:44:30'),(62,2,3,19,0,'2019-11-17 18:44:32'),(63,2,3,20,0,'2019-11-17 18:44:36'),(64,4,1,28,0,'2019-11-21 22:38:18'),(65,1,1,28,0,'2019-11-21 22:38:18'),(66,11,1,28,0,'2019-11-21 22:38:18'),(67,1,1,29,0,'2019-11-21 22:38:25'),(68,14,1,29,0,'2019-11-21 22:38:25'),(69,11,1,29,0,'2019-11-21 22:38:25'),(70,4,1,30,0,'2019-11-22 01:23:39'),(71,1,1,30,0,'2019-11-22 01:23:39'),(72,14,1,30,0,'2019-11-22 01:23:39'),(73,11,1,40,0,'2019-11-22 01:24:21'),(74,1,1,40,0,'2019-11-22 01:24:21'),(75,4,1,40,0,'2019-11-22 01:24:21'),(76,11,1,41,0,'2019-11-22 01:24:26'),(77,1,1,41,0,'2019-11-22 01:24:26'),(78,1,1,61,0,'2019-11-26 17:04:47'),(79,3,1,61,0,'2019-11-26 17:04:47'),(80,4,1,61,0,'2019-11-26 17:04:47'),(81,2,1,61,0,'2019-11-26 17:04:47'),(82,10,1,61,0,'2019-11-26 17:04:47'),(83,12,1,61,0,'2019-11-26 17:04:47'),(84,3,1,69,0,'2019-11-26 17:05:22'),(85,11,1,69,0,'2019-11-26 17:05:22'),(86,15,1,69,0,'2019-11-26 17:05:22'),(87,1,1,69,0,'2019-11-26 17:05:22'),(88,4,1,69,0,'2019-11-26 17:05:22'),(89,1,1,31,0,'2019-11-26 17:11:49'),(90,14,1,31,0,'2019-11-26 17:11:49'),(91,11,1,31,0,'2019-11-26 17:11:49'),(92,4,1,31,0,'2019-11-26 17:11:49'),(93,4,1,42,0,'2019-11-29 01:04:07'),(94,1,1,42,0,'2019-11-29 01:04:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contacto` */

insert  into `contacto`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`relacion`) values (1,'juan','jose','3432324324','242143134','juan@juan.com','Hermano/a'),(2,'Javier','Jimenez','3543604130','','','Hijo/a'),(3,'Agua Sacha','JIMENEZ','03543604130','','','Madre'),(4,'Agua Sacha','JIMENEZ','03543604130','','','Madre'),(5,'Maria','Antonieta','23423423','','','Pareja'),(6,'JOse','Gomez','3232232323','','','Hermano/a'),(7,'JOse','Gomez','3232232323','','','Hermano/a'),(8,'Agua Sachan8744','Jimenez','03543604130','','','Nieto/a'),(9,'Agua Sacha 8744','Matias','03543403668','','','Hijo/a'),(10,'Susana','Perez','3543605212','','','Hijo/a'),(11,'Amelia','Santa','351403423','','','Hermano/a'),(12,'JAvier','Jimenez','3423423','','','Hijo/a');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cuotas` */

insert  into `cuotas`(`id`,`nombre`,`monto`,`Evento_id`) values (2,'Cuota 1',400.00,1),(3,'Cuota 2',400.00,1),(4,'Cuota 3',400.00,1),(5,'Cuota 1',325.00,2),(6,'Cuota 2',325.00,2),(7,'Cuota 3',325.00,2),(8,'Cuota 4',325.00,2),(9,'Cuota 1',600.00,3),(10,'Cuota 2',600.00,3),(11,'Cuota 3',600.00,3),(12,'Cuota 1',500.00,5),(13,'Cuota 2',500.00,5),(14,'Cuota 3',500.00,5),(15,'Cuota 1',1000.00,6),(16,'Cuota 2',1000.00,6),(17,'Cuota 1',500.00,8),(18,'Cuota 2',500.00,8),(19,'Cuota 3',500.00,8),(20,'Cuota 1',500.00,9),(21,'Cuota 2',500.00,9),(22,'Cuota 3',500.00,9),(23,'Cuota 4',500.00,9),(24,'Cuota 1',1000.00,10),(25,'Cuota 2',1000.00,10),(26,'Cuota 3',1000.00,10),(27,'Cuota 1',1000.00,11),(28,'Cuota 2',1000.00,11),(29,'Cuota 1',1000.00,12),(30,'Cuota 2',1000.00,12),(31,'Cuota 3',1000.00,12),(32,'Cuota 1',2500.00,13),(33,'Cuota 2',2500.00,13),(34,'Cuota 1',900.00,14),(35,'Cuota 2',900.00,14);

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `detalleevento` */

insert  into `detalleevento`(`id`,`nombre`,`descripcion`,`idEncargado`,`idEvento`,`idEspacio`,`fechaDesde`,`fechaHasta`,`fechaBaja`,`estado`,`dia`,`asistencia`) values (1,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-14 10:00:00','2019-10-14 12:00:00',NULL,'Nuevo','Lunes',1),(2,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-16 12:00:00','2019-10-16 14:00:00',NULL,'Nuevo','Miercoles',1),(3,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-21 10:00:00','2019-10-21 12:00:00',NULL,'Nuevo','Lunes',1),(4,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-23 12:00:00','2019-10-23 14:00:00',NULL,'Nuevo','Miercoles',1),(5,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-28 10:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',1),(6,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-10-30 12:00:00','2019-10-30 14:00:00',NULL,'Nuevo','Miercoles',1),(7,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-11-04 10:00:00','2019-11-04 12:00:00',NULL,'Nuevo','Lunes',1),(8,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',1,1,1,'2019-11-06 12:00:00','2019-11-06 14:00:00',NULL,'Nuevo','Miercoles',1),(9,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-17 14:00:00','2019-10-17 16:00:00',NULL,'Nuevo','Jueves',1),(10,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-21 14:00:00','2019-10-21 16:00:00',NULL,'Nuevo','Lunes',1),(11,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-24 14:00:00','2019-10-24 16:00:00',NULL,'Nuevo','Jueves',1),(12,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-28 14:00:00','2019-10-28 16:00:00',NULL,'Nuevo','Lunes',1),(13,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-22 16:00:00','2019-10-22 18:00:00',NULL,'Nuevo','Martes',1),(14,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-25 16:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',1),(15,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-29 16:00:00','2019-10-29 18:00:00',NULL,'Nuevo','Martes',1),(16,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-01 16:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',1),(17,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-05 16:00:00','2019-11-05 18:00:00',NULL,'Nuevo','Martes',1),(18,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-08 16:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',1),(19,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-12 16:00:00','2019-11-12 18:00:00',NULL,'Nuevo','Martes',1),(20,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-15 16:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',1),(21,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-19 16:00:00','2019-11-19 18:00:00',NULL,'Nuevo','Martes',0),(22,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-22 16:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(23,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-26 16:00:00','2019-11-26 18:00:00',NULL,'Nuevo','Martes',0),(24,'CampaÃ±a VacunaciÃ³n ','CampaÃ±a para vacunar a menores de edad',3,4,1,'2019-10-21 20:00:00','2019-10-21 22:00:00',NULL,'Nuevo','Lunes',0),(25,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-01 19:00:00','2019-11-01 20:00:00',NULL,'Nuevo','Viernes',1),(26,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-04 19:00:00','2019-11-04 21:00:00',NULL,'Nuevo','Lunes',1),(27,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-08 19:00:00','2019-11-08 20:00:00',NULL,'Nuevo','Viernes',1),(28,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-11 19:00:00','2019-11-11 21:00:00',NULL,'Nuevo','Lunes',1),(29,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-15 19:00:00','2019-11-15 20:00:00',NULL,'Nuevo','Viernes',1),(30,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-18 19:00:00','2019-11-18 21:00:00',NULL,'Nuevo','Lunes',1),(31,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-22 19:00:00','2019-11-22 20:00:00',NULL,'Nuevo','Viernes',1),(32,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-25 19:00:00','2019-11-25 21:00:00',NULL,'Nuevo','Lunes',0),(33,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-29 19:00:00','2019-11-29 20:00:00',NULL,'Nuevo','Viernes',0),(34,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-02 19:00:00','2019-12-02 21:00:00',NULL,'Nuevo','Lunes',0),(35,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-06 19:00:00','2019-12-06 20:00:00',NULL,'Nuevo','Viernes',0),(36,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(37,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-13 19:00:00','2019-12-13 20:00:00',NULL,'Nuevo','Viernes',0),(38,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(39,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-06 15:00:00','2019-11-06 17:00:00',NULL,'Nuevo','Miercoles',1),(40,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-12 14:00:00','2019-11-12 16:00:00',NULL,'Nuevo','Martes',1),(41,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-13 15:00:00','2019-11-13 17:00:00',NULL,'Nuevo','Miercoles',1),(42,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-19 14:00:00','2019-11-19 16:00:00',NULL,'Nuevo','Martes',1),(43,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-20 15:00:00','2019-11-20 17:00:00',NULL,'Nuevo','Miercoles',0),(44,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-26 14:00:00','2019-11-26 16:00:00',NULL,'Nuevo','Martes',0),(45,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-27 15:00:00','2019-11-27 17:00:00',NULL,'Nuevo','Miercoles',0),(46,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-03 14:00:00','2019-12-03 16:00:00',NULL,'Nuevo','Martes',0),(47,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-04 15:00:00','2019-12-04 17:00:00',NULL,'Nuevo','Miercoles',0),(48,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-10 14:00:00','2019-12-10 16:00:00',NULL,'Nuevo','Martes',0),(49,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-11 15:00:00','2019-12-11 17:00:00',NULL,'Nuevo','Miercoles',0),(50,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-17 14:00:00','2019-12-17 16:00:00',NULL,'Nuevo','Martes',0),(51,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-18 15:00:00','2019-12-18 17:00:00',NULL,'Nuevo','Miercoles',0),(52,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,7,3,'2019-10-28 09:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(53,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-04 14:00:00','2019-11-04 16:00:00','2019-11-02 23:23:45','Nuevo','Lunes',0),(54,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-06 16:00:00','2019-11-06 18:00:00','2019-11-02 23:23:45','Nuevo','Miercoles',0),(55,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-11 14:00:00','2019-11-11 16:00:00','2019-11-02 23:23:45','Nuevo','Lunes',0),(56,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-13 16:00:00','2019-11-13 18:00:00','2019-11-02 23:23:45','Nuevo','Miercoles',0),(57,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-18 14:00:00','2019-11-18 16:00:00','2019-11-02 23:23:45','Nuevo','Lunes',0),(58,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-20 16:00:00','2019-11-20 18:00:00','2019-11-02 23:23:45','Nuevo','Miercoles',0),(59,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-11-11 10:00:00','2019-11-11 12:00:00',NULL,'Nuevo','Lunes',1),(60,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-11-11 14:00:00','2019-11-11 16:00:00',NULL,'Nuevo','Lunes',1),(61,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-11-18 10:00:00','2019-11-18 12:00:00',NULL,'Nuevo','Lunes',1),(62,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-11-18 14:00:00','2019-11-18 16:00:00',NULL,'Nuevo','Lunes',0),(63,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-11-25 10:00:00','2019-11-25 12:00:00',NULL,'Nuevo','Lunes',0),(64,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-11-25 14:00:00','2019-11-25 16:00:00',NULL,'Nuevo','Lunes',0),(65,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-12-02 10:00:00','2019-12-02 12:00:00',NULL,'Nuevo','Lunes',0),(66,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-12-02 14:00:00','2019-12-02 16:00:00',NULL,'Nuevo','Lunes',0),(67,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-12-09 10:00:00','2019-12-09 12:00:00',NULL,'Nuevo','Lunes',0),(68,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,9,2,'2019-12-09 14:00:00','2019-12-09 16:00:00',NULL,'Nuevo','Lunes',0),(69,'Curso excel avanzado','Se aprenderÃ¡n funciones avanzadas de excel',1,10,2,'2019-11-21 16:00:00','2019-11-21 20:00:00',NULL,'Nuevo','Jueves',1),(70,'Curso excel avanzado','Se aprenderÃ¡n funciones avanzadas de excel',1,10,2,'2019-11-28 16:00:00','2019-11-28 20:00:00',NULL,'Nuevo','Jueves',0),(71,'Curso excel avanzado','Se aprenderÃ¡n funciones avanzadas de excel',1,10,2,'2019-12-05 16:00:00','2019-12-05 20:00:00',NULL,'Nuevo','Jueves',0),(72,'Curso excel avanzado','Se aprenderÃ¡n funciones avanzadas de excel',1,10,2,'2019-12-12 16:00:00','2019-12-12 20:00:00',NULL,'Nuevo','Jueves',0),(73,'Curso excel avanzado','Se aprenderÃ¡n funciones avanzadas de excel',1,10,2,'2019-12-19 16:00:00','2019-12-19 20:00:00',NULL,'Nuevo','Jueves',0),(74,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-15 19:00:00','2019-11-15 21:00:00',NULL,'Nuevo','Viernes',0),(75,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-18 19:00:00','2019-11-18 21:00:00',NULL,'Nuevo','Lunes',0),(76,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-22 19:00:00','2019-11-22 21:00:00',NULL,'Nuevo','Viernes',0),(77,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-25 19:00:00','2019-11-25 21:00:00',NULL,'Nuevo','Lunes',0),(78,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-29 19:00:00','2019-11-29 21:00:00',NULL,'Nuevo','Viernes',0),(79,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-02 19:00:00','2019-12-02 21:00:00',NULL,'Nuevo','Lunes',0),(80,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-06 19:00:00','2019-12-06 21:00:00',NULL,'Nuevo','Viernes',0),(81,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(82,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-13 19:00:00','2019-12-13 21:00:00',NULL,'Nuevo','Viernes',0),(83,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(84,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-11-28 20:00:00','2019-11-28 22:00:00',NULL,'Nuevo','Jueves',0),(85,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-03 20:00:00','2019-12-03 22:00:00',NULL,'Nuevo','Martes',0),(86,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-05 20:00:00','2019-12-05 22:00:00',NULL,'Nuevo','Jueves',0),(87,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-10 20:00:00','2019-12-10 22:00:00',NULL,'Nuevo','Martes',0),(88,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-12 20:00:00','2019-12-12 22:00:00',NULL,'Nuevo','Jueves',0),(89,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-17 20:00:00','2019-12-17 22:00:00',NULL,'Nuevo','Martes',0),(90,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-19 20:00:00','2019-12-19 22:00:00',NULL,'Nuevo','Jueves',0),(91,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-24 20:00:00','2019-12-24 22:00:00',NULL,'Nuevo','Martes',0),(92,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,12,6,'2019-12-26 20:00:00','2019-12-26 22:00:00',NULL,'Nuevo','Jueves',0),(93,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-11-26 09:00:00','2019-11-26 12:00:00',NULL,'Nuevo','Martes',0),(94,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-11-30 09:00:00','2019-11-30 12:00:00',NULL,'Nuevo','Sabado',0),(95,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-03 09:00:00','2019-12-03 12:00:00',NULL,'Nuevo','Martes',0),(96,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-07 09:00:00','2019-12-07 12:00:00',NULL,'Nuevo','Sabado',0),(97,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-10 09:00:00','2019-12-10 12:00:00',NULL,'Nuevo','Martes',0),(98,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-14 09:00:00','2019-12-14 12:00:00',NULL,'Nuevo','Sabado',0),(99,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-17 09:00:00','2019-12-17 12:00:00',NULL,'Nuevo','Martes',0),(100,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-21 09:00:00','2019-12-21 12:00:00',NULL,'Nuevo','Sabado',0),(101,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-24 09:00:00','2019-12-24 12:00:00',NULL,'Nuevo','Martes',0),(102,'CORTINERIA Y DECORACION','Es un taller que nos permite aprender de cortinas y su decoraciÃ³n',3,14,6,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(103,'CORTINERIA Y DECORACION','Es un taller que nos permite aprender de cortinas y su decoraciÃ³n',3,14,6,'2019-12-11 19:00:00','2019-12-11 21:00:00',NULL,'Nuevo','Miercoles',0),(104,'CORTINERIA Y DECORACION','Es un taller que nos permite aprender de cortinas y su decoraciÃ³n',3,14,6,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(105,'CORTINERIA Y DECORACION','Es un taller que nos permite aprender de cortinas y su decoraciÃ³n',3,14,6,'2019-12-18 19:00:00','2019-12-18 21:00:00',NULL,'Nuevo','Miercoles',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `domicilio` */

insert  into `domicilio`(`id`,`barrio`,`calle`,`piso`,`nro`,`codPostal`,`depto`) values (1,'Alberdi','Juan del campillo','1','50',5000,'A'),(2,'LaÂ Floresta','bernis','1','3567',5008,'1'),(3,'Alta Cordoba','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- CÃ³rdoba, capital (domicilio de contacto)','1','8744',5018,'Cordoba'),(4,'Alta Cordoba','Agua Sacha','1','500',5000,'A'),(5,'Alta Cordoba','Agua Sacha','1','500',5000,'A'),(6,'Ayacucho','Agua Sacha','1','50',5000,'A'),(7,'AltaÂ Cordoba','Agua Sacha','1','550',5000,'A'),(8,'AltaÂ Cordoba','Agua Sacha','1','550',5000,'A'),(9,'JardÃ­n','Agua Sacha','','323',5000,''),(10,'LaÂ Floresta','Agua Sacha','1','550',5000,'a'),(11,'Juniors','Agua Sacha','1','1',5000,'1'),(12,'LaÂ France','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- CÃ³rdoba, capital (domicilio de contacto)','','550',5018,''),(13,'ChateauÂ Carreras','Agua Sacha','1','8744',5000,'1');

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
  `estado` longtext,
  `Tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `FK_Encargado_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Encargado_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_Encargado_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_Encargado_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Encargado_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `FK_Encargado_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `encargado` */

insert  into `encargado`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`fechaCreacion`,`fechaBaja`,`estado`,`Tag_id`) values (1,'Juan','Gutierrez','351503140','351503140','juangutierrez@gmail.com',2,'23423234',1,'0001-01-01 00:00:00',NULL,'Activo',NULL),(2,'Javier','Pietro','343242242','343242242','javierpietro@gmail.com',2,'43232323',1,'0001-01-01 00:00:00',NULL,'Activo',NULL),(3,'Emanuel Alejo','Lopez','351574576','351574576','emanuel@gmail',1,'28907654',2,'2019-08-17 20:25:33',NULL,'Activo',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `espaciocomun` */

insert  into `espaciocomun`(`id`,`nombre`,`descripcion`,`capacidad`,`idTipoEspacio`,`estado`,`fechaCreacion`,`fechaBaja`,`fechaModificacion`) values (1,'Aula 205','Aula con buen espacio y equipamiento.',20,1,0,'2019-10-06 15:41:24',NULL,NULL),(2,'Aula 207','Aula Mayormente equipada para las expresiones artÃ­sticas',15,1,0,'2019-10-18 02:22:32',NULL,NULL),(3,'SUM','Espacio al aire libre',200,4,0,'2019-10-18 02:23:09',NULL,NULL),(4,'Aula computacion','Es un aula destinada para el uso de PCs',18,1,0,'2019-11-11 03:02:20',NULL,NULL),(5,'Aula espacio libre','Es un aula con gran espacio libre',30,1,0,'2019-11-11 03:04:00',NULL,NULL),(6,'Aula 209','Aula',20,1,0,'2019-11-11 03:04:43',NULL,NULL);

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
  `estadoDeudores` longtext,
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `evento` */

insert  into `evento`(`id`,`nombre`,`descripcion`,`idTipoEvento`,`idEspacio`,`idEncargado`,`cupoMinimo`,`cupoMaximo`,`gratuito`,`monto`,`cantidadCuota`,`fechaDesde`,`fechaHasta`,`fechaDesdeInscripcion`,`fechaHastaInscripcion`,`estado`,`fechaCreacion`,`fechaBaja`,`estadoDeudores`) values (1,'Taller de costura','Taller donde se aprenderÃ¡n distintas tÃ©cnicas de costura',2,1,1,5,20,0,1200,3,'2019-10-11 00:00:00','2019-11-07 00:00:00','2019-10-06 00:00:00','2019-10-10 00:00:00','Finalizado','2019-10-06 15:45:22',NULL,'PAGO'),(2,'Taller pintura sobre oleo','Se enseÃ±a a pintar con diferentes tecnicas sobre tela en oleo.',2,1,1,5,20,0,1300,4,'2019-10-15 00:00:00','2019-10-30 00:00:00','2019-10-13 00:00:00','2019-10-18 00:00:00','Finalizado','2019-10-13 23:53:46',NULL,'PAGO'),(3,'Curso Office Word','Se dictara un curso para aprender a usar el Word',1,1,3,5,20,0,1800,3,'2019-10-22 00:00:00','2019-11-28 00:00:00','2019-10-16 00:00:00','2019-10-23 00:00:00','Finalizado','2019-10-16 23:48:49',NULL,'PAGO'),(4,'CampaÃ±a VacunaciÃ³n ','CampaÃ±a para vacunar a menores de edad',4,1,3,5,20,1,0,0,'2019-10-21 00:00:00','2019-10-21 00:00:00','2019-10-18 00:00:00','2019-10-20 00:00:00','Finalizado','2019-10-18 01:56:56',NULL,'ADEUDADO'),(5,'Baile de salsa','Aprender a bailar salsa.',6,2,1,5,15,0,1500,3,'2019-10-30 00:00:00','2019-12-18 00:00:00','2019-10-28 00:00:00','2019-11-05 00:00:00','Progreso','2019-10-27 16:26:33',NULL,'ADEUDADO'),(6,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',2,2,1,4,14,0,2000,2,'2019-11-06 00:00:00','2019-12-23 00:00:00','2019-10-27 00:00:00','2019-11-05 00:00:00','Progreso','2019-10-27 16:35:47',NULL,'ADEUDADO'),(7,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,3,3,5,25,1,0,0,'2019-10-28 00:00:00','2019-10-28 00:00:00','2019-10-27 00:00:00','2019-10-28 00:00:00','Finalizado','2019-10-27 18:01:03',NULL,'ADEUDADO'),(8,'Taller de prueba','Es un taller de prueba',2,2,1,5,15,0,1500,3,'2019-10-31 00:00:00','2019-11-20 00:00:00','2019-10-28 00:00:00','2019-10-31 00:00:00','Cancelado','2019-10-28 19:32:47','2019-11-02 23:31:37','ADEUDADO'),(9,'Curso de meditaciÃ³n','Aprenderemos distintas tÃ©cnicas para meditar',1,2,1,5,10,0,2000,4,'2019-11-08 00:00:00','2019-12-13 00:00:00','2019-11-03 00:00:00','2019-11-12 00:00:00','Progreso','2019-11-03 15:08:52',NULL,'ADEUDADO'),(10,'Curso excel avanzado','Se aprenderÃ¡n funciones avanzadas de excel',1,2,1,5,15,0,3000,3,'2019-11-21 00:00:00','2019-12-20 00:00:00','2019-11-08 00:00:00','2019-11-20 00:00:00','Progreso','2019-11-08 20:14:47',NULL,'ADEUDADO'),(11,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',2,5,3,5,25,0,2000,2,'2019-11-13 00:00:00','2019-12-16 00:00:00','2019-11-11 00:00:00','2019-11-19 00:00:00','Progreso','2019-11-11 03:10:38',NULL,'ADEUDADO'),(12,'GUITARRA Y CANTO','Se aprenderÃ¡ a tocar la guitarra y acompaÃ±ar con el canto',2,6,2,5,20,0,3000,3,'2019-11-28 00:00:00','2019-12-26 00:00:00','2019-11-14 00:00:00','2019-11-27 00:00:00','Progreso','2019-11-14 16:00:44',NULL,'ADEUDADO'),(13,'SECRETARIADO Y RECEPCIÃ“N','Se formara al alumno para que cuentes con las habilidades correspondientes',1,6,2,5,20,0,5000,2,'2019-11-25 00:00:00','2019-12-24 00:00:00','2019-11-15 00:00:00','2019-11-22 00:00:00','Progreso','2019-11-15 03:17:16',NULL,'ADEUDADO'),(14,'CORTINERIA Y DECORACION','Es un taller que nos permite aprender de cortinas y su decoraciÃ³n',2,6,3,5,15,0,1800,2,'2019-12-09 00:00:00','2019-12-20 00:00:00','2019-11-29 00:00:00','2019-12-05 00:00:00','Nuevo','2019-11-29 00:16:42',NULL,'ADEUDADO');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `horarios` */

insert  into `horarios`(`id`,`dia`,`dayOfWeek`,`horaDesde`,`horaHasta`,`Evento_id`) values (1,'Lunes',1,'10:00','12:00',1),(2,'Miercoles',3,'12:00','14:00',1),(3,'Lunes',1,'14:00','16:00',2),(4,'Jueves',4,'14:00','16:00',2),(5,'Viernes',5,'16:00','18:00',3),(6,'Martes',2,'16:00','18:00',3),(7,'Lunes',1,'20:00','22:00',4),(8,'Lunes',1,'19:00','21:00',5),(9,'Viernes',5,'19:00','20:00',5),(10,'Martes',2,'14:00','16:00',6),(11,'Miercoles',3,'15:00','17:00',6),(12,'Lunes',1,'09:00','12:00',7),(13,'Lunes',1,'14:00','16:00',8),(14,'Miercoles',3,'16:00','18:00',8),(15,'Lunes',1,'10:00','12:00',9),(16,'Lunes',1,'14:00','16:00',9),(17,'Jueves',4,'16:00','20:00',10),(18,'Lunes',1,'19:00','21:00',11),(19,'Viernes',5,'19:00','21:00',11),(20,'Martes',2,'20:00','22:00',12),(21,'Jueves',4,'20:00','22:00',12),(22,'Martes',2,'09:00','12:00',13),(23,'Sabado',6,'09:00','12:00',13),(24,'Lunes',1,'19:00','21:00',14),(25,'Miercoles',3,'19:00','21:00',14);

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `inscripcion` */

insert  into `inscripcion`(`id`,`idEvento`,`idSocio`,`fechaCreacion`,`fechaBaja`,`estado`,`estadoEncuesta`) values (5,1,1,'2019-10-06 16:05:03',NULL,'PAGADO',0),(6,1,2,'2019-10-07 00:26:18',NULL,'PAGADO',1),(7,1,3,'2019-10-07 00:26:46',NULL,'PAGADO',0),(8,1,10,'2019-10-07 00:26:46',NULL,'PAGADO',0),(14,2,11,'2019-10-13 23:54:58',NULL,'PAGADO',0),(15,2,4,'2019-10-13 23:54:58',NULL,'PAGADO',0),(16,2,1,'2019-10-13 23:54:58',NULL,'PAGADO',0),(17,4,2,'2019-10-18 02:25:15',NULL,'ADEUDADO',1),(18,3,2,'2019-10-18 02:45:16',NULL,'PAGADO',1),(19,7,1,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(20,7,2,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(21,7,4,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(22,7,3,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(23,5,2,'2019-10-27 20:49:57','2019-11-03 14:24:47','PAGADO',0),(24,5,1,'2019-10-28 17:56:55',NULL,'PAGADO',0),(25,8,2,'2019-10-28 19:33:41',NULL,'PAGADO',0),(26,8,1,'2019-10-28 19:33:41',NULL,'PAGADO',0),(27,8,11,'2019-10-28 19:33:41',NULL,'ADEUDADO',0),(28,5,14,'2019-10-30 02:43:23',NULL,'ADEUDADO',0),(29,5,4,'2019-11-03 02:30:00',NULL,'PAGADO',0),(30,5,11,'2019-11-03 02:30:00',NULL,'ADEUDADO',0),(31,6,2,'2019-11-03 14:19:34','2019-11-03 14:21:28','ADEUDADO',0),(32,6,4,'2019-11-03 14:19:34',NULL,'PAGADO',0),(33,6,1,'2019-11-03 14:19:34',NULL,'PAGADO',0),(34,6,11,'2019-11-03 14:21:08',NULL,'ADEUDADO',0),(35,9,1,'2019-11-06 21:57:27',NULL,'PAGADO',0),(36,9,3,'2019-11-06 21:57:27',NULL,'ADEUDADO',0),(37,9,15,'2019-11-06 21:57:27','2019-11-06 22:51:33','ADEUDADO',0),(38,9,12,'2019-11-06 21:57:27',NULL,'ADEUDADO',0),(39,9,10,'2019-11-06 21:57:28',NULL,'ADEUDADO',0),(40,9,2,'2019-11-06 21:57:28',NULL,'PAGADO',0),(41,9,4,'2019-11-06 21:57:28',NULL,'ADEUDADO',0),(42,10,3,'2019-11-10 22:06:37',NULL,'ADEUDADO',0),(43,10,11,'2019-11-10 22:06:39',NULL,'ADEUDADO',0),(44,10,15,'2019-11-10 22:06:40',NULL,'PAGADO',0),(45,10,1,'2019-11-10 22:06:41',NULL,'ADEUDADO',0),(46,10,4,'2019-11-10 22:06:41',NULL,'ADEUDADO',0),(47,11,2,'2019-11-13 00:34:54',NULL,'PAGADO',0),(48,11,10,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(49,11,4,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(50,11,15,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(51,11,1,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(52,12,4,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(53,12,13,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(54,12,1,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(55,12,2,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(56,12,11,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(57,13,3,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(58,13,11,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(59,13,2,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(60,13,12,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(61,13,15,'2019-11-17 19:26:36',NULL,'ADEUDADO',0),(62,13,1,'2019-11-17 19:26:36',NULL,'ADEUDADO',0),(63,12,14,'2019-11-26 02:48:10',NULL,'ADEUDADO',0),(64,12,12,'2019-11-26 03:13:57',NULL,'ADEUDADO',0),(65,12,15,'2019-11-26 03:15:34',NULL,'ADEUDADO',0),(66,14,2,'2019-11-29 00:22:33',NULL,'ADEUDADO',0),(67,14,1,'2019-11-29 00:22:33',NULL,'ADEUDADO',0),(68,14,14,'2019-11-29 00:38:43',NULL,'ADEUDADO',0),(69,14,3,'2019-11-29 00:38:43',NULL,'ADEUDADO',0),(70,14,15,'2019-11-29 00:38:55',NULL,'ADEUDADO',0),(71,14,22,'2019-11-29 00:48:24',NULL,'PAGADO',0),(72,14,10,'2019-11-29 14:04:59',NULL,'ADEUDADO',0),(73,14,12,'2019-11-29 14:04:59',NULL,'ADEUDADO',0);

/*Table structure for table `matricula` */

DROP TABLE IF EXISTS `matricula`;

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` datetime NOT NULL,
  `valor` int(11) NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `matricula` */

insert  into `matricula`(`id`,`anio`,`valor`,`fechaVencimiento`,`estado`) values (3,'2019-08-08 04:27:48',1200,'2019-12-31 00:00:00','Activa');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `matriculaxsocios` */

insert  into `matriculaxsocios`(`id`,`idSocio`,`idMatricula`,`fechaPago`,`pago`) values (1,2,3,'2019-09-17 01:01:47',1200.00),(2,3,3,'2019-09-17 01:02:19',1200.00),(3,12,3,'2019-10-27 18:02:57',1200.00),(4,13,3,'2019-10-27 21:10:41',1200.00),(5,11,3,'2019-10-28 19:38:21',1200.00),(6,14,3,'2019-11-01 18:34:29',1200.00),(7,15,3,'2019-11-06 23:08:32',1200.00),(8,16,3,'2019-11-06 23:25:21',1200.00),(9,18,3,'2019-11-07 00:32:47',1200.00),(10,10,3,'2019-11-26 03:27:00',1200.00),(11,22,3,'2019-11-29 00:10:30',1200.00),(12,21,3,'2019-11-29 00:11:26',1200.00),(13,4,3,'2019-11-30 17:49:54',1200.00);

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
  `metodoPago` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idInscripcion` (`idInscripcion` DESC) USING BTREE,
  KEY `IX_idCuota` (`idCuota` DESC) USING BTREE,
  KEY `FK_Pago_Cuotas_idCuota` (`idCuota`),
  KEY `FK_Pago_Inscripcion_idInscripcion` (`idInscripcion`),
  CONSTRAINT `FK_Pago_Cuotas_idCuota` FOREIGN KEY (`idCuota`) REFERENCES `cuotas` (`id`),
  CONSTRAINT `FK_Pago_Inscripcion_idInscripcion` FOREIGN KEY (`idInscripcion`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pago` */

insert  into `pago`(`id`,`nombre`,`monto`,`nroRecibo`,`idInscripcion`,`fechaCobro`,`fechaBaja`,`estaPagado`,`idCuota`,`metodoPago`) values (5,'Cuota 1',400,0,5,'2019-10-07 00:27:11','0001-01-01 00:00:00',1,2,'Efectivo'),(6,'Cuota 2',400,0,5,'2019-10-07 00:27:27','0001-01-01 00:00:00',1,3,'Efectivo'),(7,'Cuota 3',400,0,5,'2019-10-18 02:08:43','0001-01-01 00:00:00',1,4,'Efectivo'),(8,'Cuota 1',400,10034,6,'2019-10-24 01:30:49','0001-01-01 00:00:00',1,2,'Efectivo'),(9,'Cuota 2',400,10034,6,'2019-10-24 01:32:02','0001-01-01 00:00:00',1,3,'Efectivo'),(10,'Cuota 3',400,10034,6,'2019-10-24 01:32:26','0001-01-01 00:00:00',1,4,'Efectivo'),(11,'Cuota 1',400,10066,7,'2019-11-05 02:25:01','0001-01-01 00:00:00',1,2,'Efectivo'),(12,'Cuota 2',400,10066,7,'2019-11-05 02:26:20','0001-01-01 00:00:00',1,3,'Efectivo'),(13,'Cuota 1',400,0,8,'2019-10-07 00:29:01','0001-01-01 00:00:00',1,2,'Efectivo'),(14,'Cuota 3',400,10066,7,'2019-11-06 16:28:14','0001-01-01 00:00:00',1,4,'Efectivo'),(15,'Cuota 2',400,10066,8,'2019-11-05 02:28:06','0001-01-01 00:00:00',1,3,'Efectivo'),(16,'Cuota 3',400,10066,8,'2019-11-05 03:04:58','0001-01-01 00:00:00',1,4,'Efectivo'),(20,'Cuota 1',325,10037,15,'2019-10-27 21:10:07','0001-01-01 00:00:00',1,5,'Efectivo'),(21,'Cuota 1',325,10094,14,'2019-11-08 22:51:37','0001-01-01 00:00:00',1,5,'Efectivo'),(22,'Cuota 2',325,10066,15,'2019-11-04 23:55:22','0001-01-01 00:00:00',1,6,'Efectivo'),(23,'Cuota 2',325,10094,14,'2019-11-08 22:52:40','0001-01-01 00:00:00',1,6,'Efectivo'),(24,'Cuota 3',325,10066,15,'2019-11-05 02:49:32','0001-01-01 00:00:00',1,7,'Efectivo'),(25,'Cuota 3',325,10094,14,'2019-11-08 22:52:52','0001-01-01 00:00:00',1,7,'Efectivo'),(26,'Cuota 4',325,10066,15,'2019-11-05 02:50:47','0001-01-01 00:00:00',1,8,'Efectivo'),(27,'Cuota 4',325,10094,14,'2019-11-08 22:53:49','0001-01-01 00:00:00',1,8,'Efectivo'),(28,'Cuota 1',325,10034,16,'2019-10-21 20:25:44','0001-01-01 00:00:00',1,7,'Efectivo'),(29,'Cuota 2',325,10066,16,'2019-11-05 01:57:19','0001-01-01 00:00:00',1,8,'Efectivo'),(30,'Cuota 3',325,10034,16,'2019-10-19 15:35:26','0001-01-01 00:00:00',1,5,'Efectivo'),(31,'Cuota 4',325,10066,16,'2019-11-05 01:59:37','0001-01-01 00:00:00',1,6,'Efectivo'),(32,'Cuota 1',600,10034,18,'2019-10-20 16:09:03','0001-01-01 00:00:00',1,10,'Efectivo'),(33,'Cuota 2',600,10034,18,'2019-10-20 16:09:10','0001-01-01 00:00:00',1,11,'Efectivo'),(34,'Cuota 3',600,10034,18,'2019-10-20 16:10:56','0001-01-01 00:00:00',1,9,'Efectivo'),(35,'Cuota 1',500,10040,23,'2019-10-28 17:57:46','0001-01-01 00:00:00',1,12,'Efectivo'),(36,'Cuota 2',500,10052,23,'2019-11-01 01:31:44','0001-01-01 00:00:00',1,13,'Efectivo'),(37,'Cuota 3',500,10052,23,'2019-11-01 01:26:19','0001-01-01 00:00:00',1,14,'Efectivo'),(38,'Cuota 1',500,10066,24,'2019-11-05 02:03:51','0001-01-01 00:00:00',1,12,'Efectivo'),(39,'Cuota 2',500,10066,24,'2019-11-05 02:08:30','0001-01-01 00:00:00',1,13,'Efectivo'),(40,'Cuota 3',500,10066,24,'2019-11-05 02:17:17','0001-01-01 00:00:00',1,14,'Efectivo'),(41,'Cuota 1',500,10049,25,'2019-10-28 19:34:35','0001-01-01 00:00:00',1,17,'Efectivo'),(42,'Cuota 2',500,10049,25,'2019-10-28 19:36:55','0001-01-01 00:00:00',1,18,'Efectivo'),(43,'Cuota 1',500,10066,26,'2019-11-05 00:40:08','0001-01-01 00:00:00',1,17,'Efectivo'),(44,'Cuota 3',500,10066,25,'2019-11-04 19:48:09','0001-01-01 00:00:00',1,19,'Efectivo'),(45,'Cuota 2',500,10066,26,'2019-11-05 02:18:43','0001-01-01 00:00:00',1,18,'Efectivo'),(46,'Cuota 3',500,10066,26,'2019-11-05 02:19:40','0001-01-01 00:00:00',1,19,'Efectivo'),(47,'Cuota 1',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,19,'Efectivo'),(48,'Cuota 2',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,17,'Efectivo'),(49,'Cuota 3',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,18,'Efectivo'),(50,'Cuota 1',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14,'Efectivo'),(51,'Cuota 2',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,12,'Efectivo'),(52,'Cuota 3',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13,'Efectivo'),(53,'Cuota 1',500,10066,29,'2019-11-05 03:08:01','0001-01-01 00:00:00',1,12,'Efectivo'),(54,'Cuota 1',500,0,30,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,12,'Efectivo'),(55,'Cuota 2',500,10066,29,'2019-11-05 03:08:13','0001-01-01 00:00:00',1,13,'Efectivo'),(56,'Cuota 2',500,0,30,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13,'Efectivo'),(57,'Cuota 3',500,10066,29,'2019-11-05 03:12:31','0001-01-01 00:00:00',1,14,'Efectivo'),(58,'Cuota 3',500,0,30,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14,'Efectivo'),(59,'Cuota 1',1000,10066,33,'2019-11-04 21:37:33','0001-01-01 00:00:00',1,15,'Efectivo'),(60,'Cuota 1',1000,0,31,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,15,'Efectivo'),(61,'Cuota 1',1000,10066,32,'2019-11-06 16:07:52','0001-01-01 00:00:00',1,15,'Efectivo'),(62,'Cuota 2',1000,10066,33,'2019-11-04 21:37:21','0001-01-01 00:00:00',1,16,'Efectivo'),(63,'Cuota 2',1000,10066,32,'2019-11-06 16:15:04','0001-01-01 00:00:00',1,16,'Efectivo'),(64,'Cuota 2',1000,0,31,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,16,'Efectivo'),(65,'Cuota 1',1000,0,34,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,15,'Efectivo'),(66,'Cuota 2',1000,0,34,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,16,'Efectivo'),(67,'Cuota 1',500,10094,35,'2019-11-10 21:50:49','0001-01-01 00:00:00',1,21,'Efectivo'),(68,'Cuota 1',500,10155,39,'2019-11-26 03:16:23','0001-01-01 00:00:00',1,21,'Efectivo'),(69,'Cuota 2',500,10094,35,'2019-11-10 21:58:01','0001-01-01 00:00:00',1,22,'Efectivo'),(70,'Cuota 2',500,0,39,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(71,'Cuota 3',500,10155,35,'2019-11-26 03:22:26','0001-01-01 00:00:00',1,23,'Efectivo'),(72,'Cuota 1',500,10094,37,'2019-11-06 21:58:21','0001-01-01 00:00:00',1,21,'Efectivo'),(73,'Cuota 4',500,10155,35,'2019-11-26 03:22:33','0001-01-01 00:00:00',1,20,'Efectivo'),(74,'Cuota 1',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,21,'Efectivo'),(75,'Cuota 2',500,10094,37,'2019-11-06 22:37:13','0001-01-01 00:00:00',1,22,'Efectivo'),(76,'Cuota 3',500,0,39,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(77,'Cuota 3',500,0,37,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(78,'Cuota 1',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,21,'Efectivo'),(79,'Cuota 4',500,0,39,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(80,'Cuota 2',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(81,'Cuota 4',500,0,37,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(82,'Cuota 3',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(83,'Cuota 2',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(84,'Cuota 4',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(85,'Cuota 3',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(86,'Cuota 4',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(87,'Cuota 1',500,10094,40,'2019-11-07 00:34:48','0001-01-01 00:00:00',1,21,'Efectivo'),(88,'Cuota 2',500,10094,40,'2019-11-07 00:39:43','0001-01-01 00:00:00',1,22,'Efectivo'),(89,'Cuota 3',500,10094,40,'2019-11-07 00:41:43','0001-01-01 00:00:00',1,23,'Efectivo'),(90,'Cuota 4',500,10094,40,'2019-11-06 23:30:12','0001-01-01 00:00:00',1,20,'Tarjeta'),(91,'Cuota 1',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(92,'Cuota 2',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,21,'Efectivo'),(93,'Cuota 3',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(94,'Cuota 4',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(95,'Cuota 1',1000,0,42,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(96,'Cuota 2',1000,0,42,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(97,'Cuota 3',1000,0,42,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(98,'Cuota 1',1000,0,43,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(99,'Cuota 2',1000,0,43,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(100,'Cuota 3',1000,0,43,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(101,'Cuota 1',1000,10119,44,'2019-11-13 02:15:02','0001-01-01 00:00:00',1,24,'Efectivo'),(102,'Cuota 2',1000,10119,44,'2019-11-13 02:15:09','0001-01-01 00:00:00',1,25,'Efectivo'),(103,'Cuota 3',1000,10146,44,'2019-11-17 19:27:28','0001-01-01 00:00:00',1,26,'Efectivo'),(104,'Cuota 1',1000,0,45,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(105,'Cuota 2',1000,0,45,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(106,'Cuota 3',1000,0,45,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(107,'Cuota 1',1000,0,46,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(108,'Cuota 2',1000,0,46,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(109,'Cuota 3',1000,0,46,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(110,'Cuota 1',1000,10119,47,'2019-11-14 02:02:22','0001-01-01 00:00:00',1,27,'Tarjeta'),(111,'Cuota 1',1000,0,48,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(112,'Cuota 1',1000,0,49,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(113,'Cuota 2',1000,0,49,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(114,'Cuota 2',1000,10119,47,'2019-11-14 01:33:26','0001-01-01 00:00:00',1,28,'Tarjeta'),(115,'Cuota 2',1000,0,48,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(116,'Cuota 1',1000,0,50,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(117,'Cuota 2',1000,0,50,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(118,'Cuota 1',1000,0,51,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(119,'Cuota 2',1000,0,51,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(120,'Cuota 1',1000,0,53,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(121,'Cuota 1',1000,0,52,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(122,'Cuota 2',1000,0,53,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(123,'Cuota 2',1000,0,52,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(124,'Cuota 3',1000,0,53,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(125,'Cuota 3',1000,0,52,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(126,'Cuota 1',1000,0,54,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(127,'Cuota 2',1000,0,54,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(128,'Cuota 1',1000,0,55,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(129,'Cuota 3',1000,0,54,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(130,'Cuota 2',1000,0,55,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(131,'Cuota 3',1000,10167,55,'2019-11-29 01:01:29','0001-01-01 00:00:00',1,31,'Tarjeta'),(132,'Cuota 1',1000,0,56,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(133,'Cuota 2',1000,0,56,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(134,'Cuota 3',1000,0,56,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(135,'Cuota 1',2500,0,57,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(136,'Cuota 2',2500,0,57,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(137,'Cuota 1',2500,0,59,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(138,'Cuota 2',2500,0,59,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(139,'Cuota 1',2500,0,58,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(140,'Cuota 2',2500,0,58,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(141,'Cuota 1',2500,0,60,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(142,'Cuota 2',2500,0,60,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(143,'Cuota 1',2500,0,62,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(144,'Cuota 1',2500,0,61,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(145,'Cuota 2',2500,0,62,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(146,'Cuota 2',2500,0,61,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(147,'Cuota 1',1000,0,63,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(148,'Cuota 2',1000,0,63,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(149,'Cuota 3',1000,0,63,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(150,'Cuota 1',1000,0,64,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(151,'Cuota 2',1000,0,64,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(152,'Cuota 3',1000,0,64,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(153,'Cuota 1',1000,0,65,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(154,'Cuota 2',1000,0,65,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(155,'Cuota 3',1000,0,65,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(156,'Cuota 1',900,0,66,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(157,'Cuota 1',900,0,67,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(158,'Cuota 2',900,0,66,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo'),(159,'Cuota 2',900,0,67,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo'),(160,'Cuota 1',900,0,68,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(161,'Cuota 2',900,0,68,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo'),(162,'Cuota 1',900,0,69,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(163,'Cuota 2',900,0,69,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo'),(164,'Cuota 1',900,0,70,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(165,'Cuota 2',900,0,70,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo'),(166,'Cuota 1',900,10167,71,'2019-11-29 00:49:07','0001-01-01 00:00:00',1,34,'Efectivo'),(167,'Cuota 2',900,10167,71,'2019-11-29 00:49:40','0001-01-01 00:00:00',1,35,'Efectivo'),(168,'Cuota 1',900,0,73,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(169,'Cuota 1',900,0,72,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,34,'Efectivo'),(170,'Cuota 2',900,0,72,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo'),(171,'Cuota 2',900,0,73,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,35,'Efectivo');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ratingevento` */

insert  into `ratingevento`(`id`,`ratingEvento`,`ratingContenido`,`ratingEncargado`,`textoDescripcion`,`idEvento`,`idSocio`) values (2,3,2,4,'',4,2),(3,4,4,4,'',7,2),(4,4,3,4,'',4,2),(5,2,4,3,'',1,2),(6,5,4,4,'Buen Curso',2,1),(7,3,3,4,'Buen Curso',2,4),(8,3,4,3,'Buen Curso',2,11),(9,4,3,4,'',3,2);

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

insert  into `recordatorios`(`id`,`titulo`,`descripcion`,`fechaRecordatorio`) values (2,'Dejar papeles al contador','Dejar papeles afip al contador','2019-07-30 05:29:11'),(3,'Avisar profesora computacion ','Llegada de nuevos mouses','2019-08-01 00:00:00'),(4,'Contadora','dasdas','2019-08-05 22:53:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `secretario` */

insert  into `secretario`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'jose','Jimenez','2312312','231312312','nose@gmail.com','MASCULINO','SOLTERO',1,'30822222','0001-01-01 00:00:00','0001-01-01 00:00:00','2019-08-16 03:19:58','ACTIVO'),(3,'Nelida','Gonzalez','',NULL,'nelida@gmail.com','Femenino','Soltero',1,'38907867',NULL,'2019-08-17 20:19:57',NULL,'Activo'),(4,'Romina','Gutierrez','3516943547','3516943547','rominaguitierrez@gmail.com','Femenino','Soltero',1,'26545072',NULL,'2019-11-15 20:58:00',NULL,'Activo'),(5,'Graciela','Sanchez','3516393547','3516393547','gragomez@gmail.com','Femenino','Soltero',1,'28899421',NULL,'2019-11-15 21:08:14',NULL,'Activo');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `socio` */

insert  into `socio`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`idContacto`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'JOse','Quinteros','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972080',1,1,'1986-03-04 00:00:00','2019-11-10 14:52:06',NULL,'Activo'),(2,'AUGUSTO','GALAN','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972081',1,1,'1960-11-06 00:00:00','2019-08-30 02:24:52',NULL,'Activo'),(3,'Laura','Miguez','3543604130','3543604130','laura1Miguez@gmail.com','Femenino','Casado',1,'30992080',1,1,'1950-11-06 00:00:00','2019-08-30 02:24:52',NULL,'Activo'),(4,'Maria','Del Valle','3543604132','3543604130','mariadelvalle@gmail.com','Femenino','Soltero',1,'40000001',1,1,'1976-03-04 00:00:00','2019-10-30 02:24:52',NULL,'Activo'),(10,'Jorge','galan','3543604130','3543604130','juanjose@gmail.com','Masculino','Casado',1,'40000002',1,1,'1960-03-04 00:00:00','2019-09-30 02:24:52',NULL,'Activo'),(11,'Soledad','Miguez','3543604130','3543604130','laura1Miguez@gmail.com','Femenino','Casado',1,'40000003',1,1,'1958-03-04 00:00:00','2019-09-30 02:24:52',NULL,'Activo'),(12,'Angelica','Valles','3543604132','3543604130','mariadelvalle@gmail.com','Femenino','Casado',1,'40000004',1,1,'1940-03-04 00:00:00','2019-09-30 02:24:52',NULL,'Activo'),(13,'Graciela MarÃ­a','Casartelli','03543403668','03543604130','gracielacasartelli946@hotmail.com','Femenino','Soltero',1,'30999888',3,2,'1950-07-03 01:12:28','2019-10-18 23:08:13',NULL,'Activo'),(14,'JAVIER','JIMENEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'30992080',5,4,'1946-03-04 00:00:00','2019-10-30 02:24:52',NULL,'Activo'),(15,'amelio','gutierrez','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'32972080',6,5,'1987-05-14 00:00:00','2019-11-01 03:05:43',NULL,'Activo'),(16,'Julia','Agostini','03543604130','03543604130','javierjimenez78@gmail.com','Femenino','Soltero',1,'5489482',7,6,'1946-04-06 00:00:00','2019-11-06 23:10:16',NULL,'Activo'),(18,'alberto','JIMENEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'30999888',9,8,'1930-11-06 00:00:00','2019-11-06 23:24:46',NULL,'Activo'),(19,'JUANA','Dominguez','03543604130','3543604130','javierjimenez78@gmail.com','Femenino','Soltero',1,'5498232',10,9,'1940-05-05 00:00:00','2019-11-07 01:32:33',NULL,'DebeMatricula'),(20,'PERALTA','PERALTA','03543604130','3516393547','javierjimenez78@gmail.com','Masculino','Soltero',1,'32972080',11,10,'1954-03-05 00:00:00','2019-11-28 00:06:48',NULL,'DebeMatricula'),(21,'LUISANA','ALBERTI','03543403668','3543604130','gracielacasartelli946@hotmail.com','Femenino','Viudo',1,'23432394',12,11,'1946-10-03 00:00:00','2019-11-28 00:19:00',NULL,'Activo'),(22,'AGUSTIN','FERNANDEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Casado',1,'54343434',13,12,'1946-01-03 00:00:00','2019-11-29 00:08:00',NULL,'Activo');

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

insert  into `sociotags`(`Socio_id`,`Tag_id`) values (22,5),(22,11),(22,19),(22,20),(22,21),(14,1),(14,5),(14,18),(3,2),(3,5),(3,13),(3,14),(3,15),(3,16),(2,2),(2,4),(2,5),(2,6),(2,8),(2,9),(2,10),(2,11),(2,12),(2,17),(1,1),(1,2),(1,4),(1,5),(1,6),(1,7);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`nombre`) values (1,'Sum'),(2,'aire libre'),(3,'Laboratorio'),(4,'caminar'),(5,'computacion'),(6,'android'),(7,'telefonos'),(8,'word'),(9,'pintura'),(10,'teatro'),(11,'ajedrez'),(12,'truco'),(13,'gimnasia'),(14,'telefono'),(15,'zumba'),(16,'baile'),(17,'salsa'),(18,'sa'),(19,'celular'),(20,'yoga'),(21,'pintar');

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

insert  into `tipoevento`(`id`,`nombre`,`descripcion`) values (1,'Curso','---'),(2,'Taller','---'),(3,'Conferencia','---'),(4,'CampaÃ±a social','---'),(6,'Baile','---'),(8,'Seminario','---');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`nombre`,`usuario`,`clave`,`imagen`,`rol`,`email`,`fechaCreacion`,`fechaBaja`,`token`,`idEncargado`,`idSocio`) values (1,'Augusto','admin','123456','images\\perfiles\\perfil-1.jpg','ADMIN','admin@admin.com','0001-01-01 00:00:00','0001-01-01 00:00:00','69b003c1b4d5435dab7d9e0670888591',1,2),(2,'Laura','secre','123456','images\\perfiles\\perfil-2.jpg','SECRETARIO','secretario@secretario.com','0001-01-01 00:00:00','0001-01-01 00:00:00','87bc285345794f78a61c5c985c34fa88',NULL,2),(3,'Javier','socio','123456','images\\perfiles\\perfil-3.jpg','SOCIO','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','cac7997ef2ac4a50860b28513fb864a6',NULL,2),(4,'Juan','encargado','123456','images\\perfiles\\perfil-4.jpg','ENCARGADO','encargado@encargado.com','0001-01-01 00:00:00','0001-01-01 00:00:00','f9b100bc1d1d452ea2a5db4a8785d557',1,2),(5,'DASH','dash','123456','assets/img/profile/users/augusto.png','DASH','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','43f12e739fcb49e9a5cbd0de4711be70',1,2),(6,'JAVIER','JIMENEZ227','JAVIER30992080','images\\perfiles\\perfil-6.jpg','SOCIO','javierjimenez78@gmail.com','2019-10-30 02:25:28','0001-01-01 00:00:00','f031bcd825684f6ab3223c9a1ef6dd0b',NULL,14),(7,'amelio','gutierrez613','amelio32972080','images\\perfiles\\perfil-1.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-01 03:05:44','0001-01-01 00:00:00',NULL,NULL,15),(8,'Julia','Agostini891','Julia5489482','images\\perfiles\\julia.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-06 23:10:16','0001-01-01 00:00:00','6bbb3a7bbfc7433faa438a2a14c0d9d7',NULL,16),(10,'alberto','JIMENEZ927','alberto30999888','images\\perfiles\\adam.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-06 23:24:46','0001-01-01 00:00:00',NULL,NULL,18),(11,'JUANA','JUANA387','JUANA5498232','images\\perfiles\\julia.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-07 01:32:33','0001-01-01 00:00:00',NULL,NULL,19),(13,'Emanuel','encargadoEmanuel','123456','images\\perfiles\\perfil-4.jpg','ENCARGADO','encargado@encargado.com','0001-01-01 00:00:00','0001-01-01 00:00:00','2bbd20445ed04d01b3e7df7b977e2650',3,3),(14,'PERALTA','PERALTA939','PERALTA32972080','images\\perfiles\\adam.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-28 00:06:48','0001-01-01 00:00:00',NULL,NULL,20),(15,'LUISANA','ALBERTI107','LUISANA23432394','images\\perfiles\\julia.jpg','SOCIO','gracielacasartelli946@hotmail.com','2019-11-28 00:19:00','0001-01-01 00:00:00',NULL,NULL,21),(16,'AGUSTIN','FERNANDEZ950','AGUSTIN54343434','images\\perfiles\\adam.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-29 00:08:00','0001-01-01 00:00:00',NULL,NULL,22);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
