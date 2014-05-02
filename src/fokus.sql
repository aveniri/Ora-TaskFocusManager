CREATE TABLE "alerttypes" ("alerttype_id" INTEGER, "description" TEXT, "show" BOOLEAN, "sound" BOOLEAN);
CREATE TABLE "preference" ("preference_id" INTEGER PRIMARY KEY NOT NULL UNIQUE DEFAULT 1, "position_x" INTEGER DEFAULT 0, "position_y" INTEGER DEFAULT 0, "width" INTEGER DEFAULT 300, "height" INTEGER DEFAULT 290, "always_on_top" BOOLEAN DEFAULT true, "start_on_login" BOOLEAN DEFAULT true, "reminder_frequency" INTEGER DEFAULT 10, "session_duration" INTEGER DEFAULT 25, "break_duration" INTEGER DEFAULT 5, "late_task_alert" INTEGER DEFAULT 1, "session_end_alert" INTEGER DEFAULT 4, "break_end_alert" INTEGER DEFAULT 5);
CREATE TABLE "project" ("project_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, "project_name" TEXT, "created" DATE, "status" INTEGER DEFAULT 1);
CREATE TABLE "task" ("task_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "description" TEXT, "id_project" INTEGER DEFAULT 0, "created" DATE DEFAULT NULL, "completed" DATE DEFAULT NULL, "status" INTEGER DEFAULT 3, "last_due" DATE);
CREATE TABLE "taskactivity" ("taskactivity_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, "id_task" INTEGER, "start" DATE, "prediction" DATE, "completion" DATE, "is_current" BOOLEAN);

INSERT INTO "preference" ( "preference_id","position_x","position_y","width","height","always_on_top","start_on_login","reminder_frequency","session_duration","break_duration","late_task_alert","session_end_alert","break_end_alert" ) VALUES ( '1','0','0','300','290','true','true','10','25','5','1','4','5' );

INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '0','no-alert','false','false' );
INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '1','show temp window and close in 8 seconds','true','false' );
INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '2','show window and keep it open','true','false' );
INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '3','alert by sound','false','true' );
INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '4','sound + show temp','true','true' );
INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '5','sound + keep open','true','true' );
INSERT INTO "alerttypes" ( "alerttype_id","description","show","sound" ) VALUES ( '6','sound + taskbar-icon flashing','false','true' );
