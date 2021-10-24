\c chess
INSERT into FEDERATION values( 'IND', 'India');
INSERT into FEDERATION values( 'USA', 'United States of America');
INSERT into FEDERATION values( 'CHN', 'China');
INSERT into FEDERATION values( 'NOR', 'Norway');
INSERT into FEDERATION values( 'RUS', 'Russia');
INSERT into FEDERATION values( 'NED', 'Netherlands');
INSERT into FEDERATION values( 'FRA', 'France');
INSERT into FEDERATION values( 'AZE', 'Azerbaijan');


INSERT into YEAR values ( 2015);
INSERT into YEAR values ( 2020);
INSERT into YEAR values ( 2019);
INSERT into YEAR values ( 2018);
INSERT into YEAR values ( 2017);
INSERT into YEAR values ( 2016);
INSERT into YEAR values ( 2014);
INSERT into YEAR values ( 2013);
INSERT into YEAR values ( 1990);
INSERT into YEAR values ( 1992);
INSERT into YEAR values ( 1993);
INSERT into YEAR values ( 1994);
INSERT into YEAR values ( 1986);






INSERT into Endgame VALUES ('5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32', 'B', '6k1/5p2/6p1/8/7p/8/6PP/6K1 b - - 0 0');
INSERT into Endgame VALUES ('3k4/2n2B2/1KP5/2B2p2/5b1p/7P/8/8 b - - 0 0', 'B', '6k1/5p2/6p1/8/7p/8/6PP/6K1 b - - 0 0' );
INSERT into Endgame VALUES('r7/4R2P/3p4/3k1K2/2p5/8/8/8 b - - 0 0', 'B', '8/8/5p2/1P1K1k2/8/2r5/8/7R w - - 0 0' );
INSERT into Endgame VALUES('5n2/R7/4pk2/8/5PK1/8/8/8 b - - 0 0', 'B', '3Q4/8/1k6/7p/p1p4P/2q3PB/7K/8 b - - 0 0' );
INSERT into Endgame VALUES('4q3/2R4P/5R2/1p6/p3k3/P7/KP6/8 b - - 0 0', 'B', 'R7/8/5rk1/5p2/1p5P/5KP1/P7/8 b - - 0 0' );
INSERT into Endgame VALUES ('3k4/5ppp/2q5/3p2r1/8/1Q3P2/P4P1P/3R3K w - - 0 1', 'B', '4R3/1k6/1p2P1p1/p7/4r3/1P1r4/1K6/2R5 w - - 0 0' );
INSERT into Endgame VALUES ('5k2/8/p7/4K1P1/P4R2/6r1/8/8 b - - 0 0', 'B', '5k2/1R6/4p1p1/1pr3Pp/7P/1K6/8/8 w - - 0 0' );
INSERT into Endgame VALUES('8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0', 'B', '3b2k1/1p3p2/p1p5/2P4p/1P2P1p1/5p2/5P2/4RK2 w - - 0 0' );


INSERT into Opening VALUES('A01 Larsens Opening: 1.b3', 'Larsens Opening', 'Modern variation: 1...e5' );
INSERT into Opening VALUES('A06 Réti Opening: 1...d5', 'Réti Opening', 'None' );
INSERT into Opening VALUES('A10 English Opening: 1.c4 ', 'English Opening', 'English Anglo-Dutch: 1...f5' );
INSERT into Opening VALUES('A13 English Opening: 1...e6 ', 'English Opening', 'None' );
INSERT into Opening VALUES('Ware Opening: 1.a4 ', 'Ware Opening', 'Ware Opening: 1.a4' );
INSERT into Opening VALUES('Durkin Opening: 1.Na3 ', 'Durkin Opening', 'Sodium Attack, Durkin Gambit: 1...e5 2.Nc4 Nc6 3. e4 f5' );
INSERT into Opening VALUES('Sokolsky Opening: 1.b4 ', 'Sokolsky Opening', 'Sokolsky Opening, Bugayev Attack: 1...e5 2.a3' );
INSERT into Opening VALUES('Saragossa Opening: 1.c3', 'Saragossa Opening', 'None' );




INSERT into PLAYER VALUES('1', 2800, 1992, 28, 'USA', 'Caruana, Fabiano' );
INSERT into PLAYER VALUES('2', 2855, 1990, 30, 'NOR', 'Carlsen, Magnus' );
INSERT into PLAYER VALUES('3', 2799, 1992, 28, 'CHN', 'Ding, Liren' );
INSERT into PLAYER VALUES('4', 2782, 1990, 30, 'RUS', 'Nepomniachtchi, Ian' );
INSERT into PLAYER VALUES('5', 2780, 1993, 27, 'USA', 'So, Wesley' );
INSERT into PLAYER VALUES('6', 2770, 1994, 26, 'NED', 'Giri, Anish' );
INSERT into PLAYER VALUES('7', 2761, 1993, 27, 'RUS', 'Grischuk, Alexander' );
INSERT into PLAYER VALUES('8', 2740, 1986, 34, 'IND', 'Harikrishna, Pentala' );


INSERT into Tournament VALUES('IND', 2020, 1);
INSERT into Tournament VALUES('NOR', 2019, 2);
INSERT into Tournament VALUES('CHN', 2018, 1);
INSERT into Tournament VALUES('RUS', 2017, 1);
INSERT into Tournament VALUES('USA', 2016, 5);
INSERT into Tournament VALUES('FRA', 2015, 6);
INSERT into Tournament VALUES('NED', 2014, 3);
INSERT into Tournament VALUES('AZE', 2013, 7);



INSERT into Game VALUES('1. c4 e5 2. Nc3 Nf6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. Nf3 Nc6 7. O-O O-O 8. Bd2 Ne7 9. b4 c6 10. h3 Ne8 11. Rb1 f5 12. Qc1 d5 13. cxd5 Nxd5 14. b5 Bd7 15. Nxd5 cxd5 16. Qc5 Qb6 17. Bb4 e4 18. dxe4 dxe4 19. Ng5 Qxc5 20. Bxc5 h6 21. Rfd1 Nf6 22. Be7 hxg5 23. Bxf6 Be6 24. Bxg7 Kxg7 25. a4 Rfc8 26. Rb4 Rc2 27. e3 Rac8 28. Rbd4 Ra2 29. R1d2 Rxd2 30. Rxd2 Rc4 31. a5 Rc1+ 32. Kh2 Ra1 33. Rc2 Rxa5 34. Rc7+ Kf6 35. Rxb7 Bc4 36. b6 a6 37. Rc7 Bd3 38. b7 Rb5 39. Rc6+ Kg7 40. Rxa6 Rxb7 41. Ra1 Rb2 42. Kg1 Kh6 1/2-1/2', 'IND', 2020, 1, 1, 3 );
INSERT into Game VALUES('1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 d6 6. f3 O-O 7. e4 e5 8. Bd3 Nc6 9. Be3 Re8 10. Ne2 b6 11. g4 Na5 12. Ng3 Ba6 13. Qe2 Nd7 14. h4 Nf8 15. f4 exf4 16. Bxf4 Qd7 17. O-O Qa4 18. Nf5 Bxc4 19. Bxc4 Qxc4 20. Qf3 Qe6 21. Rae1 Nc4 22. d5 Qd7 23. Nxg7 Kxg7 24. Bh6+ Kxh6 25. Qf6+ Ng6 26. Rf5 Re5 27. Re2 Rg8 28. Rh5+ Rxh5 29. g5+ Rxg5+ 30. hxg5+ Kh5 31. Rh2+ Kg4 32. Rg2+ ', 'NOR', 2019, 2, 4, 2);
INSERT into Game VALUES(' 1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 O-O 6. e5 Nfd7 7. h4 c5 8. e6 fxe6 9. h5 gxh5 10. Rxh5 Nf6 11. Rh4 Nc6 12. Be3 Qa5 13. Bd3 cxd4 14. Nxd4 Nxd4 15. Bxd4 e5 16. fxe5 dxe5 17. Be3 e4 18. Bc4+ Kh8 19. Qd4 Bg4 20. Bb3 Rac8 21. Bd2 Qa6 22. Qe3 Nd5', 'CHN', 2018, 1, 1, 6);
INSERT into Game VALUES('1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bc4 e6 7. Bb3 b5 8. O-O Nbd7 9. Re1 Nc5 10. Bd5 Nxd5 11. exd5 b4 12. dxe6 fxe6 13. Nd5 Bd7 14. Qg4 e5 15. Qg3 Kf7 16. Bg5 Qb8 17. Nf3 Qb7 18. Rad1 Bc6 19. Nxe5+ dxe5 20. Qxe5 Re8 21. Qf4+ Kg8 22. Rxe8 Bxe8 23. Nc7 h6 24. Nxe8 hxg5 25. Qxg5 Qe7 26. Qd5+ Qf7 27. Qe5 Qh5 28. Re1 Qxe5 29. Rxe5 Rh6 30. Nc7 Rc6 31. Nd5 Nd3 32. Re2 Nxb2 33. g4 a5 34. h4 Nd1 35. Nf4 Nc3 36. Rd2 a4 37. h5 Rd6 ', 'RUS', 2017, 1, 1, 3);
INSERT into Game VALUES('1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Nc6 5. Nf3 Qb6 6. Bd3 Bd7 7. O-O cxd4 8. cxd4 Nxd4 9. Nxd4 Qxd4 10. Nc3 Qxe5 11. Re1 Qb8 12. Nxd5 Bd6 13. h3 Ne7 14. Nxe7 Bxe7 15. Qg4 O-O 16. Bh6 Bf6 17. Qe4 g6 18. Bxf8 Bc6 19. Qb4 Qxf8 20. Qxf8+ Kxf8 21. Be4 Bxb2 22. Rab1 Bd4 23. Bxc6 bxc6 24. Red1 Rd8 25. Kf1 Ke8 26. Ke2 Rd7 27. Kf3 c5 28. g4 Ke7 29. Rb8 e5 30. Rh8 e4+ 31. Kxe4 Bxh8 32. Rxd7+ Kxd7 33. Kd5 Kc7 34. f4 Kb6 35. Kc4 Kc6 36. h4 f5 37. gxf5 gxf5 38. Kd3 Kd5 39. h5 c4+ ', 'USA', 2016,5, 3, 5);
INSERT into Game VALUES(' 1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7 12. Nbd2 Nc6 13. dxc5 dxc5 14. Nf1 Be6 15. Nh4 g6 16. Qf3 Kh8 17. Bg5 Ng8 18. Qg3 f5 19. f4 Bd6 20. exf5 Bxf5 21. Nxf5 exf4 22. Qf2 gxf5 23. Rad1 Rac8 24. Re6 Be5 25. Qxc5 Qg7 26. Bxf4 Bxf4 27. Rxc6 Bb8 28. Kh1 Ba7 29. Qd6 Bb8 30. Qe6 Rce8 31. Qd7 Re7 32. Qd4 Be5 33. Qd3 Nf6 34. Qxf5 Nd5 35. Rc8 Rf7 36. Rxf8+ Rxf8 37. Qe4 Nf4 38. Re1 Bd6 39. Qd4 Qxd4 40. cxd4 Ne2 41. Bd1 Bb4 42. Bxe2 Bxe1 43. Bf3 Rf4 44. d5 Ra4 45. a3 b4 46. axb4 Rxb4 47. d6 Rxb2 48. d7 Ba5 49. Ne3 Bc7 50. Kg1 a5 51. Bc6 Rb6 52. Ba4 Rb4 53. Bc6 Rd4 54. Nf5 Rc4 55. Bd5 Rc5 56. Be6 Re5', 'FRA', 2015, 2, 2, 6);
INSERT into Game VALUES('1. d4 c5 2. d5 e5 3. e4 d6 4. c4 g6 5. Nc3 Bg7 6. g3 Ne7 7. h4 h5 8. Bh3 Nd7 9. Nf3 Nf6 10. Bxc8 Qxc8 11. Ng5 Qd7 12. Be3 Ng4 13. Bd2 Bh6 14. Qe2 Nf6 15. f3 Nh7 16. Rb1 Nf8 17. b4 cxb4 18. Rxb4 f6 19. Ne6 Bxd2+ 20. Qxd2 Kf7 21. O-O b6 22. Nb5 Nxe6 23. dxe6+ Kxe6 24. Rd1 Rad8 25. a4 Nc6 26. Qd5+ Ke7 27. Rb2 a6 28. Nc3 Rb8 29. Kg2 Nd4 30. Rdb1 Qa7 31. a5 b5 32. cxb5 Rhc8 33. bxa6 Rxb2+ 34. Rxb2 Qxa6 35. Rb7+', 'RUS', 2014, 3, 3, 1);
INSERT into Game VALUES('1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7 4. Bxd7+ Qxd7 5. O-O Nf6 6. Re1 Nc6 7. c3 g6 8. d4 cxd4 9. cxd4 Bg7 10. d5 Nb4 11. Nc3 O-O 12. Be3 Rfc8 13. Bd4 b6 14. Qe2 Qb7 15. a3 Na6 16. b4 Nc7 17. b5 e5 18. Be3 Nd7 19. Nd2 Rf8 20. Na2','AZE', 2013, 7, 1, 7);





INSERT into Position VALUES('5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32', 'B', 'A01 Larsens Opening: 1.b3', '5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32'  );
INSERT into Position VALUES('8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0', 'W', 'A06 Réti Opening: 1...d5', 'r7/4R2P/3p4/3k1K2/2p5/8/8/8 b - - 0 0'  );
INSERT into Position VALUES('r7/4R2P/3p4/3k1K2/2p5/8/8/8 b - - 0 0', 'B',  'A10 English Opening: 1.c4 ', '5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32'  );
INSERT into Position VALUES('6k1/5p1p/6p1/1P1n4/1K4P1/N6P/8/8 w - - 0 0', 'w', 'Durkin Opening: 1.Na3 ', 'r7/4R2P/3p4/3k1K2/2p5/8/8/8 b - - 0 0'  );
INSERT into Position VALUES('5k1/p5/4P3/3L3p/6K1/1K2Nr2/PP3P2/8 b - - 1 32', 'W', 'A01 Larsens Opening: 1.b3', '5n2/R7/4pk2/8/5PK1/8/8/8 b - - 0 0'  );
INSERT into Position VALUES('6k1/8/5K2/8/5P1R/r6P/8/8 b - - 0 0', 'B', 'A13 English Opening: 1...e6 ', '8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0'  );
INSERT into Position VALUES('1R6/p2r4/2ppkp2/6p1/2PKP2p/P4P2/6PP/8 b - - 0 0', 'W', 'Saragossa Opening: 1.c3', 'r7/4R2P/3p4/3k1K2/2p5/8/8/8 b - - 0 0'  );
INSERT into Position VALUES('R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0', 'W', 'A13 English Opening: 1...e6 ', '4q3/2R4P/5R2/1p6/p3k3/P7/KP6/8 b - - 0 0' );


INSERT into Next_legal_moves VALUES('5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32', '8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0');
INSERT into Next_legal_moves VALUES('8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0', 'R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0');
INSERT into Next_legal_moves VALUES('6k1/5p1p/6p1/1P1n4/1K4P1/N6P/8/8 w - - 0 0', '8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0');
INSERT into Next_legal_moves VALUES('5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32', 'R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0');
INSERT into Next_legal_moves VALUES('R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0', '8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0');
INSERT into Next_legal_moves VALUES('1R6/p2r4/2ppkp2/6p1/2PKP2p/P4P2/6PP/8 b - - 0 0', 'R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0');
INSERT into Next_legal_moves VALUES('5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32', '1R6/p2r4/2ppkp2/6p1/2PKP2p/P4P2/6PP/8 b - - 0 0');
INSERT into Next_legal_moves VALUES('6k1/8/5K2/8/5P1R/r6P/8/8 b - - 0 0', 'R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0');


INSERT into Reached VALUES('1. c4 e5 2. Nc3 Nf6 3. g3 g6 4. Bg2 Bg7 5. d3 d6 6. Nf3 Nc6 7. O-O O-O 8. Bd2 Ne7 9. b4 c6 10. h3 Ne8 11. Rb1 f5 12. Qc1 d5 13. cxd5 Nxd5 14. b5 Bd7 15. Nxd5 cxd5 16. Qc5 Qb6 17. Bb4 e4 18. dxe4 dxe4 19. Ng5 Qxc5 20. Bxc5 h6 21. Rfd1 Nf6 22. Be7 hxg5 23. Bxf6 Be6 24. Bxg7 Kxg7 25. a4 Rfc8 26. Rb4 Rc2 27. e3 Rac8 28. Rbd4 Ra2 29. R1d2 Rxd2 30. Rxd2 Rc4 31. a5 Rc1+ 32. Kh2 Ra1 33. Rc2 Rxa5 34. Rc7+ Kf6 35. Rxb7 Bc4 36. b6 a6 37. Rc7 Bd3 38. b7 Rb5 39. Rc6+ Kg7 40. Rxa6 Rxb7 41. Ra1 Rb2 42. Kg1 Kh6 1/2-1/2', '5k2/ppp5/4P3/3R3p/6P1/1K2Nr2/PP3P2/8 b - - 1 32');
INSERT into Reached VALUES('1. d4 Nf6 2. c4 e6 3. Nc3 Bb4 4. a3 Bxc3+ 5. bxc3 d6 6. f3 O-O 7. e4 e5 8. Bd3 Nc6 9. Be3 Re8 10. Ne2 b6 11. g4 Na5 12. Ng3 Ba6 13. Qe2 Nd7 14. h4 Nf8 15. f4 exf4 16. Bxf4 Qd7 17. O-O Qa4 18. Nf5 Bxc4 19. Bxc4 Qxc4 20. Qf3 Qe6 21. Rae1 Nc4 22. d5 Qd7 23. Nxg7 Kxg7 24. Bh6+ Kxh6 25. Qf6+ Ng6 26. Rf5 Re5 27. Re2 Rg8 28. Rh5+ Rxh5 29. g5+ Rxg5+ 30. hxg5+ Kh5 31. Rh2+ Kg4 32. Rg2+ ','r7/4R2P/3p4/3k1K2/2p5/8/8/8 b - - 0 0'); 
INSERT into Reached VALUES('1. e4 c5 2. Nf3 d6 3. d4 cxd4 4. Nxd4 Nf6 5. Nc3 a6 6. Bc4 e6 7. Bb3 b5 8. O-O Nbd7 9. Re1 Nc5 10. Bd5 Nxd5 11. exd5 b4 12. dxe6 fxe6 13. Nd5 Bd7 14. Qg4 e5 15. Qg3 Kf7 16. Bg5 Qb8 17. Nf3 Qb7 18. Rad1 Bc6 19. Nxe5+ dxe5 20. Qxe5 Re8 21. Qf4+ Kg8 22. Rxe8 Bxe8 23. Nc7 h6 24. Nxe8 hxg5 25. Qxg5 Qe7 26. Qd5+ Qf7 27. Qe5 Qh5 28. Re1 Qxe5 29. Rxe5 Rh6 30. Nc7 Rc6 31. Nd5 Nd3 32. Re2 Nxb2 33. g4 a5 34. h4 Nd1 35. Nf4 Nc3 36. Rd2 a4 37. h5 Rd6 ', '8/8/8/p2r1k2/7p/PP1RK3/6P1/8 b - - 0 0'); 
INSERT into Reached VALUES(' 1. e4 d6 2. d4 Nf6 3. Nc3 g6 4. f4 Bg7 5. Nf3 O-O 6. e5 Nfd7 7. h4 c5 8. e6 fxe6 9. h5 gxh5 10. Rxh5 Nf6 11. Rh4 Nc6 12. Be3 Qa5 13. Bd3 cxd4 14. Nxd4 Nxd4 15. Bxd4 e5 16. fxe5 dxe5 17. Be3 e4 18. Bc4+ Kh8 19. Qd4 Bg4 20. Bb3 Rac8 21. Bd2 Qa6 22. Qe3 Nd5', '6k1/5p1p/6p1/1P1n4/1K4P1/N6P/8/8 w - - 0 0'); 
INSERT into Reached VALUES('1. e4 e6 2. d4 d5 3. e5 c5 4. c3 Nc6 5. Nf3 Qb6 6. Bd3 Bd7 7. O-O cxd4 8. cxd4 Nxd4 9. Nxd4 Qxd4 10. Nc3 Qxe5 11. Re1 Qb8 12. Nxd5 Bd6 13. h3 Ne7 14. Nxe7 Bxe7 15. Qg4 O-O 16. Bh6 Bf6 17. Qe4 g6 18. Bxf8 Bc6 19. Qb4 Qxf8 20. Qxf8+ Kxf8 21. Be4 Bxb2 22. Rab1 Bd4 23. Bxc6 bxc6 24. Red1 Rd8 25. Kf1 Ke8 26. Ke2 Rd7 27. Kf3 c5 28. g4 Ke7 29. Rb8 e5 30. Rh8 e4+ 31. Kxe4 Bxh8 32. Rxd7+ Kxd7 33. Kd5 Kc7 34. f4 Kb6 35. Kc4 Kc6 36. h4 f5 37. gxf5 gxf5 38. Kd3 Kd5 39. h5 c4+ ', '5k1/p5/4P3/3L3p/6K1/1K2Nr2/PP3P2/8 b - - 1 32'); 
INSERT into Reached VALUES('1. d4 c5 2. d5 e5 3. e4 d6 4. c4 g6 5. Nc3 Bg7 6. g3 Ne7 7. h4 h5 8. Bh3 Nd7 9. Nf3 Nf6 10. Bxc8 Qxc8 11. Ng5 Qd7 12. Be3 Ng4 13. Bd2 Bh6 14. Qe2 Nf6 15. f3 Nh7 16. Rb1 Nf8 17. b4 cxb4 18. Rxb4 f6 19. Ne6 Bxd2+ 20. Qxd2 Kf7 21. O-O b6 22. Nb5 Nxe6 23. dxe6+ Kxe6 24. Rd1 Rad8 25. a4 Nc6 26. Qd5+ Ke7 27. Rb2 a6 28. Nc3 Rb8 29. Kg2 Nd4 30. Rdb1 Qa7 31. a5 b5 32. cxb5 Rhc8 33. bxa6 Rxb2+ 34. Rxb2 Qxa6 35. Rb7+', '6k1/8/5K2/8/5P1R/r6P/8/8 b - - 0 0'); 
INSERT into Reached VALUES('1. e4 c5 2. Nf3 d6 3. Bb5+ Bd7 4. Bxd7+ Qxd7 5. O-O Nf6 6. Re1 Nc6 7. c3 g6 8. d4 cxd4 9. cxd4 Bg7 10. d5 Nb4 11. Nc3 O-O 12. Be3 Rfc8 13. Bd4 b6 14. Qe2 Qb7 15. a3 Na6 16. b4 Nc7 17. b5 e5 18. Be3 Nd7 19. Nd2 Rf8 20. Na2', '1R6/p2r4/2ppkp2/6p1/2PKP2p/P4P2/6PP/8 b - - 0 0'); 
INSERT into Reached VALUES(' 1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. O-O Be7 6. Re1 b5 7. Bb3 O-O 8. c3 d6 9. h3 Na5 10. Bc2 c5 11. d4 Qc7 12. Nbd2 Nc6 13. dxc5 dxc5 14. Nf1 Be6 15. Nh4 g6 16. Qf3 Kh8 17. Bg5 Ng8 18. Qg3 f5 19. f4 Bd6 20. exf5 Bxf5 21. Nxf5 exf4 22. Qf2 gxf5 23. Rad1 Rac8 24. Re6 Be5 25. Qxc5 Qg7 26. Bxf4 Bxf4 27. Rxc6 Bb8 28. Kh1 Ba7 29. Qd6 Bb8 30. Qe6 Rce8 31. Qd7 Re7 32. Qd4 Be5 33. Qd3 Nf6 34. Qxf5 Nd5 35. Rc8 Rf7 36. Rxf8+ Rxf8 37. Qe4 Nf4 38. Re1 Bd6 39. Qd4 Qxd4 40. cxd4 Ne2 41. Bd1 Bb4 42. Bxe2 Bxe1 43. Bf3 Rf4 44. d5 Ra4 45. a3 b4 46. axb4 Rxb4 47. d6 Rxb2 48. d7 Ba5 49. Ne3 Bc7 50. Kg1 a5 51. Bc6 Rb6 52. Ba4 Rb4 53. Bc6 Rd4 54. Nf5 Rc4 55. Bd5 Rc5 56. Be6 Re5', 'R7/8/8/6p1/4k3/3rPp1P/8/6K1 b - - 0 0'); 
