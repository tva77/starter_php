CREATE TABLE cidade( 
      id  INT IDENTITY    NOT NULL  , 
      nome nvarchar(max)   , 
      uf_id int   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE uf( 
      id  INT IDENTITY    NOT NULL  , 
      nome nvarchar(max)   , 
      sigla char  (2)   , 
 PRIMARY KEY (id)) ; 

 
  
 ALTER TABLE cidade ADD CONSTRAINT fk_cidade_1 FOREIGN KEY (uf_id) references uf(id); 
