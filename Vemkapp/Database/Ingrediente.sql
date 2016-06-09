CREATE TABLE [dbo].[Ingrediente]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Nome] VARCHAR(100) NOT NULL, 
    [Quantidade] DECIMAL(12, 2) NOT NULL, 
    [UnidadeMedida] INT NOT NULL, 
    [Esgotado] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Ingrediente_ToUnidadeMedida] FOREIGN KEY (UnidadeMedida) REFERENCES UnidadeMedida(Id)
)
