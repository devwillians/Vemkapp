CREATE TABLE [dbo].[Item] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Nome]        VARCHAR (100)   NOT NULL,
    [CategoriaId] INT             NOT NULL,
    [Esgotado]    BIT             DEFAULT ((0)) NOT NULL,
    [Habilitado]  BIT             DEFAULT ((1)) NOT NULL,
    [Preco]       DECIMAL (18, 2) NOT NULL,
    [Quantidade]  DECIMAL (18, 2) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Item_ToCategoria] FOREIGN KEY ([CategoriaId]) REFERENCES [dbo].[Categoria] ([Id])
);

