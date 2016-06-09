CREATE TABLE [dbo].[ItemIngrediente]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ItemId] INT NOT NULL, 
    [IngredienteId] INT NOT NULL, 
    [Quantidade] DECIMAL(12, 2) NOT NULL, 
    CONSTRAINT [FK_ItemIngrediente_Item] FOREIGN KEY (ItemId) REFERENCES Item(Id), 
    CONSTRAINT [FK_ItemIngrediente_Ingrediente] FOREIGN KEY (IngredienteId) REFERENCES Ingrediente(Id)
)
