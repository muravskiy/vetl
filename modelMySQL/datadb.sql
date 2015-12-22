INSERT INTO `vetl`.`brigada` (`id`, `room_brigade`, `last_name_SHNS`) VALUES ('4', '4', 'РџРѕРєРѕС‚РёР»Рѕ'), ('5', '5', 'Р—Р°СЏС†');
INSERT INTO `vetl`.`hazardcategory` (`id`, `hazard_category`) VALUES (NULL, 'РќРµР±РµР·РїРµС‡РЅС–'), (NULL, 'РџС–РґРІРёС‰РµРЅРЅРѕС— РЅРµР±РµР·РїРµРєРё');
INSERT INTO `vetl`.`facility` (`id`, `facility`, `hazard_category_id`) VALUES (NULL, 'Р РµР»РµР№РЅРµ РїСЂРёРјС–С‰РµРЅРЅСЏ', '1'), (NULL, 'РњР°РЅРµРІСЂРѕРІР° Р’РёС€РєР°', '1');
INSERT INTO `vetl`.`certificate` (`id`, `issued`, `name_certificate`, `number_certificate`, `date_issue_certificate`, `valid_to_certificate`) VALUES (NULL, 'Р”РѕР·РІС–Р» Р”РµСЂР¶Р°РІРЅРѕС— СЃР»СѓР¶Р±Рё РіС–СЂРЅРёС‡РѕРіРѕ РЅР°РіР»СЏРґСѓ С‚Р° РїСЂРѕРјРёСЃР»РѕРІРѕС— Р±РµР·РїРµРєРё', 'РІРёРїСЂРѕР±СѓРІР°РЅРЅСЏ РµР»РµРєС‚СЂРёС‡РЅРѕРіРѕ СѓСЃС‚Р°С‚РєСѓРІР°РЅРЅСЏ РµР»РµРєС‚СЂРёС‡РЅРёС… РјРµСЂРµР¶', '1266.13.30', '2013-11-29', '2018-11-28'), (NULL, 'Р‘РћРњРЎ', 'РЎРІС–РґРѕС†С‚РІРѕ РїСЂРѕ Р°С‚РµСЃС‚Р°С†С–СЋ Р’Р•РўР›', 'Р‘РћРњРЎ-9/13-2012', '2012-11-22', '2015-11-21');
INSERT INTO `vetl`.`typelocality` (`id`, `type_locality`) VALUES (NULL, 'РЎС‚Р°РЅС†С–СЏ'), (NULL, 'РџРµСЂРµРіС–РЅ');
INSERT INTO `vetl`.`locality` (`id`, `locality`, `type_locality_id`) VALUES (NULL, 'РќС–Р¶РёРЅ - РќРѕСЃС–РІРєР°', '2'), (NULL, 'РќРѕСЃС–РІРєР°', '1'), (NULL, 'РќС–Р¶РёРЅ', '1');
INSERT INTO `vetl`.`typeobject` (`id`, `type_object`) VALUES (NULL, 'Р—Р°СЃС–Р± Р·Р°С…РёСЃС‚Сѓ'), (NULL, 'Р†РЅСЃС‚СЂСѓРјРµРЅС‚ Р· С–Р·РѕР»СЊРѕРІР°РЅРёРјРё СЂСѓС‡РєР°РјРё');
INSERT INTO `vetl`.`nameobject` (`id`, `name_object`) VALUES (NULL, 'Р‘РѕРєРѕСЂС–Р·Рё'), (NULL, 'Р’РёРєСЂСѓС‚РєР°');
INSERT INTO `vetl`.`object` (`id`, `type_object_id`, `tbl_name_object_id`, `tbl_brigada_id`, `inventory_number`, `tbl_locality_id`, `facility_id`, `inspection_date`, `inspection_interval`, `next_inspection`, `protocol_number`) VALUES (NULL, '2', '1', '4', NULL, '4', '4', '2015-12-20', '12', '2016-12-20', NULL);




