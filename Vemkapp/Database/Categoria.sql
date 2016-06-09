CREATE TABLE [dbo].[Categoria]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] VARCHAR(20) NOT NULL, 
    [DiaSemana] INT NULL, 
    [CategoriaId] INT NULL, 
    CONSTRAINT [FK_Categoria_Categoria] FOREIGN KEY (CategoriaId) REFERENCES Categoria(Id)
)
