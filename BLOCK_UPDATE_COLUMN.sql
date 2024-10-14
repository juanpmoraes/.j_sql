-- BLOCK UPDATE COLUMN

CREATE OR REPLACE TRIGGER prevent_salary_update BEFORE UPDATE OF salary ON HR.EMPLOYEES FOR EACH ROWBEGIN
RAISE_APPLICATION_ERROR(-20001, 'Atualização da coluna SALARY não é permitida.');
END;
/

-- BLOCK INSERT END UPDATE COLUMN

CREATE OR REPLACE TRIGGER prevent_salary_insert BEFORE INSERT OR UPDATE OR DELETE OF salary ON HR.EMPLOYEES FOR EACH ROWBEGIN  
IF :NEW.salary IS NOT NULL THEN    RAISE_APPLICATION_ERROR(-20002, 'Inserção, atualização ou exclusão de valor na coluna SALARY não é 
permitida.'); 
END IF;
END;
/

-- BLOCK DELETE TABLE

CREATE OR REPLACE TRIGGER prevent_employee_delete
BEFORE DELETE ON HR.EMPLOYEES
FOR EACH ROW
BEGIN
  RAISE_APPLICATION_ERROR(-20003, 'Exclusão de registros na tabela EMPLOYEES não é permitida.');
END;
/