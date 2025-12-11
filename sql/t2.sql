# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#251204  9:16:48 server id 1  end_log_pos 126 CRC32 0x1badcb85 	Start: binlog v 4, server v 8.0.44 created 251204  9:16:48 at startup
ROLLBACK/*!*/;
BINLOG '
8NIwaQ8BAAAAegAAAH4AAAAAAAQAOC4wLjQ0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAADw0jBpEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAYXLrRs=
'/*!*/;
# at 126
#251204  9:16:48 server id 1  end_log_pos 157 CRC32 0x81a4dc24 	Previous-GTIDs
# [empty]
# at 157
#251204  9:28:00 server id 1  end_log_pos 234 CRC32 0x8b3bbca2 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=no	original_committed_timestamp=1764808080085083	immediate_commit_timestamp=1764808080085083	transaction_length=211
# original_commit_timestamp=1764808080085083 (2025-12-04 09:28:00.085083 KST)
# immediate_commit_timestamp=1764808080085083 (2025-12-04 09:28:00.085083 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080085083*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 234
# at 368
#251204  9:28:00 server id 1  end_log_pos 447 CRC32 0xa050a120 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=no	original_committed_timestamp=1764808080120306	immediate_commit_timestamp=1764808080120306	transaction_length=477
# original_commit_timestamp=1764808080120306 (2025-12-04 09:28:00.120306 KST)
# immediate_commit_timestamp=1764808080120306 (2025-12-04 09:28:00.120306 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080120306*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 447
# at 845
#251204  9:28:00 server id 1  end_log_pos 922 CRC32 0x64e08255 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=no	original_committed_timestamp=1764808080127456	immediate_commit_timestamp=1764808080127456	transaction_length=212
# original_commit_timestamp=1764808080127456 (2025-12-04 09:28:00.127456 KST)
# immediate_commit_timestamp=1764808080127456 (2025-12-04 09:28:00.127456 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080127456*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 922
# at 1057
#251204  9:28:00 server id 1  end_log_pos 1136 CRC32 0x3aab35c8 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=yes	original_committed_timestamp=1764808080130195	immediate_commit_timestamp=1764808080130195	transaction_length=384
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764808080130195 (2025-12-04 09:28:00.130195 KST)
# immediate_commit_timestamp=1764808080130195 (2025-12-04 09:28:00.130195 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080130195*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1136
#251204  9:28:00 server id 1  end_log_pos 1213 CRC32 0xa4a0178c 	Query	thread_id=13	exec_time=0	error_code=0
SET TIMESTAMP=1764808080/*!*/;
SET @@session.pseudo_thread_id=13/*!*/;
SET @@session.foreign_key_checks=0, @@session.sql_auto_is_null=0, @@session.unique_checks=0, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=524288/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=224/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 1213
# at 1272
# at 1410
#251204  9:28:00 server id 1  end_log_pos 1441 CRC32 0x097d3aac 	Xid = 106
COMMIT/*!*/;
# at 1441
#251204  9:28:00 server id 1  end_log_pos 1518 CRC32 0xcc619a57 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=no	original_committed_timestamp=1764808080132887	immediate_commit_timestamp=1764808080132887	transaction_length=211
# original_commit_timestamp=1764808080132887 (2025-12-04 09:28:00.132887 KST)
# immediate_commit_timestamp=1764808080132887 (2025-12-04 09:28:00.132887 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080132887*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 1518
# at 1652
#251204  9:28:00 server id 1  end_log_pos 1729 CRC32 0x1d55df18 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=no	original_committed_timestamp=1764808080135946	immediate_commit_timestamp=1764808080135946	transaction_length=210
# original_commit_timestamp=1764808080135946 (2025-12-04 09:28:00.135946 KST)
# immediate_commit_timestamp=1764808080135946 (2025-12-04 09:28:00.135946 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080135946*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 1729
# at 1862
#251204  9:28:00 server id 1  end_log_pos 1941 CRC32 0x41d11b46 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=no	original_committed_timestamp=1764808080143545	immediate_commit_timestamp=1764808080143545	transaction_length=571
# original_commit_timestamp=1764808080143545 (2025-12-04 09:28:00.143545 KST)
# immediate_commit_timestamp=1764808080143545 (2025-12-04 09:28:00.143545 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080143545*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 1941
# at 2433
#251204  9:28:00 server id 1  end_log_pos 2510 CRC32 0xc49a4fe1 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=no	original_committed_timestamp=1764808080144823	immediate_commit_timestamp=1764808080144823	transaction_length=211
# original_commit_timestamp=1764808080144823 (2025-12-04 09:28:00.144823 KST)
# immediate_commit_timestamp=1764808080144823 (2025-12-04 09:28:00.144823 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080144823*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 2510
# at 2644
#251204  9:28:00 server id 1  end_log_pos 2723 CRC32 0x5c05874c 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=yes	original_committed_timestamp=1764808080147426	immediate_commit_timestamp=1764808080147426	transaction_length=5301
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764808080147426 (2025-12-04 09:28:00.147426 KST)
# immediate_commit_timestamp=1764808080147426 (2025-12-04 09:28:00.147426 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080147426*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2723
#251204  9:28:00 server id 1  end_log_pos 2800 CRC32 0x2f22bd01 	Query	thread_id=13	exec_time=0	error_code=0
SET TIMESTAMP=1764808080/*!*/;
BEGIN
/*!*/;
# at 2800
# at 2859
# at 7914
#251204  9:28:00 server id 1  end_log_pos 7945 CRC32 0x935a5045 	Xid = 116
COMMIT/*!*/;
# at 7945
#251204  9:28:00 server id 1  end_log_pos 8022 CRC32 0x061cc4a9 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=no	original_committed_timestamp=1764808080147852	immediate_commit_timestamp=1764808080147852	transaction_length=210
# original_commit_timestamp=1764808080147852 (2025-12-04 09:28:00.147852 KST)
# immediate_commit_timestamp=1764808080147852 (2025-12-04 09:28:00.147852 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808080147852*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 8022
# at 8155
#251204  9:34:49 server id 1  end_log_pos 8232 CRC32 0x06f902ff 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=no	original_committed_timestamp=1764808489791634	immediate_commit_timestamp=1764808489791634	transaction_length=197
# original_commit_timestamp=1764808489791634 (2025-12-04 09:34:49.791634 KST)
# immediate_commit_timestamp=1764808489791634 (2025-12-04 09:34:49.791634 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808489791634*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 8232
# at 8352
#251204  9:36:10 server id 1  end_log_pos 8431 CRC32 0x80ac4773 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=no	original_committed_timestamp=1764808570658169	immediate_commit_timestamp=1764808570658169	transaction_length=326
# original_commit_timestamp=1764808570658169 (2025-12-04 09:36:10.658169 KST)
# immediate_commit_timestamp=1764808570658169 (2025-12-04 09:36:10.658169 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808570658169*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 8431
# at 8678
#251204  9:37:52 server id 1  end_log_pos 8755 CRC32 0x5c557655 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=no	original_committed_timestamp=1764808672995422	immediate_commit_timestamp=1764808672995422	transaction_length=235
# original_commit_timestamp=1764808672995422 (2025-12-04 09:37:52.995422 KST)
# immediate_commit_timestamp=1764808672995422 (2025-12-04 09:37:52.995422 KST)
/*!80001 SET @@session.original_commit_timestamp=1764808672995422*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 8755
# at 8913
#251204 10:32:06 server id 1  end_log_pos 8992 CRC32 0x2c6f96f4 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=no	original_committed_timestamp=1764811926620448	immediate_commit_timestamp=1764811926620448	transaction_length=713
# original_commit_timestamp=1764811926620448 (2025-12-04 10:32:06.620448 KST)
# immediate_commit_timestamp=1764811926620448 (2025-12-04 10:32:06.620448 KST)
/*!80001 SET @@session.original_commit_timestamp=1764811926620448*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8992
#251204 10:32:06 server id 1  end_log_pos 9071 CRC32 0xa4f88aa8 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764811926/*!*/;
SET @@session.foreign_key_checks=1, @@session.unique_checks=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
BEGIN
/*!*/;
# at 9071
# at 9392
# at 9457
# at 9595
#251204 10:32:06 server id 1  end_log_pos 9626 CRC32 0xe352da0c 	Xid = 212
COMMIT/*!*/;
# at 9626
#251204 10:35:24 server id 1  end_log_pos 9703 CRC32 0x92f7bf9a 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=no	original_committed_timestamp=1764812124793585	immediate_commit_timestamp=1764812124793585	transaction_length=216
# original_commit_timestamp=1764812124793585 (2025-12-04 10:35:24.793585 KST)
# immediate_commit_timestamp=1764812124793585 (2025-12-04 10:35:24.793585 KST)
/*!80001 SET @@session.original_commit_timestamp=1764812124793585*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 9703
# at 9842
#251204 10:36:28 server id 1  end_log_pos 9921 CRC32 0x0a928fb8 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=no	original_committed_timestamp=1764812188674757	immediate_commit_timestamp=1764812188674757	transaction_length=5622
# original_commit_timestamp=1764812188674757 (2025-12-04 10:36:28.674757 KST)
# immediate_commit_timestamp=1764812188674757 (2025-12-04 10:36:28.674757 KST)
/*!80001 SET @@session.original_commit_timestamp=1764812188674757*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9921
#251204 10:36:28 server id 1  end_log_pos 9998 CRC32 0xc885ae2f 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764812188/*!*/;
BEGIN
/*!*/;
# at 9998
# at 10313
# at 10378
# at 15433
#251204 10:36:28 server id 1  end_log_pos 15464 CRC32 0x57f0c04c 	Xid = 264
COMMIT/*!*/;
# at 15464
#251204 10:37:13 server id 1  end_log_pos 15541 CRC32 0x9e61a005 	Anonymous_GTID	last_committed=16	sequence_number=17	rbr_only=no	original_committed_timestamp=1764812233482561	immediate_commit_timestamp=1764812233482561	transaction_length=176
# original_commit_timestamp=1764812233482561 (2025-12-04 10:37:13.482561 KST)
# immediate_commit_timestamp=1764812233482561 (2025-12-04 10:37:13.482561 KST)
/*!80001 SET @@session.original_commit_timestamp=1764812233482561*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 15541
# at 15640
#251204 10:40:13 server id 1  end_log_pos 15719 CRC32 0xb6bd42e2 	Anonymous_GTID	last_committed=17	sequence_number=18	rbr_only=yes	original_committed_timestamp=1764812413196927	immediate_commit_timestamp=1764812413196927	transaction_length=5301
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764812413196927 (2025-12-04 10:40:13.196927 KST)
# immediate_commit_timestamp=1764812413196927 (2025-12-04 10:40:13.196927 KST)
/*!80001 SET @@session.original_commit_timestamp=1764812413196927*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 15719
#251204 10:40:13 server id 1  end_log_pos 15796 CRC32 0xc4317deb 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764812413/*!*/;
BEGIN
/*!*/;
# at 15796
# at 15855
# at 20910
#251204 10:40:13 server id 1  end_log_pos 20941 CRC32 0x4c76d6ac 	Xid = 268
COMMIT/*!*/;
# at 20941
#251204 10:40:57 server id 1  end_log_pos 21018 CRC32 0xfe7ea0ef 	Anonymous_GTID	last_committed=18	sequence_number=19	rbr_only=no	original_committed_timestamp=1764812457032522	immediate_commit_timestamp=1764812457032522	transaction_length=215
# original_commit_timestamp=1764812457032522 (2025-12-04 10:40:57.032522 KST)
# immediate_commit_timestamp=1764812457032522 (2025-12-04 10:40:57.032522 KST)
/*!80001 SET @@session.original_commit_timestamp=1764812457032522*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 21018
# at 21156
#251204 11:16:07 server id 1  end_log_pos 21235 CRC32 0xebbf2ee6 	Anonymous_GTID	last_committed=19	sequence_number=20	rbr_only=no	original_committed_timestamp=1764814567111334	immediate_commit_timestamp=1764814567111334	transaction_length=330
# original_commit_timestamp=1764814567111334 (2025-12-04 11:16:07.111334 KST)
# immediate_commit_timestamp=1764814567111334 (2025-12-04 11:16:07.111334 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814567111334*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 21235
# at 21486
#251204 11:16:57 server id 1  end_log_pos 21565 CRC32 0x971484a0 	Anonymous_GTID	last_committed=20	sequence_number=21	rbr_only=yes	original_committed_timestamp=1764814617295140	immediate_commit_timestamp=1764814617295140	transaction_length=288
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764814617295140 (2025-12-04 11:16:57.295140 KST)
# immediate_commit_timestamp=1764814617295140 (2025-12-04 11:16:57.295140 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814617295140*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 21565
#251204 11:16:57 server id 1  end_log_pos 21642 CRC32 0xe6d97181 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764814617/*!*/;
BEGIN
/*!*/;
# at 21642
# at 21700
# at 21743
#251204 11:16:57 server id 1  end_log_pos 21774 CRC32 0x24f26806 	Xid = 351
COMMIT/*!*/;
# at 21774
#251204 11:18:16 server id 1  end_log_pos 21853 CRC32 0x09b3e774 	Anonymous_GTID	last_committed=21	sequence_number=22	rbr_only=yes	original_committed_timestamp=1764814696975832	immediate_commit_timestamp=1764814696975832	transaction_length=294
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764814696975832 (2025-12-04 11:18:16.975832 KST)
# immediate_commit_timestamp=1764814696975832 (2025-12-04 11:18:16.975832 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814696975832*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 21853
#251204 11:18:16 server id 1  end_log_pos 21930 CRC32 0xe1d94116 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764814696/*!*/;
BEGIN
/*!*/;
# at 21930
# at 21988
# at 22037
#251204 11:18:16 server id 1  end_log_pos 22068 CRC32 0x5e2c9603 	Xid = 353
COMMIT/*!*/;
# at 22068
#251204 11:18:57 server id 1  end_log_pos 22147 CRC32 0x0ee4eca6 	Anonymous_GTID	last_committed=22	sequence_number=23	rbr_only=yes	original_committed_timestamp=1764814737946125	immediate_commit_timestamp=1764814737946125	transaction_length=288
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764814737946125 (2025-12-04 11:18:57.946125 KST)
# immediate_commit_timestamp=1764814737946125 (2025-12-04 11:18:57.946125 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814737946125*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22147
#251204 11:18:57 server id 1  end_log_pos 22224 CRC32 0x69b1ca68 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764814737/*!*/;
BEGIN
/*!*/;
# at 22224
# at 22282
# at 22325
#251204 11:18:57 server id 1  end_log_pos 22356 CRC32 0xe6641e34 	Xid = 364
COMMIT/*!*/;
# at 22356
#251204 11:20:20 server id 1  end_log_pos 22435 CRC32 0xedb50acd 	Anonymous_GTID	last_committed=23	sequence_number=24	rbr_only=yes	original_committed_timestamp=1764814820912950	immediate_commit_timestamp=1764814820912950	transaction_length=288
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764814820912950 (2025-12-04 11:20:20.912950 KST)
# immediate_commit_timestamp=1764814820912950 (2025-12-04 11:20:20.912950 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814820912950*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 22435
#251204 11:20:20 server id 1  end_log_pos 22512 CRC32 0x07628645 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764814820/*!*/;
BEGIN
/*!*/;
# at 22512
# at 22570
# at 22613
#251204 11:20:20 server id 1  end_log_pos 22644 CRC32 0x77d8aa78 	Xid = 377
COMMIT/*!*/;
# at 22644
#251204 11:21:58 server id 1  end_log_pos 22723 CRC32 0x1fa88ece 	Anonymous_GTID	last_committed=24	sequence_number=25	rbr_only=no	original_committed_timestamp=1764814918715537	immediate_commit_timestamp=1764814918715537	transaction_length=258
# original_commit_timestamp=1764814918715537 (2025-12-04 11:21:58.715537 KST)
# immediate_commit_timestamp=1764814918715537 (2025-12-04 11:21:58.715537 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814918715537*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 22723
# at 22902
#251204 11:22:06 server id 1  end_log_pos 22981 CRC32 0x74e1b29b 	Anonymous_GTID	last_committed=25	sequence_number=26	rbr_only=no	original_committed_timestamp=1764814926604298	immediate_commit_timestamp=1764814926604298	transaction_length=263
# original_commit_timestamp=1764814926604298 (2025-12-04 11:22:06.604298 KST)
# immediate_commit_timestamp=1764814926604298 (2025-12-04 11:22:06.604298 KST)
/*!80001 SET @@session.original_commit_timestamp=1764814926604298*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 22981
# at 23165
#251204 11:23:28 server id 1  end_log_pos 23244 CRC32 0x07310011 	Anonymous_GTID	last_committed=26	sequence_number=27	rbr_only=yes	original_committed_timestamp=1764815008182157	immediate_commit_timestamp=1764815008182157	transaction_length=287
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1764815008182157 (2025-12-04 11:23:28.182157 KST)
# immediate_commit_timestamp=1764815008182157 (2025-12-04 11:23:28.182157 KST)
/*!80001 SET @@session.original_commit_timestamp=1764815008182157*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 23244
#251204 11:23:28 server id 1  end_log_pos 23321 CRC32 0x0218bfa2 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1764815008/*!*/;
BEGIN
/*!*/;
# at 23321
# at 23379
# at 23421
#251204 11:23:28 server id 1  end_log_pos 23452 CRC32 0x9baa5981 	Xid = 414
COMMIT/*!*/;
# at 23452
#251204 13:48:23 server id 1  end_log_pos 23531 CRC32 0x00eec870 	Anonymous_GTID	last_committed=27	sequence_number=28	rbr_only=no	original_committed_timestamp=1764823703746289	immediate_commit_timestamp=1764823703746289	transaction_length=727
# original_commit_timestamp=1764823703746289 (2025-12-04 13:48:23.746289 KST)
# immediate_commit_timestamp=1764823703746289 (2025-12-04 13:48:23.746289 KST)
/*!80001 SET @@session.original_commit_timestamp=1764823703746289*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 23531
# at 24179
#251204 13:48:23 server id 1  end_log_pos 24256 CRC32 0x6e73e5c8 	Anonymous_GTID	last_committed=28	sequence_number=29	rbr_only=no	original_committed_timestamp=1764823703758828	immediate_commit_timestamp=1764823703758828	transaction_length=216
# original_commit_timestamp=1764823703758828 (2025-12-04 13:48:23.758828 KST)
# immediate_commit_timestamp=1764823703758828 (2025-12-04 13:48:23.758828 KST)
/*!80001 SET @@session.original_commit_timestamp=1764823703758828*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 24256
# at 24395
#251204 15:17:36 server id 1  end_log_pos 24472 CRC32 0x782cf03f 	Anonymous_GTID	last_committed=29	sequence_number=30	rbr_only=no	original_committed_timestamp=1764829056957133	immediate_commit_timestamp=1764829056957133	transaction_length=242
# original_commit_timestamp=1764829056957133 (2025-12-04 15:17:36.957133 KST)
# immediate_commit_timestamp=1764829056957133 (2025-12-04 15:17:36.957133 KST)
/*!80001 SET @@session.original_commit_timestamp=1764829056957133*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 24472
# at 24637
#251204 15:20:20 server id 1  end_log_pos 24716 CRC32 0x220eefec 	Anonymous_GTID	last_committed=30	sequence_number=31	rbr_only=no	original_committed_timestamp=1764829220383878	immediate_commit_timestamp=1764829220383878	transaction_length=302
# original_commit_timestamp=1764829220383878 (2025-12-04 15:20:20.383878 KST)
# immediate_commit_timestamp=1764829220383878 (2025-12-04 15:20:20.383878 KST)
/*!80001 SET @@session.original_commit_timestamp=1764829220383878*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 24716
# at 24939
#251204 15:20:22 server id 1  end_log_pos 25018 CRC32 0xb4106e78 	Anonymous_GTID	last_committed=31	sequence_number=32	rbr_only=no	original_committed_timestamp=1764829222049146	immediate_commit_timestamp=1764829222049146	transaction_length=302
# original_commit_timestamp=1764829222049146 (2025-12-04 15:20:22.049146 KST)
# immediate_commit_timestamp=1764829222049146 (2025-12-04 15:20:22.049146 KST)
/*!80001 SET @@session.original_commit_timestamp=1764829222049146*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 25018
# at 25241
#251204 15:26:45 server id 1  end_log_pos 25320 CRC32 0x3ca59a73 	Anonymous_GTID	last_committed=32	sequence_number=33	rbr_only=no	original_committed_timestamp=1764829605713213	immediate_commit_timestamp=1764829605713213	transaction_length=453
# original_commit_timestamp=1764829605713213 (2025-12-04 15:26:45.713213 KST)
# immediate_commit_timestamp=1764829605713213 (2025-12-04 15:26:45.713213 KST)
/*!80001 SET @@session.original_commit_timestamp=1764829605713213*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 25320
# at 25694
#251204 15:33:38 server id 1  end_log_pos 25771 CRC32 0x5e51188d 	Anonymous_GTID	last_committed=33	sequence_number=34	rbr_only=no	original_committed_timestamp=1764830018158121	immediate_commit_timestamp=1764830018158121	transaction_length=222
# original_commit_timestamp=1764830018158121 (2025-12-04 15:33:38.158121 KST)
# immediate_commit_timestamp=1764830018158121 (2025-12-04 15:33:38.158121 KST)
/*!80001 SET @@session.original_commit_timestamp=1764830018158121*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 25771
# at 25916
#251204 15:33:39 server id 1  end_log_pos 25993 CRC32 0x7bebec67 	Anonymous_GTID	last_committed=34	sequence_number=35	rbr_only=no	original_committed_timestamp=1764830019277529	immediate_commit_timestamp=1764830019277529	transaction_length=223
# original_commit_timestamp=1764830019277529 (2025-12-04 15:33:39.277529 KST)
# immediate_commit_timestamp=1764830019277529 (2025-12-04 15:33:39.277529 KST)
/*!80001 SET @@session.original_commit_timestamp=1764830019277529*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 25993
# at 26139
#251204 15:33:41 server id 1  end_log_pos 26216 CRC32 0xe9063e30 	Anonymous_GTID	last_committed=35	sequence_number=36	rbr_only=no	original_committed_timestamp=1764830021224541	immediate_commit_timestamp=1764830021224541	transaction_length=196
# original_commit_timestamp=1764830021224541 (2025-12-04 15:33:41.224541 KST)
# immediate_commit_timestamp=1764830021224541 (2025-12-04 15:33:41.224541 KST)
/*!80001 SET @@session.original_commit_timestamp=1764830021224541*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
# at 26216
# at 26335
#251204 15:34:02 server id 1  end_log_pos 26412 CRC32 0xe1ef2ea4 	Anonymous_GTID	last_committed=36	sequence_number=37	rbr_only=no	original_committed_timestamp=1764830042359636	immediate_commit_timestamp=1764830042359636	transaction_length=196
# original_commit_timestamp=1764830042359636 (2025-12-04 15:34:02.359636 KST)
# immediate_commit_timestamp=1764830042359636 (2025-12-04 15:34:02.359636 KST)
/*!80001 SET @@session.original_commit_timestamp=1764830042359636*//*!*/;
/*!80014 SET @@session.original_server_version=80044*//*!*/;
/*!80014 SET @@session.immediate_server_version=80044*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
COMMIT /* added by mysqlbinlog *//*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
