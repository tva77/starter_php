CREATE TABLE cidade( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `nome` text   , 
      `uf_id` int   NOT NULL  , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

CREATE TABLE uf( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `nome` text   , 
      `sigla` char  (2)   , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

 
  
 ALTER TABLE cidade ADD CONSTRAINT fk_cidade_1 FOREIGN KEY (uf_id) references uf(id); 
