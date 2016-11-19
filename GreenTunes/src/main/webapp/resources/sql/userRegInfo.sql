DROP TABLE USERREGINFO;
CREATE TABLE USERREGINFO(
	userId		VARCHAR(20)		PRIMARY KEY,
	userPw		VARCHAR(20)		NOT NULL,
	userMail	VARCHAR(40)		NOT NULL	UNIQUE,
	userPhone	CHAR(11)		NOT NULL	UNIQUE,
	userGender	CHAR(1)			NOT NULL,
	userName	VARCHAR(8)		NOT NULL,
	userBirth	DATE			NOT NULL,
	userRegDate	DATE			NOT NULL,
	userLevel	INT				NOT NULL
);

DESC USERREGINFO;

INSERT INTO USERREGINFO (userId, userPw, userMail, userPhone, userGender, userName, userBirth, userRegDate, userLevel) VALUES
('a', 'a', 'aa@aa.com', '01055555555', 'f', 'kjy', '19920325', '20161119', '1');

SELECT * FROM USERREGINFO;