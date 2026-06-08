CREATE TABLE cidade( 
      id number(10)    NOT NULL , 
      nome varchar(3000)   , 
      uf_id number(10)    NOT NULL , 
 PRIMARY KEY (id)) ; 

CREATE TABLE uf( 
      id number(10)    NOT NULL , 
      nome varchar(3000)   , 
      sigla char  (2)   , 
 PRIMARY KEY (id)) ; 

 
  
 ALTER TABLE cidade ADD CONSTRAINT fk_cidade_1 FOREIGN KEY (uf_id) references uf(id); 
 CREATE SEQUENCE cidade_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER cidade_id_seq_tr 

BEFORE INSERT ON cidade FOR EACH ROW 

    WHEN 

        (NEW.id IS NULL) 

    BEGIN 

        SELECT cidade_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
CREATE SEQUENCE uf_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER uf_id_seq_tr 

BEFORE INSERT ON uf FOR EACH ROW 

    WHEN 

        (NEW.id IS NULL) 

    BEGIN 

        SELECT uf_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
 