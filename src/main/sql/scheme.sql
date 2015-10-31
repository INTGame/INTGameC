/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     24.10.2015 13:59:05                          */
/*==============================================================*/



/*==============================================================*/
/* Table: "Admin"                                               */
/*==============================================================*/
create table "Admin" 
(
   "AdminId"            INTEGER              not null,
   "AdminNick"          VARCHAR2(55),
   "AdminLogin"         VARCHAR2(55),
   "AdminPassword"      VARCHAR2(55),
   constraint PK_ADMIN primary key ("AdminId")
);

/*==============================================================*/
/* Table: "BlogImages"                                          */
/*==============================================================*/
create table "BlogImages" 
(
   "BlogImagesId"       INTEGER              not null,
   "BlogId"             INTEGER,
   "BlogImagesContent"  BLOB,
   constraint PK_BLOGIMAGES primary key ("BlogImagesId")
);

/*==============================================================*/
/* Index: "Blog_Content_FK"                                     */
/*==============================================================*/
create index "Blog_Content_FK" on "BlogImages" (
   "BlogId" ASC
);

/*==============================================================*/
/* Table: "Blogs"                                               */
/*==============================================================*/
create table "Blogs" 
(
   "BlogId"             INTEGER              not null,
   "LanguageId"         INTEGER,
   "UserId"             INTEGER,
   "BlogTitle"          CLOB,
   "BlogDate"           DATE,
   "BlogType"           VARCHAR2(55),
   "BlogContent"        CLOB,
   constraint PK_BLOGS primary key ("BlogId")
);

/*==============================================================*/
/* Index: "publish blogs_FK"                                    */
/*==============================================================*/
create index "publish blogs_FK" on "Blogs" (
   "UserId" ASC
);

/*==============================================================*/
/* Index: "Blog_Language_FK"                                    */
/*==============================================================*/
create index "Blog_Language_FK" on "Blogs" (
   "LanguageId" ASC
);

/*==============================================================*/
/* Table: "Categorys"                                           */
/*==============================================================*/
create table "Categorys" 
(
   "CategoryId"         INTEGER              not null,
   "CategoryName"       VARCHAR2(100),
   constraint PK_CATEGORYS primary key ("CategoryId")
);

/*==============================================================*/
/* Table: "Chats"                                               */
/*==============================================================*/
create table "Chats" 
(
   "ChatId"             INTEGER              not null,
   "GroupId"            INTEGER,
   "IndividualConversationId" INTEGER,
   "TeamId"             INTEGER,
   "ChatName"           VARCHAR2(55),
   constraint PK_CHATS primary key ("ChatId")
);

/*==============================================================*/
/* Index: "Chat_Group2_FK"                                      */
/*==============================================================*/
create index "Chat_Group2_FK" on "Chats" (
   "GroupId" ASC
);

/*==============================================================*/
/* Index: "Chat_Team2_FK"                                       */
/*==============================================================*/
create index "Chat_Team2_FK" on "Chats" (
   "TeamId" ASC
);

/*==============================================================*/
/* Index: "Chat_Conversation2_FK"                               */
/*==============================================================*/
create index "Chat_Conversation2_FK" on "Chats" (
   "IndividualConversationId" ASC
);

/*==============================================================*/
/* Table: "Cities"                                              */
/*==============================================================*/
create table "Cities" 
(
   "CityId"             INTEGER              not null,
   "CountryId"          INTEGER,
   "CityName"           VARCHAR2(55),
   constraint PK_CITIES primary key ("CityId")
);

/*==============================================================*/
/* Index: "Country_City_FK"                                     */
/*==============================================================*/
create index "Country_City_FK" on "Cities" (
   "CountryId" ASC
);

/*==============================================================*/
/* Table: "Countries"                                           */
/*==============================================================*/
create table "Countries" 
(
   "CountryId"          INTEGER              not null,
   "CountryName"        VARCHAR2(55),
   constraint PK_COUNTRIES primary key ("CountryId")
);

/*==============================================================*/
/* Table: "Games"                                               */
/*==============================================================*/
create table "Games" 
(
   "GameId"             INTEGER              not null,
   "GroupId"            INTEGER,
   "GameName"           VARCHAR2(100),
   "GameInfo"           CLOB,
   "GameDate"           DATE,
   "GameRating"         INTEGER,
   "GameComplicity"     INTEGER,
   constraint PK_GAMES primary key ("GameId")
);

/*==============================================================*/
/* Index: "Game_Group_FK"                                       */
/*==============================================================*/
create index "Game_Group_FK" on "Games" (
   "GroupId" ASC
);

/*==============================================================*/
/* Table: "GroupParticipants"                                   */
/*==============================================================*/
create table "GroupParticipants" 
(
   "GroupParticipantId" INTEGER              not null,
   "GroupId"            INTEGER,
   "UserId"             INTEGER,
   "GroupInviteDate"    DATE,
   "GroupAccessionDate" DATE,
   constraint PK_GROUPPARTICIPANTS primary key ("GroupParticipantId")
);

/*==============================================================*/
/* Index: "User_GroupParticipant_FK"                            */
/*==============================================================*/
create index "User_GroupParticipant_FK" on "GroupParticipants" (
   "UserId" ASC
);

/*==============================================================*/
/* Index: "GroupParticipant_Group_FK"                           */
/*==============================================================*/
create index "GroupParticipant_Group_FK" on "GroupParticipants" (
   "GroupId" ASC
);

/*==============================================================*/
/* Table: "GroupRoles"                                          */
/*==============================================================*/
create table "GroupRoles" 
(
   "GroupRoleId"        INTEGER              not null,
   "GroupParticipantId" INTEGER,
   "GroupRole"          VARCHAR2(55),
   "GroupRoleDescription" CLOB,
   constraint PK_GROUPROLES primary key ("GroupRoleId")
);

/*==============================================================*/
/* Index: "GroupParticipant_GroupRole_FK"                       */
/*==============================================================*/
create index "GroupParticipant_GroupRole_FK" on "GroupRoles" (
   "GroupParticipantId" ASC
);

/*==============================================================*/
/* Table: "Groups"                                              */
/*==============================================================*/
create table "Groups" 
(
   "GroupId"            INTEGER              not null,
   "ChatId"             INTEGER,
   "GroupName"          VARCHAR2(100),
   "GroupInfo"          CLOB,
   "GroupCreationtDate" DATE,
   "GroupStatus"        VARCHAR2(55),
   constraint PK_GROUPS primary key ("GroupId")
);

/*==============================================================*/
/* Index: "Chat_Group_FK"                                       */
/*==============================================================*/
create index "Chat_Group_FK" on "Groups" (
   "ChatId" ASC
);

/*==============================================================*/
/* Table: "IndividualConversations"                             */
/*==============================================================*/
create table "IndividualConversations" 
(
   "IndividualConversationId" INTEGER              not null,
   "UserId"             INTEGER,
   "Use_UserId"         INTEGER,
   "ChatId"             INTEGER,
   constraint PK_INDIVIDUALCONVERSATIONS primary key ("IndividualConversationId")
);

/*==============================================================*/
/* Index: "Chat_Conversation_FK"                                */
/*==============================================================*/
create index "Chat_Conversation_FK" on "IndividualConversations" (
   "ChatId" ASC
);

/*==============================================================*/
/* Index: "UserSender_Conversation_FK"                          */
/*==============================================================*/
create index "UserSender_Conversation_FK" on "IndividualConversations" (
   "Use_UserId" ASC
);

/*==============================================================*/
/* Index: "UserRecipient_Conversation_FK"                       */
/*==============================================================*/
create index "UserRecipient_Conversation_FK" on "IndividualConversations" (
   "UserId" ASC
);

/*==============================================================*/
/* Table: "Languages"                                           */
/*==============================================================*/
create table "Languages" 
(
   "LanguageId"         INTEGER              not null,
   "LanguageName"       VARCHAR2(55),
   constraint PK_LANGUAGES primary key ("LanguageId")
);

/*==============================================================*/
/* Table: "Messages"                                            */
/*==============================================================*/
create table "Messages" 
(
   "MessageId"          INTEGER              not null,
   "ChatId"             INTEGER,
   "UserId"             INTEGER,
   "MessageText"        CLOB,
   "RemovableFlag"      SMALLINT,
   constraint PK_MESSAGES primary key ("MessageId")
);

/*==============================================================*/
/* Index: "Chat_Message_FK"                                     */
/*==============================================================*/
create index "Chat_Message_FK" on "Messages" (
   "ChatId" ASC
);

/*==============================================================*/
/* Index: "User_Message_FK"                                     */
/*==============================================================*/
create index "User_Message_FK" on "Messages" (
   "UserId" ASC
);

/*==============================================================*/
/* Table: "MultimediaContents"                                  */
/*==============================================================*/
create table "MultimediaContents" 
(
   "MultimediaContentId" INTEGER              not null,
   "QuestionId"         INTEGER,
   "Content"            BLOB,
   constraint PK_MULTIMEDIACONTENTS primary key ("MultimediaContentId")
);

/*==============================================================*/
/* Index: "Question_Content_FK"                                 */
/*==============================================================*/
create index "Question_Content_FK" on "MultimediaContents" (
   "QuestionId" ASC
);

/*==============================================================*/
/* Table: "Question_Category"                                   */
/*==============================================================*/
create table "Question_Category" 
(
   "QuestionId"         INTEGER              not null,
   "CategoryId"         INTEGER              not null,
   constraint PK_QUESTION_CATEGORY primary key ("QuestionId", "CategoryId")
);

/*==============================================================*/
/* Index: "Question_Category_FK"                                */
/*==============================================================*/
create index "Question_Category_FK" on "Question_Category" (
   "QuestionId" ASC
);

/*==============================================================*/
/* Index: "Question_Category2_FK"                               */
/*==============================================================*/
create index "Question_Category2_FK" on "Question_Category" (
   "CategoryId" ASC
);

/*==============================================================*/
/* Table: "Questions"                                           */
/*==============================================================*/
create table "Questions" 
(
   "QuestionId"         INTEGER              not null,
   "GameId"             INTEGER,
   "QuestionText"       CLOB,
   "QuestionAnswer"     CLOB,
   constraint PK_QUESTIONS primary key ("QuestionId")
);

/*==============================================================*/
/* Index: "Game_Question_FK"                                    */
/*==============================================================*/
create index "Game_Question_FK" on "Questions" (
   "GameId" ASC
);

/*==============================================================*/
/* Table: "Relationships"                                       */
/*==============================================================*/
create table "Relationships" 
(
   "RelationshipId"     INTEGER              not null,
   "UserId"             INTEGER,
   "Use_UserId"         INTEGER,
   "RelationshipDate"   DATE,
   "RelationshipType"   VARCHAR2(55),
   constraint PK_RELATIONSHIPS primary key ("RelationshipId")
);

/*==============================================================*/
/* Index: "User_RelationshipTo_FK"                              */
/*==============================================================*/
create index "User_RelationshipTo_FK" on "Relationships" (
   "Use_UserId" ASC
);

/*==============================================================*/
/* Index: "User_RelationshipFrom_FK"                            */
/*==============================================================*/
create index "User_RelationshipFrom_FK" on "Relationships" (
   "UserId" ASC
);

/*==============================================================*/
/* Table: "TeamParticipants"                                    */
/*==============================================================*/
create table "TeamParticipants" 
(
   "TeamParticipantId"  INTEGER              not null,
   "TeamId"             INTEGER,
   "TeamRoleId"         INTEGER,
   "UserId"             INTEGER,
   "TeamInviteDate"     DATE,
   "TeamAccessionDate"  DATE,
   "Ñontribution"       INTEGER,
   constraint PK_TEAMPARTICIPANTS primary key ("TeamParticipantId")
);

/*==============================================================*/
/* Index: "Team_ParticipantTeam_FK"                             */
/*==============================================================*/
create index "Team_ParticipantTeam_FK" on "TeamParticipants" (
   "TeamId" ASC
);

/*==============================================================*/
/* Index: "User_TeamParticipant_FK"                             */
/*==============================================================*/
create index "User_TeamParticipant_FK" on "TeamParticipants" (
   "UserId" ASC
);

/*==============================================================*/
/* Index: "TeamParticipant_TeamRole_FK"                         */
/*==============================================================*/
create index "TeamParticipant_TeamRole_FK" on "TeamParticipants" (
   "TeamRoleId" ASC
);

/*==============================================================*/
/* Table: "TeamRoles"                                           */
/*==============================================================*/
create table "TeamRoles" 
(
   "TeamRoleId"         INTEGER              not null,
   "TeamRole"           VARCHAR2(55),
   "TeamRoleDescription" CLOB,
   constraint PK_TEAMROLES primary key ("TeamRoleId")
);

/*==============================================================*/
/* Table: "Teams"                                               */
/*==============================================================*/
create table "Teams" 
(
   "TeamId"             INTEGER              not null,
   "ChatId"             INTEGER,
   "GameId"             INTEGER,
   "TeamCreationTime"   DATE,
   constraint PK_TEAMS primary key ("TeamId")
);

/*==============================================================*/
/* Index: "Game_Team_FK"                                        */
/*==============================================================*/
create index "Game_Team_FK" on "Teams" (
   "GameId" ASC
);

/*==============================================================*/
/* Index: "Chat_Team_FK"                                        */
/*==============================================================*/
create index "Chat_Team_FK" on "Teams" (
   "ChatId" ASC
);

/*==============================================================*/
/* Table: "Users"                                               */
/*==============================================================*/
create table "Users" 
(
   "UserId"             INTEGER              not null,
   "CityId"             INTEGER,
   "LanguageId"         INTEGER,
   "UserNameEnglish"    VARCHAR2(55),
   "UserSurnameEnglish" VARCHAR2(55),
   "UserNameNative"     VARCHAR2(55),
   "UserSurnameNative"  VARCHAR2(55),
   "UserNick"           VARCHAR2(55),
   "Sex"                VARCHAR2(15),
   "Email"              VARCHAR2(55),
   "Birth"              DATE,
   "UserLogin"          VARCHAR2(55),
   "UserPassword"       VARCHAR2(55),
   "SecurityFlag"       SMALLINT,
   "ConfirmFlag"        SMALLINT,
   "SubscribeFlag"      SMALLINT,
   "UserRating"         INTEGER,
   "UserKarma"          INTEGER,
   constraint PK_USERS primary key ("UserId")
);

/*==============================================================*/
/* Index: "User_City_FK"                                        */
/*==============================================================*/
create index "User_City_FK" on "Users" (
   "CityId" ASC
);

/*==============================================================*/
/* Index: "User_Language_FK"                                    */
/*==============================================================*/
create index "User_Language_FK" on "Users" (
   "LanguageId" ASC
);

alter table "BlogImages"
   add constraint FK_BLOGIMAG_BLOG_CONT_BLOGS foreign key ("BlogId")
      references "Blogs" ("BlogId");

alter table "Blogs"
   add constraint FK_BLOGS_BLOG_LANG_LANGUAGE foreign key ("LanguageId")
      references "Languages" ("LanguageId");

alter table "Blogs"
   add constraint "FK_BLOGS_PUBLISH B_USERS" foreign key ("UserId")
      references "Users" ("UserId");

alter table "Chats"
   add constraint FK_CHATS_CHAT_CONV_INDIVIDU foreign key ("IndividualConversationId")
      references "IndividualConversations" ("IndividualConversationId");

alter table "Chats"
   add constraint FK_CHATS_CHAT_GROU_GROUPS foreign key ("GroupId")
      references "Groups" ("GroupId");

alter table "Chats"
   add constraint FK_CHATS_CHAT_TEAM_TEAMS foreign key ("TeamId")
      references "Teams" ("TeamId");

alter table "Cities"
   add constraint FK_CITIES_COUNTRY_C_COUNTRIE foreign key ("CountryId")
      references "Countries" ("CountryId");

alter table "Games"
   add constraint FK_GAMES_GAME_GROU_GROUPS foreign key ("GroupId")
      references "Groups" ("GroupId");

alter table "GroupParticipants"
   add constraint FK_GROUPPAR_GROUPPART_GROUPS foreign key ("GroupId")
      references "Groups" ("GroupId");

alter table "GroupParticipants"
   add constraint FK_GROUPPAR_USER_GROU_USERS foreign key ("UserId")
      references "Users" ("UserId");

alter table "GroupRoles"
   add constraint FK_GROUPROL_GROUPPART_GROUPPAR foreign key ("GroupParticipantId")
      references "GroupParticipants" ("GroupParticipantId");

alter table "Groups"
   add constraint FK_GROUPS_CHAT_GROU_CHATS foreign key ("ChatId")
      references "Chats" ("ChatId");

alter table "IndividualConversations"
   add constraint FK_INDIVIDU_CHAT_CONV_CHATS foreign key ("ChatId")
      references "Chats" ("ChatId");

alter table "IndividualConversations"
   add constraint FK_INDIVIDU_USERRECIP_USERS foreign key ("UserId")
      references "Users" ("UserId");

alter table "IndividualConversations"
   add constraint FK_INDIVIDU_USERSENDE_USERS foreign key ("Use_UserId")
      references "Users" ("UserId");

alter table "Messages"
   add constraint FK_MESSAGES_CHAT_MESS_CHATS foreign key ("ChatId")
      references "Chats" ("ChatId");

alter table "Messages"
   add constraint FK_MESSAGES_USER_MESS_USERS foreign key ("UserId")
      references "Users" ("UserId");

alter table "MultimediaContents"
   add constraint FK_MULTIMED_QUESTION__QUESTION foreign key ("QuestionId")
      references "Questions" ("QuestionId");

alter table "Question_Category"
   add constraint FK_QUESTION_QUESTION__QUESTION foreign key ("QuestionId")
      references "Questions" ("QuestionId");

alter table "Question_Category"
   add constraint FK_QUESTION_QUESTION__CATEGORY foreign key ("CategoryId")
      references "Categorys" ("CategoryId");

alter table "Questions"
   add constraint FK_QUESTION_GAME_QUES_GAMES foreign key ("GameId")
      references "Games" ("GameId");

alter table "Relationships"
   add constraint FK_RELATION_USER_RELA_USERS foreign key ("UserId")
      references "Users" ("UserId");

alter table "Relationships"
   add constraint FK_RELATION_USER_RELA_USERS2 foreign key ("Use_UserId")
      references "Users" ("UserId");

alter table "TeamParticipants"
   add constraint FK_TEAMPART_TEAMPARTI_TEAMROLE foreign key ("TeamRoleId")
      references "TeamRoles" ("TeamRoleId");

alter table "TeamParticipants"
   add constraint FK_TEAMPART_TEAM_PART_TEAMS foreign key ("TeamId")
      references "Teams" ("TeamId");

alter table "TeamParticipants"
   add constraint FK_TEAMPART_USER_TEAM_USERS foreign key ("UserId")
      references "Users" ("UserId");

alter table "Teams"
   add constraint FK_TEAMS_CHAT_TEAM_CHATS foreign key ("ChatId")
      references "Chats" ("ChatId");

alter table "Teams"
   add constraint FK_TEAMS_GAME_TEAM_GAMES foreign key ("GameId")
      references "Games" ("GameId");

alter table "Users"
   add constraint FK_USERS_USER_CITY_CITIES foreign key ("CityId")
      references "Cities" ("CityId");

alter table "Users"
   add constraint FK_USERS_USER_LANG_LANGUAGE foreign key ("LanguageId")
      references "Languages" ("LanguageId");

