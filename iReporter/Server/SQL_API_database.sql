delimiter $$

CREATE TABLE "login" (
  "IdUser" int(11) NOT NULL AUTO_INCREMENT,
  "username" varchar(45) CHARACTER SET latin1 NOT NULL,
  "pass" varchar(45) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY ("IdUser")
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8$$

CREATE TABLE "photos" (
  "IdPhoto" int(11) NOT NULL AUTO_INCREMENT,
  "title" varchar(100) CHARACTER SET latin1 NOT NULL,
  "IdUser" int(11) NOT NULL,
  PRIMARY KEY ("IdPhoto")
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8$$

