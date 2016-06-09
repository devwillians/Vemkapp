CREATE TABLE [dbo].[CardapioItem]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CardapioId] INT NOT NULL, 
    [ItemId] INT NOT NULL, 
    [Quantidade] DECIMAL(12, 2) NOT NULL, 
    CONSTRAINT [FK_CardapioItem_Cardapio] FOREIGN KEY (CardapioId) REFERENCES Cardapio(Id), 
    CONSTRAINT [FK_CardapioItem_Item] FOREIGN KEY (ItemId) REFERENCES Item(Id)
)
