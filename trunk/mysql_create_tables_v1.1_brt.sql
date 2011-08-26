CREATE TABLE admins (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	name VARCHAR(15) NOT NULL,
	server VARCHAR(100) NOT NULL,
	access BIGINT unsigned DEFAULT '4294963199' NOT NULL
);

CREATE TABLE notes ( 
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	server VARCHAR(100) NOT NULL, 
	name VARCHAR(15) NOT NULL,
	note VARCHAR(250) NOT NULL	
);

CREATE TABLE safelist ( 
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	server VARCHAR(100) NOT NULL, 
	name VARCHAR(15) NOT NULL,
	voucher VARCHAR(15) DEFAULT '' NOT NULL	
);

CREATE TABLE bans (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	server VARCHAR(100) NOT NULL,
	name VARCHAR(15) NOT NULL,
	ip VARCHAR(15) NOT NULL,
	date DATETIME NOT NULL,
	gamename VARCHAR(31) NOT NULL,
	admin VARCHAR(15) NOT NULL,
	reason VARCHAR(255) NOT NULL,
	gamecount INT DEFAULT '0' NOT NULL,
	expiredate VARCHAR(31) DEFAULT '' NOT NULL,
	warn INTEGER DEFAULT '0' NOT NULL	
);

CREATE TABLE games (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	server VARCHAR(100) NOT NULL,
	map VARCHAR(100) NOT NULL,
	datetime DATETIME NOT NULL,
	gamename VARCHAR(31) NOT NULL,
	ownername VARCHAR(15) NOT NULL,
	duration INT NOT NULL,
	gamestate INT NOT NULL,
	creatorname VARCHAR(15) NOT NULL,
	creatorserver VARCHAR(100) NOT NULL
);

CREATE TABLE gameplayers (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	gameid INT NOT NULL,
	name VARCHAR(15) NOT NULL,
	ip VARCHAR(15) NOT NULL,
	spoofed INT NOT NULL,
	reserved INT NOT NULL,
	loadingtime INT NOT NULL,
	`left` INT NOT NULL,
	leftreason VARCHAR(100) NOT NULL,
	team INT NOT NULL,
	colour INT NOT NULL,
	spoofedrealm VARCHAR(100) NOT NULL,
	elopoint FLOAT NOT NULL DEFAULT 0.0,
	INDEX( gameid )
);

CREATE TABLE dotagames (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	gameid INT NOT NULL,
	winner INT NOT NULL,
	min INT NOT NULL,
	sec INT NOT NULL
);

CREATE TABLE dotaplayers (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	gameid INT NOT NULL,
	colour INT NOT NULL,
	kills INT NOT NULL,
	deaths INT NOT NULL,
	creepkills INT NOT NULL,
	creepdenies INT NOT NULL,
	assists INT NOT NULL,
	gold INT NOT NULL,
	neutralkills INT NOT NULL,
	item1 CHAR(4) NOT NULL,
	item2 CHAR(4) NOT NULL,
	item3 CHAR(4) NOT NULL,
	item4 CHAR(4) NOT NULL,
	item5 CHAR(4) NOT NULL,
	item6 CHAR(4) NOT NULL,
	hero CHAR(4) NOT NULL,
	newcolour INT NOT NULL,
	towerkills INT NOT NULL,
	raxkills INT NOT NULL,
	courierkills INT NOT NULL,
	INDEX( gameid, colour )
);

CREATE TABLE downloads (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	map VARCHAR(100) NOT NULL,
	mapsize INT NOT NULL,
	datetime DATETIME NOT NULL,
	name VARCHAR(15) NOT NULL,
	ip VARCHAR(15) NOT NULL,
	spoofed INT NOT NULL,
	spoofedrealm VARCHAR(100) NOT NULL,
	downloadtime INT NOT NULL
);

CREATE TABLE scores (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	category VARCHAR(25) NOT NULL,
	name VARCHAR(15) NOT NULL,
	server VARCHAR(100) NOT NULL,
	score REAL NOT NULL
);

CREATE TABLE w3mmdplayers (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	category VARCHAR(25) NOT NULL,
	gameid INT NOT NULL,
	pid INT NOT NULL,
	name VARCHAR(15) NOT NULL,
	flag VARCHAR(32) NOT NULL,
	leaver INT NOT NULL,
	practicing INT NOT NULL
);

CREATE TABLE w3mmdvars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	botid INT NOT NULL,
	gameid INT NOT NULL,
	pid INT NOT NULL,
	varname VARCHAR(25) NOT NULL,
	value_int INT DEFAULT NULL,
	value_real REAL DEFAULT NULL,
	value_string VARCHAR(100) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `users` (
  
	`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  
	`name` text NOT NULL,
  
	`password` text NOT NULL,
  
	`email` text NOT NULL,
  
	`lastconnect` text NOT NULL,
  
	`friendlist` text NOT NULL,
  
	 PRIMARY KEY (`id`)

) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;