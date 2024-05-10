
-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS apple;


-- Create contacts table with primary key as date
CREATE TABLE apple (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM apple ;

-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS amzn;


-- Create contacts table with primary key as date
CREATE TABLE amzn (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM amzn ;

-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS gm;
-- Create contacts table with primary key as date
CREATE TABLE gm (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM gm ;

-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS goog;
-- Create contacts table with primary key as date
CREATE TABLE goog (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM goog ;

-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS hmc;
-- Create contacts table with primary key as date
CREATE TABLE hmc (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM hmc ;

-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS meta;
-- Create contacts table with primary key as date
CREATE TABLE meta (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM meta ;


-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS msft;
-- Create contacts table with primary key as date
CREATE TABLE msft (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM msft ;


-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS tm;
-- Create contacts table with primary key as date
CREATE TABLE tm (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM tm ;


-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS tsla;
-- Create contacts table with primary key as date
CREATE TABLE tsla (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM tsla ;


-- Drop tables from database if already exist (resets database and will need to import/re-improt data)
DROP TABLE IF EXISTS vwagy;
-- Create contacts table with primary key as date
CREATE TABLE vwagy (
    date date NOT NULL PRIMARY KEY, 
    volume VARCHAR NOT NULL,
    Fear_index VARCHAR NOT NULL,
    spy_index VARCHAR NOT NULL,
    FEDFUNDS VARCHAR NOT NULL,
    Target VARCHAR NOT NULL,
    MA VARCHAR NOT NULL,
    RSI VARCHAR NOT NULL,
    BB_UPPER  VARCHAR NOT NULL,
    BB_MIDDLE VARCHAR NOT NULL,
    BB_LOWER VARCHAR NOT NULL

);

-- Check to see if all tables were created corretly using SELECT 
-- Once data is imported into Postgres, run again to check if data imported correctly
SELECT * FROM vwagy ;