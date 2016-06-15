CREATE TABLE [dbo].[ItemIngrediente] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [ItemId]        INT             NOT NULL,
    [IngredienteId] INT             NOT NULL,
    [Quantidade]    DECIMAL (12, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ItemIngrediente_Ingrediente] FOREIGN KEY ([IngredienteId]) REFERENCES [dbo].[Ingrediente] ([Id]),
    CONSTRAINT [FK_ItemIngrediente_Item] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id])
);

