
alter table "BlogImages"
   drop constraint FK_BLOGIMAG_BLOG_CONT_BLOGS;

alter table "Blogs"
   drop constraint FK_BLOGS_BLOG_LANG_LANGUAGE;

alter table "Blogs"
   drop constraint "FK_BLOGS_PUBLISH B_USERS";

alter table "Chats"
   drop constraint FK_CHATS_CHAT_CONV_INDIVIDU;

alter table "Chats"
   drop constraint FK_CHATS_CHAT_GROU_GROUPS;

alter table "Chats"
   drop constraint FK_CHATS_CHAT_TEAM_TEAMS;

alter table "Cities"
   drop constraint FK_CITIES_COUNTRY_C_COUNTRIE;

alter table "Games"
   drop constraint FK_GAMES_GAME_GROU_GROUPS;

alter table "GroupParticipants"
   drop constraint FK_GROUPPAR_GROUPPART_GROUPS;

alter table "GroupParticipants"
   drop constraint FK_GROUPPAR_USER_GROU_USERS;

alter table "GroupRoles"
   drop constraint FK_GROUPROL_GROUPPART_GROUPPAR;

alter table "Groups"
   drop constraint FK_GROUPS_CHAT_GROU_CHATS;

alter table "IndividualConversations"
   drop constraint FK_INDIVIDU_CHAT_CONV_CHATS;

alter table "IndividualConversations"
   drop constraint FK_INDIVIDU_USERRECIP_USERS;

alter table "IndividualConversations"
   drop constraint FK_INDIVIDU_USERSENDE_USERS;

alter table "Messages"
   drop constraint FK_MESSAGES_CHAT_MESS_CHATS;

alter table "Messages"
   drop constraint FK_MESSAGES_USER_MESS_USERS;

alter table "MultimediaContents"
   drop constraint FK_MULTIMED_QUESTION__QUESTION;

alter table "Question_Category"
   drop constraint FK_QUESTION_QUESTION__QUESTION;

alter table "Question_Category"
   drop constraint FK_QUESTION_QUESTION__CATEGORY;

alter table "Questions"
   drop constraint FK_QUESTION_GAME_QUES_GAMES;

alter table "Relationships"
   drop constraint FK_RELATION_USER_RELA_USERS;

alter table "Relationships"
   drop constraint FK_RELATION_USER_RELA_USERS2;

alter table "TeamParticipants"
   drop constraint FK_TEAMPART_TEAMPARTI_TEAMROLE;

alter table "TeamParticipants"
   drop constraint FK_TEAMPART_TEAM_PART_TEAMS;

alter table "TeamParticipants"
   drop constraint FK_TEAMPART_USER_TEAM_USERS;

alter table "Teams"
   drop constraint FK_TEAMS_CHAT_TEAM_CHATS;

alter table "Teams"
   drop constraint FK_TEAMS_GAME_TEAM_GAMES;

alter table "Users"
   drop constraint FK_USERS_USER_CITY_CITIES;

alter table "Users"
   drop constraint FK_USERS_USER_LANG_LANGUAGE;

drop table "Admin" cascade constraints;

drop index "Blog_Content_FK";

drop table "BlogImages" cascade constraints;

drop index "Blog_Language_FK";

drop index "publish blogs_FK";

drop table "Blogs" cascade constraints;

drop table "Categorys" cascade constraints;

drop index "Chat_Conversation2_FK";

drop index "Chat_Team2_FK";

drop index "Chat_Group2_FK";

drop table "Chats" cascade constraints;

drop index "Country_City_FK";

drop table "Cities" cascade constraints;

drop table "Countries" cascade constraints;

drop index "Game_Group_FK";

drop table "Games" cascade constraints;

drop index "GroupParticipant_Group_FK";

drop index "User_GroupParticipant_FK";

drop table "GroupParticipants" cascade constraints;

drop index "GroupParticipant_GroupRole_FK";

drop table "GroupRoles" cascade constraints;

drop index "Chat_Group_FK";

drop table "Groups" cascade constraints;

drop index "UserRecipient_Conversation_FK";

drop index "UserSender_Conversation_FK";

drop index "Chat_Conversation_FK";

drop table "IndividualConversations" cascade constraints;

drop table "Languages" cascade constraints;

drop index "User_Message_FK";

drop index "Chat_Message_FK";

drop table "Messages" cascade constraints;

drop index "Question_Content_FK";

drop table "MultimediaContents" cascade constraints;

drop index "Question_Category2_FK";

drop index "Question_Category_FK";

drop table "Question_Category" cascade constraints;

drop index "Game_Question_FK";

drop table "Questions" cascade constraints;

drop index "User_RelationshipFrom_FK";

drop index "User_RelationshipTo_FK";

drop table "Relationships" cascade constraints;

drop index "TeamParticipant_TeamRole_FK";

drop index "User_TeamParticipant_FK";

drop index "Team_ParticipantTeam_FK";

drop table "TeamParticipants" cascade constraints;

drop table "TeamRoles" cascade constraints;

drop index "Chat_Team_FK";

drop index "Game_Team_FK";

drop table "Teams" cascade constraints;

drop index "User_Language_FK";

drop index "User_City_FK";

drop table "Users" cascade constraints;