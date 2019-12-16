CREATE SCHEMA IF NOT EXISTS chatbot;
USE chatbot;
CREATE TABLE IF NOT EXISTS users 
( uid INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL,
  payInfo VARCHAR(16),
  userType ENUM('user', 'producer') NOT NULL,
  CONSTRAINT users_pk PRIMARY KEY (uid)
  );
  
CREATE TABLE IF NOT EXISTS tickets
( ticketID INT NOT NULL AUTO_INCREMENT,
  ticStatus ENUM('Open', 'Resolved') NOT NULL,
  ticBody VARCHAR(255) NOT NULL,
  uid INT NOT NULL,
  CONSTRAINT tickets_pk PRIMARY KEY (ticketID),
  CONSTRAINT usrticket FOREIGN KEY (uid) REFERENCES users(uid)
);

CREATE TABLE IF NOT EXISTS payments
( uid INT NOT NULL,
  amount FLOAT NOT NULL,
  payDate DATETIME NOT NULL,
  payID INT NOT NULL AUTO_INCREMENT,
  payInfo VARCHAR(16),
  CONSTRAINT payments_pk PRIMARY KEY (payID),
  CONSTRAINT usrpayment FOREIGN KEY (uid) REFERENCES users(uid)
  );

  