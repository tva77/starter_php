CREATE TABLE cidade( 
      id  SERIAL    NOT NULL  , 
      nome text   , 
      uf_id integer   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE uf( 
      id  SERIAL    NOT NULL  , 
      nome text   , 
      sigla char  (2)   , 
 PRIMARY KEY (id)) ; 

 
  
 ALTER TABLE cidade ADD CONSTRAINT fk_cidade_1 FOREIGN KEY (uf_id) references uf(id); 
 
 CREATE index idx_cidade_uf_id on cidade(uf_id); 
