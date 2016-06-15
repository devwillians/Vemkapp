CREATE TABLE [dbo].[Categoria] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [Nome]        VARCHAR (20) NOT NULL,
    [DiaSemana]   INT          NULL,
    [CategoriaId] INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Categoria_Categoria] FOREIGN KEY ([CategoriaId]) REFERENCES [dbo].[Categoria] ([Id])
);

