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

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201910060709224_incial','Renacer.Nucleo.Migrations.Configuration','�\0\0\0\0\0\0�=�r�8����PQ�=*�{z��!̈́[�g3���xS@$$s�E֒,��e��������#��J���U�H$�D\"3����{�ƫ�4ˣ4�X??{�^�$H�(y�X��?����_����_����/m���z�e�_�?���f����g�(��<�/΂t�!a���ٳ7ϟo(�f�V���������~^�I@wŞ��iH���Jn*���dK�	���M�����}�t�zG�aqC����$IZ�������Y�<��������=�s�����n;�gߖ���\r[P�>/ҭ#���5t���Qw�эQ��p�uE����<�6�Y���^\\�YYU&�Y	%$!����߬�J�t|�ا����r��^$t_d$�f�~G�?闏��4�H�q�c��ee���}��hV|�@�1D�z��m�]3�M=�7I�ݷ��[�9��i�n�4��	�HA���(h���MH+r*�+}ݤA��:4y�${`���$���}O`4/8�~JӘ���=\r>�kpW���@0�{K>G�\\I�Cq�h\\��?E�Z:p|+U~���i,,���M������P�#�9Z��1���,�l�Z�\n����a�Ws�7�\\�iS	ı*�aWW��:��RM+�$� �\'�����ۻ�����)��5y�M�Ok�\'c�葆�������Q��r�MI�E���\Z\'�kD�;��ePJ��wW�$��C�.t!P� lC�O�?\0H.��t|��Q��A���zwE�4mY�ӂh��j��\Z��Hl���vB����3�+l�F+u����5ۑ��e�Б]�d �i��#�r�n����5;�h_Op_H9�L=���>F�t�=M�<��ˌ����gU��4��\0A�V<U�#y�A��\nj��@�%�P��j\rW�Y��}N��\n�9���Qd\'Z�Kt2\"8HLV�$(g����i��\"�o��ı�Z��@ץ\"�S��,/|�;�X�`�\"��R�BA�������X�֧�<�B�OK;\Z��G����>M��(��>&����-���\'�zw�~jY��0�[�~2!�W�6\n�x#˓R&Þ0�}���]���umB��;`3ǑT�+��ZZ�Z�M���������!���i�D��#YͰ��v��{�E��Ca����J��)[ޱ�&���{��Ѵ\0��9`�\nNk��)�]�yn��o��4�����sl瘜>NO�ڀ}}>��G:�E�e�$𽌯NVoٙj�p:�->���=��Qa_E��%ʱG*v=�鏶5p�X+!xMu�u��Ms��a�W�\0Ai�ck��hEm�b��uR�N�-�_ba�Z��]	<�6�O�}��n[7�q��{b|^��jQ���h.��~�^GI�y���xn�T\Z�M��#�����z�_�����9GWX�I��4�cB��{�� Gk����Z��S]�U�\\�r��m5أ�.����������C�w��iF2��﫯cݖk�*\r[�F��qK\"����Pel�z�O��3���с�Ȳ|-þC���g�7�!���I�F��I�4�+\ZD��~�}��jb�X�nR�Ѥ�XsM#j�M���9h_s���˻�_)��멊L�:�J�ج\n\n�d��=	����A-�\0���E��k���	�P�k�J��_h�8\'}�=y@߲�VXD=�r��C*\\5H<?UIP�j	7B��r���K��$Wо�P�\Z��,��Ը;or|$az�;[N!��ӏ�}&\Zd+Ľ\Zj`�l�%�W}U�W�*����� ^��~u7�j�o~�K˿�w�Mq�E�7�\'>����d�|������c�C59DIE�̕˽D�5a���0`���PpN\"m�3��l��2��zWz����P	Ɖ�5}�����6ެ\\�=yx��3��v�m?n`/�����\nh%e�k���Q�C������`7��PM<N<��D@��:���\ZR�`M���!�Ak廒>�ռ�%3z�6�k07Ŋ��\'�芐RK��!�h�f!ako���8�\'|�F�>�!��¡�zD�q�~�c�i��b���ğh_�`�S�=E��c�(�S�]m�g��!�J�\Z��V�һ~���Z�ⴇ�t�=l�N��;KL>O?�hK���b�N/���\"g��Ɓrm�a@lCl\0v�s��\'��&����,\\��|����I�Ymsvn���^|��V|���/����??��?�g?�XR0�Y��Q��H�k���Y{��\'!a�����g\n���שP�����=�������a\"6��\0��>��I_�u��׾!��|�?�\\R���e^�B�Io�@��n_%��\"�c��1�5c�hǘ�����ʐ��;B�ѹ��!�V\'���4+7D_2��h���%A�#�\r����_�D׉\\rEw4)7m3��z�ȣ���&�&&B�o8���>��yƁ�&�q����]�{�B4�Vs6c�hѣ�[V��Q��\'^G\"��\"��v}w��EV����kMx7��G|`f��#e��0�RG��5�����tS�>�$�F`��Ӯ�&��9��~r���@�YTOAP��g�T?�s��gX�����1q�+�2p�� ���#�;�יPU��T� ������?��l�Pm\rD�紎T�p�T%��w+�]W�$b�h�7/-9y$6��2�i�m����e�Ufvr磃`��8��Y�Ϝd�b0���u����s�\rF�����Vh&&4��L&B�Ry�w���YO�x�[Z8Q,WYC��Y�8ˆ�,Z#.4%��K�3�b�<`8�R>�\n����.�����pfXN8q�`qA���B����8��������D�y�P�gi�	�O��@;�`f\0O�\0��X	�1y�b.��j׵@�E�G͠c�qH��nJbĆ�9��$ 0�$֮�,K�u|�N��&���\re���R��\r`1�	 ��J�gI.�ҫ\Z&ʵ:	Ze+�j1��|,������b,�m��bB���Bʈ��&�Y/�(/���6���a\r n�뺰\Zڃ��l$n3�3���n��D����F���\'ᵅe��yy�)H3�P�8	G-r\0��������\'gD�&M�ƙ���,�%U���Ac�A�j�3�9o��(a�m�M��x%՘=[�s1A�L�\\Fdf`3#��p�Hu���ɰ&�E6>-pבm�P:%l������ӡٳ�.-�\\W�\Zf�%\r�-�%�x@�+��FE�(���P�1����LI<�Y�e��f�K,����;\Z\0�dN�IloV�+.�U�Y�\n�.�>�qڤS����&�@�$G�Y��zC�6�gx��2\0,\nk�pD��\nJk�S�Q�3W&:�\Z`e ��\n�1a�[�T0�J�>�J�\n���B\\��x�r�&����J�.0T�E\"������� ^��,a,g�k���X \"�y���sY4��x\r��%E�T�bn�V�ԞD6ӂ�TTY���TmK��\n��Ci�8��옿N�\0�;!�\nK(6-fN#PW4Wh���R�t��$��Ճ�������\0���E��� ���.�	,D��F�Q��W-Q��Xdjt�Q԰XX�>��2��j�����AYS�ɠ�n�	���\0b�G!��H��L�T���SB̃\0�A����T�qϑ��1!#�T��c׊M��	s����lbR���	`#��>�A$\n����͢P��3��\Z�mV��H7��[�3;����;���m�T�������7x��FsO����cM39��K��ŉ��Bc��m\n��\0�X�J\n����&�;�>pح�Z��Vo��\n!EǤ�\'�2ʁ��&\n�$�JSH�0\nMP)7�H�dEj$�\0z���t��\"���HSΒ�5\r9�\0Q��EƌF��XCq��E��q��BhI�:\0�MQ�/N=W�xOj��J�����0$� �A\"��1��o@F��AC\0B���%����#�b�����*3��>#��\0��=�qC=�a����\n\Zz���c���?�{����C��c��Iy[%��_\\@��\r��͞��%�˰*A,���1�����)�\Zb��!��]D.����ɇL�/,��N�8FOTa:_Tn����:��)΂���j��D�N�A��z�0�\\ES<��\0��7Q\0���t.k]���&�D���p�aU�+�$�������vl��e�eu�#A���f�z��I~��T��M^��϶Q��yz_��v��ͷϞ��y�|��al�>%;�u=iF�Tʺf������\"�#��=��V�&:�!m_��:w�+Fۤ��Yw�[k/Q(=_����Z\r�rs�k̚�Ϸ�x&�2�����Եn$��:8�+�Kũ�\'��E���cn�� ��f�zz�w���)�*���	2�m������Vn:�Y3��\"o���Ӱz����fEx&�%,�p��T��(,1-�ZW4)�V����A�Zy�wGh�;z\n�����%�EJ��=A$��t��P.\\=d�+\r��o�5I�����44|�ERi���0G����8���-#I�FL���\0�Q,>�]zby,�js���:�e��X�����x�C�t���8�d����TИާ���� �i�g_%y�~t���+ǂ�?�J�ʦ�Js0(O3co��-�mz�X.�Ȉ?���;��F5���Q��!o;���#Y&�e��E=�c*�f�\'{�(��8-]e�:�\"\rߧLi����E����t0�.\Zs}�# 5I��v慦�����Ŕ �a*NJ�0%)��҈�/����賂_pR�0x}���ViQo�����!+�OG�t3�,$�5�֒��a!��\'�}��;�1�(������;\'�c�S��a,e��g|�z�Y��_\0����7����(��8��#4�Ck��C{�H���Y��Cڦ�d6�\\(l���}�L4�EO�~��A����Ծ�e������z�О�F�+�P@����;��E�,4���_�m���)�r�Y���	ɗw��R����l�: ��n�\0q�}>~�����,��е`;m�iXoL��q<n�򍬏��`�*�;��͞�N�1�~�At��|��.�\0�\r���0k�O��I��r�T�3���~w2n�\'���eMS���([��Wd	Y��D��*`6�\n��!O���w��\"��y�h1Fх�Z��5ĂY4m�a�Ț^���g�ҥH��q/��t�Go0��\'vE(G1��|0(� Lu~+Ώ��-��<d�ë��Ή��$�*]k���!b�&Rڃ�����̧o>\r�eBBv�>U�����y����*�Θ��2J���c�^a:�ZzV��V���gi�ج#m�i��|�~ͷ�.Y+A-����q�3\n������nP(|�k���_��������ai?�~|j���?� ,$$���c��f�ޣ����SrX�[�@e{��A5N%1T}�W��b.��eB7���\n;4�^�Z%��q&sh2_�A��˄\\�4/9����>=D��L�a衏vZ�W�,䆘�x�y��\'�t�\0�@ؿ.s@E�I��hh����\n��<��k=�Vj��qv�W��9�5�&VF��V,��c]�l�	�;����k�8�(F�N��3N�iF��o��8fJ�sj9�Q���Ê-�����Ϙs��<�P���U:M����6>�ԣ=�D��&ۨ�򳮲^����*�痛��������+��qM�螝�?�\n�������W/��u2�&���o��Ͽ+���p�����H-��yR˵�p�&���Ta��At���o��\0?�/�F%Y���wʦ�4|O��f�Xoʇ���U�re����6�͉��CyS�M�ǋ�Um^���v�4�f�.cs�b�l����V��wM=Q�ҙ��!4�B�5>�ܥ�)������2N)�--�$\r��Z]����vEh��h�Nuq�<�W�<�\"���:~�b�]##,.�Ϲ���W�|,�ǚB\07����h�pm�PR�F/��� ������2\r�k�D�X\"�Kj�\r�Y.�L]e�xĽ{�@$3�1� ��p��KS1H}U+�^��)@�*b�F�&��w�𔁭����>�W�����Q��K����C�RW9��ڦ�\Z�I�[�T�G+�ڬ���Q�V�H�X�F�[�s,}b���Q�Ut��R���h�pR����uR,\\�������\'=�p�>��+mKE�wQ]%:.-n���Z��)7O��$� }���470��WŒ�F��ݤwt|j�A�裿(;�{J>����&�ms8�>Ϧǭ~�-��p�d�h�䚞��w��ל�������Z{UT�d�ʷ2AN������Ƒ������uƑsXt��]CL�{0�z�l0�[�Os���i�a�e��t�̇��<Z\\��k1Gԧ�+��1��\'��)�\\�MG%@5��q���^\'�\\�ͭ��6O��*�>v6겙��LW\'{�h������+��h&l.���J�[N�ؐ�G;�u&�Qm����4$�\\����Pfȣ�EC������wM�U�:�娌��A�YY��Oy��)f�.v������GPjfI߻���dn��$�G��|�s�	�������H^ƣ���П�����p*Ós݌�0��W.��̍�ҪN�蹮�ԍ�q���Eh��ӑ꜎ު�A÷�������y�D�!��\0Nkf�bG�ײ\\[�ͮEޭ���$V}]ND�	D��s�O4h�Ù�0���#��ͧ�I8���j����N�h׶;�uǥHS�Q���J�Շ��H	�)�q_��q�b���r�~���l%(��\n(�4+U,_�I^d$R3��Ϣ$�v$V մTK�v0�+��I��)C�댣��k\\bv��x����G:|�+Y�%W�\\]��ˠ�]wI�/Wy�X�RD�*���\\\'y����i��*(�$7��4��9�vN��!<{����s�L#Ģ�#���	���#,;C__��#�R��4��4b�1�CB��+v��yQ�ͣn�,[9O��e���V�8���R9@5��G�-K��UP�/���>\r`o�B��[p�g=N�;��]&~�#��s�6�>���;�L�?�ت?�wS���=/�13��N����Zs���y��ُ�.�i�#���h&���+t��\"CC#�8�i�b�IG �\"�!<,qK\r�1�h���0H�ڊ%O�l�y��pY�X�/\0�xR�p|,��x�=k���t�/�������4s�2^�>[�t���<麷���o�1 �����нo8�h����oG��S�)���t)\0$q� 	ߏ|�Ѽ6hw���2��6\0��9oں��I+��i�#��bϙV�Š�4[n��lK^��P��}��5���9�?�&�%�l�\n��PqI�.c}�tϏ�N��:`:)�=����˗$ه�y�?.`���x�%xfI���N�0�쿰x蟻�\r��A�S�\"��<��4,�ˋA���&�ti�Yt,��\n\rg�8 �1�ib)��,�<�K%�ԏKx��Y\'#T��ix���5���D�������v�d��gPIhW�!�՞�t� ��@a3s 	1�amvE�K���!���s�l��0�Xr��30�r�$�|�A�G~ׄ\'�D�[�,!���aI�M`�%A��p��>;��Y�秡Lbi ����e~U%%�³��f��\"\r��(ˋ+R�;��&���\r-�s�z��Ks�o�OtK.�a�E�,�/W�E�G��(]I�PoZ3�ҡ�Y��\'C݉5�U1J\'�Wv�bAo�P���@�1�:/}��:\'}8X��JQҨt�A��U6�Y��u\0�sp\r��� �X%H�Ρ�TW��	�U[��Uh��\ZW\r�J�w�D��	r����J �W�	�pǮ�!�B�h<��jW���3�.�� lj�B�,�����ܖ���\Z�sGo���=��������ú���D�Y�T,�zk�zh��	�`o\\\r��xEP�\\!(��rC?m�Z����+����],���V۽�nR\'�j�T�b���Sx�D�ז�]p\Z+@N.��ՔɊ�GE}a�i4쎍k��NqXNCV�ص#���n�;ؼ*��M\\�%�(n�+�\0@|ᡷ�t��ü�8�Y�!���hb)`�vI��f�m[�Io����n�<I�=l$�a,H���K�A��#.��*�5	j;(�>�\r�vK��L��M=D�-�鍴�F��ч��^��x�k��j�&�´��t�&y�6c����%�M7t<6�S� ��\0��E҃��$�<\\?��w\0/G?㰁�=P>.,\Z�>]q��M���\r�qyQ��H�>�����Űc������-f�f�7�A��@M��#�WMu�_��r��0�p�!�Nh�[��&��y�p\n!�҄����,�T�\r<\nxox���0(���}<[��;)����SFam��<CŃ��j��s<߾���\0T���c �q��q��\"��l�[Fベ��\nr}���c�r00Jm���F\0�R�V[�c������-����K�j\0:/r��5�7�oF ��.�ެ>��!7j`�Fo��@�V{��9dt�M����<�p�Xȸi��©8F�t�]𡷯�u�]�����o>��;�?��4�q^}=�|�\'�[���+�G=�s3���p��y�ܧ�뫄Q[Ez�-$y��=	\nV�<g�^�B�}�x�w4|����}��L�w�����������]�+cͨ|>�]��>�����k���1�yٸ�ˢ|���K�m�Xj�����]̀��aw�~���	���f8�D�d?���CF�y�o�~2�����6ϝ�\0','6.1.3-40302');

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

insert  into `detalleevento`(`id`,`nombre`,`descripcion`,`idEncargado`,`idEvento`,`idEspacio`,`fechaDesde`,`fechaHasta`,`fechaBaja`,`estado`,`dia`,`asistencia`) values (1,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-14 10:00:00','2019-10-14 12:00:00',NULL,'Nuevo','Lunes',1),(2,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-16 12:00:00','2019-10-16 14:00:00',NULL,'Nuevo','Miercoles',1),(3,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-21 10:00:00','2019-10-21 12:00:00',NULL,'Nuevo','Lunes',0),(4,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-23 12:00:00','2019-10-23 14:00:00',NULL,'Nuevo','Miercoles',0),(5,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-28 10:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(6,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-30 12:00:00','2019-10-30 14:00:00',NULL,'Nuevo','Miercoles',0),(7,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-11-04 10:00:00','2019-11-04 12:00:00',NULL,'Nuevo','Lunes',0),(8,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-11-06 12:00:00','2019-11-06 14:00:00',NULL,'Nuevo','Miercoles',0),(9,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-17 14:00:00','2019-10-17 16:00:00',NULL,'Nuevo','Jueves',0),(10,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-21 14:00:00','2019-10-21 16:00:00',NULL,'Nuevo','Lunes',0),(11,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-24 14:00:00','2019-10-24 16:00:00',NULL,'Nuevo','Jueves',0),(12,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-28 14:00:00','2019-10-28 16:00:00',NULL,'Nuevo','Lunes',0),(13,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-22 16:00:00','2019-10-22 18:00:00',NULL,'Nuevo','Martes',0),(14,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-25 16:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',0),(15,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-29 16:00:00','2019-10-29 18:00:00',NULL,'Nuevo','Martes',0),(16,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-01 16:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',0),(17,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-05 16:00:00','2019-11-05 18:00:00',NULL,'Nuevo','Martes',0),(18,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-08 16:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',0),(19,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-12 16:00:00','2019-11-12 18:00:00',NULL,'Nuevo','Martes',0),(20,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-15 16:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',0),(21,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-19 16:00:00','2019-11-19 18:00:00',NULL,'Nuevo','Martes',0),(22,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-22 16:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(23,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-26 16:00:00','2019-11-26 18:00:00',NULL,'Nuevo','Martes',0),(24,'Campaña Vacunación ','Campaña para vacunar a menores de edad',3,4,1,'2019-10-21 20:00:00','2019-10-21 22:00:00',NULL,'Nuevo','Lunes',0);

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

insert  into `domicilio`(`id`,`barrio`,`calle`,`piso`,`nro`,`codPostal`,`depto`) values (1,'Poeta Lugones','Juan del campillo',NULL,'50',0,NULL),(2,'Los Paraisos','bernis','akakka','3567',5008,'1111ssss'),(3,'Alta Cordoba','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- Córdoba, capital (domicilio de contacto)','1','8744',5018,'Cordoba');

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

insert  into `espaciocomun`(`id`,`nombre`,`descripcion`,`capacidad`,`idTipoEspacio`,`estado`,`fechaCreacion`,`fechaBaja`,`fechaModificacion`) values (1,'Aula 205','Aula con buen espacio y equipamiento.',20,1,0,'2019-10-06 15:41:24',NULL,NULL),(2,'Aula 207','Aula Mayormente equipada para las expresiones artísticas',15,1,0,'2019-10-18 02:22:32',NULL,NULL),(3,'SUM','Espacio al aire libre',200,4,0,'2019-10-18 02:23:09',NULL,NULL);

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

insert  into `evento`(`id`,`nombre`,`descripcion`,`idTipoEvento`,`idEspacio`,`idEncargado`,`cupoMinimo`,`cupoMaximo`,`gratuito`,`monto`,`cantidadCuota`,`fechaDesde`,`fechaHasta`,`fechaDesdeInscripcion`,`fechaHastaInscripcion`,`estado`,`fechaCreacion`,`fechaBaja`) values (1,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',2,1,1,5,20,0,1200,3,'2019-10-11 00:00:00','2019-11-07 00:00:00','2019-10-06 00:00:00','2019-10-10 00:00:00','Progreso','2019-10-06 15:45:22',NULL),(2,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',2,1,1,5,20,0,1300,4,'2019-10-15 00:00:00','2019-10-30 00:00:00','2019-10-13 00:00:00','2019-10-18 00:00:00','Progreso','2019-10-13 23:53:46',NULL),(3,'Curso Office Word','Se dictara un curso para aprender a usar el Word',1,1,3,5,20,0,1800,3,'2019-10-22 00:00:00','2019-11-28 00:00:00','2019-10-16 00:00:00','2019-10-23 00:00:00','Nuevo','2019-10-16 23:48:49',NULL),(4,'Campaña Vacunación ','Campaña para vacunar a menores de edad',4,1,3,5,20,1,0,0,'2019-10-21 00:00:00','2019-10-21 00:00:00','2019-10-18 00:00:00','2019-10-20 00:00:00','Nuevo','2019-10-18 01:56:56',NULL);

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

insert  into `socio`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`idContacto`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'JOse','Quinteros','3543604130','3543604130','juanjose@gmail.com',NULL,NULL,1,'32972080',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(2,'Augusto','galan','3543604130',NULL,'juanjose@gmail.com',NULL,NULL,1,'32972081',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(3,'Laura','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'30992080',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(4,'Maria','Del Valle','3543604132',NULL,'mariadelvalle@gmail.com',NULL,NULL,1,'40000001',1,1,'0001-01-01 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(10,'Jorge','galan','3543604130',NULL,'juanjose@gmail.com',NULL,NULL,1,'40000002',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(11,'Soledad','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'40000003',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'DebeMatricula'),(12,'Angelica','Valles','3543604132',NULL,'mariadelvalle@gmail.com',NULL,NULL,1,'40000004',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'DebeMatricula'),(13,'Graciela María','Casartelli','03543403668','03543604130','gracielacasartelli946@hotmail.com','Femenino','Soltero',1,'30999888',3,2,NULL,'2019-10-18 23:08:13',NULL,'DebeMatricula');

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

insert  into `tipoevento`(`id`,`nombre`,`descripcion`) values (1,'Curso','---'),(2,'Taller','---'),(3,'Conferencia','---'),(4,'Campaña social','---'),(5,'Festival','---');

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
