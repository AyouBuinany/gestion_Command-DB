create database Gestion_Commande

use Gestion_Commande

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   IdCl                 int not null auto_increment ,
   NameCl               varchar(254),
   TelephoneCl          int,
   AdressCl             varchar(254),
   CreditcardCl         int,
   primary key (IdCl)
);

/*Show table*/
select * from Client

/*Add*/
insert into Client values(default,'ayoub',0654218549,'50 street Nor',15)
insert into Client values(default,'ahmed',0654218599,'11 street Nor',12)
insert into Client values(default,'reda',0680214562,'50 street Nor',18)

/*update*/
update Client set NameCl='jawhar'
where AdressCl='11 street Kor';

/*delete*/
delete from Client
where CreditcardCl=18;

/*delete table or (clear)*/
drop table Client

/*==============================================================*/
/* Table : CommandeLine                                         */
/*==============================================================*/
create table CommandeLine
(
   Id                   int not null,
   CommandeQt           float,
   CommandeId           varchar(254),
   primary key (Id)
);

select * from CommandeLine
insert into CommandeLine values(1,1000,'63 street 9or')
insert into CommandeLine values(2,39.1,'30 street')

/*==============================================================*/
/* Table : "Order"                                              */
/*==============================================================*/
create table orders
(
   IdC                  int,
   DateC                datetime default CURRENT_TIMESTAMP
,primary key(IdC)
);
/*Ajouter les donners*/
insert into orders values(1,default)
insert into orders values(2,default)
/* afficher les informations*/
select * from orders

/* MODIFIER LES INFIRMATIONS DE TABLE ORDERS WHERE IdC=2 and IdC =1*/
update orders set DateC='2010/10/12 13:20:15 ' where IdC=1
update orders set DateC='2020-09-12 13:20:15 ' where IdC=2
/*supprimer table orders*/
drop table orders
/*==============================================================*/
/* Table : Product                                              */
/*==============================================================*/
create table Product
(
   Id                   int,
   nom                 varchar(254),
   DateBuy              datetime default CURRENT_TIMESTAMP,
   Q_Stock              float,
primary key(Id)
);

/* supprimer table product*/
drop table Product
insert into Product values(1,'Ahmed',default,12.4)
insert into Product(Id,nom,Q_Stock) values(2,'Ahmed',12.4)
/*affichage table Product*/
select * from Product
/* update table product*/

update Product set nom ='jawhar' , Q_Stock=Id*10/2  where Id=1
update Product set nom ='REDA' , Q_Stock=208.8  where Id=2
/* create user */
create user 'user1' identified by   'youcode';
grant all on *.* to 'user1';

/*Grant option or allow option*/
/*user*/
create user 'utilisateur' identified by  'youcode';


grant insert,delete on gestion_commande.* to utilisateur;
