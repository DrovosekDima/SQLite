CREATE TABLE players (
	
	P_ID INTEGER PRIMARY KEY AUTOINCREMENT,	
	first_name varchar,

	last_name varchar,
	
	birth date,

	country varchar,	
	height decimal,

	weight decimal,
	photo blob,
	team_id INTEGER);



CREATE TABLE goals (
	
	G_ID INTEGER PRIMARY KEY AUTOINCREMENT,	
	minute time,

	player_id INTEGER,

	match_id INTEGER,	
	type string
);



CREATE TABLE teams (
	
	T_ID INTEGER PRIMARY KEY AUTOINCREMENT,	
	title varchar,

	city varchar,

	emblem blob,

	season date,

	win decimal,

	draw decimal,

	lost decimal
);



CREATE TABLE staff (
	
	S_ID INTEGER PRIMARY KEY AUTOINCREMENT,
	
	player_id INTEGER,

	position string,

	season date,

	team_id INTEGER);



CREATE TABLE matches (

	M_ID INTEGER PRIMARY KEY AUTOINCREMENT,

	home_team_id INTEGER,

	guest_team_id INTEGER,

	score_home decimal,

	score_guest decimal,
	round decimal,

	season decimal,

	datem datetime,

	location varchar);



CREATE TABLE penalties (

	match_id INTEGER,
	player_id INTEGER,
	minute time,

	red boolean,

	yellow boolean,
	
	caution boolean
);

