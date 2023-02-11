TYPE=TRIGGERS
triggers='CREATE DEFINER=`admin`@`%` TRIGGER `updateSales_updateHall` BEFORE UPDATE ON `halls` FOR EACH ROW if (NEW.`hall_config` <> OLD.`hall_config`) then\nDELETE FROM `sales` WHERE `sale_hallid`=OLD.`hall_id`;\nend if' 'CREATE DEFINER=`admin`@`%` TRIGGER `updateSeances_deleteHall` BEFORE DELETE ON `halls` FOR EACH ROW DELETE FROM `seances` WHERE `seance_hallid`=OLD.`hall_id`' 'CREATE DEFINER=`admin`@`%` TRIGGER `updateSales_deleteHall` AFTER DELETE ON `halls` FOR EACH ROW DELETE FROM `sales` WHERE `sale_hallid`=OLD.`hall_id`'
sql_modes=524288 524288 524288
definers='admin@%' 'admin@%' 'admin@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1675963139448179 1675963139831682 1675963139056676
