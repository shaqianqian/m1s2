/*
drop table SIO_PASSE_TEST ;
drop table SIO_SUIT ;
drop table SIO_LECON ;
drop table SIO_NIVEAU ;
drop table SIO_ELEVE ;
drop table SIO_CENTRE ;
drop table SIO_MONITEUR ;
drop table SIO_DISCIPLINE ;
*/

-- le SIO
create table SIO_DISCIPLINE(
  d_id NUMBER(1) constraint disc_pkey primary key,
  d_libelle VARCHAR2(30) not null
);

insert into sio_discipline values(1, 'SKI ALPIN');
insert into sio_discipline values(2, 'SNOWBOARD');
insert into sio_discipline values(3, 'SKI NORDIQUE');

create table SIO_MONITEUR(
  m_id NUMBER(3) constraint mono_pkey primary key,
  m_nom VARCHAR2(30) not null,
  m_prenom VARCHAR2(30) not null,
  m_tel VARCHAR2(20),
  d_id NUMBER(1) constraint mono_discipline_fkey references SIO_DISCIPLINE
);

insert into sio_moniteur values(1,'CHAPOTOT','CLAIRE','06 55 66 33 44',2);--snowboard
insert into sio_moniteur values(2,'MARMOTTAN','ANEMONE','06 05 77 88 22',1);--ski alpin
insert into sio_moniteur values(3,'MOUGEL','LAURIE','09 98 76 65 54',1);--ski alpin
insert into sio_moniteur values(4,'RUBY','KARINE','07 56 67 82 45',2); -- snowboard
insert into sio_moniteur values(5,'ALPHAND','LUC','06 76 90 27 18',1); -- ski alpin
insert into sio_moniteur values(6,'ROLLAND','MARION','06 36 92 68 13',1); -- ski alpin
insert into sio_moniteur values(7,'BAILET','MATTHIEU','06 94 98 07 33',1); -- ski alpin
insert into sio_moniteur values(8,'DUCROZ','AURELIEN','06 35 48 98 23',2); -- snowboard
insert into sio_moniteur values(9,'TAVERNIER','YVES','06 66 78 36 65',1); --ski alpin
insert into sio_moniteur values(10,'FAVROT','THIBAUT','09 88 52 35 51',1); -- ski alpin
insert into sio_moniteur values(11,'FAVRE','CORINNE','07 19 77 45 43',1); -- ski alpin
insert into sio_moniteur values(12,'MATTEL','MAGDA','06 01 12 35 45',1); -- ski alpin
insert into sio_moniteur values(13,'SANTON','AURELIE','07 11 24 51 87',1); -- ski alpin
insert into sio_moniteur values(14,'PELEN','PERRINE','06 99 75 67 10',1); -- ski alpin
insert into sio_moniteur values(15,'SARRAZIN','CYPRIEN','07 47 11 20 21',1); -- ski alpin
insert into sio_moniteur values(16,'VIDAL','DORIANNE','06 01 12 35 45',2); -- snowboard
insert into sio_moniteur values(17,'ROLLAND','REGIS','06 17 67 55 32',2); -- snowboard
insert into sio_moniteur values(18,'FOURCADE','MARTIN','06 55 76 92 93',3); -- ski nordique
insert into sio_moniteur values(19,'BAILLY','SANDRINE','06 20 45 76 10',3); -- ski nordique
insert into sio_moniteur values(20,'GUY','FABRICE','07 45 54 22 19',3); -- ski nordique

create table SIO_CENTRE(
  c_id NUMBER(3) constraint centre_pkey primary key,
  c_nom VARCHAR2(100) not null,
  c_numero VARCHAR2(5),
  c_rue VARCHAR2(50),
  c_ville VARCHAR2(20),
  c_code_postal VARCHAR2(5)
) ;

-- vosges
insert into sio_centre values (1, 'Bussang Larcenaire', '15', 'rue d''Epinal', 'BUSSANG', '88540');
insert into sio_centre values (2, 'La Bresse Hohneck', '43bis', 'place de l''église', 'LA BRESSE HOHNECK', '88250');
-- alpes
insert into sio_centre values (3, 'Brides les bains', '2', 'rue de la fontaine', 'BRIDES LES BAINS', '73570');
insert into sio_centre values (4, 'La Clusaz', '254', 'avenue du bois', 'LA CLUSAZ', '74220');
insert into sio_centre values (5, 'La Plagne', '73', 'grand place', 'LA PLAGNE', '73210');
-- pyrénées 
insert into sio_centre values (6, 'Grand Tourmalet', '32', 'rue des tournesols', 'GRAND TOURMALET', '65200');
insert into sio_centre values (7, 'Les Angles', '6', 'rue du Canigou', 'LES ANGLES', '66210');
-- massif central
insert into sio_centre values (8, 'Le Lioran', '47', 'avenue des auvergnats', 'LE LIORAN', '15300');

create table SIO_ELEVE(
  e_id NUMBER(5) constraint eleve_pkey primary key,
  e_nom VARCHAR2(30) not null,
  e_prenom VARCHAR2(30) not null,
  e_date_naiss DATE not null,
  e_nationalite VARCHAR2(20),
  e_sexe CHAR(1) not null, -- 'F' ou 'M'
  constraint sexe_valeur check (e_sexe in ('F','M')),
  e_tel VARCHAR2(20)
);

insert into sio_eleve values(10, 'D''ARELAUNE','LAURELINE', to_date('25/10/2001','DD/MM/YYYY'),'française','F','06 79 78 79 78');
insert into sio_eleve values(11, 'LAGAFFE', 'GASTON', to_date('12/12/2005','DD/MM/YYYY'),'belge','M',null);
insert into sio_eleve values(12, 'TSUNO','YOKO', to_date('09/11/1999','DD/MM/YYYY'),'japonnaise','F',null);
insert into sio_eleve values(13, 'TOURNESOL','TRYPHON', to_date('23/07/1997','DD/MM/YYYY'),'belge','M',null);
insert into sio_eleve values(14, 'LUCKY', 'LUKE', to_date('14/08/1992','DD/MM/YYYY'),'etats-unienne','M','07 12 13 54 63');
insert into sio_eleve values(15, 'MARTIN', 'ALIX', to_date('11/05/1990','DD/MM/YYYY'),'italienne','M',null);
insert into sio_eleve values(16, 'BLANDY','JESSICA', to_date('27/03/1978','DD/MM/YYYY'),'française','F','07 66 68 34 44');
insert into sio_eleve values(17, 'BRISEFER','BENOIT', to_date('11/12/1987','DD/MM/YYYY'),'française','M',null);
insert into sio_eleve values(18, 'CRU','CARMEN', to_date('23/11/1934','DD/MM/YYYY'),'française','F',null);
insert into sio_eleve values(19, 'BURMA','NESTOR', to_date('04/05/1959','DD/MM/YYYY'),'française','M','06 64 65 87 88');
insert into sio_eleve values(20, 'CLEMENT','STEPHANE', to_date('01/02/2001','DD/MM/YYYY'),'suisse','M',null);
insert into sio_eleve values(21, 'BRAZIL', 'BRUNO', to_date('07/08/1999','DD/MM/YYYY'),'etats-unienne','M',null);
insert into sio_eleve values(22, 'BAROUD', 'BILL', to_date('04/02/1998','DD/MM/YYYY'),'etats-unienne','M',null);
insert into sio_eleve values(23, 'BLANC-SEC', 'ADELE', to_date('21/05/1977','DD/MM/YYYY'),'française','F',null);
insert into sio_eleve values(24, 'TETSUO','SHIMA', to_date('19/10/2002','DD/MM/YYYY'),'japonnaise','M','06 76 77 13 50');
insert into sio_eleve values(25, 'HISLAIRE','VIOLETTE', to_date('18/07/2005','DD/MM/YYYY'),'belge','F',null);
insert into sio_eleve values(26, 'MOREL','GINA', to_date('07/09/2011','DD/MM/YYYY'),'française','F',null);
insert into sio_eleve values(27, 'BRETECHER','AGRIPPINE', to_date('16/09/1995','DD/MM/YYYY'),'française','F','06 55 03 32 81');
insert into sio_eleve values(28, 'FUTURO','DANY', to_date('09/11/2007','DD/MM/YYYY'),'espagnole','M',null);
insert into sio_eleve values(29, 'QUINO','MAFALDA', to_date('24/01/2002','DD/MM/YYYY'),'argentine','F',null);
insert into sio_eleve values(30, 'DETRITUS', 'CAIUS', to_date('06/06/2006','DD/MM/YYYY'),'italienne','M','06 07 54 10 23');
insert into sio_eleve values(31, 'CAGE', 'LUKE', to_date('16/07/2001','DD/MM/YYYY'),'etats-unienne','M',null);
insert into sio_eleve values(32, 'ROGERS', 'STEVEN', to_date('18/03/1973','DD/MM/YYYY'),'etats-unienne','M',null);
insert into sio_eleve values(33, 'XAVIER', 'CHARLES', to_date('21/10/2007','DD/MM/YYYY'),'etats-unienne','M',null);
insert into sio_eleve values(34, 'TALON','ACHILLE', to_date('24/05/1998','DD/MM/YYYY'),'française','M','07 78 44 20 19');
insert into sio_eleve values(35, 'SIMOND','ALICE', to_date('12/01/2001','DD/MM/YYYY'),'française','F',null);
insert into sio_eleve values(36, 'ACHE','ARABELLE', to_date('03/03/1988','DD/MM/YYYY'),'française','F',null);
insert into sio_eleve values(37, 'WEYLAND','ARIA', to_date('07/08/1979','DD/MM/YYYY'),'belge','F','06 06 75 80 38');
insert into sio_eleve values(38, 'BLOCHE','JEROME', to_date('29/12/1994','DD/MM/YYYY'),'française','M',null);
insert into sio_eleve values(39, 'CAUVIN','CEDRIC', to_date('11/06/2001','DD/MM/YYYY'),'belge','M',null);
insert into sio_eleve values(40, 'DUBOIS','ROBIN', to_date('27/09/1993','DD/MM/YYYY'),'belge','M',null);
insert into sio_eleve values(41, 'LEBUT','MARC', to_date('07/07/1987','DD/MM/YYYY'),'belge','M',null);
insert into sio_eleve values(42, 'BORSHOGOVOCHNYY','LUKA', to_date('21/11/1997','DD/MM/YYYY'),'ukrainienne','M',null);
insert into sio_eleve values(43, 'LARSSINET','MANU', to_date('07/07/1987','DD/MM/YYYY'),'française','M',null);
insert into sio_eleve values(44, 'HENDERSON','LULU', to_date('11/12/1999','DD/MM/YYYY'),'etats-unienne','F',null);
insert into sio_eleve values(45, 'SIMPSON','MARGE', to_date('25/08/1991','DD/MM/YYYY'),'etats-unienne','F','06 07 13 43 06');
insert into sio_eleve values(46, 'KELLER','KIM', to_date('16/05/1995','DD/MM/YYYY'),'française','F','06 07 13 43 06');
insert into sio_eleve values(47, 'SHEDIAC','DRISS', to_date('28/12/1985','DD/MM/YYYY'),'marocaine','M',null);
insert into sio_eleve values(48, 'SLIM','BOUZID', to_date('24/09/1992','DD/MM/YYYY'),'algérienne','M',null);
insert into sio_eleve values(49, 'AOUAMRI','SYLVIE', to_date('04/02/1993','DD/MM/YYYY'),'algérienne','F','06 07 27 56 10');


create table SIO_NIVEAU(
  n_id NUMBER(2) constraint niveau_pkey primary key,
  n_libelle VARCHAR2(15) not null,
  d_id constraint niveau_discipline_fkey references SIO_DISCIPLINE
);

insert into sio_niveau values (20, 'FLOCON',1);
insert into sio_niveau values (21, '1ERE ETOILE',1);
insert into sio_niveau values (22, '2EME ETOILE',1);
insert into sio_niveau values (23, '3EME ETOILE',1);
insert into sio_niveau values (24, 'FLECHE',1);
insert into sio_niveau values (25, 'CHAMOIS',1);
insert into sio_niveau values (41, '1ER SNOWBOARD',2);
insert into sio_niveau values (42, '2EME SNOWBOARD',2);
insert into sio_niveau values (43, '3EME SNOWBOARD',2);
insert into sio_niveau values (50, 'FLOCON',3);
insert into sio_niveau values (51, '1ERE ETOILE',3);
insert into sio_niveau values (52, '2EME ETOILE',3);
insert into sio_niveau values (53, '3EME ETOILE',3);

create table SIO_LECON(
  l_id NUMBER(4) constraint lecon_pkey primary key,
  l_debut DATE, -- date et heure de début
  l_duree NUMBER(3), -- en nb de minutes
  l_cible constraint lecon_niveau_fkey references SIO_NIVEAU,
  l_encadree_par constraint lecon_mono_fkey references SIO_MONITEUR,
  l_situee_dans constraint lecon_centre_fkey references SIO_CENTRE
);

create table SIO_SUIT(
  e_id constraint suit_eleve_fkey references SIO_ELEVE,
  l_id constraint suit_lecon_fkey references SIO_LECON,
  constraint suit_pkey primary key(e_id, l_id)
);

create table SIO_PASSE_TEST(
  e_id constraint passe_eleve_fkey references SIO_ELEVE,
  n_id constraint passe_niveau_fkey references SIO_NIVEAU,
  t_date_passage DATE not null,
  c_id constraint passe_centre_fkey references SIO_CENTRE,
  t_resultat NUMBER(1) not null,
  constraint resultat_booleen check (t_resultat in (0,1)),
  constraint passe_pkey primary key(e_id, t_date_passage,n_id)
);
