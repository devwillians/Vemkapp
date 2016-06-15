CREATE TABLE [dbo].[Ingrediente] (
    [Id]            INT             NOT NULL,
    [Nome]          VARCHAR (100)   NOT NULL,
    [Quantidade]    DECIMAL (12, 2) NOT NULL,
    [UnidadeMedida] INT             NOT NULL,
    [Esgotado]      BIT             DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Ingrediente_ToUnidadeMedida] FOREIGN KEY ([UnidadeMedida]) REFERENCES [dbo].[UnidadeMedida] ([Id])
);

