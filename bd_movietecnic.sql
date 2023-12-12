create database db_movietecnic;
use db_movietecnic;

create table tbl_categoria
(	
    cod_categoria int primary key auto_increment,
    desc_categoria varchar(25) not null    
);

create table tbl_produtora
(	
    cod_produtora int primary key auto_increment,
    nome_produtora varchar(45) not null    
);

create table tbl_filme
(	
    cod_filme int primary key auto_increment,
    cod_categoria int not null,
    nome_filme varchar(70) not null,
    cod_prod int not null,
    num_minutos varchar(4) not null,
    vl_preco decimal(6,2) not null,
    qt_estoque int not null,
    desc_sinopse text not null,
    desc_capa varchar(255) not null,
    sg_lancamento enum('S','N') not null,
    constraint fk_cat foreign key(cod_categoria) references tbl_categoria(cod_categoria),
    constraint fk_prod foreign key(cod_prod) references tbl_produtora(cod_produtora)
);

insert into tbl_categoria
values(default,'Comédia'),
(default, 'Terror'),
(default, 'Drama'),
(default, 'Romance'),
(default, 'Suspense'),
(default,  'Anime'),
(default,  'Ficção cietífica');


insert into tbl_produtora
values(default,'Dreamworks'),		-- codigo 1
(default, 'MGM (Metro Goldwyn Mayer)'),					-- codigo 2	
(default, 'The Weinstein Company'),					-- codigo 3
(default, 'Lions Gate Entertainment'),				-- codigo 4
(default, 'Paramount Motion Pictures Group'),				-- codigo 5
(default, '21st Century Fox'),				-- codigo 6
(default, ' Universal Pictures'),					-- codigo 7
(default, 'The Walt Disney Company'),			-- codigo 8
(default, 'Warner Bros. Pictures'),					-- codigo 9
(default, 'Sony Pictures Entertainment'),				    -- codigo 10
(default, 'Annapurna Pictures'),				    -- codigo 11
(default, 'Pixar Animation Studios'),		-- codigo 12
(default, 'Columbia Pictures'),				-- codigo 13
(default, 'Studio Ghibli'),				    -- codigo 14
(default, 'Legendary Pictures'),		-- codigo 15
(default, 'Blumhouse Productions'),				    -- codigo 16
(default, 'Lionsgate Films'),			    -- codigo 17
(default, 'New Line Cinema');				    -- codigo 18

insert into tbl_filme
values
(Default,'7','Harry Potter e a Pedra Filosofal','9','152','20.00','10',

'<p>Harry Potter é um garoto órfão que vive infeliz com seus tios, os Dursleys. Ele recebe uma carta contendo um 
convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos. Inicialmente, Harry 
é impedido de ler a carta por seu tio, mas logo recebe a visita de Hagrid, o guarda-caça de Hogwarts, que chega 
para levá-lo até a escola. Harry adentra um mundo mágico que jamais imaginara, vivendo diversas aventuras com seus
 novos amigos, Rony Weasley e Hermione Granger.</p>', 'Harry Potter e a pedra filosofal','N'),
 
 

 (Default,'7','Jurassic Park','7','127','19.90','7',
'<p>Os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido 
para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e 
bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os 
visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.</p>', 'Jurassic Park','N'),
 

(Default,'1','Forrest Gump - O Contador de Histórias','5','142','9.00','20',
'<p>Mesmo com o raciocínio lento, Forrest Gump nunca se sentiu desfavorecido. Graças ao apoio da mãe, ele teve uma 
vida normal. Seja no campo de futebol como um astro do esporte, lutando no Vietnã ou como capitão de um barco de 
pesca de camarão, Forrest inspira a todos com seu otimismo. Mas a pessoa que Forrest mais ama pode ser a mais 
difícil de salvar: seu amor de infância, a doce e perturbada Jenny.</p>', 'Forrest Gump - O Contador de Histórias','N'),
 
 
 (Default,'7','Homem-Aranha no Aranhaverso','10','117','40.00','24',
'<p>Após ser atingido por uma teia radioativa, Miles Morales, um jovem negro do Brooklyn, se torna o Homem-Aranha,
 inspirado no legado do já falecido Peter Parker. Entretanto, ao visitar o túmulo de seu ídolo em uma noite chuvosa,
 ele é surpreendido com a presença do próprio Peter, vestindo o traje do herói por baixo de um sobretudo. A surpresa 
 fica ainda maior quando Miles descobre que ele veio de uma dimensão paralela, assim como outras versões do 
 Homem-Aranha.</p>','Homem-Aranha no Aranhaverso','N');
 
-- Segunda parte

insert into tbl_filme
values 
(Default,'7','Jogos Vorazes','4','142','15.90','10',
'<p>Na região antigamente conhecida como América do Norte, a Capital de Panem controla 12 distritos e os força a 
escolher um garoto e uma garota, conhecidos como tributos, para competir em um evento anual televisionado. Todos os 
cidadãos assistem aos temidos jogos, no qual os jovens lutam até a morte, de modo que apenas um saia vitorioso. 
A jovem Katniss Everdeen, do Distrito 12, confia na habilidade de caça e na destreza com o arco, além dos instintos 
aguçados, nesta competição mortal.</p>','Jogos Vorazes','S'),
 
 
 (Default,'6','O Rei Leão','8','88','10.90','10',
'<p>Este desenho animado da Disney mostra as aventuras de um leão jovem de nome Simba, o herdeiro de seu pai, Mufasa. 
O tio malvado de Simba, Oscar, planeja roubar o trono de Mufasa atraindo pai e filho para uma emboscada. Simba consegue
 escapar e somente Mufasa morre. Com a ajuda de seus amigos,Timon e Pumba, ele reaparece como adulto para recuperar
sua terra, que foi roubada por seu tio Oscar.</p>','O rei leão','N'),
 
(Default,'7','O Senhor dos Anéis: A Sociedade do Aneis - Trilogia','18','558','70.90','20',
'<p>Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa
ser destruído antes que caia nas mãos do mal. Para isso, o hobbit Frodo tem um caminho árduo pela frente, onde 
encontra perigo, medo e seres bizarros. Ao seu lado para o cumprimento desta jornada, ele aos poucos pode contar 
com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando nove seres que formam a Sociedade do Anel.</p>',
'Senhor dos anéis - trilogia','N'),
 
 
 (Default,'2','A Viagem de Chihiro','14','125','12.99','40',
'<p>Chihiro e seus pais estão se mudando para uma cidade diferente. A caminho da nova casa, o pai decide pegar um 
atalho. Eles se deparam com uma mesa repleta de comida, embora ninguém esteja por perto. Chihiro sente o perigo, 
mas seus pais começam a comer. Quando anoitece, eles se transformam em porcos. Agora, apenas Chihiro pode salvá-los.</p>',
'A viagem de chihiro','N');


-- Terceira Parte

insert into tbl_filme
values 
 (Default,'7','A Origem','15','148','9.90','3',
'<p>Dom Cobb é um ladrão com a rara habilidade de roubar segredos do inconsciente, obtidos durante o estado de sono. 
Impedido de retornar para sua família, ele recebe a oportunidade de se redimir ao realizar uma tarefa aparentemente 
impossível: plantar uma ideia na mente do herdeiro de um império. Para realizar o crime perfeito, ele conta com a 
ajuda do parceiro Arthur, o discreto Eames e a arquiteta de sonhos Ariadne. Juntos, eles correm para que o inimigo 
não antecipe seus passos.</p>','A origem','S'),
 
 (Default,'2','Corra!','16','104','19.90','3',
'<p>Chris é um jovem fotógrafo negro que está prestes a conhecer os pais de Rose, sua namorada caucasiana. Na luxuosa 
propriedade dos pais dela, Chris percebe que a família esconde algo muito perturbador.</p>',
 'Corra!','S'),
 
 (Default,'7','MIB: Homens de Preto','13','90','9.90','7',
'<p>Os agentes K e J são policiais futuristas que trabalham em um projeto supersecreto do governo. Ele envolve a 
captura e deportação de seres espaciais não autorizados a ficarem na Terra.</p>','MIB','N'),
 
 (Default,'1','Shrek','1','90','6.90','9',
'<p>Um ogro tem sua vida invadida por personagens de contos de fadas que acabam com a tranquilidade de seu lar. 
Ele faz um acordo pra resgatar uma princesa.</p>','Shrek','N'); 

-- quarta parte
 
insert into tbl_filme
values 
 (Default,'6','Toy Story (1, 2, 3, 4)','12','376','69.90','25',
'<p>O aniversário do garoto Andy está chegando e seus brinquedos ficam nervosos, temendo que ele ganhe novos 
brinquedos que possam substituí-los. Liderados pelo caubói Woody, o brinquedo predileto de Andy, eles recebem Buzz 
Lightyear, o boneco de um patrulheiro espacial, que logo passa a receber mais atenção do garoto. Com ciúmes, Woody 
tenta ensiná-lo uma lição, mas Buzz cai pela janela. É o início da aventura do caubói, que precisa resgatar Buzz 
para limpar sua barra com os outros brinquedos.</p>','Toy Syory','S'),
 
 (Default,'7','Her','11','126','15.90','13',
'<p>O solitário escritor Theodore desenvolve uma relação de amor especial com o novo sistema operacional do seu
 computador. Surpreendentemente, ele acaba se apaixonando pela voz deste programa, uma entidade intuitiva e sensível
 chamada Samantha.</p>','Her','S');
 
 select count(*) from tbl_filme;
select * from tbl_filme;
select nome_filme, num_minutos from tbl_filme;
select * from tbl_categoria;
select * from tbl_produtora;

create view vw_filme
as select 
	tbl_filme.cod_filme,
    tbl_filme.cod_prod,
    tbl_categoria.cod_categoria,
    tbl_categoria.desc_categoria,
    tbl_filme.nome_filme,
    tbl_produtora.nome_produtora,
    tbl_filme.num_minutos,
    tbl_filme.vl_preco,
    tbl_filme.qt_estoque,
	tbl_filme.desc_sinopse,
    tbl_filme.desc_capa,
    tbl_filme.sg_lancamento
from tbl_filme inner join tbl_produtora
on tbl_filme.cod_prod = tbl_produtora.cod_produtora
inner join tbl_categoria
on tbl_filme.cod_categoria = tbl_categoria.cod_categoria;

use db_movietecnic;
select * from vw_filme;

select nome_filme,vl_preco,desc_capa, qt_estoque from tbl_filme;

insert into tbl_filme
values
(Default,'2','Zoombieland','18','88','20.00','0',

'<pDois rapazes solitários em meio ao apocalipse zumbi decidem se ajudar a chegar aos seus destinos, mas topam com duas garotas articuladas e muito
 mais espertas do que eles.</p>', 'Zombielandia','N');
 
 select nome_filme,vl_preco,desc_capa, qt_estoque from tbl_filme where desc_categoria= 'Terror';
 
 select nome_filme,vl_preco,desc_capa, qt_estoque from tbl_filme where cod_categoria = '2'; 
 
 