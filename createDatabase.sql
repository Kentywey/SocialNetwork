USE simonanswywayne;
Create table socialUser(id int NOT NULL AUTO_INCREMENT, pseudo varchar(255), PRIMARY KEY(id));
create table picture(id int NOT NULL AUTO_INCREMENT, imgName varchar(255),PRIMARY KEY (id));
Create table publishing(id int NOT NULL AUTO_INCREMENT, imgId int, userId int NOT NULL, content varchar(300), PRIMARY KEY(id),CONSTRAINT FK_PUB_USERID FOREIGN KEY (userId) REFERENCES socialUser(id), CONSTRAINT FK_PUB_IMGID FOREIGN KEY (imgId) REFERENCES picture(id));
Create table friends(id int NOT NULL AUTO_INCREMENT, firstUserId int, secondUserId int, PRIMARY KEY(id), CONSTRAINT FK_FRIENDS_FIRSTUSERID FOREIGN KEY (firstUserId) REFERENCES socialUser(id), CONSTRAINT FK_FRIENDS_SECONDUSERID FOREIGN KEY (secondUserId) REFERENCES socialUser(id));
Create table pwd(id int NOT NULL AUTO_INCREMENT, userId int, pass varchar(255), PRIMARY KEY(id), CONSTRAINT FK_PWD_USERID FOREIGN KEY (userId) REFERENCES socialUser(id));
Create table question(id int NOT NULL AUTO_INCREMENT, userId int, quest varchar(255), answer VARCHAR(255), CONSTRAINT FK_QUESTION_USERID FOREIGN KEY (userId) REFERENCES socialUser(id), PRIMARY KEY(id));
Insert into socialUser VALUES (1,"bomiok");
Insert into pwd VALUES (1,1,SHA1('toto'));