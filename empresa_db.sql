CREATE DATABASE EMPRESA_DB_1E;

CREATE USER 'FUNCIONÁRIO'@'localhost' identified by '123';
CREATE USER 'GERENTE'@'localhost' identified by '123';
CREATE USER 'ADM'@'localhost' identified by '123';

GRANT ALL PRIVILEGES ON enterprise_1e TO 'ADM'@'localhost';
GRANT SELECT ON empresa_db_1e.* TO 'FUNCIONÁRIO'@'localhost';
GRANT UPDATE ON empresa_db_1e.* TO 'GERENTE'@'localhost';
GRANT SELECT ON empresa_db_1e.* TO 'GERENTE'@'localhost';
GRANT INSERT ON empresa_db_1e.* TO 'GERENTE'@'localhost';


REVOKE INSERT ON empresa_db_1e.* FROM 'GERENTE'@'localhost';
RENAME USER 'FUNCIONÁRIO'@'localhost' TO 'ASSISTENTE'@'localhost';
SHOW GRANTS FOR 'ADM'@'localhost';
SHOW GRANTS FOR 'GERENTE'@'localhost';
SHOW GRANTS FOR 'ASSISTENTE'@'localhost';
ALTER USER 'GERENTE'@'localhost' identified by 'nova_senha_gerente';
DROP USER 'ASSISTENTE' @'localgost';