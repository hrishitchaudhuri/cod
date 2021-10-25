drop database chess;
create database chess;
\c chess

 CREATE TABLE Federation
 (	Country_code VARCHAR(10) NOT NULL,
 	Country CHAR(30),

 	UNIQUE(Country_code),

 	PRIMARY KEY (Country_code)

 	);

 CREATE TABLE Year
 (	Year INT NOT NULL, 

 	PRIMARY KEY (Year)
 	);

CREATE TABLE Endgame
 (	Remaining_pieces VARCHAR(70) NOT NULL,
 	Evaluation CHAR(1),
 	Next_best_move VARCHAR(70),

 	PRIMARY KEY (Remaining_pieces)
 	);

 CREATE TABLE Opening
 (	ECO VARCHAR(50) NOT NULL,
 	Name CHAR(30),
 	Variation VARCHAR(60),

 	PRIMARY KEY (ECO)
 	);


 CREATE TABLE 	Player
 (	FIDE_ID VARCHAR(30) NOT NULL ,
	Rating INT, 
	Birth_year INT NOT NULL, 
	Age INT,
	Belongs_to VARCHAR(10) NOT NULL,
	Name CHAR(30),

	UNIQUE(FIDE_ID),

	PRIMARY KEY (FIDE_ID),
	FOREIGN KEY (Birth_year) REFERENCES Year(Year),      
	FOREIGN KEY (Belongs_to) REFERENCES Federation(Country_code)

	);

CREATE TABLE Tournament
 (	Location CHAR(30) NOT NULL,
 	Year INT NOT NULL,
 	Won_by CHAR(3) NOT NULL,

 	UNIQUE (Year),
 	UNIQUE(Location),


 	PRIMARY KEY (Location, Year),
 	FOREIGN KEY (Year) REFERENCES Year(Year),
 	FOREIGN KEY (Won_by) REFERENCES Player(FIDE_ID)


 	);


CREATE TABLE 	Game
 (	PGN VARCHAR(2000) NOT NULL ,
	Tournament_name CHAR(30) NOT NULL, 
	Tournament_year INT NOT NULL, 
	Won CHAR(3),
	Played_black CHAR(3) NOT NULL,
	Played_white CHAR(3) NOT NULL,

	PRIMARY KEY (PGN),
	FOREIGN KEY (Tournament_name) REFERENCES Tournament(Location),     
	FOREIGN KEY (Tournament_year) REFERENCES Tournament(Year),
	FOREIGN KEY (Won) REFERENCES Player(FIDE_ID),
	FOREIGN KEY (Played_black) REFERENCES Player(FIDE_ID),
	FOREIGN KEY (Played_white) REFERENCES Player(FIDE_ID)

	);




 CREATE TABLE Position
 (	FEN VARCHAR(70) NOT NULL,
 	Eval CHAR(1),
 	Opening VARCHAR(30),
 	Endgame VARCHAR(70),

 	PRIMARY KEY (FEN),
 	FOREIGN KEY (Opening) REFERENCES Opening(ECO),
 	FOREIGN KEY (Endgame) REFERENCES Endgame(Remaining_pieces)
 	);

 

 
 CREATE TABLE Next_legal_moves
 (	Orginal VARCHAR(70) NOT NULL,
 	Next VARCHAR(70) NOT NULL,

 	PRIMARY KEY (Orginal, Next),
 	FOREIGN KEY (Orginal) REFERENCES Position(FEN),
 	FOREIGN KEY (Next) REFERENCES Position(FEN)


 	);

 CREATE TABLE Reached
 (	PGN VARCHAR(2000) NOT NULL,
 	FEN VARCHAR(70) NOT NULL,

 	PRIMARY KEY (PGN, FEN),
 	FOREIGN KEY (PGN) REFERENCES Game(PGN),
	FOREIGN KEY (FEN) REFERENCES Position(FEN)
 	);