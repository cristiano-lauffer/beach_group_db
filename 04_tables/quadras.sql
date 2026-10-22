-- drop table `beach_group`.`quadras`;

create table `beach_group`.`quadras` (
	`oid_quadra` BIGINT not null AUTO_INCREMENT,
	`nom_quadra` VARCHAR(500) not null ,
	`hor_funcionamento_inicio` INT not null ,
	`hor_funcionamento_fim` INT not null ,
	`vlr_quadra` DECIMAL(10, 2) not null ,
	`dat_criacao` DATETIME not null DEFAULT CURRENT_TIMESTAMP,
	`dat_alteracao` DATETIME null,
	primary key (`oid_quadra`)
)
-- engine = InnoDB
;