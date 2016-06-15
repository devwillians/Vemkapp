CREATE TABLE [dbo].[CardapioItem] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [CardapioId] INT             NOT NULL,
    [ItemId]     INT             NOT NULL,
    [Quantidade] DECIMAL (12, 2) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CardapioItem_Cardapio] FOREIGN KEY ([CardapioId]) REFERENCES [dbo].[Cardapio] ([Id]),
    CONSTRAINT [FK_CardapioItem_Item] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id])
);

