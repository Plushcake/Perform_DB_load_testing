TYPE=TRIGGERS
triggers='CREATE DEFINER=`admin`@`%` TRIGGER `update_sales_seance` BEFORE DELETE ON `seances` FOR EACH ROW DELETE FROM `sales` WHERE `sale_seanceid`=OLD.`seance_id`'
sql_modes=524288
definers='admin@%'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=1675963140849438
