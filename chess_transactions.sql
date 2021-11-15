#Transaction 1
#Insert the country 'Algeria' into the 'Federation' table

INSERT INTO Federation (Country_code, Country)
	VALUES ('ALG', 'Algera')
	ON CONFLICT (Country_code)
	DO NOTHING
RETURNING *;

INSERT INTO Federation (Country_code, Country)
	VALUES ('AZE', 'Azerbaijan')
	ON CONFLICT (Country_code)
	DO NOTHING
RETURNING *;

BEGIN;
SELECT Country from Federation WHERE Country_code='ALG' FOR UPDATE OF Federation;
UPDATE Federation SET Country='Algeria' WHERE Country_code='ALG';
COMMIT;
SELECT Country from Federation WHERE Country_code='ALG';

#Transaction 2
#Add a new opening move to the table 'Opening' and modify its variation

INSERT INTO Opening (ECO, Name, Variation)
	VALUES ('E00 Catalan Opening: 1.d4 Nf6 2. c4 e6 3. g3', 'Catalan Opening', 'Queens pawn game: 1. d4 Nf6 2. c4 e6')
	ON CONFLICT (ECO)
	DO NOTHING
RETURNING *;

INSERT INTO Opening (ECO, Name, Variation)
	VALUES('Saragossa Opening: 1.c3', 'Saragossa Opening', 'Polish outflank variation: 1. b4 c6')
	ON CONFLICT (ECO)
	DO NOTHING
RETURNING *;

BEGIN;
SELECT Name, Variation from Opening WHERE ECO='E00 Catalan Opening: 1.d4 Nf6 2. c4 e6 3. g3' FOR UPDATE OF Opening;
UPDATE Opening SET Variation='Seirawan attack: 1. d4 Nf6 2. c4 e6 3. Bg5' WHERE ECO='E00 Catalan Opening: 1.d4 Nf6 2. c4 e6 3. g3';
COMMIT;
SELECT Name, Variation from Opening WHERE ECO='E00 Catalan Opening: 1.d4 Nf6 2. c4 e6 3. g3';

#Transaction 3
#Create a savepoint to insert select players into the table 'Player'

INSERT INTO Player (FIDE_ID, Rating, Birth_year, Age, Belongs_to, Name)
	VALUES('5', 2780, 1993, 28, 'USA', 'So, Wesley')
	ON CONFLICT (FIDE_ID)
	DO UPDATE SET Age=Player.Age+1
RETURNING *;

BEGIN;
SELECT FIDE_ID, Belongs_to, Name from Player FOR UPDATE OF Player;
INSERT INTO Player VALUES('9', 2900, 1986, 34, 'USA', 'Nakamura, Hikaru');
SAVEPOINT S1;
INSERT INTO Player VALUES('10', 3169, 1986, 34, 'IND', 'Anand, Vishwanathan');
ROLLBACK to S1;
END transaction;
SELECT Name from Player;

#Transaction 4
#Insert multiple records into the table 'Tournament' 

BEGIN;
SELECT Location, Year from Tournament FOR UPDATE OF Tournament;
INSERT INTO Tournament VALUES ('AUS', 1986, 3);
INSERT INTO Tournament VALUES ('CRO', 1993, 8);
INSERT INTO Tournament VALUES ('GER', 1990, 2);
SELECT * from Tournament;
ROLLBACK;
SELECT * from Tournament;

#Transaction 5
#Transfer all the victories of Fabiano Caruana to Liren Ding

BEGIN;
SELECT * from Tournament WHERE Won_by='3' OR Won_by='1' FOR UPDATE of Tournament;
UPDATE Tournament SET Won_by='3' WHERE Won_by='1';
SELECT * from Tournament;
ROLLBACK;
SELECT * from Tournament;





