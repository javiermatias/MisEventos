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

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201910060709224_incial','Renacer.Nucleo.Migrations.Configuration','�\0\0\0\0\0\0�=�r�8����PQ�=*�{z��!̈́[�g3���xS@$$s�E֒,��e��������#��J���U�H$�D\"3����{�ƫ�4ˣ4�X??{�^�$H�(y�X��?����_����_����/m���z�e�_�?���f����g�(��<�/΂t�!a���ٳ7ϟo(�f�V���������~^�I@wŞ��iH���Jn*���dK�	���M�����}�t�zG�aqC����$IZ�������Y�<��������=�s�����n;�gߖ���\r[P�>/ҭ#���5t���Qw�эQ��p�uE����<�6�Y���^\\�YYU&�Y	%$!����߬�J�t|�ا����r��^$t_d$�f�~G�?闏��4�H�q�c��ee���}��hV|�@�1D�z��m�]3�M=�7I�ݷ��[�9��i�n�4��	�HA���(h���MH+r*�+}ݤA��:4y�${`���$���}O`4/8�~JӘ���=\r>�kpW���@0�{K>G�\\I�Cq�h\\��?E�Z:p|+U~���i,,���M������P�#�9Z��1���,�l�Z�\n����a�Ws�7�\\�iS	ı*�aWW��:��RM+�$� �\'�����ۻ�����)��5y�M�Ok�\'c�葆�������Q��r�MI�E���\Z\'�kD�;��ePJ��wW�$��C�.t!P� lC�O�?\0H.��t|��Q��A���zwE�4mY�ӂh��j��\Z��Hl���vB����3�+l�F+u����5ۑ��e�Б]�d �i��#�r�n����5;�h_Op_H9�L=���>F�t�=M�<��ˌ����gU��4��\0A�V<U�#y�A��\nj��@�%�P��j\rW�Y��}N��\n�9���Qd\'Z�Kt2\"8HLV�$(g����i��\"�o��ı�Z��@ץ\"�S��,/|�;�X�`�\"��R�BA�������X�֧�<�B�OK;\Z��G����>M��(��>&����-���\'�zw�~jY��0�[�~2!�W�6\n�x#˓R&Þ0�}���]���umB��;`3ǑT�+��ZZ�Z�M���������!���i�D��#YͰ��v��{�E��Ca����J��)[ޱ�&���{��Ѵ\0��9`�\nNk��)�]�yn��o��4�����sl瘜>NO�ڀ}}>��G:�E�e�$𽌯NVoٙj�p:�->���=��Qa_E��%ʱG*v=�鏶5p�X+!xMu�u��Ms��a�W�\0Ai�ck��hEm�b��uR�N�-�_ba�Z��]	<�6�O�}��n[7�q��{b|^��jQ���h.��~�^GI�y���xn�T\Z�M��#�����z�_�����9GWX�I��4�cB��{�� Gk����Z��S]�U�\\�r��m5أ�.����������C�w��iF2��﫯cݖk�*\r[�F��qK\"����Pel�z�O��3���с�Ȳ|-þC���g�7�!���I�F��I�4�+\ZD��~�}��jb�X�nR�Ѥ�XsM#j�M���9h_s���˻�_)��멊L�:�J�ج\n\n�d��=	����A-�\0���E��k���	�P�k�J��_h�8\'}�=y@߲�VXD=�r��C*\\5H<?UIP�j	7B��r���K��$Wо�P�\Z��,��Ը;or|$az�;[N!��ӏ�}&\Zd+Ľ\Zj`�l�%�W}U�W�*����� ^��~u7�j�o~�K˿�w�Mq�E�7�\'>����d�|������c�C59DIE�̕˽D�5a���0`���PpN\"m�3��l��2��zWz����P	Ɖ�5}�����6ެ\\�=yx��3��v�m?n`/�����\nh%e�k���Q�C������`7��PM<N<��D@��:���\ZR�`M���!�Ak廒>�ռ�%3z�6�k07Ŋ��\'�芐RK��!�h�f!ako���8�\'|�F�>�!��¡�zD�q�~�c�i��b���ğh_�`�S�=E��c�(�S�]m�g��!�J�\Z��V�һ~���Z�ⴇ�t�=l�N��;KL>O?�hK���b�N/���\"g��Ɓrm�a@lCl\0v�s��\'��&����,\\��|����I�Ymsvn���^|��V|���/����??��?�g?�XR0�Y��Q��H�k���Y{��\'!a�����g\n���שP�����=�������a\"6��\0��>��I_�u��׾!��|�?�\\R���e^�B�Io�@��n_%��\"�c��1�5c�hǘ�����ʐ��;B�ѹ��!�V\'���4+7D_2��h���%A�#�\r����_�D׉\\rEw4)7m3��z�ȣ���&�&&B�o8���>��yƁ�&�q����]�{�B4�Vs6c�hѣ�[V��Q��\'^G\"��\"��v}w��EV����kMx7��G|`f��#e��0�RG��5�����tS�>�$�F`��Ӯ�&��9��~r���@�YTOAP��g�T?�s��gX�����1q�+�2p�� ���#�;�יPU��T� ������?��l�Pm\rD�紎T�p�T%��w+�]W�$b�h�7/-9y$6��2�i�m����e�Ufvr磃`��8��Y�Ϝd�b0���u����s�\rF�����Vh&&4��L&B�Ry�w���YO�x�[Z8Q,WYC��Y�8ˆ�,Z#.4%��K�3�b�<`8�R>�\n����.�����pfXN8q�`qA���B����8��������D�y�P�gi�	�O��@;�`f\0O�\0��X	�1y�b.��j׵@�E�G͠c�qH��nJbĆ�9��$ 0�$֮�,K�u|�N��&���\re���R��\r`1�	 ��J�gI.�ҫ\Z&ʵ:	Ze+�j1��|,������b,�m��bB���Bʈ��&�Y/�(/���6���a\r n�뺰\Zڃ��l$n3�3���n��D����F���\'ᵅe��yy�)H3�P�8	G-r\0��������\'gD�&M�ƙ���,�%U���Ac�A�j�3�9o��(a�m�M��x%՘=[�s1A�L�\\Fdf`3#��p�Hu���ɰ&�E6>-pבm�P:%l������ӡٳ�.-�\\W�\Zf�%\r�-�%�x@�+��FE�(���P�1����LI<�Y�e��f�K,����;\Z\0�dN�IloV�+.�U�Y�\n�.�>�qڤS����&�@�$G�Y��zC�6�gx��2\0,\nk�pD��\nJk�S�Q�3W&:�\Z`e ��\n�1a�[�T0�J�>�J�\n���B\\��x�r�&����J�.0T�E\"������� ^��,a,g�k���X \"�y���sY4��x\r��%E�T�bn�V�ԞD6ӂ�TTY���TmK��\n��Ci�8��옿N�\0�;!�\nK(6-fN#PW4Wh���R�t��$��Ճ�������\0���E��� ���.�	,D��F�Q��W-Q��Xdjt�Q԰XX�>��2��j�����AYS�ɠ�n�	���\0b�G!��H��L�T���SB̃\0�A����T�qϑ��1!#�T��c׊M��	s����lbR���	`#��>�A$\n����͢P��3��\Z�mV��H7��[�3;����;���m�T�������7x��FsO����cM39��K��ŉ��Bc��m\n��\0�X�J\n����&�;�>pح�Z��Vo��\n!EǤ�\'�2ʁ��&\n�$�JSH�0\nMP)7�H�dEj$�\0z���t��\"���HSΒ�5\r9�\0Q��EƌF��XCq��E��q��BhI�:\0�MQ�/N=W�xOj��J�����0$� �A\"��1��o@F��AC\0B���%����#�b�����*3��>#��\0��=�qC=�a����\n\Zz���c���?�{����C��c��Iy[%��_\\@��\r��͞��%�˰*A,���1�����)�\Zb��!��]D.����ɇL�/,��N�8FOTa:_Tn����:��)΂���j��D�N�A��z�0�\\ES<��\0��7Q\0���t.k]���&�D���p�aU�+�$�������vl��e�eu�#A���f�z��I~��T��M^��϶Q��yz_��v��ͷϞ��y�|��al�>%;�u=iF�Tʺf������\"�#��=��V�&:�!m_��:w�+Fۤ��Yw�[k/Q(=_����Z\r�rs�k̚�Ϸ�x&�2�����Եn$��:8�+�Kũ�\'��E���cn�� ��f�zz�w���)�*���	2�m������Vn:�Y3��\"o���Ӱz����fEx&�%,�p��T��(,1-�ZW4)�V����A�Zy�wGh�;z\n�����%�EJ��=A$��t��P.\\=d�+\r��o�5I�����44|�ERi���0G����8���-#I�FL���\0�Q,>�]zby,�js���:�e��X�����x�C�t���8�d����TИާ���� �i�g_%y�~t���+ǂ�?�J�ʦ�Js0(O3co��-�mz�X.�Ȉ?���;��F5���Q��!o;���#Y&�e��E=�c*�f�\'{�(��8-]e�:�\"\rߧLi����E����t0�.\Zs}�# 5I��v慦�����Ŕ �a*NJ�0%)��҈�/����賂_pR�0x}���ViQo�����!+�OG�t3�,$�5�֒��a!��\'�}��;�1�(������;\'�c�S��a,e��g|�z�Y��_\0����7����(��8��#4�Ck��C{�H���Y��Cڦ�d6�\\(l���}�L4�EO�~��A����Ծ�e������z�О�F�+�P@����;��E�,4���_�m���)�r�Y���	ɗw��R����l�: ��n�\0q�}>~�����,��е`;m�iXoL��q<n�򍬏��`�*�;��͞�N�1�~�At��|��.�\0�\r���0k�O��I��r�T�3���~w2n�\'���eMS���([��Wd	Y��D��*`6�\n��!O���w��\"��y�h1Fх�Z��5ĂY4m�a�Ț^���g�ҥH��q/��t�Go0��\'vE(G1��|0(� Lu~+Ώ��-��<d�ë��Ή��$�*]k���!b�&Rڃ�����̧o>\r�eBBv�>U�����y����*�Θ��2J���c�^a:�ZzV��V���gi�ج#m�i��|�~ͷ�.Y+A-����q�3\n������nP(|�k���_��������ai?�~|j���?� ,$$���c��f�ޣ����SrX�[�@e{��A5N%1T}�W��b.��eB7���\n;4�^�Z%��q&sh2_�A��˄\\�4/9����>=D��L�a衏vZ�W�,䆘�x�y��\'�t�\0�@ؿ.s@E�I��hh����\n��<��k=�Vj��qv�W��9�5�&VF��V,��c]�l�	�;����k�8�(F�N��3N�iF��o��8fJ�sj9�Q���Ê-�����Ϙs��<�P���U:M����6>�ԣ=�D��&ۨ�򳮲^����*�痛��������+��qM�螝�?�\n�������W/��u2�&���o��Ͽ+���p�����H-��yR˵�p�&���Ta��At���o��\0?�/�F%Y���wʦ�4|O��f�Xoʇ���U�re����6�͉��CyS�M�ǋ�Um^���v�4�f�.cs�b�l����V��wM=Q�ҙ��!4�B�5>�ܥ�)������2N)�--�$\r��Z]����vEh��h�Nuq�<�W�<�\"���:~�b�]##,.�Ϲ���W�|,�ǚB\07����h�pm�PR�F/��� ������2\r�k�D�X\"�Kj�\r�Y.�L]e�xĽ{�@$3�1� ��p��KS1H}U+�^��)@�*b�F�&��w�𔁭����>�W�����Q��K����C�RW9��ڦ�\Z�I�[�T�G+�ڬ���Q�V�H�X�F�[�s,}b���Q�Ut��R���h�pR����uR,\\�������\'=�p�>��+mKE�wQ]%:.-n���Z��)7O��$� }���470��WŒ�F��ݤwt|j�A�裿(;�{J>����&�ms8�>Ϧǭ~�-��p�d�h�䚞��w��ל�������Z{UT�d�ʷ2AN������Ƒ������uƑsXt��]CL�{0�z�l0�[�Os���i�a�e��t�̇��<Z\\��k1Gԧ�+��1��\'��)�\\�MG%@5��q���^\'�\\�ͭ��6O��*�>v6겙��LW\'{�h������+��h&l.���J�[N�ؐ�G;�u&�Qm����4$�\\����Pfȣ�EC������wM�U�:�娌��A�YY��Oy��)f�.v������GPjfI߻���dn��$�G��|�s�	�������H^ƣ���П�����p*Ós݌�0��W.��̍�ҪN�蹮�ԍ�q���Eh��ӑ꜎ު�A÷�������y�D�!��\0Nkf�bG�ײ\\[�ͮEޭ���$V}]ND�	D��s�O4h�Ù�0���#��ͧ�I8���j����N�h׶;�uǥHS�Q���J�Շ��H	�)�q_��q�b���r�~���l%(��\n(�4+U,_�I^d$R3��Ϣ$�v$V մTK�v0�+��I��)C�댣��k\\bv��x����G:|�+Y�%W�\\]��ˠ�]wI�/Wy�X�RD�*���\\\'y����i��*(�$7��4��9�vN��!<{����s�L#Ģ�#���	���#,;C__��#�R��4��4b�1�CB��+v��yQ�ͣn�,[9O��e���V�8���R9@5��G�-K��UP�/���>\r`o�B��[p�g=N�;��]&~�#��s�6�>���;�L�?�ت?�wS���=/�13��N����Zs���y��ُ�.�i�#���h&���+t��\"CC#�8�i�b�IG �\"�!<,qK\r�1�h���0H�ڊ%O�l�y��pY�X�/\0�xR�p|,��x�=k���t�/�������4s�2^�>[�t���<麷���o�1 �����нo8�h����oG��S�)���t)\0$q� 	ߏ|�Ѽ6hw���2��6\0��9oں��I+��i�#��bϙV�Š�4[n��lK^��P��}��5���9�?�&�%�l�\n��PqI�.c}�tϏ�N��:`:)�=����˗$ه�y�?.`���x�%xfI���N�0�쿰x蟻�\r��A�S�\"��<��4,�ˋA���&�ti�Yt,��\n\rg�8 �1�ib)��,�<�K%�ԏKx��Y\'#T��ix���5���D�������v�d��gPIhW�!�՞�t� ��@a3s 	1�amvE�K���!���s�l��0�Xr��30�r�$�|�A�G~ׄ\'�D�[�,!���aI�M`�%A��p��>;��Y�秡Lbi ����e~U%%�³��f��\"\r��(ˋ+R�;��&���\r-�s�z��Ks�o�OtK.�a�E�,�/W�E�G��(]I�PoZ3�ҡ�Y��\'C݉5�U1J\'�Wv�bAo�P���@�1�:/}��:\'}8X��JQҨt�A��U6�Y��u\0�sp\r��� �X%H�Ρ�TW��	�U[��Uh��\ZW\r�J�w�D��	r����J �W�	�pǮ�!�B�h<��jW���3�.�� lj�B�,�����ܖ���\Z�sGo���=��������ú���D�Y�T,�zk�zh��	�`o\\\r��xEP�\\!(��rC?m�Z����+����],���V۽�nR\'�j�T�b���Sx�D�ז�]p\Z+@N.��ՔɊ�GE}a�i4쎍k��NqXNCV�ص#���n�;ؼ*��M\\�%�(n�+�\0@|ᡷ�t��ü�8�Y�!���hb)`�vI��f�m[�Io����n�<I�=l$�a,H���K�A��#.��*�5	j;(�>�\r�vK��L��M=D�-�鍴�F��ч��^��x�k��j�&�´��t�&y�6c����%�M7t<6�S� ��\0��E҃��$�<\\?��w\0/G?㰁�=P>.,\Z�>]q��M���\r�qyQ��H�>�����Űc������-f�f�7�A��@M��#�WMu�_��r��0�p�!�Nh�[��&��y�p\n!�҄����,�T�\r<\nxox���0(���}<[��;)����SFam��<CŃ��j��s<߾���\0T���c �q��q��\"��l�[Fベ��\nr}���c�r00Jm���F\0�R�V[�c������-����K�j\0:/r��5�7�oF ��.�ެ>��!7j`�Fo��@�V{��9dt�M����<�p�Xȸi��©8F�t�]𡷯�u�]�����o>��;�?��4�q^}=�|�\'�[���+�G=�s3���p��y�ܧ�뫄Q[Ez�-$y��=	\nV�<g�^�B�}�x�w4|����}��L�w�����������]�+cͨ|>�]��>�����k���1�yٸ�ˢ|���K�m�Xj�����]̀��aw�~���	���f8�D�d?���CF�y�o�~2�����6ϝ�\0','6.1.3-40302'),('201910240358280_agregadoEstadoInscripcion','Renacer.Nucleo.Migrations.Configuration','�\0\0\0\0\0\0�=�r�8����PQ�=*�{z��!̈́[�g3���xS@$$s�E֒,��e��������#��J���U�H$�D\"3����{�ƫ�4ˣ4�X??{�^�$H�(y�X��?����_����_����/m���z�e�_�?���f����g�(��<�/΂t�!a���ٳ7ϟo(�f�V���������~^�I@wŞ��iH���Jn*���dK�	���M�����}�t�zG�aqC����$IZ�������Y�<��������=�s�����n;�gߖ���\r[P�>/ҭ#���5t���Qw�эQ��p�uE����<�6�Y���^\\�YYU&�Y	%$!����߬�J�t|�ا����r��^$t_d$�f�~G�?闏��4�H�q�c��ee���}��hV|�@�1D�z��m�]3�M=�7I�ݷ��[�9��i�n�4��	�HA���(h���MH+r*�+}ݤA��:4y�${`���$���}O`4/8�~JӘ���=\r>�kpW���@0�{K>G�\\I�Cq�h\\��?E�Z:p|+U~���i,,���M������P�#�9Z��1���,�l�Z�\n����a�Ws�7�\\�iS	ı*�aWW��:��RM+�$� �\'�����ۻ�����)��5y�M�Ok�\'c�葆�������Q��r�MI�E���\Z\'�kD�;��ePJ��wW�$��C�.t!P� lC�O�?\0H.��t|��Q��A���zwE�4mY�ӂh��j��\Z��Hl���vB����3�+l�F+u����5ۑ��e�Б]�d �i��#�r�n����5;�h_Op_H9�L=���>F�t�=M�<��ˌ����gU��4��\0A�V<U�#y�A��\nj��@�%�P��j\rW�Y��}N��\n�9���Qd\'Z�Kt2\"8HLV�$(g����i��\"�o��ı�Z��@ץ\"�S��,/|�;�X�`�\"��R�BA�������X�֧�<�B�OK;\Z��G����>M��(��>&����-���\'�zw�~jY��0�[�~2!�W�6\n�x#˓R&Þ0�}���]���umB��;`3ǑT�+��ZZ�Z�M���������!���i�D��#YͰ��v��{�E��Ca����J��)[ޱ�&���{��Ѵ\0��9`�\nNk��)�]�yn��o��4�����sl瘜>NO�ڀ}}>��G:�E�e�$𽌯NVoٙj�p:�->���=��Qa_E��%ʱG*v=�鏶5p�X+!xMu�u��Ms��a�W�\0Ai�ck��hEm�b��uR�N�-�_ba�Z��]	<�6�O�}��n[7�q��{b|^��jQ���h.��~�^GI�y���xn�T\Z�M��#�����z�_�����9GWX�I��4�cB��{�� Gk����Z��S]�U�\\�r��m5أ�.����������C�w��iF2��﫯cݖk�*\r[�F��qK\"����Pel�z�O��3���с�Ȳ|-þC���g�7�!���I�F��I�4�+\ZD��~�}��jb�X�nR�Ѥ�XsM#j�M���9h_s���˻�_)��멊L�:�J�ج\n\n�d��=	����A-�\0���E��k���	��[9M쥳.(�1\Zu�Im}O��,��j��\\���JWEO��CU� (�Z�	�� )V6<�/��%���v�$K?0m��[��\"����>�SH�,��#$���$q�\Z&�bI�U_���Jca�}�1�$����Aꛟ����o�[${J\\�z�a6��퉏��#+�<�WI��d&�^W\r�A~WR�\"s�r/�{M=�}<��ص>-����_[�L�4Aw��LW����͡;��6<�B�qbbM_���䤍7+�dO��@�l���`ۏ�$6��j��ZI��㥌��P�%`#�#�M>0T��S�$о2��>���T�q�$���j�\Zǉ���Ez5o��l�C���Z��@�\"�:��)�\"��R=zc�\'\Z�YH�����\0N�	_�Q��gH3:�p������e\Zd��G�7?�\'��)&��CO����3X�<�AT��`d�R����U������ִ8�a�\"�g۷S7����ӏ&ڒ:�������y���ī�q�\\�sX[�����o9��y���_����7_�n{��oVۜ�[�����w��>������O��?�ia�G\'��n�h֞h�IH�<���{��B=��u*�~���qOs��:5B�_i��\r�3���τ����E|����o�=_��*����|����j�8PBI��WI���.��<s��X$�1�`�z���2$=�·���Ӄ����f�1��\r�ėL�a,\Z%��yGI�HlFCjj��3�u\"�\\�M�M�L`��9�ht�I���P��ml��O�b�q �h�d��aWi�P��՜��)Z�h㖕o~�b�ב�Ȭ�H\"�]��9x�����Z�lޅ�\r0�߱k�HI�0�U=z��d?h$��Ot4�b��a��Ĵ븧�\"�D���\\��2�a�Sf�#�O�Tn���%�f>}D���J�������l����(T�4�5Hc���.��4:��9T[��9�#�\"�������yLn���3��iMKN�ʹ���cZj���,sYr������ h1�9z��4���db�ggg�kAC��:�p4����M$����T@,�}�>���N�U��i�E����5Y׈MI����؀,���=�B���>��-�v�*��N�#XG\\:6�PDz?�u�=�\0A��h$&Q{��9T�YZDkB,��0��%���?��/V�jL^���c\0��u-�f�Q3��lR�Ũ���a2GN�%	̼#	���!˒z�\"Ԡx��BG8wCIFm���=xX�wB\0Hk����Y���,��ɆR���C@X��<�Z�b1��u0+/��cy���к���2\"3���hE��<ʋ21�\r�,gX����.����j;��L���l&�ۡ ki~�np�Ixma���d^{\n�L�+N�Q�\0����#;��Ѱ�Eӣq��6�=�`I�f�7BИ�q����g�[�u�J�t[dS�\'^I5f�V�\\LP?1����Hx;8R��w:C2�I8m��O���ud[ �N	�omn�~��th��K�4�ծ�xIC`KE|�3���j�Q�4\n#-\"�p��#G@l�u=�Y�K9�@�@1���pۛ��xUe�B�����i�6�T��?�� �7�d�(��ТMn�^u�\0ˁ�Z\"�誂���hT��U����XEȣ���{LX�V �B�R���R���`����:��\0���@%�ҺU`���x:?cp4��:K�Y�Z��:ȇHi޿n�\0�\\\r \"�GC��qIQ ����8�\'�ʹ`�/Ui�G*U�.��=��P�� �7;毓��D��EHA���M�����\Z�t9� ]�/	�s�`�,&+��,@��aAѥ;��!Hle���o�Q��D�>�UK$.�\Z�A5,�V\0��9��v:b��3���:{B֔y2h�[w���&\0��Q��3R�\'�\0 �)c�� @d�j���)x�s�dhLH��0�g�صbS�b�\\+.m�?�����q؈G��f�B�:>p�(��zF�F�CۂUt�(�M����(B/�<�N-8b �Eh�0$}p7��\r8����m#f�XS�Lj��R��hq\"�����p�AĀ�k9@-֣�B�C�)���E�G��vk�=��7�CH�1)A��ɣ��r�z콉=	���R*�BTʍ!�$YE�\Z�;���*��Hc .�Ô�diF\rDCN!@��}�1�Q*�P�߰�C�~v�\ZER��{S�qŋS�U ޓ���႒w���$�$I6�Ex���|�m\"é��Qb`�E��ТA�\0b�d},�Ǿut;61�ʌ����;h�@/�@a\\�PnX��9�����ie�X�0/:-�O��w����P���|R��V����<�yC(|��3�mI�2�JK/haLf?hntʅ��Xf�g�$C���vD�r�!��|�S%��U���C{������t�� �>��\Z&>ѸSz�brƀ^���@��;�@o�M�F��c8��ZWv��	>�-i>�oX���=�+��-�&����o�|Y��HP��Y��q�_�?���f�W��mdi��gA��0Eb��g?n�?�lk�@�O�v]OE��*������,/�HA�H�x�e�U��z��Eۗ⃧�]��6)�n֝���KJO��ld�V��ܜ�\Z�����$�I�L��6�}3u��.�@Ľ�\'��Dq��I&b�!���>-ȃk��C�����2ypJ�\n�|#q��p���/���Nj�L���[��4�޾��Ch��C�I�A	K.xŸ/.�\nKL�ê���C\n���#����V^��Z�����<�x	e��bkOɤ;/&��W��J�B$�M) %%B\"\r���\"Cr�Tڤ�8����-Ne��E�H���b��(�p�fE��X����b���a�.%V;��G�b@l*����;w4�#Y��_�!4��i\"A�:Hd\Z��WI�$g�ʱ 8�O���������X�[8�y�pۇ;.�K:2�m��N��t�Q���Abs��N#��H��|�~sQ��ʪY���.�%<�/NKWY�N�H��)S�$q�}vQ�w��h>���\\�H�FMҷ?��y�)�.C���`1%H�C����4LI��4����!�2������6^/����šUZ�[�?m#u�J��Q.�-�mM\0���D`Xo��I~���h,����p�>��I�D�X�h�CXK���Y_��nV�����EoDǾ�\r���:J������<�К���2R�#y������2��\'\n[\'!i\'\r)B��߮pb�`4�/o�`��C����-�\'�����2Ph�)��yGr�6ͧ&��zF�i�s���fV}�bB�������.A�?���Ć|�,@�s���\"mh�5�i\"t-�N�z\Z�ӭn��C�Ȏ�z��w{0s��ѝ��fOe?��?� �S-��g���j��7dq���I���M��r������N&r����ؼ���ێ��bk����)K�U��	��p��<�	ъ�={$��5�!-�(�``kV�ƀX0���4�BY_���C�L�T�Zi>9�e����=�P��TE9z�A�� a�S�Xт\\�p��9,^�|ufu�\'���:X;���#6���\'�Hwg>}�i8/Һ�����f���=M�MT)t���Q\n]n���\n����c�m,�����>�H�fi�O��X��X��h�-wU[	j�E��cX�����t�B��#]����$��N^�\'?M�Y>��S������a!!і�,���x0{�\r � &�倡����ߒ*�؛o�q*���üB��s��.����o١��b�+Q΀O<����h$3c^�����yJ�����!�or8C}��\n��}\"7���eγ<Ԥ�\' ����\0TDv����h�M����s,����a�&bg�z%X��ZCabe��n�B�����V����C�K�&j�c�b����9�t�&aT���&��c���8���)�gB�آ�n�h����A1����Sa%W�\\��$�/��.Wi�\'TH`ZѣLGZ�!or�ʉC�*���(���~�����,?�����\Z�$�����c��_��?��z�2�H^��mR���_�ʑ���2G*\r���{��J��1�g�\\[\rw`�F��IFhD���Fnx�c��mT��Z��l�IA���(hƈ��|����^�,W&���nc\0ߜH�>����$!}�X�W�����o�M�oV�26�/V�V�=�k�`��}��))�+\ZBs/TZ�S��]Z��A(ITkX!�\"��rM� ʫ���\0�?njW�&-��.���Tw��CyUȃ)���p��� ���52����{�zu�G�y�)p�0>�ڌf׆E!5xa��i(�H9�i-�p��I��%ҸԨܰ�傐�U6p�Gܻ�D2��,\0��\ro�4��W�\"�%�H��\"�ktn~pz\'	O��H��i��|U��a�e\r�D���;.��m�1����N(z����M�U�I����I�`TJ=�ҧ\'�5�I\'�+5�=��\r\'U.�����P\'��H���zy�sG�ᓃ�bж�W�x��U����X�?���$�O��g��Ls�h~U,io:��MzG�\'�d�>������sw?o�9;�C�uz��7قj�qJ�FL��yMq|�j�Ή����qn^^��WEUO֯|+�D��-Mn���PH	�[g9�E7��5Ĥ��^�G�#�EpY9�y.�6\\.N?@�|hBͣe��]�sD=�]qf3��d�hYz��u�\n����qwL���5a��i=�^,��s����$(;Kw�́�n��Ug4�����}��S}4C8�@�m��-�XlH\nˣ��:樂�ɏ�i`2b.nEq�(���rɢb\\bK���N�\rsTF�� �l5�����<Z��X;J�J_P�5�#(5?��\r��p��_h*ɣ]mVʃ��Pz�Q{E$���N�i�O�U��8����Eo�C���+{]�GOiU\'��\\�MHO���[��\"4l���HufHoUڠ��AQu�q<���v���<Qm\0\'G3��#��]���f�\"��}�j��.�����ꀹ֧+4��L��G�ܑ��S�$�C�n\n5i�[}\'n�k����)�(D�R_%��CZv��ޔ��θ�����v1�Y|�X?W�уR��\n�U����*�/�$/2����gQD;+�jZ*�%a;�r��Ѥ���!�u��Q�.1��Bn=[N�g5>�ϕ\\��+v�.��ePg��$y@�W���F,J�\"RL�Q��<G)j��4Kq����Oy\Z��{��d;�s��xV�i�q�\"��K}�҄�O����o���v	�B��g\Z	��e�!-������(��Q7�O���\'{��x�`F�όC�O��P�������%��*(͗I�\0�����p��z�-8����Y��.����Q�Y�h�u\n�r\\&ӟkl���+p�������TX\'~YTw��e���{���`Ѵ�XPm4��R�����v�!����4L1�#u������x���|^�VmŒ\'q6ռ�v�,{,�\0C<)N8>����ggg���Hk�F�e��w��Y��-R�\'�f�t�F������a�F�}q~�^I�Z��kx@ݷ#�\0�AɃ\\^�[:�\0�8T���G>�hv��E��y\09Ŝ7m������4��{��L��b�~\Z�-7�x�&��y(s���y�x����pq�~�Kw^k���~���>�T�\n���y@��Y0����|K���K�������|P�<�<�$X��?�\\t�_X<�f߆V֠��c���\n�y\Z���� ܈�z�H�4��,:��Y��3O�Ę�4��v�p��%�M��%�Nڬ�����4<O�ĚHW|��EXA��w�E2D�3�$����j�r�A�o���9����0�6�\"�%Gك������b�]cG,�u�g�iR>�Ă#�k�[��-z��`r��$�&������O���r�Q�,���P&�4�hos�2����T�YQB��t���u���)��UC���9t�zե9N�7�\'�%�z��N�+�\"�#�`���r�7�G�P��T�����\Z�ު�\r���+�M1��7Q���e �uC��>�K����,@L��(iT:�� ��*�٬t�|�:\0Ź���T`�Ex,��U��\nR�+���ê�-F�*�\\~���J��;H��y���pS`w%��+�_�cW�J�~4�\nJW�+��G�^��p6�|!�?�S�Z��InK�in\r๣��Wu����N~�D�RC�a]��d��t*C=�5L�		��ބb�7��yp�\"��`���\\���6W��IW������.kwa��^I7�f�E�d1[]�)�]��kK�.8� \'Ϳ�j�dł��������4�	v�Ƶ�U��8,�!+a�ڑ��}��f_l^LB�&.ےP�xʕF\0 ����s�v��a^w�燬Ӑgf|4�0z�$T^���ֶ���7��qf�K�$�6�0$G}qѥ�� ���O_ƚ5��k���O���U��Φ�����FZm#�������W/Rs<�5�P5[�Xa�mi:F�<@��UBe�ɦ:��)���e\0��\"���[h�����;����q��x�(���^���k��zˆ�<�(�~�Z�U����bرa�px�Ö�U���P� [`��P��	؇��:ï�p��R`�X��u\'��-�U��<p8��Ai����`�a�A��7���y�����>�-k�����G�E��\n���6�i���ANF5q�9�o_E�y\0*����1��Qиdx���\n6�-����CG�>��[��1L9�6^at#�t�\\�-ȍ��pq�{`�����ʥu5\0����\Z���7#��rtoV�w�50p����	��j����2:�&�b�y�k��,d�4xюo�T#j��.���W�:Ю�|S��7�ς���u\Z�8���o>��-���ͣ��9���@p8��I����U¨�\"=�w�����̊�+h���^�~!�\\<�;\Z�I��ݾ`C�ۻ�O��V���F���ݮ���1�fT>�.�i�a��k�@D�ۼl\\�eQ�p���6M,5����?��.f��w�M���;n?��_�_���QH3�y\"D��_E�!#ۼ�ѷg?��ǿ�?�kFu��\0','6.1.3-40302'),('201910272002472_cambioInscripcionEncuesta','Renacer.Nucleo.Migrations.Configuration','�\0\0\0\0\0\0�=�r�8����PQ�=*�{z��!̈́[�g3���xS@$$s�E֒,��e��������#��J���U�H$2	 3����{�ƫ�4ˣ4�X??{�^�$H�(y�X��?����_����_����/m���z�e�_�?���f����g�(��<�/΂t�!a���ٳ7ϟo(�f�V���������~^�I@wŞ��iH���Jn*���dK�	���M�����}�t�zG�aqC����$IZ�������Y�<��������=�s�����n;�gߖ���\r[P�>/ҭ#���5t���Qw�эQ��p�uE����<�6�Y���^\\�YYU&�Y	%$!����߬�J�t|�ا����r��^$t_d$�f�~G�?闏��4�H�q�c��ee���}��hV|�@�1D�z��m�]3�M=�7I�ݷ��[�9��i�n�4��	�HA���(h���MH+r*�+}ݤA��:4y�${`���$���}O`4/8�~JӘ���=\r>�kpW���B0�{K>G�\\I�Cq�h\\��?E�Z;p|+U~���i,�X��&�gC�cj����-��Θbch�c6a-Tq�j�0櫹���Ǵ��X�鰫+@x�oz���u�Pw���C�J��]F��؊����<��&ŧ�5��1B�H��K���I��֨��F���$Ȣ]P-��5��C�2(��㻪T����!uW��� ��\'�\0$��h:��ר�� �rh���Z��,�iA��v5{e\rVP46\\�u9��z�@�u��`��:LZ|����Z�E�Ȫ�V2ڴv[���V�L���e�䚝�E��\'�.��yf��g�]:ʚ&.��eF	O��׳��u\ZF�Q��b��*\r��<�rb�lf 畒R�hQ����,�ه�>�`n�ʜ�G�(���:4&�}R��+J�xt>,$]�-\'L��Ū��qIN��Y\\ޝP��`�\"��R�BA������o��t�O�<� ˻���h��_Acz�&�w�x�l�~�D��\'�yw�~fY��0�[��dB���mD�(�,Oʘ{�h�I��NvŪ������GR]�\\��J,�(v� �B\rzm\r���~.�����Ok%��ɲh���<7���]�O?�LO�4|�2�����F_�췦�h��+@8�0ΑSػ�����ߪ�i^���>���19}��d��e���1Cpic��iR���2��Y�e{�m��ic���p��st�t�G��*�	a[�l{�b�\r�~k[��R��T�Y�U�i��5l`�* (��m�%|�U�6>Fh_\'��d���%��%v�ݕ���m��$��\n��m�p�ݓ��a��y=v+�>g��\\���.���h;��\r���>�<4d���G����\' ��_�����9GWX�Ia\Z�1��䏽�z��5�amp�����6x�T ��\'t[\r���K1��*�p�2�ly�����ŝ��G���|���+�X��Z��J�p儝�s5n�Bd�Tq����Z����p����7:�\ZY���`�br5�E��qȉH��dG�}�dG��\r�my?�>c51�?�W7)�h2|���Q5���i{���9��B���������TE&�_M�OlVy2�˞�y���, \0\\��h�\Zg�>B\'~+v�*	���BNq��ٲ��\"���d�\'��^��\n��#(�)��R���œ*�P��\nJ��p#�U(:H\'�\rO��k	[r�[����y筸��\'�����S���a��GH�\r:��]1j`�\nl�%�W}U�W䪍���U� ^��~�8�>�o~�K�����c��q�;��۞�hJ>������4�Qf\"����0��%):W.�R�ׄ�3���.��\'A�8�����$N�l�_��G�C�!�C�3�o��3$\'&��5J�MN�x�r�A������_�l�qk�Ć�\\�~U@+)�^s��r�y	X����&�Ƀ�.�p�h_�@gi�!�^�4�|��\Z��q	+�c�^͛s���!�ͼ�\0��@���:��)����R=zc�\'\Z�YH��\r�Yx\0\'���nT����Ψ*�G�\'��>��-{%��O���u��9E��S�3*s�>�\"�E\ZkCT�5\0�SUJ�`U�����s�w\\К�5�yְ};uS�,1�<�h�-y���Y:���g��M����=ǉ\0r�1��Nu���X��c�п셫қ/yA���7�m��-qt׫�?٪ϻ���||���?~�\'��K\n�4��0���qM�w4kw4�$$L��B�=��L��P�:j?�����9_]�\Z���4L����gB�?���\"�����7�ў��g�Kj~�?��ˣ�j�8PzJ��WI���U�{Ps��X$�1�`�z���2$=�·�������f�1���ė��a,\Z%��xGI�HlFCjj��3�u\"�\\�M�E�L`��9�ht�I���P��ml��O�b�q �h����aWI�P������)V�h㖍o~�b�É�HBdV)��k�w�^D��l��\\kR׻p�&�?�8c����\n��wգ��O��Frdq ��I����Ӯ�&�ȉ�{L?�Z{e �,j� (��3Gj�ȉ��3��Kr�|���mN���8΅��٤���I)��4�/5�b���.1�46��9L[��9�#�\"�������Mn�ӟ�3���NKN�ʹ���cZj���,sYr������ h1�9z���=���db�ggg�kAC��:�p�c+4}�\r�H.)!l��<W<X���>��D\'���5tZ\\Ⱥl_6\\���\ZQД�a�.��X�dy�pԥ|�1���)]�2w�$U8\n3�N�#�#.�_(\"���:Ǟ[� v�z4��=��*�,ODkB,��2��%���?��/V�jL^���c\0��u-�f�Q3��,R�Ũ���a:��`I�yEk�wC�%�:>��������R��\\������o�\0��Ҥ鉳$q9a\r�\r%�������)�f1��|,���XyI�X���#�ń��+)#2�1��z�GyQ&� �����\0ⶾ���=�����m&|f`6��P���4��(7��$���N�c2/�=m���\'�E6�X��rБm��h���Ѹ��6�=�`I�f�7BИ�q����g�[�u�J�t[dS�\'^I5f�V�\\LP?1����Hx;8R��W:C2�I8m��O���udK �N	�omn�~��th��K�4�ծ�xIC`KC|�=���j�Q�4\n#-��p��#SG@l�u=�Y�K9�@�@1���p�����,P�vE	W�8mҩ\0�~�i�A o�#�,QB��E�܊;x��2\0N�ሇ�*(홝�\n��\n0�q�\0�(yUx�	��HE;!R)��Y�T�b��Q����G,7@k�8*P@M���CU\0X$\"8���\rⅬ��r���>)���!R��o�*\0:�E����P�h\\RHe*�mN�Id3-A�KE�E��#��m���Y���\\q(�f������q@�qg�\"��Ta	�&a�,U��B�.G��K�%A�V���d�Ք(8,�/�t\'�8����v�M8`!��7������j����\"�P�c=����r�\n`��!G��NG�rF��MgBȖ2O�r�N5�@C>\naxF\n�d\Z�\0��:c̝b�R\r}8��{���	)8f��Vm�UL�kե��gS�R\\>N\0�(��!�*Q�V�nV�B=�AϨ�ЈwhY���U�)>�R��E��gܩGl�������e���c�=�2b&�5U��f:,E\0>�\'\Zl�\n�D(���b=*)�s(=E41��x�(����nmeѓZ�ᆞPp):&%�t8y��QT��7Q�\'�U��BJ�Qh�J�1Dڀ$�(R#qЃ|W�)`�Er�r\'Y�QѐS(�y_d�hԟ�5�7l�P��y\nBcH��\0�7EW�8����d�W���/�&Q\'aH�A.T$�ls 2�\Z�2J,�\ZZ4�@,�l�������n�&�P�l�y\r�\0�e�!����\r��W�v g0А�=�����E�e�	]��.�� �ʝ��O���*�����8\n��i��p��yV%���0&�47:�BRC,��3x��Bd�«*N>d�\\��;U�=Q�Q�|Q�1���\Zz��N��B�\Z�a��;�-&g��.� ��(��N��\0�[~�p�N�֕�on�OtK��V%��bO�ʟ-o��n��+�[6_V7;���o֫�m���OE�{�����lY����Y�n7̐�|��ُ���7�\Z�&Χd���\"���JY���Q�W� w�|��2�*�D=���K��S�u�h��7r\'����ғ�5Y9�� )7�Ƭy�|;ɀg�.�x�Mp�L]�F�� u��ù≰4Q�:x���{��m������TOo�n�<8�P�{��8Af���q���<l�ᦝ�5�kO�-���~\ZVo���!����$󠄂%�wQ�2�J��Ĵ8�J&�hR@V����A����#��=X�yn��*%��֞ �I�;^L)	�:���J�7��4R@JJ�D\Z\Z��E�>�\"��I�q�#.��[����E�h���b��(�p�F�KO,A��6��_��!��Rj�3|t*�F��maZеsG�8��K��RAcz�&����F��}��q��As֯����ѫ3U��Ay���a�2��C��%m�px�Ub�ͨ�y�~#��ل�m�QPw$�d�l���gqLeӬ�dc��\'�U$�ii�>eF�����.�N�ͧ�av�0��8��1���ae^h���멹�\0XL	����d$\r3�r�(����ɽ�>+��\'�\r��G����7zqh����O�H�R�t�K����Զ&\0�Zs_\"0,�7�����Wg4���z0ܯ�s�*0�6%���`�#8�{�����U����a�ѱ�}��.���h+��;B#�0��=����H����=�m�Lf���\0��IH���ă��	�oW8�S0�ڗ�l0���V�Z��Z���b{c\n(����v��\"�h���S�k=�m�4�9E[N3��~1!����WJ�����a}bC>��\r����o�6�֚�4�l�m=\r��V7���,d�.�uf�\"r��I5�!\"U�Hwـ�=�UVs$��ѝz�~vPԆ5�L�ì%2��oM��ˉ)�PT��N��\n}z�c3�ә�(�C���f��&\Z�g�����`-y�G��Sn4�,-�(�ckV�ƀX0���4�B�\n���C�L�T��i>9�e��A	��P�Į/��1�����Vc� r�EX�G�px������Ҹ�`�0;�B��Dq{�yݝ��ͧ�LH/��j�ț!�^4QQ��S��H)t��,�+̦SK���d)	�_�#\r9�6�F�X��X�i�-w\\)j�\rE��xX���L�t�B��#]�d��$}�N��\'�O�Y>��S�X����a�!і����x0{�e!� &��0�����o���؛o�q*���üJ�Ѕ�H�	�|Z�c���z1���g����a�|m4>\Z�\\/��I�Ҽ2�R�J����<9���>(j�^��brR4�Y��e)��)	tYE\0*��E�FCK���Vx�e�9�^�̰Rܳ�^	����F�X���X�y�7�X��K�w�#,Ce�8�*F�u��3N�iF���o��8fF�sj9�Q��|Ċ-�ꖮ���O�sȏ�<�P2��U:K�����2�6�G���=�$��&������^����*闛��������+��qM���?��������W/��u��&����q�̫Ͽ+3��p�����o-��y�[K�j�Kaz�O�0B� ����7r�s��Wr��������i\'\rߓ��#֛�Qx��zU�\\���c��|�#��P�{����b�_U��7��6;Y����X=[�������k�]SO�T��hͽPi�j��r��BI�Z�\n�і�2I�(���:���J�&���\nE{�Tw��CyUȃ)���p��� De��� \\�s�uC���87�B\07A����l��𡨤F���� ���И�:\r?�8���T\Z�p���^������k���H��Ǡ��{��[��r �UI���ӓ~U�V��M�N�$�[	?0�}�����#Q����\n�|�¥�r�ѵM�-Ɠ>��>�iJ�VQ�O}��*��:��*��X�����&��$k�&i�Ѳ��>�U�dX�\0��/=�]/Ov���9|�QWږ���:�It\\Vܐ:k��=����G��9E\'���Ԝ_K�\n���&����n:�>������3��o�@�C�s�z��7قj�qJ�FL��yMq|�j�ω����qn^ޠ�7EUO֯|)�D��-��8�?����޷�8r�nz�k�iu&\0�V��\rFp��r}W�\\�O?l��~����4�Gˀ�x-�z��T怜bt|O*5_��J���0k�K���9ت�B�5A���K˝��&���E�^��мl�@r�����hD�;(��WN���Թ\\�n�ַ�Bؐl�G;�uj�Qm�j��JH�����;@�*��K�5�rd�v�5�7u�Ě�2��w�c͟x6ˣeN1%�p��d��ߨ8�RS]�^v}\rG��f�<Zyh\\��*���C��;;\"�\"�vb�B�^/\'�ǩ<O�~3nB��_���RIzj�:���\\7�$=]�Ro3��<0鳳��$�ަ��·�����8\r���T�!��\0γf�bG���\\[�ŮEޭ���$���$�v���Z���<�3�`sG��O1�p:F�)�dTO��N�h׶;f��r�)�(D\"\\_%��CZv�D��θ�����v1�Y|�X?W�уR��\n�U����&�/�$/2����gQD;+�jZ\Z�%a;�r��Ѥ���!�u��Q�.1��B�>[N�\'H>�ϕ���+��.��eP\'ӻ$y@�g��D�F,J�\"RL�Q��<G�n��4Kq�蒛Oy\Z��{��d;�s��NxV�i�q����K}��D�O��������v��B��{\Z	��u�!����L��*��Q7�O���\'{��x�`F�����O����������%��UP�/��f?\r`��B��[p�g�N�;�n�]&~�-���\"�6�:��)L��q�L��5t�,�5�=^�cf2a��eQ۵����1�o�]TӲ[`��-��2\"3H�6:V�;������p�a�;��������-50���-��K%�i+�<����Y��e�c)�\0�Iq��\0����=;;�;FZ�o�_��{���u�B�DJ�z�̓�{i���r0#Z��/�݃�S��6��v���My�ʀˋpKg�@�\n�����M��v����!�����y��M<HZA�?Lsa�{δ�-�!�r3����C�sw��k��-��s >�M�!j��.�y����]�6�R�*<����gu�t2�{�-9��/I:V��|���:\0�	x\0\'�3k��7�s�A{���C���mhu\Z4p>u,��^��?O��2`����]oI�搙U�R|1��p����&����γ��V�I����I�uR8�j�=\r�0�&��(rV�2��n���*	�9��3��n��lFb$!�4��ͮ�v�Q� 8d�by��m��K.|�Yn����<(�����Ėh��%6�\\#,���,��\"��.��gG8���4�I,\r$�ۜ�̯��$UxV�Ь�]�!}eyqE\nrGr���luCe�^��Ҝ\0;ě�ݒ�uX=AQ\'K��n���`���r�7�1�ҡ�Y��\'C݉5�U1J\'�Wv�bAD��ߗ��c���Q^��e�|`b*uDM��I,)&V1t��f���;����}4��/��ca� �:�V�R])F\'�Ve0LuRh)~���J��;H��y���pS`w%��+�_�cW�J�~4�\nJW�+��G�^��p6�|!�?�Sܞ��ܖ���\Z�s[o���ݵ�������ú���D�Y�T,�zk�zh��	�`o\\\r��xCPU�\\!���rC?m�Z����+�]��],֮�V˽�n2\'�f�T�b���Sx�D�ז�]p+@N.��ՔɊ�[�|a�i,쎍k��NqXNCV�ص#���n�;ؼ*��M\\�%�(nq�+�\0@|ᡷ�t��ͼn;�Yg!���hb)`�vI��fQ�m[�No����n�<I�=l$�a,H���K�A��#.�*�5	j�sP���:<�&W�f9�z�6KR�i�������^��x�k��j�&�´��t�&y�c����#�n�xl��F@8�@��#/I��p�����x�8��\r�w��q��`���a芫6X/�P��%>яT��=�ٙY;6�Oa���lլ��=T ��)w�a��US����p��R`�X�����\'�U��y�p\n!�҄����,�T�\r<\nxox���0(�+��}����WR.�)!�\Z�*���y��9����x�u���`�3�@��F@��E+؄���3U��o=>�0�``��x���K��lAn�݇�;�����W.����5����@��(�[��{���C�ܨ����G�L@~\0U[����ѩ69{��\\��c��M���\'��cDM7��z�*]�\0ڕ�o�����Y�]��NC\Z����͇}R��Z���y�Ѓ8g0\Z�]�7�}ں�J�U�g����BR��Yݓ�`��s6���/$ޗ³����ݾ��6d������(�gu��o�����_�C`hF���Qvx�^D@�������\\��_:Ho��PC�Ο�#��b,��T���sN�EH��}��4Á�\'B$��UD2��}{���p�}���:}[�\0','6.1.3-40302');

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

insert  into `detalleevento`(`id`,`nombre`,`descripcion`,`idEncargado`,`idEvento`,`idEspacio`,`fechaDesde`,`fechaHasta`,`fechaBaja`,`estado`,`dia`,`asistencia`) values (1,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-14 10:00:00','2019-10-14 12:00:00',NULL,'Nuevo','Lunes',1),(2,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-16 12:00:00','2019-10-16 14:00:00',NULL,'Nuevo','Miercoles',1),(3,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-21 10:00:00','2019-10-21 12:00:00',NULL,'Nuevo','Lunes',1),(4,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-23 12:00:00','2019-10-23 14:00:00',NULL,'Nuevo','Miercoles',1),(5,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-28 10:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(6,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-30 12:00:00','2019-10-30 14:00:00',NULL,'Nuevo','Miercoles',0),(7,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-11-04 10:00:00','2019-11-04 12:00:00',NULL,'Nuevo','Lunes',0),(8,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-11-06 12:00:00','2019-11-06 14:00:00',NULL,'Nuevo','Miercoles',0),(9,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-17 14:00:00','2019-10-17 16:00:00',NULL,'Nuevo','Jueves',1),(10,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-21 14:00:00','2019-10-21 16:00:00',NULL,'Nuevo','Lunes',1),(11,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-24 14:00:00','2019-10-24 16:00:00',NULL,'Nuevo','Jueves',0),(12,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-28 14:00:00','2019-10-28 16:00:00',NULL,'Nuevo','Lunes',0),(13,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-22 16:00:00','2019-10-22 18:00:00',NULL,'Nuevo','Martes',0),(14,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-25 16:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',0),(15,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-29 16:00:00','2019-10-29 18:00:00',NULL,'Nuevo','Martes',0),(16,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-01 16:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',0),(17,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-05 16:00:00','2019-11-05 18:00:00',NULL,'Nuevo','Martes',0),(18,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-08 16:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',0),(19,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-12 16:00:00','2019-11-12 18:00:00',NULL,'Nuevo','Martes',0),(20,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-15 16:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',0),(21,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-19 16:00:00','2019-11-19 18:00:00',NULL,'Nuevo','Martes',0),(22,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-22 16:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(23,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-26 16:00:00','2019-11-26 18:00:00',NULL,'Nuevo','Martes',0),(24,'Campaña Vacunación ','Campaña para vacunar a menores de edad',3,4,1,'2019-10-21 20:00:00','2019-10-21 22:00:00',NULL,'Nuevo','Lunes',0),(25,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-01 19:00:00','2019-11-01 20:00:00',NULL,'Nuevo','Viernes',0),(26,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-04 19:00:00','2019-11-04 21:00:00',NULL,'Nuevo','Lunes',0),(27,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-08 19:00:00','2019-11-08 20:00:00',NULL,'Nuevo','Viernes',0),(28,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-11 19:00:00','2019-11-11 21:00:00',NULL,'Nuevo','Lunes',0),(29,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-15 19:00:00','2019-11-15 20:00:00',NULL,'Nuevo','Viernes',0),(30,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-18 19:00:00','2019-11-18 21:00:00',NULL,'Nuevo','Lunes',0),(31,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-22 19:00:00','2019-11-22 20:00:00',NULL,'Nuevo','Viernes',0),(32,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-25 19:00:00','2019-11-25 21:00:00',NULL,'Nuevo','Lunes',0),(33,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-29 19:00:00','2019-11-29 20:00:00',NULL,'Nuevo','Viernes',0),(34,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-02 19:00:00','2019-12-02 21:00:00',NULL,'Nuevo','Lunes',0),(35,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-06 19:00:00','2019-12-06 20:00:00',NULL,'Nuevo','Viernes',0),(36,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(37,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-13 19:00:00','2019-12-13 20:00:00',NULL,'Nuevo','Viernes',0),(38,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(39,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-06 15:00:00','2019-11-06 17:00:00',NULL,'Nuevo','Miercoles',0),(40,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-12 14:00:00','2019-11-12 16:00:00',NULL,'Nuevo','Martes',0),(41,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-13 15:00:00','2019-11-13 17:00:00',NULL,'Nuevo','Miercoles',0),(42,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-19 14:00:00','2019-11-19 16:00:00',NULL,'Nuevo','Martes',0),(43,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-20 15:00:00','2019-11-20 17:00:00',NULL,'Nuevo','Miercoles',0),(44,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-26 14:00:00','2019-11-26 16:00:00',NULL,'Nuevo','Martes',0),(45,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-27 15:00:00','2019-11-27 17:00:00',NULL,'Nuevo','Miercoles',0),(46,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-03 14:00:00','2019-12-03 16:00:00',NULL,'Nuevo','Martes',0),(47,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-04 15:00:00','2019-12-04 17:00:00',NULL,'Nuevo','Miercoles',0),(48,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-10 14:00:00','2019-12-10 16:00:00',NULL,'Nuevo','Martes',0),(49,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-11 15:00:00','2019-12-11 17:00:00',NULL,'Nuevo','Miercoles',0),(50,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-17 14:00:00','2019-12-17 16:00:00',NULL,'Nuevo','Martes',0),(51,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-18 15:00:00','2019-12-18 17:00:00',NULL,'Nuevo','Miercoles',0),(52,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,7,3,'2019-10-28 09:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(53,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-04 14:00:00','2019-11-04 16:00:00',NULL,'Nuevo','Lunes',0),(54,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-06 16:00:00','2019-11-06 18:00:00',NULL,'Nuevo','Miercoles',0),(55,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-11 14:00:00','2019-11-11 16:00:00',NULL,'Nuevo','Lunes',0),(56,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-13 16:00:00','2019-11-13 18:00:00',NULL,'Nuevo','Miercoles',0),(57,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-18 14:00:00','2019-11-18 16:00:00',NULL,'Nuevo','Lunes',0),(58,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-20 16:00:00','2019-11-20 18:00:00',NULL,'Nuevo','Miercoles',0);

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

insert  into `domicilio`(`id`,`barrio`,`calle`,`piso`,`nro`,`codPostal`,`depto`) values (1,'Alta Cordoba','Juan del campillo','1','50',5000,'A'),(2,'Los Paraisos','bernis','akakka','3567',5008,'1111ssss'),(3,'Alta Cordoba','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- Córdoba, capital (domicilio de contacto)','1','8744',5018,'Cordoba'),(4,'Alta Cordoba','Agua Sacha','1','500',5000,'A'),(5,'Alta Cordoba','Agua Sacha','1','500',5000,'A');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `evento` */

insert  into `evento`(`id`,`nombre`,`descripcion`,`idTipoEvento`,`idEspacio`,`idEncargado`,`cupoMinimo`,`cupoMaximo`,`gratuito`,`monto`,`cantidadCuota`,`fechaDesde`,`fechaHasta`,`fechaDesdeInscripcion`,`fechaHastaInscripcion`,`estado`,`fechaCreacion`,`fechaBaja`) values (1,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',2,1,1,5,20,0,1200,3,'2019-10-11 00:00:00','2019-11-07 00:00:00','2019-10-06 00:00:00','2019-10-10 00:00:00','Progreso','2019-10-06 15:45:22',NULL),(2,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',2,1,1,5,20,0,1300,4,'2019-10-15 00:00:00','2019-10-30 00:00:00','2019-10-13 00:00:00','2019-10-18 00:00:00','Finalizado','2019-10-13 23:53:46',NULL),(3,'Curso Office Word','Se dictara un curso para aprender a usar el Word',1,1,3,5,20,0,1800,3,'2019-10-22 00:00:00','2019-11-28 00:00:00','2019-10-16 00:00:00','2019-10-23 00:00:00','Progreso','2019-10-16 23:48:49',NULL),(4,'Campaña Vacunación ','Campaña para vacunar a menores de edad',4,1,3,5,20,1,0,0,'2019-10-21 00:00:00','2019-10-21 00:00:00','2019-10-18 00:00:00','2019-10-20 00:00:00','Finalizado','2019-10-18 01:56:56',NULL),(5,'Baile de salsa','Aprender a bailar salsa.',6,2,1,5,15,0,1500,3,'2019-10-30 00:00:00','2019-12-18 00:00:00','2019-10-28 00:00:00','2019-11-05 00:00:00','Progreso','2019-10-27 16:26:33',NULL),(6,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',2,2,1,4,14,0,2000,2,'2019-11-06 00:00:00','2019-12-23 00:00:00','2019-10-27 00:00:00','2019-11-05 00:00:00','Nuevo','2019-10-27 16:35:47',NULL),(7,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,3,3,5,25,1,0,0,'2019-10-28 00:00:00','2019-10-28 00:00:00','2019-10-27 00:00:00','2019-10-28 00:00:00','Finalizado','2019-10-27 18:01:03',NULL),(8,'Taller de prueba','Es un taller de prueba',2,2,1,5,15,0,1500,3,'2019-10-31 00:00:00','2019-11-20 00:00:00','2019-10-28 00:00:00','2019-10-31 00:00:00','Nuevo','2019-10-28 19:32:47',NULL);

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

insert  into `socio`(`id`,`nombre`,`apellido`,`telefono`,`celular`,`email`,`sexo`,`estadoCivil`,`idTipoDoc`,`nroDocumento`,`idDomicilio`,`idContacto`,`fechaNacimiento`,`fechaCreacion`,`fechaBaja`,`estado`) values (1,'JOse','Quinteros','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972080',1,1,'1986-03-04 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(2,'Augusto','galan','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972081',1,1,NULL,'0001-01-01 00:00:00',NULL,'Activo'),(3,'Laura','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'30992080',1,1,NULL,'0001-01-01 00:00:00',NULL,'Activo'),(4,'Maria','Del Valle','3543604132',NULL,'mariadelvalle@gmail.com','Femenino','Soltero',1,'40000001',1,1,'2003-07-27 00:00:00','0001-01-01 00:00:00',NULL,'Activo'),(10,'Jorge','galan','3543604130',NULL,'juanjose@gmail.com',NULL,NULL,1,'40000002',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(11,'Soledad','Miguez','3543604130',NULL,'laura1Miguez@gmail.com',NULL,NULL,1,'40000003',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(12,'Angelica','Valles','3543604132',NULL,'mariadelvalle@gmail.com',NULL,NULL,1,'40000004',1,1,'2019-07-03 01:12:28','0001-01-01 00:00:00',NULL,'Activo'),(13,'Graciela María','Casartelli','03543403668','03543604130','gracielacasartelli946@hotmail.com','Femenino','Soltero',1,'30999888',3,2,'2019-07-03 01:12:28','2019-10-18 23:08:13',NULL,'Activo'),(14,'JAVIER','JIMENEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'30992080',5,4,'1946-03-04 00:00:00','2019-10-30 02:24:52',NULL,'DebeMatricula');

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

insert  into `tipoevento`(`id`,`nombre`,`descripcion`) values (1,'Curso','---'),(2,'Taller','---'),(3,'Conferencia','---'),(4,'Campaña social','---'),(5,'Festival','---'),(6,'Baile','---'),(7,'Recreacion','---'),(8,'Seminario','---');

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
