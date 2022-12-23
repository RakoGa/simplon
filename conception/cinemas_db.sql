/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  23/12/2022 10:29:39                      */
/*==============================================================*/


-- alter table Jouer 
--    drop foreign key FK_JOUER_ASSOCIATI_ACTEUR;

-- alter table Jouer 
--    drop foreign key FK_JOUER_ASSOCIATI_FLIM;

-- drop table if exists Acteur;

-- drop table if exists Flim;


-- alter table Jouer 
--    drop foreign key FK_JOUER_ASSOCIATI_ACTEUR;

-- alter table Jouer 
--    drop foreign key FK_JOUER_ASSOCIATI_FLIM;

-- drop table if exists Jouer;

/*==============================================================*/
/* Table : Acteur                                               */
/*==============================================================*/
create table Acteur
(
   numAct               int not null  comment '',
   nomAct               varchar(60)  comment '',
   primary key (numAct),
   key AK_Identifiant_1 (numAct)
);

/*==============================================================*/
/* Table : Flim                                                 */
/*==============================================================*/
create table Flim
(
   numFilm              int not null  comment '',
   titre                varchar(254)  comment '',
   primary key (numFilm)
);

/*==============================================================*/
/* Table : Jouer                                                */
/*==============================================================*/
create table Jouer
(
   numAct               int not null  comment '',
   numFilm              int not null  comment '',
   role                 varchar(50)  comment '',
   primary key (numAct, numFilm)
);

alter table Jouer add constraint FK_JOUER_ASSOCIATI_ACTEUR foreign key (numAct)
      references Acteur (numAct) on delete restrict on update restrict;

alter table Jouer add constraint FK_JOUER_ASSOCIATI_FLIM foreign key (numFilm)
      references Flim (numFilm) on delete restrict on update restrict;

