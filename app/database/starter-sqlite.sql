PRAGMA foreign_keys=OFF; 

CREATE TABLE cidade( 
      id  INTEGER    NOT NULL  , 
      nome text   , 
      uf_id int   NOT NULL  , 
 PRIMARY KEY (id),
FOREIGN KEY(uf_id) REFERENCES uf(id)) ; 

CREATE TABLE uf( 
      id  INTEGER    NOT NULL  , 
      nome text   , 
      sigla char  (2)   , 
 PRIMARY KEY (id)) ; 

 
 