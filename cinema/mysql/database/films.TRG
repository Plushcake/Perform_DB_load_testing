TYPE=TRIGGERS
triggers='CREATE DEFINER=`admin`@`%` TRIGGER `update_seances_film` BEFORE DELETE ON `films` FOR EACH ROW DELETE FROM `seances` WHERE `seance_filmid`=OLD.`film_id`'
sql_modes=524288
definers='admin@%'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=1675963138460671
