-- Adminer 4.8.1 PostgreSQL 15.8 (Debian 15.8-1.pgdg120+1) dump

DROP TABLE IF EXISTS "channels";
DROP SEQUENCE IF EXISTS channels_channel_id_seq;
CREATE SEQUENCE channels_channel_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."channels" (
    "channel_id" numeric(20,0) DEFAULT nextval('channels_channel_id_seq') NOT NULL,
    "name" character varying(100) NOT NULL,
    "user_id" numeric(20,0) NOT NULL,
    "created_at" timestamp,
    "updated_at" timestamp,
    CONSTRAINT "channels_channel_id_pkey" PRIMARY KEY ("channel_id")
) WITH (oids = false);

CREATE INDEX "channels_user_id" ON "public"."channels" USING btree ("user_id");

INSERT INTO "channels" ("channel_id", "name", "user_id", "created_at", "updated_at") VALUES
(3,	'Maintenance OME',	176,	'2023-12-08 16:01:21',	'2023-12-08 16:01:21'),
(4,	'OME',	176,	'2023-12-08 16:36:15',	'2023-12-08 16:36:15'),
(5,	'Test HT',	176,	'2024-08-05 12:27:02',	'2024-08-05 12:27:02'),
(6,	'GABUT tt',	175,	'2024-08-05 15:36:22',	'2024-08-13 17:01:27'),
(7,	'OGM',	176,	'2024-08-24 05:03:15',	'2024-08-24 05:03:15');

DROP TABLE IF EXISTS "chats";
DROP SEQUENCE IF EXISTS chats_chat_id_seq;
CREATE SEQUENCE chats_chat_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."chats" (
    "chat_id" numeric(20,0) DEFAULT nextval('chats_chat_id_seq') NOT NULL,
    "channel_id" numeric(20,0) NOT NULL,
    "user_id" numeric(20,0) NOT NULL,
    "contact_id" numeric(20,0) NOT NULL,
    "message" text,
    "voice" character varying(200),
    "latitude" character varying(200),
    "longitude" character varying(200),
    "created_at" timestamp,
    "updated_at" timestamp,
    "file" character varying(200),
    CONSTRAINT "chats_chat_id_pkey" PRIMARY KEY ("chat_id")
) WITH (oids = false);

CREATE INDEX "chats_channel_id" ON "public"."chats" USING btree ("channel_id");

CREATE INDEX "chats_contact_id" ON "public"."chats" USING btree ("contact_id");

CREATE INDEX "chats_user_id" ON "public"."chats" USING btree ("user_id");

INSERT INTO "chats" ("chat_id", "channel_id", "user_id", "contact_id", "message", "voice", "latitude", "longitude", "created_at", "updated_at", "file") VALUES
(1,	3,	176,	32,	NULL,	NULL,	'-6.2712105',	NULL,	'2024-08-25 08:51:02',	'2024-08-25 08:51:02',	NULL),
(2,	6,	175,	39,	NULL,	'/storage/voice/66caefeaf41d8_2024-08-25record.wav',	NULL,	NULL,	'2024-08-25 22:48:43',	'2024-08-25 22:48:43',	NULL),
(3,	6,	175,	39,	'Cek',	NULL,	NULL,	NULL,	'2024-08-25 22:49:00',	'2024-08-25 22:49:00',	NULL),
(4,	5,	176,	93,	NULL,	'/storage/voice/66cbf261aaba2_2024-08-26record.wav',	NULL,	NULL,	'2024-08-26 17:11:29',	'2024-08-26 17:11:29',	NULL),
(5,	5,	176,	93,	'Halo',	NULL,	NULL,	NULL,	'2024-08-26 17:32:03',	'2024-08-26 17:32:03',	NULL),
(6,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-26 17:32:29',	'2024-08-26 17:32:29',	NULL),
(7,	5,	176,	93,	NULL,	'/storage/voice/66cc05e665015_2024-08-26record.wav',	NULL,	NULL,	'2024-08-26 18:34:46',	'2024-08-26 18:34:46',	NULL),
(8,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-27 00:15:36',	'2024-08-27 00:15:36',	NULL),
(9,	6,	175,	38,	'yoo',	NULL,	NULL,	NULL,	'2024-08-27 00:35:07',	'2024-08-27 00:35:07',	NULL),
(10,	6,	175,	92,	NULL,	'/storage/voice/66cc7e18af81f_2024-08-26record.wav',	NULL,	NULL,	'2024-08-27 03:07:36',	'2024-08-27 03:07:36',	NULL),
(11,	6,	175,	92,	NULL,	NULL,	'-6.17061',	NULL,	'2024-08-27 03:07:44',	'2024-08-27 03:07:44',	NULL),
(12,	6,	175,	38,	NULL,	'/storage/voice/66cc80bbc4261_2024-08-26record.wav',	NULL,	NULL,	'2024-08-27 03:18:51',	'2024-08-27 03:18:51',	NULL),
(13,	6,	175,	38,	NULL,	'/storage/voice/66cc9ce723c81_2024-08-26record.wav',	NULL,	NULL,	'2024-08-27 05:19:03',	'2024-08-27 05:19:03',	NULL),
(14,	6,	175,	38,	NULL,	'/storage/voice/66cc9e27ab982_2024-08-26record.wav',	NULL,	NULL,	'2024-08-27 05:24:23',	'2024-08-27 05:24:23',	NULL),
(15,	6,	175,	92,	'mann',	NULL,	NULL,	NULL,	'2024-08-27 05:57:40',	'2024-08-27 05:57:40',	NULL),
(16,	6,	175,	92,	NULL,	NULL,	'-6.1706091',	NULL,	'2024-08-27 05:58:29',	'2024-08-27 05:58:29',	NULL),
(17,	6,	175,	92,	NULL,	'/storage/voice/66cca632c484e_2024-08-26record.wav',	NULL,	NULL,	'2024-08-27 05:58:42',	'2024-08-27 05:58:42',	NULL),
(18,	6,	175,	38,	NULL,	'/storage/voice/66cca63f2b27f_2024-08-26record.wav',	NULL,	NULL,	'2024-08-27 05:58:55',	'2024-08-27 05:58:55',	NULL),
(19,	6,	175,	38,	NULL,	NULL,	'-6.1668243',	NULL,	'2024-08-27 15:30:37',	'2024-08-27 15:30:37',	NULL),
(20,	5,	176,	93,	NULL,	'/storage/voice/66cd36703d0dc_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:14:08',	'2024-08-27 16:14:08',	NULL),
(21,	5,	176,	93,	NULL,	'/storage/voice/66cd371060af9_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:16:48',	'2024-08-27 16:16:48',	NULL),
(22,	5,	176,	93,	NULL,	'/storage/voice/66cd371e0f712_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:17:02',	'2024-08-27 16:17:02',	NULL),
(23,	5,	176,	93,	NULL,	'/storage/voice/66cd3720da2a1_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:17:04',	'2024-08-27 16:17:04',	NULL),
(24,	5,	176,	93,	NULL,	'/storage/voice/66cd374b0b89d_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:17:47',	'2024-08-27 16:17:47',	NULL),
(25,	5,	176,	93,	NULL,	'/storage/voice/66cd374fb3401_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:17:51',	'2024-08-27 16:17:51',	NULL),
(26,	5,	176,	93,	NULL,	'/storage/voice/66cd375d15f2b_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:18:05',	'2024-08-27 16:18:05',	NULL),
(27,	5,	176,	93,	NULL,	'/storage/voice/66cd3f506aa2c_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:52:00',	'2024-08-27 16:52:00',	NULL),
(28,	6,	175,	39,	NULL,	'/storage/voice/66cd3f855775e_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:52:53',	'2024-08-27 16:52:53',	NULL),
(29,	5,	176,	32,	NULL,	'/storage/voice/66cd3fca467a9_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:54:02',	'2024-08-27 16:54:02',	NULL),
(30,	5,	176,	32,	NULL,	'/storage/voice/66cd3fd596456_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:54:13',	'2024-08-27 16:54:13',	NULL),
(31,	5,	176,	32,	NULL,	'/storage/voice/66cd3fe426123_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:54:28',	'2024-08-27 16:54:28',	NULL),
(32,	5,	176,	93,	NULL,	'/storage/voice/66cd3ff82cd18_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:54:48',	'2024-08-27 16:54:48',	NULL),
(33,	5,	176,	93,	NULL,	'/storage/voice/66cd402f197ea_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:55:43',	'2024-08-27 16:55:43',	NULL),
(34,	5,	176,	93,	NULL,	'/storage/voice/66cd404290aa7_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:56:02',	'2024-08-27 16:56:02',	NULL),
(35,	5,	176,	93,	NULL,	'/storage/voice/66cd409d91efc_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:57:33',	'2024-08-27 16:57:33',	NULL),
(36,	5,	176,	32,	NULL,	'/storage/voice/66cd40adb31d9_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:57:49',	'2024-08-27 16:57:49',	NULL),
(37,	5,	176,	32,	NULL,	'/storage/voice/66cd411d694fc_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:59:41',	'2024-08-27 16:59:41',	NULL),
(38,	5,	176,	93,	NULL,	'/storage/voice/66cd41204fbb8_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:59:44',	'2024-08-27 16:59:44',	NULL),
(39,	5,	176,	93,	NULL,	'/storage/voice/66cd412d103ea_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 16:59:57',	'2024-08-27 16:59:57',	NULL),
(40,	5,	176,	32,	NULL,	'/storage/voice/66cd4131ccac0_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:00:01',	'2024-08-27 17:00:01',	NULL),
(41,	5,	176,	93,	NULL,	'/storage/voice/66cd413c7061e_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:00:12',	'2024-08-27 17:00:12',	NULL),
(42,	5,	176,	32,	NULL,	'/storage/voice/66cd4147a8577_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:00:23',	'2024-08-27 17:00:23',	NULL),
(43,	5,	176,	32,	NULL,	'/storage/voice/66cd415fa7e92_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:00:47',	'2024-08-27 17:00:47',	NULL),
(44,	5,	176,	93,	NULL,	'/storage/voice/66cd416f7bf91_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:01:03',	'2024-08-27 17:01:03',	NULL),
(45,	5,	176,	93,	NULL,	'/storage/voice/66cd418676727_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:01:26',	'2024-08-27 17:01:26',	NULL),
(46,	5,	176,	93,	NULL,	'/storage/voice/66cd419ed45e6_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:01:50',	'2024-08-27 17:01:50',	NULL),
(47,	5,	176,	93,	NULL,	'/storage/voice/66cd41ad95a32_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:02:05',	'2024-08-27 17:02:05',	NULL),
(48,	5,	176,	93,	NULL,	'/storage/voice/66cd41c184100_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:02:25',	'2024-08-27 17:02:25',	NULL),
(49,	5,	176,	32,	NULL,	'/storage/voice/66cd41d24be6f_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:02:42',	'2024-08-27 17:02:42',	NULL),
(50,	5,	176,	32,	NULL,	'/storage/voice/66cd41ec28789_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:03:08',	'2024-08-27 17:03:08',	NULL),
(51,	5,	176,	32,	NULL,	'/storage/voice/66cd42292f574_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 17:04:09',	'2024-08-27 17:04:09',	NULL),
(52,	5,	176,	32,	NULL,	'/storage/voice/66cd530d006a2_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:16:13',	'2024-08-27 18:16:13',	NULL),
(53,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-27 18:30:07',	'2024-08-27 18:30:07',	NULL),
(54,	5,	176,	93,	NULL,	'/storage/voice/66cd5681887bf_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:30:57',	'2024-08-27 18:30:57',	NULL),
(55,	5,	176,	93,	NULL,	'/storage/voice/66cd56a96fd4d_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:31:37',	'2024-08-27 18:31:37',	NULL),
(56,	5,	176,	93,	NULL,	'/storage/voice/66cd56b9c637d_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:31:53',	'2024-08-27 18:31:53',	NULL),
(57,	5,	176,	93,	NULL,	'/storage/voice/66cd56cfbe277_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:32:15',	'2024-08-27 18:32:15',	NULL),
(58,	5,	176,	93,	NULL,	'/storage/voice/66cd56dd55a85_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:32:29',	'2024-08-27 18:32:29',	NULL),
(59,	5,	176,	93,	NULL,	'/storage/voice/66cd56eb5662b_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:32:43',	'2024-08-27 18:32:43',	NULL),
(60,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-27 18:32:55',	'2024-08-27 18:32:55',	NULL),
(61,	5,	176,	93,	NULL,	'/storage/voice/66cd5705e9a7f_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:33:09',	'2024-08-27 18:33:09',	NULL),
(62,	5,	176,	93,	'Haflo',	NULL,	NULL,	NULL,	'2024-08-27 18:33:43',	'2024-08-27 18:33:43',	NULL),
(63,	5,	176,	93,	NULL,	'/storage/voice/66cd57387221c_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:34:00',	'2024-08-27 18:34:00',	NULL),
(64,	5,	176,	93,	NULL,	'/storage/voice/66cd577dd063f_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:35:09',	'2024-08-27 18:35:09',	NULL),
(65,	5,	176,	93,	NULL,	'/storage/voice/66cd58f474a71_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:41:24',	'2024-08-27 18:41:24',	NULL),
(66,	5,	176,	93,	NULL,	'/storage/voice/66cd591ba0d34_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:42:03',	'2024-08-27 18:42:03',	NULL),
(67,	5,	176,	93,	'Test',	NULL,	NULL,	NULL,	'2024-08-27 18:42:45',	'2024-08-27 18:42:45',	NULL),
(68,	5,	176,	93,	'Hallo',	NULL,	NULL,	NULL,	'2024-08-27 18:43:13',	'2024-08-27 18:43:13',	NULL),
(69,	5,	176,	93,	'Hallo',	NULL,	NULL,	NULL,	'2024-08-27 18:43:27',	'2024-08-27 18:43:27',	NULL),
(70,	5,	176,	93,	'Hallo',	NULL,	NULL,	NULL,	'2024-08-27 18:43:54',	'2024-08-27 18:43:54',	NULL),
(71,	5,	176,	93,	NULL,	'/storage/voice/66cd59d5cd90e_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:45:09',	'2024-08-27 18:45:09',	NULL),
(72,	5,	176,	93,	NULL,	'/storage/voice/66cd59e93319e_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:45:29',	'2024-08-27 18:45:29',	NULL),
(73,	5,	176,	93,	NULL,	'/storage/voice/66cd5a0103c7c_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 18:45:53',	'2024-08-27 18:45:53',	NULL),
(74,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-27 18:48:33',	'2024-08-27 18:48:33',	NULL),
(75,	5,	176,	93,	NULL,	'/storage/voice/66cd60e50a83d_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 19:15:17',	'2024-08-27 19:15:17',	NULL),
(76,	5,	176,	93,	NULL,	'/storage/voice/66cd60f638361_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 19:15:34',	'2024-08-27 19:15:34',	NULL),
(77,	5,	176,	93,	NULL,	'/storage/voice/66cd610507f33_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 19:15:49',	'2024-08-27 19:15:49',	NULL),
(78,	5,	176,	93,	NULL,	'/storage/voice/66cd6129b5e2a_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 19:16:25',	'2024-08-27 19:16:25',	NULL),
(79,	5,	176,	93,	NULL,	'/storage/voice/66cd61575b609_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 19:17:11',	'2024-08-27 19:17:11',	NULL),
(80,	5,	176,	93,	NULL,	'/storage/voice/66cd62380b6ac_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 19:20:56',	'2024-08-27 19:20:56',	NULL),
(81,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-27 20:01:29',	'2024-08-27 20:01:29',	NULL),
(82,	6,	175,	38,	NULL,	NULL,	'37.4219983',	NULL,	'2024-08-27 20:03:06',	'2024-08-27 20:03:06',	NULL),
(83,	5,	176,	32,	NULL,	'/storage/voice/66cd6fd37ca1a_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 20:18:59',	'2024-08-27 20:18:59',	NULL),
(84,	5,	176,	32,	NULL,	'/storage/voice/66cd6feb6148f_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 20:19:23',	'2024-08-27 20:19:23',	NULL),
(85,	6,	175,	39,	NULL,	NULL,	'-6.2603823',	NULL,	'2024-08-27 21:03:48',	'2024-08-27 21:03:48',	NULL),
(86,	6,	175,	39,	NULL,	NULL,	'-6.2603823',	NULL,	'2024-08-27 21:03:55',	'2024-08-27 21:03:55',	NULL),
(87,	6,	175,	39,	NULL,	NULL,	'-6.1800448',	'106.7220992',	'2024-08-27 21:19:14',	'2024-08-27 21:19:14',	NULL),
(88,	5,	176,	32,	NULL,	'/storage/voice/66cd8671920cd_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 21:55:29',	'2024-08-27 21:55:29',	NULL),
(89,	6,	175,	38,	NULL,	NULL,	'37.4219983',	'-122.084',	'2024-08-27 22:30:20',	'2024-08-27 22:30:20',	NULL),
(90,	6,	175,	38,	NULL,	NULL,	'37.4219983',	'-122.084',	'2024-08-27 22:58:58',	'2024-08-27 22:58:58',	NULL),
(91,	5,	176,	93,	NULL,	'/storage/voice/66cda15208a36_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 23:50:10',	'2024-08-27 23:50:10',	NULL),
(92,	5,	176,	93,	NULL,	'/storage/voice/66cda177e53ed_2024-08-27record.wav',	NULL,	NULL,	'2024-08-27 23:50:47',	'2024-08-27 23:50:47',	NULL),
(93,	6,	175,	39,	NULL,	NULL,	'-6.2605407',	'106.9171614',	'2024-08-28 01:55:21',	'2024-08-28 01:55:21',	NULL),
(94,	5,	176,	93,	NULL,	'/storage/voice/66cddc123e7e8_2024-08-27record.wav',	NULL,	NULL,	'2024-08-28 04:00:50',	'2024-08-28 04:00:50',	NULL),
(95,	6,	175,	92,	NULL,	NULL,	'-6.1706068',	NULL,	'2024-08-28 04:37:17',	'2024-08-28 04:37:17',	NULL),
(96,	6,	175,	92,	NULL,	'/storage/voice/66cde4a437c3f_2024-08-27record.wav',	NULL,	NULL,	'2024-08-28 04:37:24',	'2024-08-28 04:37:24',	NULL),
(97,	6,	175,	92,	'Bang',	NULL,	NULL,	NULL,	'2024-08-28 05:00:10',	'2024-08-28 05:00:10',	NULL),
(98,	6,	175,	38,	NULL,	'/storage/voice/66ce0c8a589ae_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 07:27:38',	'2024-08-28 07:27:38',	NULL),
(99,	6,	175,	38,	NULL,	'/storage/voice/66ce0c9b0fb57_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 07:27:55',	'2024-08-28 07:27:55',	NULL),
(100,	6,	175,	38,	NULL,	'/storage/voice/66ce13dbdd36f_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 07:58:51',	'2024-08-28 07:58:51',	NULL),
(101,	6,	175,	92,	NULL,	'/storage/voice/66ce936c37ebf_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 17:03:08',	'2024-08-28 17:03:08',	NULL),
(102,	6,	175,	92,	NULL,	'/storage/voice/66ce93878c6c7_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 17:03:35',	'2024-08-28 17:03:35',	NULL),
(103,	6,	175,	92,	NULL,	'/storage/voice/66ce93a42cfd8_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 17:04:04',	'2024-08-28 17:04:04',	NULL),
(104,	6,	175,	92,	NULL,	'/storage/voice/66ce93a6e1674_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 17:04:06',	'2024-08-28 17:04:06',	NULL),
(105,	5,	176,	32,	NULL,	'/storage/voice/66ced8293be12_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 21:56:25',	'2024-08-28 21:56:25',	NULL),
(106,	5,	176,	32,	NULL,	'/storage/voice/66ced8d0d7d66_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 21:59:12',	'2024-08-28 21:59:12',	NULL),
(107,	5,	176,	32,	NULL,	'/storage/voice/66ced8da2e2f1_2024-08-28record.wav',	NULL,	NULL,	'2024-08-28 21:59:22',	'2024-08-28 21:59:22',	NULL),
(108,	5,	176,	32,	NULL,	'/storage/voice/66d00f07b6354_2024-08-29record.wav',	NULL,	NULL,	'2024-08-29 20:02:47',	'2024-08-29 20:02:47',	NULL),
(109,	5,	176,	32,	NULL,	'/storage/voice/66d13a9856ffb_2024-08-30record.wav',	NULL,	NULL,	'2024-08-30 17:20:56',	'2024-08-30 17:20:56',	NULL),
(110,	6,	175,	38,	NULL,	'/storage/voice/66d1835aa63fe_2024-08-30record.wav',	NULL,	NULL,	'2024-08-30 22:31:22',	'2024-08-30 22:31:22',	NULL),
(111,	6,	175,	38,	NULL,	NULL,	'-6.1668246',	'106.7998167',	'2024-08-30 22:31:30',	'2024-08-30 22:31:30',	NULL),
(112,	6,	175,	38,	'Oyy',	NULL,	NULL,	NULL,	'2024-08-30 22:31:47',	'2024-08-30 22:31:47',	NULL),
(113,	5,	176,	32,	NULL,	'/storage/voice/66d19141c5a22_2024-08-30record.wav',	NULL,	NULL,	'2024-08-30 23:30:41',	'2024-08-30 23:30:41',	NULL),
(114,	7,	176,	99,	NULL,	'/storage/voice/66d4f83bdbfc3_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:26:51',	'2024-09-02 13:26:51',	NULL),
(115,	7,	176,	97,	NULL,	'/storage/voice/66d4f848c2cb0_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:27:04',	'2024-09-02 13:27:04',	NULL),
(116,	7,	176,	97,	NULL,	'/storage/voice/66d4f8592c52b_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:27:21',	'2024-09-02 13:27:21',	NULL),
(117,	7,	176,	99,	NULL,	'/storage/voice/66d4f8683c96e_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:27:36',	'2024-09-02 13:27:36',	NULL),
(118,	7,	176,	98,	NULL,	'/storage/voice/66d4f8764f063_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:27:50',	'2024-09-02 13:27:50',	NULL),
(119,	7,	176,	97,	NULL,	'/storage/voice/66d4f882a0f2c_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:28:02',	'2024-09-02 13:28:02',	NULL),
(120,	7,	176,	98,	NULL,	'/storage/voice/66d4f88d09230_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:28:13',	'2024-09-02 13:28:13',	NULL),
(121,	7,	176,	97,	NULL,	'/storage/voice/66d4f8b94cecb_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:28:57',	'2024-09-02 13:28:57',	NULL),
(122,	7,	176,	98,	NULL,	'/storage/voice/66d4f8c843463_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:29:12',	'2024-09-02 13:29:12',	NULL),
(123,	7,	176,	99,	NULL,	'/storage/voice/66d4f8d740beb_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:29:27',	'2024-09-02 13:29:27',	NULL),
(124,	7,	176,	99,	NULL,	'/storage/voice/66d4f8e326124_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:29:39',	'2024-09-02 13:29:39',	NULL),
(125,	7,	176,	99,	NULL,	'/storage/voice/66d4f8ef596d3_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:29:51',	'2024-09-02 13:29:51',	NULL),
(126,	7,	176,	97,	NULL,	'/storage/voice/66d4fc1e7f789_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:43:26',	'2024-09-02 13:43:26',	NULL),
(127,	7,	176,	98,	NULL,	'/storage/voice/66d4fc2867e42_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 13:43:36',	'2024-09-02 13:43:36',	NULL),
(128,	6,	175,	38,	'Gogoboy',	NULL,	NULL,	NULL,	'2024-09-02 16:27:01',	'2024-09-02 16:27:01',	NULL),
(129,	3,	176,	68,	NULL,	'/storage/voice/66d5263cbc99b_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 16:43:08',	'2024-09-02 16:43:08',	NULL),
(130,	5,	176,	68,	NULL,	'/storage/voice/66d5264a0442d_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 16:43:22',	'2024-09-02 16:43:22',	NULL),
(131,	5,	176,	68,	NULL,	NULL,	'-7.6809749',	'109.1367579',	'2024-09-02 16:43:51',	'2024-09-02 16:43:51',	NULL),
(132,	7,	176,	98,	NULL,	'/storage/voice/66d5271e7f761_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 16:46:54',	'2024-09-02 16:46:54',	NULL),
(133,	7,	176,	99,	NULL,	'/storage/voice/66d5272bdabc1_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 16:47:07',	'2024-09-02 16:47:07',	NULL),
(134,	7,	176,	98,	NULL,	'/storage/voice/66d52736d12c4_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 16:47:18',	'2024-09-02 16:47:18',	NULL),
(135,	5,	176,	68,	NULL,	'/storage/voice/66d5287175003_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 16:52:33',	'2024-09-02 16:52:33',	NULL),
(136,	5,	176,	68,	'Pppp',	NULL,	NULL,	NULL,	'2024-09-02 16:52:53',	'2024-09-02 16:52:53',	NULL),
(137,	7,	176,	98,	NULL,	'/storage/voice/66d55f7581162_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:47:17',	'2024-09-02 20:47:17',	NULL),
(138,	7,	176,	98,	NULL,	'/storage/voice/66d55f83d23e3_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:47:31',	'2024-09-02 20:47:31',	NULL),
(139,	7,	176,	98,	NULL,	'/storage/voice/66d55fec8b9bf_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:49:16',	'2024-09-02 20:49:16',	NULL),
(140,	7,	176,	98,	NULL,	'/storage/voice/66d5601d824db_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:50:05',	'2024-09-02 20:50:05',	NULL),
(141,	7,	176,	98,	'~',	NULL,	NULL,	NULL,	'2024-09-02 20:50:12',	'2024-09-02 20:50:12',	NULL),
(142,	7,	176,	98,	'R',	NULL,	NULL,	NULL,	'2024-09-02 20:50:37',	'2024-09-02 20:50:37',	NULL),
(143,	7,	176,	98,	NULL,	'/storage/voice/66d5604eb4774_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:50:54',	'2024-09-02 20:50:54',	NULL),
(144,	7,	176,	98,	NULL,	'/storage/voice/66d561794242c_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:55:53',	'2024-09-02 20:55:53',	NULL),
(145,	7,	176,	98,	NULL,	'/storage/voice/66d56182874a1_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:56:02',	'2024-09-02 20:56:02',	NULL),
(146,	7,	176,	98,	NULL,	'/storage/voice/66d5618c827c4_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:56:12',	'2024-09-02 20:56:12',	NULL),
(147,	7,	176,	99,	NULL,	'/storage/voice/66d5619bd8846_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:56:27',	'2024-09-02 20:56:27',	NULL),
(148,	7,	176,	98,	NULL,	'/storage/voice/66d561ab27839_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:56:43',	'2024-09-02 20:56:43',	NULL),
(149,	7,	176,	99,	NULL,	'/storage/voice/66d561c0a30d3_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:57:04',	'2024-09-02 20:57:04',	NULL),
(150,	7,	176,	98,	NULL,	'/storage/voice/66d561d531426_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:57:25',	'2024-09-02 20:57:25',	NULL),
(151,	7,	176,	99,	NULL,	'/storage/voice/66d561e914791_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:57:45',	'2024-09-02 20:57:45',	NULL),
(152,	7,	176,	99,	NULL,	'/storage/voice/66d5620f90a75_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:58:23',	'2024-09-02 20:58:23',	NULL),
(153,	7,	176,	98,	NULL,	'/storage/voice/66d56218a2846_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:58:32',	'2024-09-02 20:58:32',	NULL),
(154,	7,	176,	98,	NULL,	'/storage/voice/66d56220bcaf0_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 20:58:40',	'2024-09-02 20:58:40',	NULL),
(155,	7,	176,	98,	NULL,	'/storage/voice/66d56273b9c38_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:00:03',	'2024-09-02 21:00:03',	NULL),
(156,	7,	176,	99,	NULL,	'/storage/voice/66d56281a2be0_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:00:17',	'2024-09-02 21:00:17',	NULL),
(157,	7,	176,	99,	NULL,	'/storage/voice/66d56296dae33_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:00:38',	'2024-09-02 21:00:38',	NULL),
(158,	7,	176,	98,	NULL,	'/storage/voice/66d562a8b1d13_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:00:56',	'2024-09-02 21:00:56',	NULL),
(159,	7,	176,	99,	NULL,	'/storage/voice/66d562d7a1db1_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:01:43',	'2024-09-02 21:01:43',	NULL),
(160,	7,	176,	99,	NULL,	'/storage/voice/66d562e512b47_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:01:57',	'2024-09-02 21:01:57',	NULL),
(161,	7,	176,	99,	NULL,	'/storage/voice/66d562f55eb0d_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:02:13',	'2024-09-02 21:02:13',	NULL),
(162,	7,	176,	93,	NULL,	'/storage/voice/66d56531ef588_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:11:45',	'2024-09-02 21:11:45',	NULL),
(163,	7,	176,	93,	NULL,	'/storage/voice/66d566ae7f562_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:18:06',	'2024-09-02 21:18:06',	NULL),
(164,	4,	176,	32,	NULL,	'/storage/voice/66d568e06de00_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:27:28',	'2024-09-02 21:27:28',	NULL),
(165,	5,	176,	76,	NULL,	'/storage/voice/66d56a4952093_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:33:29',	'2024-09-02 21:33:29',	NULL),
(166,	5,	176,	76,	NULL,	'/storage/voice/66d56a85979f7_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:34:29',	'2024-09-02 21:34:29',	NULL),
(167,	5,	176,	76,	'Kurang keras suaranya to',	NULL,	NULL,	NULL,	'2024-09-02 21:35:29',	'2024-09-02 21:35:29',	NULL),
(168,	7,	176,	32,	'P',	NULL,	NULL,	NULL,	'2024-09-02 21:48:16',	'2024-09-02 21:48:16',	NULL),
(169,	5,	176,	45,	NULL,	'/storage/voice/66d56fac29711_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:56:28',	'2024-09-02 21:56:28',	NULL),
(170,	5,	176,	45,	NULL,	'/storage/voice/66d57027682e0_2024-09-02record.wav',	NULL,	NULL,	'2024-09-02 21:58:31',	'2024-09-02 21:58:31',	NULL),
(171,	5,	176,	53,	'Test',	NULL,	NULL,	NULL,	'2024-09-02 23:02:13',	'2024-09-02 23:02:13',	NULL);

DROP TABLE IF EXISTS "contacts";
DROP SEQUENCE IF EXISTS contacts_id_seq;
CREATE SEQUENCE contacts_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."contacts" (
    "id" numeric(20,0) DEFAULT nextval('contacts_id_seq') NOT NULL,
    "name" character varying(100) NOT NULL,
    "username" character varying(100) NOT NULL,
    "password" character varying(100) NOT NULL,
    "fcm_token" character varying(255),
    "email" character varying(100),
    "email_verified_at" timestamp,
    "phone" character varying(20),
    "user_id" numeric(20,0) NOT NULL,
    "image" character varying(200),
    "latitude" character varying(200),
    "longitude" character varying(200),
    "token" character varying(100),
    "created_at" timestamp,
    "updated_at" timestamp,
    "token_expires_at" timestamp,
    "remember_token" character varying(100),
    CONSTRAINT "contacts_id_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "contacts_token" UNIQUE ("token")
) WITH (oids = false);

CREATE INDEX "contacts_user_id" ON "public"."contacts" USING btree ("user_id");

INSERT INTO "contacts" ("id", "name", "username", "password", "fcm_token", "email", "email_verified_at", "phone", "user_id", "image", "latitude", "longitude", "token", "created_at", "updated_at", "token_expires_at", "remember_token") VALUES
(31,	'ASEX',	'asex_176',	'$2y$12$5tjvWZE09v8BbjKlzXWX/eEh7PNtHbTOv6oNxcBIWQBbW.yE7CQPm',	NULL,	'asex@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-06 19:24:13',	'2024-08-16 14:05:46',	NULL,	NULL),
(32,	'OME',	'ome_176',	'$2y$12$pfX9sSMD1SMtTC3jynmi3.XXE1Xmqdgn9jA1PSw3Wwo6Gs6tttE0y',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'ome@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-06 19:25:16',	'2024-08-18 21:16:33',	NULL,	NULL),
(34,	'F',	'f_175',	'$2y$12$MC0ILmIt45VVlDjAdcSDqeijsdpmQA767YrqkVJ35Muy6A1r.aBO2',	NULL,	'f@gmail.com',	NULL,	NULL,	175,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-06 19:27:59',	'2024-08-16 16:22:12',	NULL,	NULL),
(38,	'MEE',	'mee_175',	'$2y$12$O5uMR5GgJEDOczlFVaGV7OVwH5Stm5mL.rt33yzeyUuFNTVwqz8Uu',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'asex@gmail.com',	NULL,	NULL,	175,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-06 19:38:40',	'2024-08-30 22:31:30',	NULL,	NULL),
(39,	'Fathul',	'fathul_175',	'$2y$12$CG9dbBdwNGJ7vKz92.XYNeCrWsDqOKZDhY1hpyJBzb2g156G1eWCK',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'fathul@gmail.com',	NULL,	NULL,	175,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-06 19:48:40',	'2024-08-24 07:25:04',	NULL,	NULL),
(40,	'Pak Barja',	'barja_176',	'$2y$12$.GHtJ2fnWTA6A5o46tNX5u2O8YqWS9oIeZ09cwpCgBGC8wfRbPBIm',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'pakbarja@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-06 21:28:02',	'2024-08-06 21:37:48',	NULL,	NULL),
(41,	'Pak Lis',	'paklis_176',	'$2y$12$mv6kO6PSZXMbhyV22BxJE.mMo5hjvFd1Gwzwr7ja7smr4oLPAlTOG',	NULL,	'lis@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-06 21:35:45',	'2024-08-06 21:35:45',	NULL,	NULL),
(42,	'Muhamad ikbal sidik',	'muhamadikbal_176',	'$2y$12$pIDuWV1PersewpjfuG.An.iJ3hXbmQvfMH.6gYhkrta2IHbCvQfFe',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'mrnat10807@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:09:53',	'2024-08-17 02:47:45',	NULL,	NULL),
(43,	'Suaibatul Islamia',	'suaibatulislamia_176',	'$2y$12$0pL6GMmxb0HKSwTy0PG76OAhc7qcFbOT6yVVHg/cw87Cp49r3DLc2',	NULL,	'suaibatul098765@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:11:29',	'2024-08-16 14:11:29',	NULL,	NULL),
(44,	'MUH NAUFAL HAMZAH',	'muhnaufal_176',	'$2y$12$Ve0KgDPF8/4PahuczOLu6exS0i2VbdKVbrHWDVL0XPxN25Q1vUmii',	NULL,	'muhnaufalhamzah@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:12:04',	'2024-08-16 14:12:04',	NULL,	NULL),
(45,	'Akhmad Sutalman',	'akhmadsutalman_176',	'$2y$12$G4SVNhG6UWUy6CkTJGUKjOUmeGwr/tqIq22TX22lldcPvJLbLxQ.u',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'akhmadstlmn@gmail.com',	NULL,	NULL,	176,	NULL,	'-5.152',	'119.437',	NULL,	'2024-08-16 14:12:43',	'2024-08-19 13:56:22',	NULL,	NULL),
(46,	'Muhammad Ibnu Rihadi	',	'muhammadibnu_176',	'$2y$12$EhoIURA/tvigayvCg97t.ewM2V4Hg6.iib1md..XoAbVU03dzFhFW',	NULL,	'muhammadibnurihadi25@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:13:15',	'2024-08-16 14:13:15',	NULL,	NULL),
(47,	'Bayu Adi Nugroho',	'bayuadi_176',	'$2y$12$pZ/BSfQ2lucFpmZgK2tRvOcftAy/DIgMXR1Pw90fyQ4hG0CjrtbEe',	NULL,	'free48581@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:13:49',	'2024-08-16 14:13:49',	NULL,	NULL),
(48,	'Febrian Andi Pratama',	'febrianandi_176',	'$2y$12$keW/tjAzXx3RG.tVQ6Hrz.Zpj3yMW.XEl3tQyvae0xOZ.1ehAA4kG',	NULL,	'maspianmasandi@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:15:00',	'2024-08-16 14:15:00',	NULL,	NULL),
(49,	'Muhamad Robby Bahrul Ulum',	'muhamadrobby_176',	'$2y$12$zVZCCGypcVIw.5YO3ZkaxeYKy2TEnm/zxEALazJjiPC/G/925llRO',	NULL,	'blackrose.bhs@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:15:39',	'2024-08-16 14:15:39',	NULL,	NULL),
(50,	'Edy kusuma',	'edykusuma_176',	'$2y$12$mDnIMc2aITPyGfiS9IxXZePQMDx5E9zvzasG4KbUCTlGYdI6PLijW',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'kusumaedi945@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:16:20',	'2024-08-17 00:13:56',	NULL,	NULL),
(51,	'Supriyono',	'supriyono_176',	'$2y$12$8Oj0pIv1JxpOat7DvO5Kfe6ir7EF3b8Xbk5VQrBf1Clj0QQtpsz92',	NULL,	'sudar31sih@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:16:51',	'2024-08-16 14:16:51',	NULL,	NULL),
(52,	'Suparno',	'suparno_176',	'$2y$12$O6qanPhEyLEayNb3h9TfUutl7RPR7jZlnNGkXxTF6pexJnvuRzjnm',	NULL,	'zsoeparno@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:17:14',	'2024-08-16 14:17:14',	NULL,	NULL),
(53,	'Hardono',	'hardono_176',	'$2y$12$bxWSNOXbgWnoOKbvkSbMFONHVzYRmMuPe9DoiRX8Zs9jo8tHH2Bwu',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'xperia.xzjos@gmail.com',	NULL,	NULL,	176,	NULL,	'-7.7049',	'110.6019',	NULL,	'2024-08-16 14:17:44',	'2024-09-02 23:02:13',	NULL,	NULL),
(54,	'Bayhaqqi Effendy',	'bayhaqqieffendy_176',	'$2y$12$YOWO4/nWKm2DozazYIFqG..rODrxHy9G252oI0VYLDALkIX/cPgY.',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'bayhaqqieffendy@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:18:17',	'2024-08-17 00:11:49',	NULL,	NULL),
(55,	'Andreansyah saputra',	'andreansyahsaputra_176',	'$2y$12$Rom9TxI9m8ZmezoPCp70duAVq4lqB5MbM04lNyq06xw3rMTb0gXhO',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'andreansyahsaputra5@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:19:00',	'2024-08-16 16:42:45',	NULL,	NULL),
(56,	'Idham Chalid siregar',	'idhamchalid_176',	'$2y$12$JB7YVw0U6DG7k8NyWGeZj.UMSaFCL1pAYEQtsP46WB50lZlJmX/1q',	NULL,	'chalid277@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:19:40',	'2024-08-16 14:19:40',	NULL,	NULL),
(57,	'Yoga pratama',	'yogapratama_176',	'$2y$12$SkfDTWX1rzYY4aDOp/Le1.uvG5WbHUc0HudxO2Q9/ApVRK6F6JVMe',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'prtmayga143@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:20:07',	'2024-08-17 03:45:50',	NULL,	NULL),
(58,	'eko candra',	'ekocandra_176',	'$2y$12$6aSTAkOaejUUnGQHuvA0ce88O1i7GSHV2HoVVpDSPrw0nq2jykLIO',	NULL,	'candrawika5@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:21:10',	'2024-08-16 14:21:10',	NULL,	NULL),
(59,	'Riko tri wahyuda',	'rikotri_176',	'$2y$12$oO.MKzalzAzv0hR1IJHAEeZMOQdE1ocQbjxDBPdAApcAHxPMgvj26',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'bendolndol914@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:21:38',	'2024-08-16 16:43:50',	NULL,	NULL),
(60,	'Listya asriyanta',	'listyaasriyanta_176',	'$2y$12$7antA1GF1wHOFvqaQVe/lObdBEmHy0Wfdg0FZLsOJE7D7VwSeQqZS',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'asriyantalistya@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-16 14:22:27',	'2024-08-19 18:16:49',	NULL,	NULL),
(61,	'Essa A''la Izzal Afif',	'essaa''la_176',	'$2y$12$NxotTHCRT4EZhrA7.RGaxO.34cUtkU6TcUAlUCnFzNPvn6ppiUPT6',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'ijallafif@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:22:56',	'2024-08-16 23:48:35',	NULL,	NULL),
(62,	'Don barja',	'donbarja_176',	'$2y$12$zGl15qVOYM34e07KqbUuFuJN/gufCn85jP5HqGASjYEA4.4qRV6t6',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'barja80@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-16 14:23:36',	'2024-08-20 03:15:50',	NULL,	NULL),
(63,	'Miftahul rizky',	'miftahulrizky_176',	'$2y$12$s6J.F7RGpPv4AxHUThR7i.5hu7VLfYgeLiR3GOiOsBqCnONJEya5a',	NULL,	'rizkyacilbegeg@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:24:01',	'2024-08-16 14:24:01',	NULL,	NULL),
(64,	'Ronaldo',	'ronaldo_176',	'$2y$12$dvEcsFh6zUiaLOqnwAQbWuzrlh8oVND3dAXnYP362vouPHMguNKOu',	NULL,	'juniorronal60@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:24:35',	'2024-08-16 14:24:35',	NULL,	NULL),
(65,	'RAHMADI NADEAK',	'rahmadinadeak_176',	'$2y$12$2YqLvZxF/CsSAK2CvF4MgO02zgWOlVPCKabXwLZhe7.XmFSUOXpl2',	NULL,	'rahmadinadeakrahmadi@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:25:03',	'2024-08-16 14:25:03',	NULL,	NULL),
(66,	'Rini',	'rini_176',	'$2y$12$yaBG3NBE/mTbRvIDXIZICuKjfxU4ZvfDAyh3C6rGvw5pO.43a9B52',	NULL,	'shifawijaya04@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:25:31',	'2024-08-16 14:25:31',	NULL,	NULL),
(67,	'Rika Rizkia Putri',	'rikarizkia_176',	'$2y$12$etKXLHb0U3BxI7.FRRJ0Ru0FnyRTZxXhXeH7N7/p.b2pRIeYgI38.',	NULL,	'rikarizkia454@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:26:02',	'2024-08-16 14:26:02',	NULL,	NULL),
(68,	'Dzaki Arga Radiva',	'dzakiarga_176',	'$2y$12$K.6Os/Pr3D87RmQofo9PweXNTAApC5oFEbw2qVpSgbyfq1cAjaCL6',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'jakylull07@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.9932',	'110.4215',	NULL,	'2024-08-16 14:27:04',	'2024-09-02 16:52:54',	NULL,	NULL),
(69,	'Desta AL-AFYAN',	'destaal-afyan_176',	'$2y$12$UvI9lD/Vwr6.nLjy9lT.BO1zSHPt6ux5fGmwDcViiOuZr9QkQoM/a',	NULL,	'destaalaf@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:27:28',	'2024-08-16 14:27:28',	NULL,	NULL),
(70,	'Sigit Yulianto',	'sigityulianto_176',	'$2y$12$/i3b74TzOvYDrYVVMGsLouo52pFmhJvzSYfOE5UpuKipwcv9w5L36',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'sigit@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:27:56',	'2024-08-16 23:54:18',	NULL,	NULL),
(71,	'Rendi maulana',	'rendimaulana_176',	'$2y$12$QxBPw6NwVyr78psVksFXTO8NmpFlqa3.sYCUIlbfraVSMWqa5lVPS',	NULL,	'rndymlnksm@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:28:24',	'2024-08-16 14:28:24',	NULL,	NULL),
(72,	'Apri',	'apri_176',	'$2y$12$DOnon1pbpFAoEu4yju3/zuON0hJqwtEbjkV6nkQNiK/JEk4QiSyjq',	NULL,	'aprikutu11@yahoo.co.id',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:28:50',	'2024-08-16 14:28:50',	NULL,	NULL),
(73,	'Dedi triantoro',	'deditriantoro_176',	'$2y$12$XERNW3tbhue76YuNIMM.VO5ZTz4edQOiZ7a4ebe.T6DqDEXX1221y',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'deditriantoro24@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:29:16',	'2024-08-17 00:05:27',	NULL,	NULL),
(74,	'Rizky Ardiansyah',	'rizkyardiansyah_176',	'$2y$12$jdXtzD4EFx/yxiLyqFGrZeh3C5bvbYOlUAFP.tyGkrMC2ExP4bhrC',	NULL,	'mrizkiardiansyah454@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:29:44',	'2024-08-16 14:29:44',	NULL,	NULL),
(75,	'Setyo Cahyono',	'setyocahyono_176',	'$2y$12$FlnXV7HpIkWUK0zDmEs6..HeYkYmtR891YokAjzbpO.WTc4fYpUZ6',	NULL,	'eksportir111@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:30:10',	'2024-08-16 14:30:10',	NULL,	NULL),
(76,	'Alo',	'alo_176',	'$2y$12$5hGrPiXinYmd5OSlkwcGP.IVGzYyP5UN3Bc9osOTaOi9ib.omNwFi',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'raggasa16alo@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2876',	'106.722',	NULL,	'2024-08-16 14:30:45',	'2024-09-02 21:35:29',	NULL,	NULL),
(77,	'Prasetyo bari ayatulloh',	'prasetyobari_176',	'$2y$12$cnb9DuzBWqqyRx27KJyDvuenJBsW1XgaucgiS5rtJAnBdTa0/gkOW',	NULL,	'boyothea86@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:31:31',	'2024-08-16 14:31:31',	NULL,	NULL),
(78,	'Maya Evianti',	'mayaevianti_176',	'$2y$12$dhkBW7M67A6ZXMpqF3.JgOlJ2K2iSb9iqnc8ssXsCB4wK03TTQjai',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'maya.fintax@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:32:13',	'2024-08-16 15:05:04',	NULL,	NULL),
(79,	'Denis Surya Utama P',	'denissurya_176',	'$2y$12$xWPLcL3jerpu511c5WE03u8n4U/OihnA0hljXXPpN0GDLqzeztmDi',	NULL,	'dpolapa21@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:32:41',	'2024-08-16 14:32:41',	NULL,	NULL),
(80,	'Jaelani',	'jaelani_176',	'$2y$12$v8fIeG2nksQB/wNSbVztz.mnsvf7cjMadpiF6SNgtHERRDX23Mbwa',	NULL,	'gilangsurya785@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:33:11',	'2024-08-16 14:33:11',	NULL,	NULL),
(81,	'Romi Rachman Hakim',	'romirachman_176',	'$2y$12$rrVzNq3h5LIaoQ5WF9pwVupUAVJKKU.rtsO7U0qeVzkuVB7yPZw6u',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'romyrachmanhakim@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-16 14:33:41',	'2024-08-19 18:18:41',	NULL,	NULL),
(82,	'Apriliawan angga kusumo',	'apriliawanangga_176',	'$2y$12$Zs4IkL5D4uoV1xwyNrFUkeQkK4oRcNHRpnQ0N8IUHTJU/eQz9Gw36',	NULL,	'styleangga08@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:34:36',	'2024-08-16 14:34:36',	NULL,	NULL),
(83,	'Teguh Alfajar',	'teguhalfajar_176',	'$2y$12$6eIHbQEom5gSE8LCazqaEOcG1B.2wW7NZgPr6oN2k42hOTGfEAo7K',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'alfajarteguh7@gmail.com',	NULL,	NULL,	176,	NULL,	'-8.493',	'119.878',	NULL,	'2024-08-16 14:35:05',	'2024-08-22 18:19:59',	NULL,	NULL),
(84,	'Andika Nurgamma Putra',	'andikanurgamma_176',	'$2y$12$s5QQxXRfl7S16CHyIb5qjOXE79R/FseD2Q1DMkti8VMXeQ/KSPbFu',	NULL,	'andikanurgammap@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:35:32',	'2024-08-16 14:35:32',	NULL,	NULL),
(85,	'Sanudi',	'sanudi_176',	'$2y$12$MiUFqeHh/LL5EzpqFgSDtecRl75VjXNApTG9dZBrIqp8IDly6plVq',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'nuraliframadhani123@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-16 14:35:58',	'2024-08-19 18:15:33',	NULL,	NULL),
(86,	'Anton hidayat',	'antonhidayat_176',	'$2y$12$zE5MATCJ4U8oHtOcNQSdyu4pv7NuSgs5iSGqUq2yWTJ7TgzVj.iQe',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'hidayatanton858@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:36:29',	'2024-08-17 00:28:39',	NULL,	NULL),
(87,	'Sutono',	'sutono_176',	'$2y$12$CbqWZcphZ.zx7Lp5XUsHquoQ6HsOG3nAvWPAeWCFPp3yBvoFguR96',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'sutono010792@gmail.com',	NULL,	NULL,	176,	NULL,	'-8.493',	'119.878',	NULL,	'2024-08-16 14:36:56',	'2024-08-22 18:20:36',	NULL,	NULL),
(88,	'Dewo Suhendang',	'dewosuhendang_176',	'$2y$12$JT4yv6rbkFcifw/C3DqggOdJ4XdXq.uYYlMJxZNduZRQ4to1eUdWm',	NULL,	'dewshndang@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:37:21',	'2024-08-16 14:37:21',	NULL,	NULL),
(89,	'Robby Hermawan',	'robbyhermawan_176',	'$2y$12$hnaRSjhX0H..SgpsVlHs7OwHK8jpNNYBl1FkaCTL62kLy6mqiQvg2',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'robbyhermawan234@gmail.com',	NULL,	NULL,	176,	NULL,	'-6.2352',	'106.9922',	NULL,	'2024-08-16 14:37:48',	'2024-08-20 16:04:50',	NULL,	NULL),
(90,	'Ilham Saputra',	'ilhamsaputra_176',	'$2y$12$fOKGt8sc1TRx4.mKW3XXz.ckoDf0HdwdcuvG5IJ3agAhOANPZbJGS',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'ilham.saputra@ome.co.id',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-16 14:38:14',	'2024-08-19 18:15:19',	NULL,	NULL),
(91,	'Anita Septiani',	'anitaseptiani_176',	'$2y$12$bz/SfyoA4OVLeXChu0aUQ.RiKx7CCfkjsIRu0XH0nTfC3ZubLz.0O',	NULL,	'anitaseptiani1248@gmail.com',	NULL,	NULL,	176,	NULL,	'37.422',	'-122.084',	NULL,	'2024-08-16 14:38:55',	'2024-08-16 14:38:55',	NULL,	NULL),
(92,	'Mandra',	'mandra_175',	'$2y$12$667eSfexmkxMjws4nGKTp.pObi.Hm0vR.g6cQ2c9HczqzTFCITxLO',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'mandra@gmail.com',	NULL,	'089123456789',	175,	NULL,	'-6.2352',	'106.9922',	NULL,	'2024-08-19 04:51:32',	'2024-08-28 05:00:10',	NULL,	NULL),
(93,	'Suslianto',	'suslianto_176',	'$2y$12$LXsLU81SUm7ElfJe5NvGuue/1gjN1cPog1RXSW/NPUH6J7B0tLoV2',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'me@suslianto.xyz',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-19 22:54:38',	'2024-09-02 21:10:18',	NULL,	NULL),
(97,	'OGM 1',	'ogm1_176',	'$2y$12$W7WUEU8TprnBgIRPJoXICuuh99mfBUDCMALYICcaoNV323X7dd2zm',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'ogm1@ome.co.id',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-24 05:10:56',	'2024-09-02 13:20:26',	NULL,	NULL),
(98,	'OGM 2',	'ogm2_176',	'$2y$12$M5weaOWnj1lg/grjYepiEuG5JSDfNwVQhWc3BTvvceoxfGY9xr/46',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'ogm2@ome.co.id',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-24 05:11:09',	'2024-09-02 12:00:55',	NULL,	NULL),
(99,	'OGM 3',	'ogm3_176',	'$2y$12$76Eu8QMkSlgilx9V7q/R/.WRhd/7MwU34fq34qgZOJ47lCn2972cq',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'ogm3@ome.co.id',	NULL,	NULL,	176,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-24 05:11:20',	'2024-09-02 12:00:42',	NULL,	NULL),
(101,	'ijal',	'ijal_175',	'$2y$12$ao/TSK8sicImUjPDh4FHBecF8oDu98PWaelnZYFGbWuQuzRXyjKjG',	'cGHoiTTtQzig-k05DR1lf5:APA91bFJi_5__Hhcn12IRWgNG2taQdaVyBiJ4LjwRMTRuksxXGT2OiPzkDb6sbMFUM81lTKPpn5zF97verAPmFZ7uZ-kulHSCwbnn_qz8rtCoC0_FC31bjO2uCqMizDIV2Xcri9fOIfR',	'',	NULL,	NULL,	175,	NULL,	'-6.2114',	'106.8446',	NULL,	'2024-08-24 17:48:02',	'2024-08-24 17:48:18',	NULL,	NULL);

DROP TABLE IF EXISTS "members";
DROP SEQUENCE IF EXISTS members_member_id_seq;
CREATE SEQUENCE members_member_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."members" (
    "member_id" numeric(20,0) DEFAULT nextval('members_member_id_seq') NOT NULL,
    "user_id" numeric(20,0) NOT NULL,
    "contact_id" numeric(20,0) NOT NULL,
    "channel_id" numeric(20,0) NOT NULL,
    "created_at" timestamp,
    "updated_at" timestamp,
    CONSTRAINT "members_member_id_pkey" PRIMARY KEY ("member_id")
) WITH (oids = false);

CREATE INDEX "members_channel_id" ON "public"."members" USING btree ("channel_id");

CREATE INDEX "members_contact_id" ON "public"."members" USING btree ("contact_id");

CREATE INDEX "members_user_id" ON "public"."members" USING btree ("user_id");

INSERT INTO "members" ("member_id", "user_id", "contact_id", "channel_id", "created_at", "updated_at") VALUES
(36,	176,	31,	3,	NULL,	NULL),
(37,	176,	32,	3,	NULL,	NULL),
(38,	176,	31,	4,	NULL,	NULL),
(39,	176,	32,	4,	NULL,	NULL),
(40,	176,	31,	5,	NULL,	NULL),
(42,	175,	34,	6,	NULL,	NULL),
(43,	175,	38,	6,	NULL,	NULL),
(44,	176,	40,	3,	NULL,	NULL),
(45,	176,	40,	4,	NULL,	NULL),
(46,	176,	32,	5,	NULL,	NULL),
(47,	176,	40,	5,	NULL,	NULL),
(48,	176,	41,	3,	NULL,	NULL),
(49,	176,	41,	4,	NULL,	NULL),
(50,	176,	41,	5,	NULL,	NULL),
(51,	176,	42,	5,	NULL,	NULL),
(52,	176,	43,	5,	NULL,	NULL),
(53,	176,	44,	5,	NULL,	NULL),
(54,	176,	45,	5,	NULL,	NULL),
(55,	176,	46,	5,	NULL,	NULL),
(56,	176,	47,	5,	NULL,	NULL),
(57,	176,	48,	5,	NULL,	NULL),
(58,	176,	49,	5,	NULL,	NULL),
(59,	176,	50,	5,	NULL,	NULL),
(60,	176,	51,	5,	NULL,	NULL),
(61,	176,	52,	5,	NULL,	NULL),
(62,	176,	53,	5,	NULL,	NULL),
(63,	176,	54,	5,	NULL,	NULL),
(64,	176,	55,	5,	NULL,	NULL),
(65,	176,	56,	5,	NULL,	NULL),
(66,	176,	57,	5,	NULL,	NULL),
(67,	176,	58,	5,	NULL,	NULL),
(68,	176,	59,	5,	NULL,	NULL),
(69,	176,	60,	5,	NULL,	NULL),
(70,	176,	61,	5,	NULL,	NULL),
(71,	176,	62,	5,	NULL,	NULL),
(72,	176,	63,	5,	NULL,	NULL),
(73,	176,	64,	5,	NULL,	NULL),
(74,	176,	65,	5,	NULL,	NULL),
(75,	176,	66,	5,	NULL,	NULL),
(76,	176,	67,	5,	NULL,	NULL),
(77,	176,	68,	5,	NULL,	NULL),
(78,	176,	69,	5,	NULL,	NULL),
(79,	176,	70,	5,	NULL,	NULL),
(80,	176,	71,	5,	NULL,	NULL),
(81,	176,	72,	5,	NULL,	NULL),
(82,	176,	73,	5,	NULL,	NULL),
(83,	176,	74,	5,	NULL,	NULL),
(84,	176,	75,	5,	NULL,	NULL),
(85,	176,	76,	5,	NULL,	NULL),
(86,	176,	77,	5,	NULL,	NULL),
(87,	176,	78,	5,	NULL,	NULL),
(88,	176,	79,	5,	NULL,	NULL),
(89,	176,	80,	5,	NULL,	NULL),
(90,	176,	81,	5,	NULL,	NULL),
(91,	176,	82,	5,	NULL,	NULL),
(92,	176,	83,	5,	NULL,	NULL),
(93,	176,	84,	5,	NULL,	NULL),
(94,	176,	85,	5,	NULL,	NULL),
(95,	176,	86,	5,	NULL,	NULL),
(96,	176,	87,	5,	NULL,	NULL),
(97,	176,	88,	5,	NULL,	NULL),
(98,	176,	89,	5,	NULL,	NULL),
(99,	176,	90,	5,	NULL,	NULL),
(100,	176,	91,	5,	NULL,	NULL),
(101,	176,	93,	5,	NULL,	NULL),
(102,	176,	93,	4,	NULL,	NULL),
(103,	176,	93,	3,	NULL,	NULL),
(104,	175,	92,	6,	NULL,	NULL),
(105,	176,	97,	7,	NULL,	NULL),
(106,	176,	98,	7,	NULL,	NULL),
(107,	176,	99,	7,	NULL,	NULL),
(109,	175,	39,	6,	NULL,	NULL),
(110,	176,	90,	7,	NULL,	NULL),
(111,	175,	101,	6,	NULL,	NULL),
(112,	176,	42,	3,	NULL,	NULL),
(113,	176,	43,	3,	NULL,	NULL),
(114,	176,	44,	3,	NULL,	NULL),
(115,	176,	45,	3,	NULL,	NULL),
(116,	176,	46,	3,	NULL,	NULL),
(117,	176,	47,	3,	NULL,	NULL),
(118,	176,	48,	3,	NULL,	NULL),
(119,	176,	49,	3,	NULL,	NULL),
(120,	176,	50,	3,	NULL,	NULL),
(121,	176,	51,	3,	NULL,	NULL),
(122,	176,	52,	3,	NULL,	NULL),
(123,	176,	53,	3,	NULL,	NULL),
(124,	176,	54,	3,	NULL,	NULL),
(125,	176,	55,	3,	NULL,	NULL),
(126,	176,	56,	3,	NULL,	NULL),
(127,	176,	61,	3,	NULL,	NULL),
(128,	176,	62,	3,	NULL,	NULL),
(129,	176,	63,	3,	NULL,	NULL),
(130,	176,	64,	3,	NULL,	NULL),
(131,	176,	65,	3,	NULL,	NULL),
(132,	176,	66,	3,	NULL,	NULL),
(133,	176,	67,	3,	NULL,	NULL),
(134,	176,	68,	3,	NULL,	NULL),
(135,	176,	70,	3,	NULL,	NULL),
(136,	176,	73,	3,	NULL,	NULL),
(137,	176,	74,	3,	NULL,	NULL),
(138,	176,	75,	3,	NULL,	NULL),
(139,	176,	76,	3,	NULL,	NULL),
(140,	176,	77,	3,	NULL,	NULL),
(141,	176,	83,	3,	NULL,	NULL),
(142,	176,	85,	3,	NULL,	NULL),
(143,	176,	88,	3,	NULL,	NULL),
(144,	176,	89,	3,	NULL,	NULL),
(145,	176,	90,	3,	NULL,	NULL),
(146,	176,	91,	3,	NULL,	NULL),
(147,	176,	46,	4,	NULL,	NULL),
(148,	176,	47,	4,	NULL,	NULL),
(149,	176,	57,	4,	NULL,	NULL),
(150,	176,	59,	4,	NULL,	NULL),
(151,	176,	60,	4,	NULL,	NULL),
(152,	176,	61,	4,	NULL,	NULL),
(153,	176,	62,	4,	NULL,	NULL),
(154,	176,	70,	4,	NULL,	NULL),
(155,	176,	72,	4,	NULL,	NULL),
(156,	176,	78,	4,	NULL,	NULL),
(157,	176,	80,	4,	NULL,	NULL),
(158,	176,	81,	4,	NULL,	NULL),
(159,	176,	82,	4,	NULL,	NULL),
(160,	176,	83,	4,	NULL,	NULL),
(161,	176,	84,	4,	NULL,	NULL),
(162,	176,	85,	4,	NULL,	NULL),
(163,	176,	86,	4,	NULL,	NULL),
(164,	176,	87,	4,	NULL,	NULL),
(165,	176,	88,	4,	NULL,	NULL),
(166,	176,	89,	4,	NULL,	NULL),
(167,	176,	90,	4,	NULL,	NULL),
(168,	176,	91,	4,	NULL,	NULL),
(170,	176,	93,	7,	NULL,	NULL),
(171,	176,	32,	7,	NULL,	NULL);

DROP TABLE IF EXISTS "members_likes_chats";
CREATE TABLE "public"."members_likes_chats" (
    "contact_id" numeric(20,0) NOT NULL,
    "chat_id" numeric(20,0) NOT NULL,
    "created_at" timestamp DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "members_likes_chats_contact_id_chat_id_pkey" PRIMARY KEY ("contact_id", "chat_id")
) WITH (oids = false);

CREATE INDEX "members_likes_chats_chat_id" ON "public"."members_likes_chats" USING btree ("chat_id");

INSERT INTO "members_likes_chats" ("contact_id", "chat_id", "created_at") VALUES
(32,	5,	'2024-08-27 16:55:11'),
(32,	141,	'2024-09-02 21:29:58'),
(32,	142,	'2024-09-02 21:29:58'),
(38,	3,	'2024-08-26 07:29:24'),
(38,	15,	'2024-08-30 22:31:41'),
(38,	97,	'2024-08-30 22:31:41'),
(39,	9,	'2024-08-27 05:10:49'),
(39,	15,	'2024-08-27 21:03:35'),
(45,	5,	'2024-09-02 22:31:32'),
(45,	62,	'2024-09-02 22:31:32'),
(45,	67,	'2024-09-02 22:31:32'),
(45,	68,	'2024-09-02 22:31:32'),
(45,	69,	'2024-09-02 22:31:32'),
(45,	70,	'2024-09-02 22:31:32'),
(45,	136,	'2024-09-02 22:31:32'),
(45,	167,	'2024-09-02 22:31:32'),
(53,	5,	'2024-09-02 23:01:56'),
(53,	62,	'2024-09-02 23:01:56'),
(53,	67,	'2024-09-02 23:01:56'),
(53,	68,	'2024-09-02 23:01:56'),
(53,	69,	'2024-09-02 23:01:56'),
(53,	70,	'2024-09-02 23:01:56'),
(53,	136,	'2024-09-02 23:01:56'),
(53,	167,	'2024-09-02 23:01:56'),
(68,	5,	'2024-09-02 16:52:50'),
(68,	62,	'2024-09-02 16:52:50'),
(68,	67,	'2024-09-02 16:52:50'),
(68,	68,	'2024-09-02 16:52:50'),
(68,	69,	'2024-09-02 16:52:50'),
(68,	70,	'2024-09-02 16:52:50'),
(76,	5,	'2024-09-02 21:35:00'),
(76,	62,	'2024-09-02 21:35:00'),
(76,	67,	'2024-09-02 21:35:00'),
(76,	68,	'2024-09-02 21:35:00'),
(76,	69,	'2024-09-02 21:35:00'),
(76,	70,	'2024-09-02 21:35:00'),
(76,	136,	'2024-09-02 21:35:00'),
(92,	3,	'2024-08-27 00:35:04'),
(92,	9,	'2024-08-27 05:57:37'),
(92,	87,	'2024-08-27 22:27:25'),
(92,	89,	'2024-08-27 22:30:33'),
(92,	90,	'2024-08-27 22:59:14');

DROP TABLE IF EXISTS "migrations";
DROP SEQUENCE IF EXISTS migrations_id_seq;
CREATE SEQUENCE migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."migrations" (
    "id" bigint DEFAULT nextval('migrations_id_seq') NOT NULL,
    "migration" character varying(255) NOT NULL,
    "batch" integer NOT NULL,
    CONSTRAINT "migrations_id_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "migrations" ("id", "migration", "batch") VALUES
(1,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(2,	'2023_11_26_170141_create_users_table',	1),
(3,	'2023_11_26_170757_create_contacts_table',	2),
(4,	'2023_11_26_171555_create_addresses_table',	3),
(5,	'2023_11_29_132845_create_channels_table',	4),
(6,	'2023_11_29_193259_add_column_password_to_contacts',	4),
(7,	'2023_11_29_193829_add_column_image_to_contacts',	4),
(8,	'2023_12_03_150829_create_channels_table',	5),
(9,	'2023_12_03_151522_create_members_table',	6),
(10,	'2023_12_03_163812_add_column_image_to_channels',	7),
(11,	'2023_12_07_162702_add_column_token_to_contacts',	8),
(12,	'2023_12_07_170523_create_chats_table',	9),
(13,	'2023_12_07_171843_create_members_table',	10),
(14,	'2023_12_07_183812_create_contacts_table',	11),
(15,	'2023_12_07_184534_create_channels_table',	12),
(16,	'2023_12_07_184620_create_members_table',	12),
(17,	'2023_12_07_184924_create_chats_table',	13),
(18,	'2023_12_08_141137_add_column_password_to_contacts',	14),
(19,	'2024_01_21_153814_create_table_members_likes_chats',	15),
(20,	'2024_01_21_160447_add_created_at_in_members_likes_chats',	16),
(21,	'2024_01_22_074452_add_fcm_device_token_column_to_users_table',	17),
(22,	'2024_01_25_064115_add_file_column_to_users_table',	18),
(23,	'2024_07_08_070841_add_token_expires_at_column_to_contacts_table',	19),
(24,	'2024_08_05_105841_add_username_column_to_contacts',	20);

DROP TABLE IF EXISTS "password_verify";
DROP SEQUENCE IF EXISTS password_verify_id_seq;
CREATE SEQUENCE password_verify_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."password_verify" (
    "id" numeric(20,0) DEFAULT nextval('password_verify_id_seq') NOT NULL,
    "user_id" integer NOT NULL,
    "token" character varying(255) NOT NULL,
    "created_at" timestamp,
    "updated_at" timestamp,
    CONSTRAINT "password_verify_id_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "personal_access_tokens";
DROP SEQUENCE IF EXISTS personal_access_tokens_id_seq;
CREATE SEQUENCE personal_access_tokens_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."personal_access_tokens" (
    "id" numeric(20,0) DEFAULT nextval('personal_access_tokens_id_seq') NOT NULL,
    "tokenable_type" character varying(255) NOT NULL,
    "tokenable_id" numeric(20,0) NOT NULL,
    "name" character varying(255) NOT NULL,
    "token" character varying(64) NOT NULL,
    "abilities" text,
    "last_used_at" timestamp,
    "expires_at" timestamp,
    "created_at" timestamp,
    "updated_at" timestamp,
    CONSTRAINT "personal_access_tokens_id_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "personal_access_tokens_token" UNIQUE ("token")
) WITH (oids = false);

CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id" ON "public"."personal_access_tokens" USING btree ("tokenable_type", "tokenable_id");

INSERT INTO "personal_access_tokens" ("id", "tokenable_type", "tokenable_id", "name", "token", "abilities", "last_used_at", "expires_at", "created_at", "updated_at") VALUES
(141,	'App\Models\Contact',	20,	'auth_token',	'c6756c9da7cd1a5c3ab39c51c4f26df14fd1b30d0cccba827cc9c6913ebbbd1d',	'["*"]',	'2024-08-05 02:27:59',	NULL,	'2024-08-04 14:19:36',	'2024-08-05 02:27:59'),
(143,	'App\Models\Contact',	21,	'auth_token',	'20c748635fab9e126ac66b8783634cff6949437f6de660b3ad6f86659cebf400',	'["*"]',	'2024-08-05 16:02:28',	NULL,	'2024-08-04 14:35:32',	'2024-08-05 16:02:28'),
(151,	'App\Models\Contact',	22,	'auth_token',	'8fb86bba2c17d1127376c3aa81e77d56dd8f2d0b314c34dcaee45285431cc93c',	'["*"]',	'2024-08-05 16:11:49',	NULL,	'2024-08-05 12:30:48',	'2024-08-05 16:11:49'),
(153,	'App\Models\Contact',	17,	'auth_token',	'7eab926b9908acf16cde6a4ac602878c888cde7a94d783ef73c21c2ab8a16542',	'["*"]',	'2024-08-05 14:46:28',	NULL,	'2024-08-05 14:46:05',	'2024-08-05 14:46:28'),
(154,	'App\Models\Contact',	26,	'auth_token',	'f3a0a6f3a470fe2130e3001db3a06ad747261fa05737c926dc7330a5a8784638',	'["*"]',	'2024-08-05 15:41:24',	NULL,	'2024-08-05 15:36:55',	'2024-08-05 15:41:24'),
(155,	'App\Models\Contact',	27,	'auth_token',	'3f5115479edb683d6ff3f03e55471dfc5190b78408aa9d2eb53177bea917454f',	'["*"]',	NULL,	NULL,	'2024-08-05 11:02:53',	'2024-08-05 11:02:53'),
(192,	'App\Models\Contact',	83,	'auth_token',	'b16ff6758150c40f48dbb96b5eaab551cc702d094f2fe81a836bad4454e16030',	'["*"]',	'2024-08-22 18:29:00',	NULL,	'2024-08-16 15:51:04',	'2024-08-22 18:29:00'),
(193,	'App\Models\Contact',	87,	'auth_token',	'c78cfa5730c5dfb70c0cca41d13fe6cfb1c53c3f9b2ea98f60a2d3b5c49a55b0',	'["*"]',	'2024-08-23 04:14:26',	NULL,	'2024-08-16 15:55:07',	'2024-08-23 04:14:26'),
(194,	'App\Models\Contact',	62,	'auth_token',	'b95672a596251d3376940eb585006126c61c69a44a286a89fdcd9a2385f8c041',	'["*"]',	'2024-08-20 03:25:52',	NULL,	'2024-08-16 15:58:28',	'2024-08-20 03:25:52'),
(197,	'App\Models\Contact',	78,	'auth_token',	'44f1687e0836276d5b9a90b45b2d6a1b15462b4ab545b974a53839ace51e13ec',	'["*"]',	'2024-08-16 16:27:23',	NULL,	'2024-08-16 16:26:27',	'2024-08-16 16:27:23'),
(198,	'App\Models\Contact',	55,	'auth_token',	'e41bcfa2c3912457363b57f7e70425d6e350b068171dbf2311d94e07ce9aa9c6',	'["*"]',	'2024-08-17 00:18:13',	NULL,	'2024-08-16 16:42:45',	'2024-08-17 00:18:13'),
(199,	'App\Models\Contact',	59,	'auth_token',	'23254aabbe765c844b499bd440d923b70360d94b3ad0484c5b85672200ab2f19',	'["*"]',	'2024-08-17 00:15:51',	NULL,	'2024-08-16 16:43:50',	'2024-08-17 00:15:51'),
(200,	'App\Models\Contact',	85,	'auth_token',	'0ce0f0a947f50ef951dbb02a1196b3a8b8d59cd96745ec5a8f5256890ea8b074',	'["*"]',	'2024-08-23 00:04:29',	NULL,	'2024-08-16 23:46:05',	'2024-08-23 00:04:29'),
(201,	'App\Models\Contact',	61,	'auth_token',	'a12908547390c510600af2da630216da80edeb9af07e28e892b6b27dd0c33c69',	'["*"]',	'2024-08-17 00:08:37',	NULL,	'2024-08-16 23:48:35',	'2024-08-17 00:08:37'),
(204,	'App\Models\Contact',	90,	'auth_token',	'91a6dc77214c5a4c42f87cca49074cb6dad8a391f49770216d05a86982c6cb01',	'["*"]',	'2024-08-19 22:27:40',	NULL,	'2024-08-16 23:58:02',	'2024-08-19 22:27:40'),
(211,	'App\Models\Contact',	70,	'auth_token',	'a9ad63d4b3a91c7c745db3a5f397886dd7f7e7f1a927428413c436458639e504',	'["*"]',	'2024-08-17 00:16:55',	NULL,	'2024-08-17 00:12:55',	'2024-08-17 00:16:55'),
(212,	'App\Models\Contact',	50,	'auth_token',	'70b77c70bf7074cf1fe585295a69a734d9795c664448e857a6e66c8b624b0cee',	'["*"]',	'2024-08-17 00:20:00',	NULL,	'2024-08-17 00:13:56',	'2024-08-17 00:20:00'),
(214,	'App\Models\Contact',	86,	'auth_token',	'5e88fc98fd2bc47277755d85583f100f60e373cd0b27dce10c6431238d503054',	'["*"]',	'2024-08-19 17:19:11',	NULL,	'2024-08-17 00:30:46',	'2024-08-19 17:19:11'),
(221,	'App\Models\Contact',	81,	'auth_token',	'1bacae06b06ee2437255753ef35bb5be964355b2bbcda64e6467a6b54356733f',	'["*"]',	'2024-08-19 18:20:32',	NULL,	'2024-08-17 03:16:10',	'2024-08-19 18:20:32'),
(222,	'App\Models\Contact',	57,	'auth_token',	'e46dca4cac28aa9779c981f7ab74fa1bf63fc92555fb00adcd9df1441684e0b8',	'["*"]',	'2024-08-17 16:22:24',	NULL,	'2024-08-17 03:45:50',	'2024-08-17 16:22:24'),
(223,	'App\Models\Contact',	60,	'auth_token',	'3f95c5df81c9e31886b1e24cc407cb80646945430606d0c5902f6dfcc6f63188',	'["*"]',	'2024-08-23 00:54:26',	NULL,	'2024-08-17 04:18:06',	'2024-08-23 00:54:26'),
(244,	'App\Models\Contact',	89,	'auth_token',	'161cb92bea0814169ed83ba2b67b442c1767b37ca6941497aa0c5dbff01c1e7a',	'["*"]',	'2024-08-20 16:04:49',	NULL,	'2024-08-20 16:03:11',	'2024-08-20 16:04:49'),
(250,	'App\Models\Contact',	94,	'auth_token',	'b40324a2113fb3bff0f0c7aa2d989c46aefd1b7d3140e2b77bea31cdbd752dd8',	'["*"]',	'2024-08-24 05:10:09',	NULL,	'2024-08-24 05:09:56',	'2024-08-24 05:10:09'),
(269,	'App\Models\Contact',	100,	'auth_token',	'd3254f1c67670090c361eb47dddd3321139978543a80bda91506f47b43e65f10',	'["*"]',	'2024-08-24 17:47:20',	NULL,	'2024-08-24 17:47:20',	'2024-08-24 17:47:20'),
(311,	'App\Models\Contact',	32,	'auth_token',	'8eee96033c16323933c36d3b64521619a13ac681b6b1cbe4e96842306472191a',	'["*"]',	'2024-09-02 23:16:43',	NULL,	'2024-08-27 16:53:45',	'2024-09-02 23:16:43'),
(327,	'App\Models\Contact',	39,	'auth_token',	'245ffed5b56896986abbbc2bda4f2c7e2c9f7d0c34a517714f190a540afee3dc',	'["*"]',	'2024-08-28 04:49:34',	NULL,	'2024-08-28 04:38:17',	'2024-08-28 04:49:34'),
(338,	'App\Models\Contact',	97,	'auth_token',	'536760be4c180fb0fe922c172f56e8b1399274e14364b76a080c10f03e370c58',	'["*"]',	'2024-09-02 13:43:26',	NULL,	'2024-09-02 13:22:58',	'2024-09-02 13:43:26'),
(339,	'App\Models\Contact',	98,	'auth_token',	'548f3edcfe33cbb58f7d959bb8d52129fe48577b7951e15291f1a6f1eb993a76',	'["*"]',	'2024-09-03 17:58:05',	NULL,	'2024-09-02 13:23:48',	'2024-09-03 17:58:05'),
(340,	'App\Models\Contact',	99,	'auth_token',	'9e29d0b7c5cce692cb76d79f7a9f4cfe9a7f0ce517a10886152b7809431c61be',	'["*"]',	'2024-09-03 00:24:16',	NULL,	'2024-09-02 13:26:02',	'2024-09-03 00:24:16'),
(343,	'App\Models\Contact',	73,	'auth_token',	'9438ba516faf900faf287e704885f97e2718de1243fa5614787e4e1afcfdb1e2',	'["*"]',	'2024-09-02 21:34:19',	NULL,	'2024-09-02 16:47:46',	'2024-09-02 21:34:19'),
(344,	'App\Models\Contact',	93,	'auth_token',	'67e3b52c660f9bdf4c75587da9e1fd6383c3684c44c755bc06d0c93d53b88aca',	'["*"]',	'2024-09-02 21:18:36',	NULL,	'2024-09-02 21:10:52',	'2024-09-02 21:18:36'),
(346,	'App\Models\Contact',	45,	'auth_token',	'65abba12fa33acd736b7504f303abdd1086d402992f321a83ca1676168d5dc0d',	'["*"]',	'2024-09-02 22:31:32',	NULL,	'2024-09-02 21:56:07',	'2024-09-02 22:31:32'),
(347,	'App\Models\Contact',	54,	'auth_token',	'855fe9c4438c0e87f322860a8ea3081858df3e9eea1674496cbc25a7fd6ff50c',	'["*"]',	'2024-09-02 22:13:08',	NULL,	'2024-09-02 21:58:59',	'2024-09-02 22:13:08'),
(349,	'App\Models\Contact',	53,	'auth_token',	'bae923660ffc072fb42fec9a48a0a7c65427f7362ab05eb2555b48d3bd3314f7',	'["*"]',	'2024-09-02 23:05:05',	NULL,	'2024-09-02 23:03:28',	'2024-09-02 23:05:05'),
(350,	'App\Models\Contact',	76,	'auth_token',	'20bcdeda077e2ab78a570b57a9dcda1f6dd9afcc179e4d3de8a13189bd398107',	'["*"]',	'2024-09-03 03:02:24',	NULL,	'2024-09-03 03:02:14',	'2024-09-03 03:02:24');

DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."users" (
    "id" numeric(20,0) DEFAULT nextval('users_id_seq') NOT NULL,
    "email" character varying(100) NOT NULL,
    "password" character varying(100) NOT NULL,
    "name" character varying(100) NOT NULL,
    "token" character varying(100),
    "trial_until" timestamp,
    "lang" character varying(255) DEFAULT 'en' NOT NULL,
    "is_verified" boolean DEFAULT false NOT NULL,
    "created_at" timestamp,
    "updated_at" timestamp,
    CONSTRAINT "users_email" UNIQUE ("email"),
    CONSTRAINT "users_id_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "users_token" UNIQUE ("token")
) WITH (oids = false);

INSERT INTO "users" ("id", "email", "password", "name", "token", "trial_until", "lang", "is_verified", "created_at", "updated_at") VALUES
(175,	'asex@gmail.com',	'$2y$04$vWSCAhG1qlfLRs4X8yXhT.aQhLOQpmn4w/Gi9dX1A.c2smJNLIG0m',	'komaro',	'test',	NULL,	'en',	't',	'2023-11-28 16:27:03',	'2023-11-28 16:27:03'),
(176,	'obormas@gmail.com',	'$2y$04$a2mM.z90USBsIiZAXlVZUuCkbO1xlr5gIuzQiiWoDVlDFCMINZmHm',	'komaro2',	'test2',	NULL,	'en',	't',	'2023-11-28 16:27:03',	'2023-11-28 16:27:03'),
(177,	'admin@ome.co.id',	'$2y$12$53HlEHJsm4/WtHL9SmlP2.NOwNdE66fAenGFY2cmv7W09Rf6GXRhq',	'drive',	NULL,	'2024-09-02 17:34:30',	'en',	't',	'2024-08-19 17:34:30',	'2024-08-19 17:34:30');

DROP TABLE IF EXISTS "users_verify";
CREATE TABLE "public"."users_verify" (
    "user_id" integer NOT NULL,
    "token" character varying(255) NOT NULL,
    "created_at" timestamp,
    "updated_at" timestamp
) WITH (oids = false);


ALTER TABLE ONLY "public"."channels" ADD CONSTRAINT "channels_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."chats" ADD CONSTRAINT "chats_channel_id_fkey" FOREIGN KEY (channel_id) REFERENCES channels(channel_id) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."chats" ADD CONSTRAINT "chats_contact_id_fkey" FOREIGN KEY (contact_id) REFERENCES contacts(id) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."chats" ADD CONSTRAINT "chats_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."contacts" ADD CONSTRAINT "contacts_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."members" ADD CONSTRAINT "members_channel_id_fkey" FOREIGN KEY (channel_id) REFERENCES channels(channel_id) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."members" ADD CONSTRAINT "members_contact_id_fkey" FOREIGN KEY (contact_id) REFERENCES contacts(id) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."members" ADD CONSTRAINT "members_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."members_likes_chats" ADD CONSTRAINT "members_likes_chats_chat_id_fkey" FOREIGN KEY (chat_id) REFERENCES chats(chat_id) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."members_likes_chats" ADD CONSTRAINT "members_likes_chats_contact_id_fkey" FOREIGN KEY (contact_id) REFERENCES contacts(id) NOT DEFERRABLE;

-- 2024-09-03 04:31:08.836376+00
