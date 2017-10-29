CREATE TABLE Parents(
	username VARCHAR(256) NOT NULL PRIMARY KEY
	name VARCHAR(256) NOT NULL 
	state VARCHAR(256) NOT NULL REFERENCES States(name)
)

CREATE TABLE Children(
	parent VARCHAR(256) NOT NULL PRIMARY KEY REFERENCES Parents(username)
	name VARCHAR(256) NOT NULL
	grade INTEGER NOT NULL CHECK (grade > 0 AND grade <= 12)
)

CREATE TABLE States(
	name VARCHAR(256) NOT NULL PRIMARY KEY
)

CREATE TABLE Standards(
	name VARCHAR(5000) NOT NULL PRIMARY KEY
	state VARCHAR(256) NOT NULL REFERENCES States(name)
)

CREATE TABLE Friends(
	friend1 VARCHAR(256) NOT NULL REFERENCES Parents(username)
	friend2 VARCHAR(256) NOT NULL REFERENCES Parents(username)
	PRIMARY KEY(friend1, friend2)
)