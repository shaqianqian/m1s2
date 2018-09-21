-- on génère des lecons avec le moniteur 17 pour le niveau 41 à partir de 2015-12-16
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (1,'16/12/2015',120,41,17,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (2,'17/12/2015',120,41,17,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (3,'18/12/2015',120,41,17,6);
-- pas de niveau pour l'eleve 44 en snowboard
-- pas de niveau pour l'eleve 36 en snowboard
insert into SIO_SUIT(e_id,l_id) values (44 , 1);
insert into SIO_SUIT(e_id,l_id) values (44 , 2);
insert into SIO_SUIT(e_id,l_id) values (44 , 3);
-- l'eleve 44 a atteint le niveau 41
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (44,41,6,'19/12/2015',1);
insert into SIO_SUIT(e_id,l_id) values (36 , 1);
insert into SIO_SUIT(e_id,l_id) values (36 , 2);
insert into SIO_SUIT(e_id,l_id) values (36 , 3);
-- l'eleve 36 a atteint le niveau 41
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (36,41,6,'19/12/2015',1);
-- on génère des lecons avec le moniteur 9 pour le niveau 22 à partir de 2015-03-13
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (4,'13/3/2015',60,22,9,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (5,'14/3/2015',60,22,9,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (6,'15/3/2015',60,22,9,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (7,'16/3/2015',60,22,9,3);
-- pas de niveau pour l'eleve 42 en ski alpin
-- pas de niveau pour l'eleve 47 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (42 , 4);
insert into SIO_SUIT(e_id,l_id) values (42 , 5);
insert into SIO_SUIT(e_id,l_id) values (42 , 6);
insert into SIO_SUIT(e_id,l_id) values (42 , 7);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (42,22,3,'17/3/2015',0);
insert into SIO_SUIT(e_id,l_id) values (47 , 4);
insert into SIO_SUIT(e_id,l_id) values (47 , 5);
insert into SIO_SUIT(e_id,l_id) values (47 , 6);
insert into SIO_SUIT(e_id,l_id) values (47 , 7);
-- l'eleve 47 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (47,22,3,'17/3/2015',1);
-- on génère des lecons avec le moniteur 3 pour le niveau 22 à partir de 2015-02-14
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (8,'14/2/2015',60,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (9,'15/2/2015',60,22,3,8);
-- pas de niveau pour l'eleve 39 en ski alpin
-- pas de niveau pour l'eleve 30 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (39 , 8);
insert into SIO_SUIT(e_id,l_id) values (39 , 9);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (39,22,8,'16/2/2015',0);
insert into SIO_SUIT(e_id,l_id) values (30 , 8);
insert into SIO_SUIT(e_id,l_id) values (30 , 9);
-- l'eleve 30 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (30,22,8,'16/2/2015',1);
-- on génère des lecons avec le moniteur 5 pour le niveau 25 à partir de 2015-03-17
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (10,'17/3/2015',60,25,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (11,'18/3/2015',60,25,5,2);
-- pas de niveau pour l'eleve 16 en ski alpin
-- pas de niveau pour l'eleve 49 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (16 , 10);
insert into SIO_SUIT(e_id,l_id) values (16 , 11);
-- l'eleve 16 a atteint le niveau 25
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (16,25,2,'19/3/2015',1);
insert into SIO_SUIT(e_id,l_id) values (49 , 10);
insert into SIO_SUIT(e_id,l_id) values (49 , 11);
-- l'eleve 49 a atteint le niveau 25
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (49,25,2,'19/3/2015',1);
-- on génère des lecons avec le moniteur 6 pour le niveau 23 à partir de 2015-12-19
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (12,'19/12/2015',120,23,6,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (13,'20/12/2015',120,23,6,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (14,'21/12/2015',120,23,6,2);
-- pas de niveau pour l'eleve 38 en ski alpin
-- pas de niveau pour l'eleve 41 en ski alpin
-- pas de niveau pour l'eleve 43 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (38 , 12);
insert into SIO_SUIT(e_id,l_id) values (38 , 13);
insert into SIO_SUIT(e_id,l_id) values (38 , 14);
-- l'eleve 38 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (38,23,2,'22/12/2015',1);
insert into SIO_SUIT(e_id,l_id) values (41 , 12);
insert into SIO_SUIT(e_id,l_id) values (41 , 13);
insert into SIO_SUIT(e_id,l_id) values (41 , 14);
-- l'eleve 41 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (41,23,2,'22/12/2015',1);
insert into SIO_SUIT(e_id,l_id) values (43 , 12);
insert into SIO_SUIT(e_id,l_id) values (43 , 13);
insert into SIO_SUIT(e_id,l_id) values (43 , 14);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (43,23,2,'22/12/2015',0);
-- on génère des lecons avec le moniteur 10 pour le niveau 24 à partir de 2015-03-03
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (15,'3/3/2015',60,24,10,4);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (16,'4/3/2015',60,24,10,4);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (17,'5/3/2015',60,24,10,4);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (18,'6/3/2015',60,24,10,4);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (19,'7/3/2015',60,24,10,4);
-- pas de niveau pour l'eleve 25 en ski alpin
-- pas de niveau pour l'eleve 23 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (25 , 15);
insert into SIO_SUIT(e_id,l_id) values (25 , 16);
insert into SIO_SUIT(e_id,l_id) values (25 , 17);
insert into SIO_SUIT(e_id,l_id) values (25 , 18);
insert into SIO_SUIT(e_id,l_id) values (25 , 19);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (25,24,4,'8/3/2015',0);
insert into SIO_SUIT(e_id,l_id) values (23 , 15);
insert into SIO_SUIT(e_id,l_id) values (23 , 16);
insert into SIO_SUIT(e_id,l_id) values (23 , 17);
insert into SIO_SUIT(e_id,l_id) values (23 , 18);
insert into SIO_SUIT(e_id,l_id) values (23 , 19);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (23,24,4,'8/3/2015',0);
-- on génère des lecons avec le moniteur 17 pour le niveau 42 à partir de 2015-01-02
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (20,'2/1/2015',120,42,17,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (21,'3/1/2015',120,42,17,6);
-- pas de niveau pour l'eleve 18 en snowboard
-- pas de niveau pour l'eleve 14 en snowboard
-- pas de niveau pour l'eleve 34 en snowboard
insert into SIO_SUIT(e_id,l_id) values (18 , 20);
insert into SIO_SUIT(e_id,l_id) values (18 , 21);
-- l'eleve 18 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (18,42,6,'4/1/2015',1);
insert into SIO_SUIT(e_id,l_id) values (14 , 20);
insert into SIO_SUIT(e_id,l_id) values (14 , 21);
-- l'eleve 14 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (14,42,6,'4/1/2015',1);
insert into SIO_SUIT(e_id,l_id) values (34 , 20);
insert into SIO_SUIT(e_id,l_id) values (34 , 21);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (34,42,6,'4/1/2015',0);
-- on génère des lecons avec le moniteur 16 pour le niveau 42 à partir de 2015-11-24
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (22,'24/11/2015',90,42,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (23,'25/11/2015',90,42,16,7);
-- pas de niveau pour l'eleve 15 en snowboard
-- pas de niveau pour l'eleve 28 en snowboard
-- pas de niveau pour l'eleve 19 en snowboard
insert into SIO_SUIT(e_id,l_id) values (15 , 22);
insert into SIO_SUIT(e_id,l_id) values (15 , 23);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (15,42,7,'26/11/2015',0);
insert into SIO_SUIT(e_id,l_id) values (28 , 22);
insert into SIO_SUIT(e_id,l_id) values (28 , 23);
-- l'eleve 28 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (28,42,7,'26/11/2015',1);
insert into SIO_SUIT(e_id,l_id) values (19 , 22);
insert into SIO_SUIT(e_id,l_id) values (19 , 23);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (19,42,7,'26/11/2015',0);
-- on génère des lecons avec le moniteur 14 pour le niveau 23 à partir de 2015-10-26
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (24,'26/10/2015',60,23,14,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (25,'27/10/2015',60,23,14,7);
-- pas de niveau pour l'eleve 29 en ski alpin
-- pas de niveau pour l'eleve 10 en ski alpin
-- pas de niveau pour l'eleve 27 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (29 , 24);
insert into SIO_SUIT(e_id,l_id) values (29 , 25);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (29,23,7,'28/10/2015',0);
insert into SIO_SUIT(e_id,l_id) values (10 , 24);
insert into SIO_SUIT(e_id,l_id) values (10 , 25);
-- l'eleve 10 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (10,23,7,'28/10/2015',1);
insert into SIO_SUIT(e_id,l_id) values (27 , 24);
insert into SIO_SUIT(e_id,l_id) values (27 , 25);
-- l'eleve 27 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (27,23,7,'28/10/2015',1);
-- on génère des lecons avec le moniteur 14 pour le niveau 21 à partir de 2015-01-22
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (26,'22/1/2015',120,21,14,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (27,'23/1/2015',120,21,14,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (28,'24/1/2015',120,21,14,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (29,'25/1/2015',120,21,14,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (30,'26/1/2015',120,21,14,7);
-- pas de niveau pour l'eleve 20 en ski alpin
-- pas de niveau pour l'eleve 40 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (20 , 26);
insert into SIO_SUIT(e_id,l_id) values (20 , 27);
insert into SIO_SUIT(e_id,l_id) values (20 , 28);
insert into SIO_SUIT(e_id,l_id) values (20 , 29);
insert into SIO_SUIT(e_id,l_id) values (20 , 30);
-- l'eleve 20 a atteint le niveau 21
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (20,21,7,'27/1/2015',1);
insert into SIO_SUIT(e_id,l_id) values (40 , 26);
insert into SIO_SUIT(e_id,l_id) values (40 , 27);
insert into SIO_SUIT(e_id,l_id) values (40 , 28);
insert into SIO_SUIT(e_id,l_id) values (40 , 29);
insert into SIO_SUIT(e_id,l_id) values (40 , 30);
-- l'eleve 40 a atteint le niveau 21
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (40,21,7,'27/1/2015',1);
-- on génère des lecons avec le moniteur 5 pour le niveau 22 à partir de 2015-10-15
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (31,'15/10/2015',120,22,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (32,'16/10/2015',120,22,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (33,'17/10/2015',120,22,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (34,'18/10/2015',120,22,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (35,'19/10/2015',120,22,5,2);
-- pas de niveau pour l'eleve 37 en ski alpin
-- pas de niveau pour l'eleve 21 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (37 , 31);
insert into SIO_SUIT(e_id,l_id) values (37 , 32);
insert into SIO_SUIT(e_id,l_id) values (37 , 33);
insert into SIO_SUIT(e_id,l_id) values (37 , 34);
insert into SIO_SUIT(e_id,l_id) values (37 , 35);
-- l'eleve 37 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (37,22,2,'20/10/2015',1);
insert into SIO_SUIT(e_id,l_id) values (21 , 31);
insert into SIO_SUIT(e_id,l_id) values (21 , 32);
insert into SIO_SUIT(e_id,l_id) values (21 , 33);
insert into SIO_SUIT(e_id,l_id) values (21 , 34);
insert into SIO_SUIT(e_id,l_id) values (21 , 35);
-- l'eleve 21 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (21,22,2,'20/10/2015',1);
-- on génère des lecons avec le moniteur 16 pour le niveau 42 à partir de 2015-04-18
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (36,'18/4/2015',90,42,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (37,'19/4/2015',90,42,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (38,'20/4/2015',90,42,16,7);
-- pas de niveau pour l'eleve 17 en snowboard
-- pas de niveau pour l'eleve 46 en snowboard
-- pas de niveau pour l'eleve 35 en snowboard
insert into SIO_SUIT(e_id,l_id) values (17 , 36);
insert into SIO_SUIT(e_id,l_id) values (17 , 37);
insert into SIO_SUIT(e_id,l_id) values (17 , 38);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (17,42,7,'21/4/2015',0);
insert into SIO_SUIT(e_id,l_id) values (46 , 36);
insert into SIO_SUIT(e_id,l_id) values (46 , 37);
insert into SIO_SUIT(e_id,l_id) values (46 , 38);
-- l'eleve 46 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (46,42,7,'21/4/2015',1);
insert into SIO_SUIT(e_id,l_id) values (35 , 36);
insert into SIO_SUIT(e_id,l_id) values (35 , 37);
insert into SIO_SUIT(e_id,l_id) values (35 , 38);
-- l'eleve 35 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (35,42,7,'21/4/2015',1);
-- on génère des lecons avec le moniteur 4 pour le niveau 43 à partir de 2015-12-17
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (39,'17/12/2015',60,43,4,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (40,'18/12/2015',60,43,4,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (41,'19/12/2015',60,43,4,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (42,'20/12/2015',60,43,4,3);
-- pas de niveau pour l'eleve 22 en snowboard
-- pas de niveau pour l'eleve 26 en snowboard
insert into SIO_SUIT(e_id,l_id) values (22 , 39);
insert into SIO_SUIT(e_id,l_id) values (22 , 40);
insert into SIO_SUIT(e_id,l_id) values (22 , 41);
insert into SIO_SUIT(e_id,l_id) values (22 , 42);
-- l'eleve 22 a atteint le niveau 43
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (22,43,3,'21/12/2015',1);
insert into SIO_SUIT(e_id,l_id) values (26 , 39);
insert into SIO_SUIT(e_id,l_id) values (26 , 40);
insert into SIO_SUIT(e_id,l_id) values (26 , 41);
insert into SIO_SUIT(e_id,l_id) values (26 , 42);
-- l'eleve 26 a atteint le niveau 43
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (26,43,3,'21/12/2015',1);
-- on génère des lecons avec le moniteur 12 pour le niveau 21 à partir de 2015-02-10
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (43,'10/2/2015',90,21,12,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (44,'11/2/2015',90,21,12,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (45,'12/2/2015',90,21,12,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (46,'13/2/2015',90,21,12,3);
-- pas de niveau pour l'eleve 24 en ski alpin
-- pas de niveau pour l'eleve 32 en ski alpin
-- pas de niveau pour l'eleve 48 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (24 , 43);
insert into SIO_SUIT(e_id,l_id) values (24 , 44);
insert into SIO_SUIT(e_id,l_id) values (24 , 45);
insert into SIO_SUIT(e_id,l_id) values (24 , 46);
-- l'eleve 24 a atteint le niveau 21
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (24,21,3,'14/2/2015',1);
insert into SIO_SUIT(e_id,l_id) values (32 , 43);
insert into SIO_SUIT(e_id,l_id) values (32 , 44);
insert into SIO_SUIT(e_id,l_id) values (32 , 45);
insert into SIO_SUIT(e_id,l_id) values (32 , 46);
-- l'eleve 32 a atteint le niveau 21
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (32,21,3,'14/2/2015',1);
insert into SIO_SUIT(e_id,l_id) values (48 , 43);
insert into SIO_SUIT(e_id,l_id) values (48 , 44);
insert into SIO_SUIT(e_id,l_id) values (48 , 45);
insert into SIO_SUIT(e_id,l_id) values (48 , 46);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (48,21,3,'14/2/2015',0);
-- on génère des lecons avec le moniteur 3 pour le niveau 23 à partir de 2015-02-22
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (47,'22/2/2015',120,23,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (48,'23/2/2015',120,23,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (49,'24/2/2015',120,23,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (50,'25/2/2015',120,23,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (51,'26/2/2015',120,23,3,8);
-- pas de niveau pour l'eleve 12 en ski alpin
-- pas de niveau pour l'eleve 31 en ski alpin
-- pas de niveau pour l'eleve 33 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (12 , 47);
insert into SIO_SUIT(e_id,l_id) values (12 , 48);
insert into SIO_SUIT(e_id,l_id) values (12 , 49);
insert into SIO_SUIT(e_id,l_id) values (12 , 50);
insert into SIO_SUIT(e_id,l_id) values (12 , 51);
-- l'eleve 12 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (12,23,8,'27/2/2015',1);
insert into SIO_SUIT(e_id,l_id) values (31 , 47);
insert into SIO_SUIT(e_id,l_id) values (31 , 48);
insert into SIO_SUIT(e_id,l_id) values (31 , 49);
insert into SIO_SUIT(e_id,l_id) values (31 , 50);
insert into SIO_SUIT(e_id,l_id) values (31 , 51);
-- l'eleve 31 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (31,23,8,'27/2/2015',1);
insert into SIO_SUIT(e_id,l_id) values (33 , 47);
insert into SIO_SUIT(e_id,l_id) values (33 , 48);
insert into SIO_SUIT(e_id,l_id) values (33 , 49);
insert into SIO_SUIT(e_id,l_id) values (33 , 50);
insert into SIO_SUIT(e_id,l_id) values (33 , 51);
-- l'eleve 33 a atteint le niveau 23
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (33,23,8,'27/2/2015',1);
-- on génère des lecons avec le moniteur 11 pour le niveau 22 à partir de 2015-01-26
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (52,'26/1/2015',120,22,11,5);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (53,'27/1/2015',120,22,11,5);
-- pas de niveau pour l'eleve 13 en ski alpin
-- pas de niveau pour l'eleve 11 en ski alpin
-- pas de niveau pour l'eleve 45 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (13 , 52);
insert into SIO_SUIT(e_id,l_id) values (13 , 53);
-- l'eleve 13 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (13,22,5,'28/1/2015',1);
insert into SIO_SUIT(e_id,l_id) values (11 , 52);
insert into SIO_SUIT(e_id,l_id) values (11 , 53);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (11,22,5,'28/1/2015',0);
insert into SIO_SUIT(e_id,l_id) values (45 , 52);
insert into SIO_SUIT(e_id,l_id) values (45 , 53);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (45,22,5,'28/1/2015',0);
-- on génère des lecons avec le moniteur 20 pour le niveau 51 à partir de 2016-11-02
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (54,'2/11/2016',90,51,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (55,'3/11/2016',90,51,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (56,'4/11/2016',90,51,20,8);
-- pas de niveau pour l'eleve 39 en ski nordique
-- pas de niveau pour l'eleve 34 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (39 , 54);
insert into SIO_SUIT(e_id,l_id) values (39 , 55);
insert into SIO_SUIT(e_id,l_id) values (39 , 56);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (39,51,8,'5/11/2016',0);
insert into SIO_SUIT(e_id,l_id) values (34 , 54);
insert into SIO_SUIT(e_id,l_id) values (34 , 55);
insert into SIO_SUIT(e_id,l_id) values (34 , 56);
-- l'eleve 34 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (34,51,8,'5/11/2016',1);
-- on génère des lecons avec le moniteur 16 pour le niveau 42 à partir de 2016-10-09
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (57,'9/10/2016',60,42,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (58,'10/10/2016',60,42,16,7);
-- niveau 43 pour l'eleve 22 en snowboard -> il ne peut pas s'inscrire au niveau 42
-- niveau 42 pour l'eleve 35 en snowboard -> il ne peut pas s'inscrire au niveau 42
-- pas de niveau pour l'eleve 25 en snowboard
-- pas de niveau pour l'eleve 23 en snowboard
insert into SIO_SUIT(e_id,l_id) values (25 , 57);
insert into SIO_SUIT(e_id,l_id) values (25 , 58);
-- l'eleve 25 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (25,42,7,'11/10/2016',1);
insert into SIO_SUIT(e_id,l_id) values (23 , 57);
insert into SIO_SUIT(e_id,l_id) values (23 , 58);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (23,42,7,'11/10/2016',0);
-- on génère des lecons avec le moniteur 20 pour le niveau 52 à partir de 2016-10-01
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (59,'1/10/2016',90,52,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (60,'2/10/2016',90,52,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (61,'3/10/2016',90,52,20,8);
-- pas de niveau pour l'eleve 10 en ski nordique
-- pas de niveau pour l'eleve 41 en ski nordique
-- pas de niveau pour l'eleve 46 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (10 , 59);
insert into SIO_SUIT(e_id,l_id) values (10 , 60);
insert into SIO_SUIT(e_id,l_id) values (10 , 61);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (10,52,8,'4/10/2016',0);
insert into SIO_SUIT(e_id,l_id) values (41 , 59);
insert into SIO_SUIT(e_id,l_id) values (41 , 60);
insert into SIO_SUIT(e_id,l_id) values (41 , 61);
-- l'eleve 41 a atteint le niveau 52
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (41,52,8,'4/10/2016',1);
insert into SIO_SUIT(e_id,l_id) values (46 , 59);
insert into SIO_SUIT(e_id,l_id) values (46 , 60);
insert into SIO_SUIT(e_id,l_id) values (46 , 61);
-- l'eleve 46 a atteint le niveau 52
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (46,52,8,'4/10/2016',1);
-- on génère des lecons avec le moniteur 6 pour le niveau 21 à partir de 2016-02-23
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (62,'23/2/2016',60,21,6,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (63,'24/2/2016',60,21,6,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (64,'25/2/2016',60,21,6,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (65,'26/2/2016',60,21,6,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (66,'27/2/2016',60,21,6,1);
-- niveau 21 pour l'eleve 20 en ski alpin -> il ne peut pas s'inscrire au niveau 21
-- pas de niveau pour l'eleve 45 en ski alpin
-- pas de niveau pour l'eleve 28 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (45 , 62);
insert into SIO_SUIT(e_id,l_id) values (45 , 63);
insert into SIO_SUIT(e_id,l_id) values (45 , 64);
insert into SIO_SUIT(e_id,l_id) values (45 , 65);
insert into SIO_SUIT(e_id,l_id) values (45 , 66);
-- l'eleve 45 a atteint le niveau 21
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (45,21,1,'28/2/2016',1);
insert into SIO_SUIT(e_id,l_id) values (28 , 62);
insert into SIO_SUIT(e_id,l_id) values (28 , 63);
insert into SIO_SUIT(e_id,l_id) values (28 , 64);
insert into SIO_SUIT(e_id,l_id) values (28 , 65);
insert into SIO_SUIT(e_id,l_id) values (28 , 66);
-- l'eleve 28 a atteint le niveau 21
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (28,21,1,'28/2/2016',1);
-- on génère des lecons avec le moniteur 13 pour le niveau 23 à partir de 2016-10-09
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (67,'9/10/2016',60,23,13,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (68,'10/10/2016',60,23,13,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (69,'11/10/2016',60,23,13,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (70,'12/10/2016',60,23,13,6);
-- pas de niveau pour l'eleve 44 en ski alpin
-- pas de niveau pour l'eleve 11 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (44 , 67);
insert into SIO_SUIT(e_id,l_id) values (44 , 68);
insert into SIO_SUIT(e_id,l_id) values (44 , 69);
insert into SIO_SUIT(e_id,l_id) values (44 , 70);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (44,23,6,'13/10/2016',0);
insert into SIO_SUIT(e_id,l_id) values (11 , 67);
insert into SIO_SUIT(e_id,l_id) values (11 , 68);
insert into SIO_SUIT(e_id,l_id) values (11 , 69);
insert into SIO_SUIT(e_id,l_id) values (11 , 70);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (11,23,6,'13/10/2016',0);
-- on génère des lecons avec le moniteur 15 pour le niveau 20 à partir de 2016-11-04
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (71,'4/11/2016',90,20,15,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (72,'5/11/2016',90,20,15,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (73,'6/11/2016',90,20,15,6);
-- niveau 21 pour l'eleve 24 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 25 pour l'eleve 16 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 22 pour l'eleve 30 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- pas de niveau pour l'eleve 48 en ski alpin
-- pas de niveau pour l'eleve 29 en ski alpin
-- pas de niveau pour l'eleve 18 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (48 , 71);
insert into SIO_SUIT(e_id,l_id) values (48 , 72);
insert into SIO_SUIT(e_id,l_id) values (48 , 73);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (48,20,6,'7/11/2016',0);
insert into SIO_SUIT(e_id,l_id) values (29 , 71);
insert into SIO_SUIT(e_id,l_id) values (29 , 72);
insert into SIO_SUIT(e_id,l_id) values (29 , 73);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (29,20,6,'7/11/2016',0);
insert into SIO_SUIT(e_id,l_id) values (18 , 71);
insert into SIO_SUIT(e_id,l_id) values (18 , 72);
insert into SIO_SUIT(e_id,l_id) values (18 , 73);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (18,20,6,'7/11/2016',0);
-- on génère des lecons avec le moniteur 12 pour le niveau 22 à partir de 2016-03-12
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (74,'12/3/2016',60,22,12,5);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (75,'13/3/2016',60,22,12,5);
-- pas de niveau pour l'eleve 14 en ski alpin
-- pas de niveau pour l'eleve 17 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (14 , 74);
insert into SIO_SUIT(e_id,l_id) values (14 , 75);
-- l'eleve 14 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (14,22,5,'14/3/2016',1);
insert into SIO_SUIT(e_id,l_id) values (17 , 74);
insert into SIO_SUIT(e_id,l_id) values (17 , 75);
-- l'eleve 17 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (17,22,5,'14/3/2016',1);
-- on génère des lecons avec le moniteur 18 pour le niveau 52 à partir de 2016-01-13
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (76,'13/1/2016',90,52,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (77,'14/1/2016',90,52,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (78,'15/1/2016',90,52,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (79,'16/1/2016',90,52,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (80,'17/1/2016',90,52,18,3);
-- pas de niveau pour l'eleve 19 en ski nordique
-- pas de niveau pour l'eleve 42 en ski nordique
-- pas de niveau pour l'eleve 31 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (19 , 76);
insert into SIO_SUIT(e_id,l_id) values (19 , 77);
insert into SIO_SUIT(e_id,l_id) values (19 , 78);
insert into SIO_SUIT(e_id,l_id) values (19 , 79);
insert into SIO_SUIT(e_id,l_id) values (19 , 80);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (19,52,3,'18/1/2016',0);
insert into SIO_SUIT(e_id,l_id) values (42 , 76);
insert into SIO_SUIT(e_id,l_id) values (42 , 77);
insert into SIO_SUIT(e_id,l_id) values (42 , 78);
insert into SIO_SUIT(e_id,l_id) values (42 , 79);
insert into SIO_SUIT(e_id,l_id) values (42 , 80);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (42,52,3,'18/1/2016',0);
insert into SIO_SUIT(e_id,l_id) values (31 , 76);
insert into SIO_SUIT(e_id,l_id) values (31 , 77);
insert into SIO_SUIT(e_id,l_id) values (31 , 78);
insert into SIO_SUIT(e_id,l_id) values (31 , 79);
insert into SIO_SUIT(e_id,l_id) values (31 , 80);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (31,52,3,'18/1/2016',0);
-- on génère des lecons avec le moniteur 3 pour le niveau 22 à partir de 2016-10-12
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (81,'12/10/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (82,'13/10/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (83,'14/10/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (84,'15/10/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (85,'16/10/2016',120,22,3,8);
-- niveau 23 pour l'eleve 38 en ski alpin -> il ne peut pas s'inscrire au niveau 22
-- niveau 21 pour l'eleve 32 en ski alpin -> il peut s'inscrire au niveau 22
-- niveau 21 pour l'eleve 40 en ski alpin -> il peut s'inscrire au niveau 22
insert into SIO_SUIT(e_id,l_id) values (32 , 81);
insert into SIO_SUIT(e_id,l_id) values (32 , 82);
insert into SIO_SUIT(e_id,l_id) values (32 , 83);
insert into SIO_SUIT(e_id,l_id) values (32 , 84);
insert into SIO_SUIT(e_id,l_id) values (32 , 85);
-- l'eleve 32 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (32,22,8,'17/10/2016',1);
insert into SIO_SUIT(e_id,l_id) values (40 , 81);
insert into SIO_SUIT(e_id,l_id) values (40 , 82);
insert into SIO_SUIT(e_id,l_id) values (40 , 83);
insert into SIO_SUIT(e_id,l_id) values (40 , 84);
insert into SIO_SUIT(e_id,l_id) values (40 , 85);
-- l'eleve 40 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (40,22,8,'17/10/2016',1);
-- on génère des lecons avec le moniteur 11 pour le niveau 20 à partir de 2016-10-26
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (86,'26/10/2016',60,20,11,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (87,'27/10/2016',60,20,11,3);
-- niveau 21 pour l'eleve 24 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- pas de niveau pour l'eleve 36 en ski alpin
-- pas de niveau pour l'eleve 35 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (36 , 86);
insert into SIO_SUIT(e_id,l_id) values (36 , 87);
-- l'eleve 36 a atteint le niveau 20
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (36,20,3,'28/10/2016',1);
insert into SIO_SUIT(e_id,l_id) values (35 , 86);
insert into SIO_SUIT(e_id,l_id) values (35 , 87);
-- l'eleve 35 a atteint le niveau 20
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (35,20,3,'28/10/2016',1);
-- on génère des lecons avec le moniteur 3 pour le niveau 22 à partir de 2016-12-27
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (88,'27/12/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (89,'28/12/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (90,'29/12/2016',120,22,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (91,'30/12/2016',120,22,3,8);
-- niveau 21 pour l'eleve 24 en ski alpin -> il peut s'inscrire au niveau 22
-- niveau 22 pour l'eleve 30 en ski alpin -> il ne peut pas s'inscrire au niveau 22
-- niveau 25 pour l'eleve 16 en ski alpin -> il ne peut pas s'inscrire au niveau 22
-- niveau 25 pour l'eleve 16 en ski alpin -> il ne peut pas s'inscrire au niveau 22
-- niveau 21 pour l'eleve 20 en ski alpin -> il peut s'inscrire au niveau 22
insert into SIO_SUIT(e_id,l_id) values (24 , 88);
insert into SIO_SUIT(e_id,l_id) values (24 , 89);
insert into SIO_SUIT(e_id,l_id) values (24 , 90);
insert into SIO_SUIT(e_id,l_id) values (24 , 91);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (24,22,8,'31/12/2016',0);
insert into SIO_SUIT(e_id,l_id) values (20 , 88);
insert into SIO_SUIT(e_id,l_id) values (20 , 89);
insert into SIO_SUIT(e_id,l_id) values (20 , 90);
insert into SIO_SUIT(e_id,l_id) values (20 , 91);
-- l'eleve 20 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (20,22,8,'31/12/2016',1);
-- on génère des lecons avec le moniteur 2 pour le niveau 25 à partir de 2016-03-06
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (92,'6/3/2016',120,25,2,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (93,'7/3/2016',120,25,2,8);
-- niveau 22 pour l'eleve 13 en ski alpin -> il peut s'inscrire au niveau 25
-- niveau 23 pour l'eleve 12 en ski alpin -> il peut s'inscrire au niveau 25
insert into SIO_SUIT(e_id,l_id) values (13 , 92);
insert into SIO_SUIT(e_id,l_id) values (13 , 93);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (13,25,8,'8/3/2016',0);
insert into SIO_SUIT(e_id,l_id) values (12 , 92);
insert into SIO_SUIT(e_id,l_id) values (12 , 93);
-- l'eleve 12 a atteint le niveau 25
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (12,25,8,'8/3/2016',1);
-- on génère des lecons avec le moniteur 5 pour le niveau 24 à partir de 2016-02-05
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (94,'5/2/2016',120,24,5,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (95,'6/2/2016',120,24,5,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (96,'7/2/2016',120,24,5,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (97,'8/2/2016',120,24,5,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (98,'9/2/2016',120,24,5,1);
-- pas de niveau pour l'eleve 22 en ski alpin
-- niveau 22 pour l'eleve 47 en ski alpin -> il peut s'inscrire au niveau 24
-- niveau 23 pour l'eleve 27 en ski alpin -> il peut s'inscrire au niveau 24
insert into SIO_SUIT(e_id,l_id) values (22 , 94);
insert into SIO_SUIT(e_id,l_id) values (22 , 95);
insert into SIO_SUIT(e_id,l_id) values (22 , 96);
insert into SIO_SUIT(e_id,l_id) values (22 , 97);
insert into SIO_SUIT(e_id,l_id) values (22 , 98);
-- l'eleve 22 a atteint le niveau 24
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (22,24,1,'10/2/2016',1);
insert into SIO_SUIT(e_id,l_id) values (47 , 94);
insert into SIO_SUIT(e_id,l_id) values (47 , 95);
insert into SIO_SUIT(e_id,l_id) values (47 , 96);
insert into SIO_SUIT(e_id,l_id) values (47 , 97);
insert into SIO_SUIT(e_id,l_id) values (47 , 98);
-- l'eleve 47 a atteint le niveau 24
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (47,24,1,'10/2/2016',1);
insert into SIO_SUIT(e_id,l_id) values (27 , 94);
insert into SIO_SUIT(e_id,l_id) values (27 , 95);
insert into SIO_SUIT(e_id,l_id) values (27 , 96);
insert into SIO_SUIT(e_id,l_id) values (27 , 97);
insert into SIO_SUIT(e_id,l_id) values (27 , 98);
-- l'eleve 27 a atteint le niveau 24
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (27,24,1,'10/2/2016',1);
-- on génère des lecons avec le moniteur 16 pour le niveau 41 à partir de 2016-03-16
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (99,'16/3/2016',120,41,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (100,'17/3/2016',120,41,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (101,'18/3/2016',120,41,16,7);
-- niveau 43 pour l'eleve 26 en snowboard -> il ne peut pas s'inscrire au niveau 41
-- pas de niveau pour l'eleve 37 en snowboard
-- pas de niveau pour l'eleve 30 en snowboard
insert into SIO_SUIT(e_id,l_id) values (37 , 99);
insert into SIO_SUIT(e_id,l_id) values (37 , 100);
insert into SIO_SUIT(e_id,l_id) values (37 , 101);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (37,41,7,'19/3/2016',0);
insert into SIO_SUIT(e_id,l_id) values (30 , 99);
insert into SIO_SUIT(e_id,l_id) values (30 , 100);
insert into SIO_SUIT(e_id,l_id) values (30 , 101);
-- l'eleve 30 a atteint le niveau 41
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (30,41,7,'19/3/2016',1);
-- on génère des lecons avec le moniteur 19 pour le niveau 53 à partir de 2017-10-15
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (102,'15/10/2017',90,53,19,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (103,'16/10/2017',90,53,19,7);
-- pas de niveau pour l'eleve 47 en ski nordique
-- pas de niveau pour l'eleve 37 en ski nordique
-- pas de niveau pour l'eleve 42 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (47 , 102);
insert into SIO_SUIT(e_id,l_id) values (47 , 103);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (47,53,7,'17/10/2017',0);
insert into SIO_SUIT(e_id,l_id) values (37 , 102);
insert into SIO_SUIT(e_id,l_id) values (37 , 103);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (37,53,7,'17/10/2017',0);
insert into SIO_SUIT(e_id,l_id) values (42 , 102);
insert into SIO_SUIT(e_id,l_id) values (42 , 103);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (42,53,7,'17/10/2017',0);
-- on génère des lecons avec le moniteur 15 pour le niveau 22 à partir de 2017-02-07
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (104,'7/2/2017',120,22,15,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (105,'8/2/2017',120,22,15,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (106,'9/2/2017',120,22,15,6);
-- niveau 25 pour l'eleve 49 en ski alpin -> il ne peut pas s'inscrire au niveau 22
-- niveau 20 pour l'eleve 35 en ski alpin -> il peut s'inscrire au niveau 22
-- pas de niveau pour l'eleve 39 en ski alpin
-- pas de niveau pour l'eleve 43 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (35 , 104);
insert into SIO_SUIT(e_id,l_id) values (35 , 105);
insert into SIO_SUIT(e_id,l_id) values (35 , 106);
-- l'eleve 35 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (35,22,6,'10/2/2017',1);
insert into SIO_SUIT(e_id,l_id) values (39 , 104);
insert into SIO_SUIT(e_id,l_id) values (39 , 105);
insert into SIO_SUIT(e_id,l_id) values (39 , 106);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (39,22,6,'10/2/2017',0);
insert into SIO_SUIT(e_id,l_id) values (43 , 104);
insert into SIO_SUIT(e_id,l_id) values (43 , 105);
insert into SIO_SUIT(e_id,l_id) values (43 , 106);
-- l'eleve 43 a atteint le niveau 22
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (43,22,6,'10/2/2017',1);
-- on génère des lecons avec le moniteur 19 pour le niveau 52 à partir de 2017-01-10
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (107,'10/1/2017',60,52,19,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (108,'11/1/2017',60,52,19,6);
-- pas de niveau pour l'eleve 10 en ski nordique
-- niveau 51 pour l'eleve 34 en ski nordique -> il peut s'inscrire au niveau 52
-- pas de niveau pour l'eleve 27 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (10 , 107);
insert into SIO_SUIT(e_id,l_id) values (10 , 108);
-- l'eleve 10 a atteint le niveau 52
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (10,52,6,'12/1/2017',1);
insert into SIO_SUIT(e_id,l_id) values (34 , 107);
insert into SIO_SUIT(e_id,l_id) values (34 , 108);
-- l'eleve 34 a atteint le niveau 52
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (34,52,6,'12/1/2017',1);
insert into SIO_SUIT(e_id,l_id) values (27 , 107);
insert into SIO_SUIT(e_id,l_id) values (27 , 108);
-- l'eleve 27 a atteint le niveau 52
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (27,52,6,'12/1/2017',1);
-- on génère des lecons avec le moniteur 19 pour le niveau 51 à partir de 2017-01-09
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (109,'9/1/2017',90,51,19,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (110,'10/1/2017',90,51,19,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (111,'11/1/2017',90,51,19,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (112,'12/1/2017',90,51,19,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (113,'13/1/2017',90,51,19,7);
-- pas de niveau pour l'eleve 24 en ski nordique
-- pas de niveau pour l'eleve 38 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (24 , 109);
insert into SIO_SUIT(e_id,l_id) values (24 , 110);
insert into SIO_SUIT(e_id,l_id) values (24 , 111);
insert into SIO_SUIT(e_id,l_id) values (24 , 112);
insert into SIO_SUIT(e_id,l_id) values (24 , 113);
-- l'eleve 24 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (24,51,7,'14/1/2017',1);
insert into SIO_SUIT(e_id,l_id) values (38 , 109);
insert into SIO_SUIT(e_id,l_id) values (38 , 110);
insert into SIO_SUIT(e_id,l_id) values (38 , 111);
insert into SIO_SUIT(e_id,l_id) values (38 , 112);
insert into SIO_SUIT(e_id,l_id) values (38 , 113);
-- l'eleve 38 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (38,51,7,'14/1/2017',1);
-- on génère des lecons avec le moniteur 17 pour le niveau 42 à partir de 2017-03-16
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (114,'16/3/2017',90,42,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (115,'17/3/2017',90,42,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (116,'18/3/2017',90,42,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (117,'19/3/2017',90,42,17,7);
-- pas de niveau pour l'eleve 40 en snowboard
-- niveau 41 pour l'eleve 44 en snowboard -> il peut s'inscrire au niveau 42
insert into SIO_SUIT(e_id,l_id) values (40 , 114);
insert into SIO_SUIT(e_id,l_id) values (40 , 115);
insert into SIO_SUIT(e_id,l_id) values (40 , 116);
insert into SIO_SUIT(e_id,l_id) values (40 , 117);
-- l'eleve 40 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (40,42,7,'20/3/2017',1);
insert into SIO_SUIT(e_id,l_id) values (44 , 114);
insert into SIO_SUIT(e_id,l_id) values (44 , 115);
insert into SIO_SUIT(e_id,l_id) values (44 , 116);
insert into SIO_SUIT(e_id,l_id) values (44 , 117);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (44,42,7,'20/3/2017',0);
-- on génère des lecons avec le moniteur 5 pour le niveau 20 à partir de 2017-04-05
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (118,'5/4/2017',120,20,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (119,'6/4/2017',120,20,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (120,'7/4/2017',120,20,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (121,'8/4/2017',120,20,5,2);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (122,'9/4/2017',120,20,5,2);
-- pas de niveau pour l'eleve 25 en ski alpin
-- niveau 23 pour l'eleve 31 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 22 pour l'eleve 13 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 22 pour l'eleve 20 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 22 pour l'eleve 20 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 22 pour l'eleve 21 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 21 pour l'eleve 45 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- pas de niveau pour l'eleve 15 en ski alpin
-- niveau 22 pour l'eleve 17 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 21 pour l'eleve 45 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 20 pour l'eleve 36 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 22 pour l'eleve 32 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- pas de niveau pour l'eleve 19 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (25 , 118);
insert into SIO_SUIT(e_id,l_id) values (25 , 119);
insert into SIO_SUIT(e_id,l_id) values (25 , 120);
insert into SIO_SUIT(e_id,l_id) values (25 , 121);
insert into SIO_SUIT(e_id,l_id) values (25 , 122);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (25,20,2,'10/4/2017',0);
insert into SIO_SUIT(e_id,l_id) values (15 , 118);
insert into SIO_SUIT(e_id,l_id) values (15 , 119);
insert into SIO_SUIT(e_id,l_id) values (15 , 120);
insert into SIO_SUIT(e_id,l_id) values (15 , 121);
insert into SIO_SUIT(e_id,l_id) values (15 , 122);
-- l'eleve 15 a atteint le niveau 20
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (15,20,2,'10/4/2017',1);
insert into SIO_SUIT(e_id,l_id) values (19 , 118);
insert into SIO_SUIT(e_id,l_id) values (19 , 119);
insert into SIO_SUIT(e_id,l_id) values (19 , 120);
insert into SIO_SUIT(e_id,l_id) values (19 , 121);
insert into SIO_SUIT(e_id,l_id) values (19 , 122);
-- l'eleve 19 a atteint le niveau 20
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (19,20,2,'10/4/2017',1);
-- on génère des lecons avec le moniteur 19 pour le niveau 51 à partir de 2017-10-25
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (123,'25/10/2017',90,51,19,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (124,'26/10/2017',90,51,19,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (125,'27/10/2017',90,51,19,6);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (126,'28/10/2017',90,51,19,6);
-- pas de niveau pour l'eleve 36 en ski nordique
-- pas de niveau pour l'eleve 28 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (36 , 123);
insert into SIO_SUIT(e_id,l_id) values (36 , 124);
insert into SIO_SUIT(e_id,l_id) values (36 , 125);
insert into SIO_SUIT(e_id,l_id) values (36 , 126);
-- l'eleve 36 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (36,51,6,'29/10/2017',1);
insert into SIO_SUIT(e_id,l_id) values (28 , 123);
insert into SIO_SUIT(e_id,l_id) values (28 , 124);
insert into SIO_SUIT(e_id,l_id) values (28 , 125);
insert into SIO_SUIT(e_id,l_id) values (28 , 126);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (28,51,6,'29/10/2017',0);
-- on génère des lecons avec le moniteur 16 pour le niveau 42 à partir de 2017-11-14
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (127,'14/11/2017',60,42,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (128,'15/11/2017',60,42,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (129,'16/11/2017',60,42,16,7);
-- pas de niveau pour l'eleve 11 en snowboard
-- pas de niveau pour l'eleve 32 en snowboard
insert into SIO_SUIT(e_id,l_id) values (11 , 127);
insert into SIO_SUIT(e_id,l_id) values (11 , 128);
insert into SIO_SUIT(e_id,l_id) values (11 , 129);
-- l'eleve 11 a atteint le niveau 42
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (11,42,7,'17/11/2017',1);
insert into SIO_SUIT(e_id,l_id) values (32 , 127);
insert into SIO_SUIT(e_id,l_id) values (32 , 128);
insert into SIO_SUIT(e_id,l_id) values (32 , 129);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (32,42,7,'17/11/2017',0);
-- on génère des lecons avec le moniteur 3 pour le niveau 25 à partir de 2017-10-26
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (130,'26/10/2017',90,25,3,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (131,'27/10/2017',90,25,3,8);
-- pas de niveau pour l'eleve 48 en ski alpin
-- niveau 22 pour l'eleve 14 en ski alpin -> il peut s'inscrire au niveau 25
insert into SIO_SUIT(e_id,l_id) values (48 , 130);
insert into SIO_SUIT(e_id,l_id) values (48 , 131);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (48,25,8,'28/10/2017',0);
insert into SIO_SUIT(e_id,l_id) values (14 , 130);
insert into SIO_SUIT(e_id,l_id) values (14 , 131);
-- l'eleve 14 a atteint le niveau 25
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (14,25,8,'28/10/2017',1);
-- on génère des lecons avec le moniteur 18 pour le niveau 53 à partir de 2017-01-05
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (132,'5/1/2017',90,53,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (133,'6/1/2017',90,53,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (134,'7/1/2017',90,53,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (135,'8/1/2017',90,53,18,3);
-- pas de niveau pour l'eleve 18 en ski nordique
-- pas de niveau pour l'eleve 12 en ski nordique
-- niveau 52 pour l'eleve 46 en ski nordique -> il peut s'inscrire au niveau 53
insert into SIO_SUIT(e_id,l_id) values (18 , 132);
insert into SIO_SUIT(e_id,l_id) values (18 , 133);
insert into SIO_SUIT(e_id,l_id) values (18 , 134);
insert into SIO_SUIT(e_id,l_id) values (18 , 135);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (18,53,3,'9/1/2017',0);
insert into SIO_SUIT(e_id,l_id) values (12 , 132);
insert into SIO_SUIT(e_id,l_id) values (12 , 133);
insert into SIO_SUIT(e_id,l_id) values (12 , 134);
insert into SIO_SUIT(e_id,l_id) values (12 , 135);
-- l'eleve 12 a atteint le niveau 53
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (12,53,3,'9/1/2017',1);
insert into SIO_SUIT(e_id,l_id) values (46 , 132);
insert into SIO_SUIT(e_id,l_id) values (46 , 133);
insert into SIO_SUIT(e_id,l_id) values (46 , 134);
insert into SIO_SUIT(e_id,l_id) values (46 , 135);
-- l'eleve 46 a atteint le niveau 53
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (46,53,3,'9/1/2017',1);
-- on génère des lecons avec le moniteur 18 pour le niveau 53 à partir de 2017-12-07
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (136,'7/12/2017',60,53,18,3);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (137,'8/12/2017',60,53,18,3);
-- pas de niveau pour l'eleve 49 en ski nordique
-- pas de niveau pour l'eleve 30 en ski nordique
-- pas de niveau pour l'eleve 29 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (49 , 136);
insert into SIO_SUIT(e_id,l_id) values (49 , 137);
-- l'eleve 49 a atteint le niveau 53
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (49,53,3,'9/12/2017',1);
insert into SIO_SUIT(e_id,l_id) values (30 , 136);
insert into SIO_SUIT(e_id,l_id) values (30 , 137);
-- l'eleve 30 a atteint le niveau 53
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (30,53,3,'9/12/2017',1);
insert into SIO_SUIT(e_id,l_id) values (29 , 136);
insert into SIO_SUIT(e_id,l_id) values (29 , 137);
-- l'eleve 29 a atteint le niveau 53
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (29,53,3,'9/12/2017',1);
-- on génère des lecons avec le moniteur 5 pour le niveau 20 à partir de 2017-11-02
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (138,'2/11/2017',90,20,5,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (139,'3/11/2017',90,20,5,1);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (140,'4/11/2017',90,20,5,1);
-- pas de niveau pour l'eleve 23 en ski alpin
-- niveau 24 pour l'eleve 22 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- niveau 21 pour l'eleve 45 en ski alpin -> il ne peut pas s'inscrire au niveau 20
-- pas de niveau pour l'eleve 26 en ski alpin
insert into SIO_SUIT(e_id,l_id) values (23 , 138);
insert into SIO_SUIT(e_id,l_id) values (23 , 139);
insert into SIO_SUIT(e_id,l_id) values (23 , 140);
-- l'eleve 23 a atteint le niveau 20
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (23,20,1,'5/11/2017',1);
insert into SIO_SUIT(e_id,l_id) values (26 , 138);
insert into SIO_SUIT(e_id,l_id) values (26 , 139);
insert into SIO_SUIT(e_id,l_id) values (26 , 140);
-- l'eleve 26 a atteint le niveau 20
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (26,20,1,'5/11/2017',1);
-- on génère des lecons avec le moniteur 16 pour le niveau 41 à partir de 2017-01-22
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (141,'22/1/2017',60,41,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (142,'23/1/2017',60,41,16,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (143,'24/1/2017',60,41,16,7);
-- pas de niveau pour l'eleve 16 en snowboard
-- pas de niveau pour l'eleve 41 en snowboard
insert into SIO_SUIT(e_id,l_id) values (16 , 141);
insert into SIO_SUIT(e_id,l_id) values (16 , 142);
insert into SIO_SUIT(e_id,l_id) values (16 , 143);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (16,41,7,'25/1/2017',0);
insert into SIO_SUIT(e_id,l_id) values (41 , 141);
insert into SIO_SUIT(e_id,l_id) values (41 , 142);
insert into SIO_SUIT(e_id,l_id) values (41 , 143);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (41,41,7,'25/1/2017',0);
-- on génère des lecons avec le moniteur 20 pour le niveau 51 à partir de 2017-10-08
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (144,'8/10/2017',60,51,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (145,'9/10/2017',60,51,20,8);
-- pas de niveau pour l'eleve 33 en ski nordique
-- pas de niveau pour l'eleve 45 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (33 , 144);
insert into SIO_SUIT(e_id,l_id) values (33 , 145);
-- l'eleve 33 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (33,51,8,'10/10/2017',1);
insert into SIO_SUIT(e_id,l_id) values (45 , 144);
insert into SIO_SUIT(e_id,l_id) values (45 , 145);
-- l'eleve 45 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (45,51,8,'10/10/2017',1);
-- on génère des lecons avec le moniteur 17 pour le niveau 41 à partir de 2017-11-13
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (146,'13/11/2017',90,41,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (147,'14/11/2017',90,41,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (148,'15/11/2017',90,41,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (149,'16/11/2017',90,41,17,7);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (150,'17/11/2017',90,41,17,7);
-- pas de niveau pour l'eleve 21 en snowboard
-- pas de niveau pour l'eleve 13 en snowboard
insert into SIO_SUIT(e_id,l_id) values (21 , 146);
insert into SIO_SUIT(e_id,l_id) values (21 , 147);
insert into SIO_SUIT(e_id,l_id) values (21 , 148);
insert into SIO_SUIT(e_id,l_id) values (21 , 149);
insert into SIO_SUIT(e_id,l_id) values (21 , 150);
-- l'eleve 21 a atteint le niveau 41
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (21,41,7,'18/11/2017',1);
insert into SIO_SUIT(e_id,l_id) values (13 , 146);
insert into SIO_SUIT(e_id,l_id) values (13 , 147);
insert into SIO_SUIT(e_id,l_id) values (13 , 148);
insert into SIO_SUIT(e_id,l_id) values (13 , 149);
insert into SIO_SUIT(e_id,l_id) values (13 , 150);
-- l'eleve 13 a atteint le niveau 41
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (13,41,7,'18/11/2017',1);
-- on génère des lecons avec le moniteur 20 pour le niveau 51 à partir de 2017-04-06
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (151,'6/4/2017',90,51,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (152,'7/4/2017',90,51,20,8);
insert into SIO_LECON(l_id,l_debut,l_duree,l_cible,l_encadree_par,l_situee_dans) values (153,'8/4/2017',90,51,20,8);
-- pas de niveau pour l'eleve 20 en ski nordique
-- pas de niveau pour l'eleve 31 en ski nordique
-- pas de niveau pour l'eleve 22 en ski nordique
insert into SIO_SUIT(e_id,l_id) values (20 , 151);
insert into SIO_SUIT(e_id,l_id) values (20 , 152);
insert into SIO_SUIT(e_id,l_id) values (20 , 153);
-- l'eleve 20 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (20,51,8,'9/4/2017',1);
insert into SIO_SUIT(e_id,l_id) values (31 , 151);
insert into SIO_SUIT(e_id,l_id) values (31 , 152);
insert into SIO_SUIT(e_id,l_id) values (31 , 153);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (31,51,8,'9/4/2017',0);
insert into SIO_SUIT(e_id,l_id) values (22 , 151);
insert into SIO_SUIT(e_id,l_id) values (22 , 152);
insert into SIO_SUIT(e_id,l_id) values (22 , 153);
-- l'eleve 22 a atteint le niveau 51
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (22,51,8,'9/4/2017',1);
-- on ajoute quelques eleves qui passent un test sans avoir suivi de leçon juste avant
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (10,24,8,'19/12/2017',1);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (14,43,7,'6/2/2016',0);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (21,23,2,'15/1/2016',1);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (25,20,2,'20/12/2017',1);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (33,24,8,'21/12/2015',1);
insert into SIO_PASSE_TEST(e_id,n_id,c_id,t_date_passage,t_resultat) values (39,51,8,'10/1/2017',1);

