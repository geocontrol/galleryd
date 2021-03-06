BEGIN TRANSACTION;
CREATE TABLE "authorizations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "provider" varchar(255), "uid" varchar(255), "user_id" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO authorizations VALUES(1,'twitter',5791,2,'2012-05-07 20:47:57.265483','2012-05-07 20:47:57.265483');
INSERT INTO authorizations VALUES(2,'twitter',582175883,3,'2012-05-16 21:22:30.458909','2012-05-16 21:22:30.458909');
CREATE TABLE "galleries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "url" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "address1" varchar(255), "address2" varchar(255), "postcode" varchar(255));
INSERT INTO galleries VALUES(1,'Tate Modern','http://www.tate.org.uk/visit/tate-modern','2012-05-09 21:48:46.527696','2012-05-19 12:31:31.111947','Bankside','','SE1 9TG');
INSERT INTO galleries VALUES(2,'Tate Britain','http://www.tate.org.uk/visit/tate-britain','2012-05-09 21:49:09.086205','2012-05-19 12:30:56.504018','Millbank','','SW1P 4RG');
INSERT INTO galleries VALUES(3,'Saatchi Gallery','http://www.saatchi-gallery.co.uk/','2012-05-19 12:24:14.184406','2012-05-19 12:24:14.184406','Duke of York''s HQ','King''s Road','SW3 4RY');
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO schema_migrations VALUES(20120501205257);
INSERT INTO schema_migrations VALUES(20120502200508);
INSERT INTO schema_migrations VALUES(20120502205717);
INSERT INTO schema_migrations VALUES(20120507114557);
INSERT INTO schema_migrations VALUES(20120507200519);
INSERT INTO schema_migrations VALUES(20120507200541);
INSERT INTO schema_migrations VALUES(20120519115856);
INSERT INTO schema_migrations VALUES(20120519121606);
CREATE TABLE "shows" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "start" date, "end" date, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "gallery_id" integer);
INSERT INTO shows VALUES(1,'Damien Hirst','2012-04-04','2012-09-09','2012-05-09 21:50:03.218290','2012-05-09 21:50:03.218290',1);
INSERT INTO shows VALUES(2,'Migrations Journeys into British Art','2012-01-31','2012-08-12','2012-05-09 21:51:21.045875','2012-05-09 21:51:21.045875',2);
INSERT INTO shows VALUES(3,'Patrick Kellier The Robinson Institute','2012-03-27','2012-10-14','2012-05-19 12:34:45.370496','2012-05-19 12:34:45.370496',2);
INSERT INTO shows VALUES(4,'Picasso and Modern British Art','2012-02-15','2012-07-15','2012-05-19 12:35:37.588626','2012-05-19 12:35:37.588626',2);
INSERT INTO shows VALUES(8,'Yayoi Kusama','2012-02-09','2012-06-05','2012-05-19 12:45:46.824480','2012-05-19 12:45:46.824480',1);
INSERT INTO shows VALUES(9,'Alighiero Boetti: Game Plan','2012-02-28','2012-05-27','2012-05-19 12:47:15.187223','2012-05-19 12:47:15.187223',1);
INSERT INTO shows VALUES(10,'Out Of Focus: Photography','2012-04-25','2012-07-22','2012-05-19 12:48:42.692360','2012-05-19 12:48:42.692360',3);
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO sqlite_sequence VALUES('users',3);
INSERT INTO sqlite_sequence VALUES('authorizations',2);
INSERT INTO sqlite_sequence VALUES('shows',10);
INSERT INTO sqlite_sequence VALUES('galleries',3);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO users VALUES(1,'Mark Simpkins','2012-05-07 20:40:23.636557','2012-05-07 20:40:23.636557');
INSERT INTO users VALUES(2,'Mark Simpkins','2012-05-07 20:47:57.211483','2012-05-07 20:47:57.211483');
INSERT INTO users VALUES(3,'Mark ','2012-05-16 21:22:30.435685','2012-05-16 21:22:30.435685');
CREATE INDEX "index_shows_on_gallery_id" ON "shows" ("gallery_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
