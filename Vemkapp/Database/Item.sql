CREATE TABLE [dbo].[Item]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] VARCHAR(100) NOT NULL, 
    [CategoriaId] INT NOT NULL, 
    [Esgotado] BIT NOT NULL DEFAULT 0, 
    [Habilitado] BIT NOT NULL DEFAULT 1, 
    [Preco] DECIMAL(18, 2) NOT NULL, 
    [Quantidade] DECIMAL(18, 2) NULL, 
    CONSTRAINT [FK_Item_ToCategoria] FOREIGN KEY (CategoriaId) REFERENCES Categoria(Id)
)
