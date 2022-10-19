use empresa_internet;
CREATE TABLE Cliente (
  id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  plano_id int NOT NULL,
  nome varchar(50) NOT NULL,
  sobrenome varchar(50) NOT NULL,
  estado varchar(50) NOT NULL,
  cidade varchar(50) NOT NULL,
  data_nascimento date NOT NULL
);

CREATE TABLE Plano (
  id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  velocidade_mb int NOT NULL,
  preco float NOT NULL,
  desconto float NOT NULL
);

ALTER TABLE Cliente ADD FOREIGN KEY (plano_id) REFERENCES Plano (id);



insert into Plano(velocidade_mb,preco,desconto)
values
(300, 429.00,15.0),
(275, 329.00,10.0),
(100, 179.00,5.0),
(75, 129.00,5.0),
(50, 109.00,0.0);

insert into 
	Cliente(plano_id,nome,sobrenome,estado,cidade,data_nascimento) 
values
	(1, "João","Laureano","Rio Grande do Sul", "Porto Alegre", "1998-05-11"),
    (1, "Maria","Laureano","Rio Grande do Sul", "Tramandaí", "1989-08-25"),
    (3, "Leonardo","Laureano","Rio Grande do Sul", "Cachoeirinha", "1995-12-26"),
    (4, "Jéssica","Laureano","Rio Grande do Sul", "São Caetano", "2001-07-04"),
    (4, "Fábio","Laureano","Rio Grande do Sul", "Imbé", "1990-05-20"),
    (2, "Kátia","Laureano","Rio Grande do Sul", "El Dorado do Sul", "1977-04-21"),
    (1, "Matheus","Laureano","Rio Grande do Sul", "Osório", "1986-02-23"),
    (1, "Nathan","Laureano","Rio Grande do Sul", "Viamão", "1980-02-17"),
    (5, "Pedro","Laureano","Rio Grande do Sul", "Bento Gonçalves", "1992-06-04"),
    (5, "Adão","Laureano","Rio Grande do Sul", "Rio Grande", "1976-06-21");
    
SELECT 
    *
FROM
    Cliente;