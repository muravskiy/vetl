INSERT INTO `vetl`.`tbl_brigada` (`id`, `room_brigade`, `last_name_SHNS`) VALUES ('4', '4', 'Покотило'), ('5', '5', 'Заяц');
INSERT INTO `vetl`.`tbl_hazard_category` (`id`, `hazard_category`) VALUES (NULL, 'Небезпечні'), (NULL, 'Підвищенної небезпеки');
INSERT INTO `vetl`.`tbl_facility` (`id`, `facility`, `hazard_category_id`) VALUES (NULL, 'Релейне приміщення', '1'), (NULL, 'Маневрова Вишка', '1');
INSERT INTO `vetl`.`tbl_certificate` (`id`, `issued`, `name_certificate`, `number_certificate`, `date_issue_certificate`, `valid_to_certificate`) VALUES (NULL, 'Дозвіл Державної служби гірничого нагляду та промислової безпеки', 'випробування електричного устаткування електричних мереж', '1266.13.30', '2013-11-29', '2018-11-28'), (NULL, 'БОМС', 'Свідоцтво про атестацію ВЕТЛ', 'БОМС-9/13-2012', '2012-11-22', '2015-11-21');
INSERT INTO `vetl`.`tbl_type_locality` (`id`, `type_locality`) VALUES (NULL, 'Станція'), (NULL, 'Перегін');
INSERT INTO `vetl`.`tbl_locality` (`id`, `locality`, `type_locality_id`) VALUES (NULL, 'Ніжин - Носівка', '2'), (NULL, 'Носівка', '1'), (NULL, 'Ніжин', '1');
INSERT INTO `vetl`.`tbl_type_object` (`id`, `type_object`) VALUES (NULL, 'Засіб захисту'), (NULL, 'Інструмент з ізольованими ручками');
INSERT INTO `vetl`.`tbl_name_object` (`id`, `name_object`) VALUES (NULL, 'Бокорізи'), (NULL, 'Викрутка');
INSERT INTO `vetl`.`tbl_object` (`id`, `type_object_id`, `tbl_name_object_id`, `tbl_brigada_id`, `inventory_number`, `tbl_locality_id`, `facility_id`, `inspection_date`, `inspection_interval`, `next_inspection`, `protocol_number`) VALUES (NULL, '2', '1', '4', NULL, '4', '4', '2015-12-20', '12', '2016-12-20', NULL);




