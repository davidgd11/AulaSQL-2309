SET ECHO ON

DESC departamento

INSERT INTO departamento
VALUES(1, 'Administrativo', 'ADM');

INSERT INTO departamento (cd_depto, nm_depto, sg_depto)
VALUES(2,'Contabilidade', 'CONTABIL');

INSERT INTO departamento (sg_depto, nm_depto, cd_depto)
VALUES ('VEND','Vendas', 3)

SELECT * FROM departamento;

COMMIT;



DESC funcionario

INSERT INTO funcionario
VALUES(1, 'José da Silva', 1, 'M', DATE'2002-01-01', SYSDATE, 3500.50, 1, NULL, NULL);

INSERT INTO funcionario
VALUES(2, 'Mario Cardoso', 1, 'M', DATE'2006-04-21', SYSDATE, 4700.50, 1, NULL, NULL);

INSERT INTO funcionario
VALUES(3, 'David Denunci', 1, 'M', DATE'2005-02-15', SYSDATE, 10500.50, 1, NULL, NULL);

INSERT INTO funcionario (cd_func, nm_func, in_ativo, in_sexo, dt_nasc, dt_admissao, vl_salario, cd_depto, cd_chefe_func, tx_obs_func)
VALUES(4, 'Giovanna', 1, 'F', DATE'2004-10-28', DEFAULT, 5400.50, 1, NULL, NULL);

SELECT * FROM funcionario;



CREATE SEQUENCE sq_func;

SELECT sq_func.NEXTVAL FROM dual;

INSERT INTO funcionario (cd_func, nm_func, in_ativo, in_sexo, dt_nasc, dt_admissao, vl_salario, cd_depto, cd_chefe_func, tx_obs_func)
VALUES(sq_func.NEXTVAL, 'Stela', 1, 'F', DATE'2015-01-22', SYSDATE, 6500.50, 2, NULL, NULL);

COMMIT;
