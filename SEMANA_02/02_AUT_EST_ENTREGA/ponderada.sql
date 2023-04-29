CREATE TABLE Contato ( 
	"E-mail"             VARCHAR(255) NOT NULL    ,
	Telefone             INTEGER NOT NULL    ,
	ID_Contato           INTEGER NOT NULL  PRIMARY KEY  ,
	ID_Pessoa            INTEGER NOT NULL    ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES Pessoa( ID ) 
 );

CREATE TABLE Pessoa ( 
	Idade                INTEGER NOT NULL    ,
	Nome                 VARCHAR(255) NOT NULL    ,
	ID                   INTEGER NOT NULL  PRIMARY KEY  ,
	Endereço             VARCHAR(255) NOT NULL    ,
	Personalidade        VARCHAR(255) NOT NULL    ,
	Foto                 VARCHAR(255) NOT NULL    ,
	Cargo                VARCHAR(255) NOT NULL    
 );

CREATE TABLE Realizações ( 
	Título               VARCHAR(255) NOT NULL    ,
	Data                 DATE NOT NULL    ,
	Descrição            VARCHAR(255) NOT NULL    ,
	ID_Pessoa            INTEGER NOT NULL   ,
	ID_Realizações       INTEGER NOT NULL  PRIMARY KEY   ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES Pessoa( ID )  
 );

CREATE TABLE Experiência ( 
	"Nome da empresa"    VARCHAR(255) NOT NULL    ,
	"Tempo exercido"     DATE NOT NULL    ,
	Cargo                VARCHAR(255) NOT NULL    ,
	"Atividades exercidas" VARCHAR(255) NOT NULL    ,
	ID_Experiência       INTEGER NOT NULL    ,
	ID_Pessoa            INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES Pessoa( ID )  
 );

CREATE TABLE Formação ( 
	Curso                INTEGER     ,
	"Tempo exercido"     DATE NOT NULL    ,
	Instituição          VARCHAR(255) NOT NULL    ,
	"Diploma obtido"     VARCHAR(255) NOT NULL    ,
	ID_Formação          INTEGER NOT NULL    ,
	ID_Pessoa            INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES Pessoa( ID )  
 );

CREATE TABLE Habilidades ( 
	Illustrator          INTEGER NOT NULL    ,
	Photoshop            INTEGER NOT NULL    ,
	"Corel Draw"         INTEGER NOT NULL    ,
	Dreamweaver          INTEGER NOT NULL    ,
	"HTML/CSS3"          INTEGER NOT NULL    ,
	ID_Habilidades       INTEGER NOT NULL    ,
	ID_Pessoa            INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES Pessoa( ID )  
 );

CREATE TABLE Personalidade ( 
	"Personalidade 1"    VARCHAR(255) NOT NULL    ,
	"Personalidade 2"    VARCHAR(255) NOT NULL    ,
	"Personalidade 3"    VARCHAR(255) NOT NULL    ,
	"Personalidade 4"    VARCHAR(255) NOT NULL    ,
	"Personalidade 5"    VARCHAR(255) NOT NULL    ,
	ID_Personalidade     INTEGER NOT NULL    ,
	ID_Pessoa            INTEGER NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES Pessoa( ID )  
 );
