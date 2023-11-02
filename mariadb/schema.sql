-- create database if not exists
CREATE DATABASE IF NOT EXISTS Fortune_Tracker;

-- use database
use Fortune_Tracker;

-- create tables if not exists
CREATE TABLE IF NOT EXISTS User (
	UUID varchar(36) PRIMARY KEY, 
	Email varchar(255) UNIQUE NOT NULL,
	Password varchar(60) NOT NULL, 
	INDEX Email_Index (email)
);

CREATE TABLE IF NOT EXISTS User_Info (
	UUID varchar(36) PRIMARY KEY, 
	Username varchar(255) NOT NULL, 
	Is_Pro TINYINT(1) NOT NULL DEFAULT 0, 
	FOREIGN KEY (UUID) REFERENCES User(UUID) ON DELETE CASCADE
);
