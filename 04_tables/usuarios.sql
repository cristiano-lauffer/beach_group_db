-- drop table `beach_group`.`usuarios`;

create table `beach_group`.`usuarios` (
	`oid_usuario` BIGINT not null AUTO_INCREMENT,
	`nom_usuario` VARCHAR(500) not null ,
	`nom_email` VARCHAR(500) not null ,
	`senha` VARCHAR(500) not null ,
	`dat_criacao` DATETIME not null DEFAULT CURRENT_TIMESTAMP,
	`dat_alteracao` DATETIME null,
	primary key (`oid_usuario`)
)
-- engine = InnoDB
;