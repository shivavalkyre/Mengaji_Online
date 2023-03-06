/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724 (5.7.24)
 Source Host           : localhost:3306
 Source Schema         : mengaji_online

 Target Server Type    : MySQL
 Target Server Version : 50724 (5.7.24)
 File Encoding         : 65001

 Date: 06/03/2023 23:31:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_year_of_death` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (5, 'Mukhtasar Tabyin', 'Ibn Najah Andalusi', '496', 'QIRAAT :: QURAN :: TAJWID', 'ھـ - 2002 م :: مجمع الملك فھد 1423 - المدینة المنورة', '2023-03-03 11:28:48', '2023-03-03 11:28:48');
INSERT INTO `books` VALUES (6, 'Tafsir Quran', 'Ibn Muhammad Sam’ani', '489', 'ULUM :: QURAN :: SUNNI :: TAFSIR', 'یاسر بن إبراھیم وغنیم بن عباس بن غنیم  :: دار الوطن، الریاض - السعودیة', '2023-03-03 11:30:22', '2023-03-03 11:30:22');
INSERT INTO `books` VALUES (7, 'Nukat Fi Quran', 'Ibn Faddal Qayruwani', '479', 'ULUM :: QURAN', 'د. عبد الله عبد القادر الطویل :: دار الكتب العلمیة - بیروت', '2023-03-03 11:31:38', '2023-03-03 11:31:38');
INSERT INTO `books` VALUES (8, 'Dalail I’jaz', '\'Abd Qahir Jurjani', '471', 'BALAGHA :: \'ULUM :: FASAHA :: QURAN ::TAFSIR', 'د. عبد الحمید ھنداوي :: دار الكتب العلمیة - بیروت', '2023-03-03 11:32:55', '2023-03-03 11:32:55');
INSERT INTO `books` VALUES (9, 'Asbab Nuzul', 'Ibn Ahmad Wahidi Naysaburi', '468', 'ULUM :: QURAN :: SUNNI :: TAFSIR', 'عصام بن عبد المحسن الحمیدان :: دار الإصلاح - الدمام', '2023-03-03 11:34:18', '2023-03-03 11:34:18');
INSERT INTO `books` VALUES (10, 'Wajiz Fi Tafsir', 'Ibn Ahmad Wahidi Naysaburi', '468', 'ULUM :: QURAN :: SUNNI :: TAFSIR', 'صفوان عدنان داوودي :: دار القلم , الدار الشامیة - دمشق، بیروت', '2023-03-03 11:35:33', '2023-03-03 11:35:33');
INSERT INTO `books` VALUES (11, 'Kamil Fi Qiraat', 'Ibn Cali Maghribi', '465', 'ULUM :: QURAN', 'جمال بن السید بن رفاعي الشایب :: مؤسسة سما للتوزیع والنشر', '2023-03-03 11:36:52', '2023-03-03 11:36:52');
INSERT INTO `books` VALUES (12, 'Ahkam Quran Li Shafi’i', 'Bayhaqi :: al-Bayhaqī ::Abū-Bakr Aḥmad b.al-Ḥusayn b. ʿAlī b. Mūsáal-Bayhaqī, al-Ḫusrawǧirdī', '458', 'ULUM :: QURAN', ':: مكتبة الخانجي - القاھرة http://www.worldcat.org/oclc/55198919', '2023-03-05 14:02:00', '2023-03-05 14:02:00');
INSERT INTO `books` VALUES (13, 'Nasikh Wa Mansukh', 'Ibn Hazm :: Ibn Ḥazm :: Abū Muḥammad ʿAlī b. Aḥmad b.Saʿīd b. Ḥazm al-Andalusī,al-Qurṭubī, al-Ẓāhirī', '456', 'ULUM :: MANSUKH :: NASIKH :: QURAN :: SUNNI :: TAFSIR', 'د. عبد الغفار سلیمان البنداري :: دار الكتب العلمیة - بیروت، لبنان', '2023-03-05 14:04:11', '2023-03-05 14:04:11');
INSERT INTO `books` VALUES (14, '‘Unwan Fi Qiraat Sab’a', 'Ibn Khalaf Saraqusti', '455', 'ULUM :: QURAN :: TAFSIR', 'الدكتور زھیر زاھد - الدكتور خلیل) العطیة) (كلیة الآداب - جامعة البصرة) :: 1405ھـ :: عالم الكتب، بیروت', '2023-03-05 14:06:00', '2023-03-05 14:06:00');
INSERT INTO `books` VALUES (15, 'Fadail Quran', 'Ibn Ahmad Razi', '454', 'ULUM :: QURAN', 'الدكتور عامر حسن صبري :: دار البشائر الإسلامیة', '2023-03-05 14:08:45', '2023-03-05 14:08:45');
INSERT INTO `books` VALUES (16, 'Nukat Wa ‘Uyun', 'Abu Hasan Mawardi :: al-Māwardī :: Abū al-ḤasanʿAlī b. Muḥammad b. Ḥabībal-Baṣrī, al-Baġdādī', '450', 'ULUM :: QURAN :: TAFSIR', 'السید ابن عبد المقصود بن عبد الرحیم :: دار الكتب العلمیة - بیروت / لبنان ', '2023-03-05 14:11:08', '2023-03-05 14:11:08');
INSERT INTO `books` VALUES (17, 'Wajiz', 'Ibn Cali Ahwazi', '446', 'ULUM :: QURAN', '  درید حسن أحمد :: دار الغرب الإسلامى - بیروت', '2023-03-05 14:12:45', '2023-03-05 14:12:45');
INSERT INTO `books` VALUES (18, 'Ahruf Sab’a', 'Abu \'Amr Dani', '444', 'ULUM :: QIRAAT :: QURAN :: TAFSIR', 'د. ﻋﺑد اﻟﻣﮭﯾﻣن طﺣﺎن :: ﻣﻛﺗﺑﺔ اﻟﻣﻧﺎرة - ﻣﻛﺔ اﻟﻣﻛرﻣﺔ', '2023-03-05 14:20:50', '2023-03-05 14:20:50');
INSERT INTO `books` VALUES (19, 'Bayan Fi ‘Add Ayy Quran', 'Abu \'Amr Dani', '444', 'ULUM :: QIRAAT :: QURAN :: TAFSIR', 'ﻏﺎﻧم ﻗدوري اﻟﺣﻣد :: ﻣرﻛز اﻟﻣﺧطوطﺎت واﻟﺗراث - اﻟﻛوﯾت', '2023-03-05 14:29:33', '2023-03-05 14:29:33');
INSERT INTO `books` VALUES (20, 'Jami’ Bayan Fi Qiraat Sab’', 'Abu \'Amr Dani', '444', 'ULUM :: QURAN', 'ﺟﺎﻣﻌﺔ اﻟﺷﺎرﻗﺔ - اﻹﻣﺎرات', '2023-03-05 14:30:46', '2023-03-05 14:30:46');
INSERT INTO `books` VALUES (21, 'Muhkam Fi Naqt Masahif', 'Abu \'Amr Dani', '444', 'ULUM :: QURAN :: TAFSIR', 'د. ﻋزة ﺣﺳن :: دار اﻟﻔﻛر - دﻣﺷق', '2023-03-05 14:31:46', '2023-03-05 14:31:46');
INSERT INTO `books` VALUES (22, 'Muktafi Fi Waqf', 'Abu \'Amr Dani', '444', 'ULUM :: QURAN', 'ﻣﺣﻣد اﻟﺻﺎدق ﻗﻣﺣﺎوي :: ﻣﻛﺗﺑﺔ اﻟﻛﻠﯾﺎت اﻷزھرﯾﺔ، اﻟﻘﺎھرة', '2023-03-05 14:33:15', '2023-03-05 14:33:15');
INSERT INTO `books` VALUES (23, 'Naqt', 'Abu \'Amr Dani', '444', 'ULUM :: QURAN', 'ﻣﺣﻣد اﻟﺻﺎدق ﻗﻣﺣﺎوي :: ﻣﻛﺗﺑﺔ اﻟﻛﻠﯾﺎت اﻷزھرﯾﺔ، اﻟﻘﺎھرة', '2023-03-05 14:34:34', '2023-03-05 14:34:34');
INSERT INTO `books` VALUES (24, 'Taysir Fi Qiraat Sab’', 'Abu \'Amr Dani', '444', 'ULUM :: QIRAAT :: QURAN :: TAFSIR', 'وﺗو ﺗرﯾزل :: دار اﻟﻛﺗﺎب اﻟﻌرﺑﻲ - ﺑﯾروت', '2023-03-05 14:36:51', '2023-03-05 14:36:51');
INSERT INTO `books` VALUES (25, 'Fadail Surat Ikhlas', 'Ibn Muhammad Khallal', '439', 'AJZA :: \'ULUM :: FADAIL :: HADITH :: QURAN :: QURAN :: TAFSIR', 'ﻣﺣﻣد ﺑن رزق ﺑن طرھوﻧﻲ :: ﻣﻛﺗﺑﺔ ﻟﯾﻧﺔ - اﻟﻘﺎھرة - دﻣﻧﮭور', '2023-03-05 14:39:01', '2023-03-05 14:50:07');

SET FOREIGN_KEY_CHECKS = 1;
