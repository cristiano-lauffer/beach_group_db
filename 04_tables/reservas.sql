CREATE TABLE reservas (
    oid_reserva BIGINT AUTO_INCREMENT PRIMARY KEY,

    oid_usuario BIGINT NOT NULL,
    oid_quadra BIGINT NOT NULL,

    dat_reserva DATE NOT NULL,
    hor_inicio INT NOT NULL,

    vlr_reserva DECIMAL(10,2) NOT NULL,

    ind_confirmada BOOLEAN NOT NULL DEFAULT FALSE,
    ind_pago BOOLEAN NOT NULL DEFAULT FALSE,

    vlr_multa_cancelamento DECIMAL(10,2) DEFAULT 0,

    dat_criacao DATETIME NOT NULL,
    dat_alteracao DATETIME NOT NULL,

    CONSTRAINT fk_reserva_usuario
        FOREIGN KEY (oid_usuario)
        REFERENCES usuarios(oid_usuario),

    CONSTRAINT fk_reserva_quadra
        FOREIGN KEY (oid_quadra)
        REFERENCES quadras(oid_quadra),

    CONSTRAINT uk_reserva_horario
        UNIQUE (oid_quadra, dat_reserva, hor_inicio)
);