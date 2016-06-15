CREATE TABLE [dbo].[Cardapio] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [Nome]      VARCHAR (100) NOT NULL,
    [DiaSemana] INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

