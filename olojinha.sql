create database olojinha;
use olojinha;
create table categorias
(
    catid int primary key auto_increment,
    catnome varchar(150),
    catativo boolean default 1
);
create table subcategorias
(
    subid int primary key auto_increment,
    subnome varchar(150),
    subcatid int,
    subativo boolean default 1,
    constraint fksubcatid foreign key (subcatid) references categorias (catid)
);
create table produtos
(
    proid int primary key auto_increment,
    pronome varchar(150),
    prodescricao varchar(1024),
    provalorcusto double,
    provalorvenda double,
    proquantidade int,
    prosubid int,
    proativo boolean default 1,
    constraint fkprosubid foreign key (prosubid) references subcategorias (subid)
);
create table fotosproduto
(
    fotid int primary key auto_increment,
    fotcaminho varchar(1024),
    fotdescricao varchar(150),
    fotproid int,
    fotprincipal boolean default 0,
    fotativo boolean default 1,
    constraint fkfotproid foreign key (fotproid) references produtos (proid)
);
insert into categorias (catnome) values
('Acessórios para Veículos'),
('Agro'),
('Alimentos e Bebidas'),
('Pet Shop'),
('Antiguidades e Coleções'),
('Arte, Papelaria e Armarinho'),
('Bebês'),
('Beleza e Cuidado Pessoal'),
('Brinquedos e Hobbies'),
('Calçados, Roupas e Bolsas'),
('Câmeras e Acessórios'),
('Carros, Motos e Outros'),
('Casa, Móveis e Decoração'),
('Celulares e Telefones'),
('Construção'),
('Eletrodomésticos'),
('Eletrônicos, Áudio e Vídeo'),
('Esportes e Fitness'),
('Ferramentas'),
('Festas e Lembrancinhas'),
('Games'),
('Imóveis'),
('Indústria e Comércio'),
('Informática'),
('Ingressos'),
('Instrumentos Musicais'),
('Joias e Relógios'),
('Livros, Revistas e Comics'),
('Música, Filmes e Seriados'),
('Saúde'),
('Serviços'),
('Mais Categorias');


select 
    proid,
    pronome,
    prodescricao,
    provalorcusto,
    provalorvenda,
    proquantidade,
    prosubid,
    subnome,
    subcatid,
    catnome,
    proativo
from
    produtos,
    subcategorias,
    categorias
where
    prosubid = subid
and
    subcatid = catid

    Insert into subcategorias
(subnome, subcatid)
VALUES
("Para Playstation","21"),
("Fones","21");

Insert into subcategorias
(subnome, subcatid)
VALUES
("Livros Físicos","28"),
("Ebooks","28");

Insert into produtos
(pronome, prodescricao, provalorcusto, provalorvenda, proquantidade, prosubid)
Values
('Persona 5 Royal PS4','Disco físico de Persona 5 Royal lacrado e novo para Playstation 4',80,120,421,1),
('Headseat Preto','Headseat preto de ótima qualidade, confortável e anti-ruído.',100,150.90,590,2),
('Não pertube a floresta','Livro de terror botânico escrito por C.G DREWS, onde monstros originários de desenhos atacam dois garotos em seu internato.',40,68.50,149,3),
('Lições sobre afogamentos','Ebbok de dark academia escrito por Ava Reid',0,10,200,4),

('Resident Evil 2 Remake PS5','Disco Físico de Resident Evil 2 Remake usado para Playstation 5',120,200,876,1),
('JBL bluetooth TUNE 520B','Fone de ouvido JBL Bluetooth azul modelo 520B',80,271.90,243,2),
('Box A saga dos corvos','Box contendo os quatro livros da A saga dos corvos, escrito por Maggie Stiefvater / "Os garotos corvos", "Ladrões de sonhos", "Lírio Azul, Azul Lírio" e "O rei corvo" + o Conto "Opala"', 70, 150.50, 428, 3),
('Coraline', 'Ebook Coraline de Neil Gaimman, origem do famoso filme "Coraline"', 0, 30, 300, 4);
