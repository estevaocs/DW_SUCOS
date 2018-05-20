/*
Script de implantação para DW_SUCOS

Este código foi gerado por uma ferramenta.
As alterações feitas nesse arquivo poderão causar comportamento incorreto e serão perdidas se
o código for gerado novamente.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DW_SUCOS"
:setvar DefaultFilePrefix "DW_SUCOS"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detecta o modo SQLCMD e desabilita a execução do script se o modo SQLCMD não tiver suporte.
Para reabilitar o script após habilitar o modo SQLCMD, execute o comando a seguir:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'O modo SQLCMD deve ser habilitado para executar esse script com êxito.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'A operação de refatoração Renomear com chave 7c26759f-5eb2-499c-8327-881261ceed88 foi ignorada; o elemento [dbo].[Dim_Cliente].[Cod_Cidade] (SqlSimpleColumn) não será renomeado para Cod_Estado';


GO
PRINT N'A operação de refatoração Renomear com chave a4d600a6-1974-44fd-b351-6499e9108dbb foi ignorada; o elemento [dbo].[Dim_Cliente].[Desc_Cidade] (SqlSimpleColumn) não será renomeado para Desc_Estado';


GO
PRINT N'A operação de refatoração Renomear com chave c1363b5d-2186-4d38-a4d4-b00ca8d6e3c9 foi ignorada; o elemento [dbo].[Dim_Cliente].[Cod_Cidade] (SqlSimpleColumn) não será renomeado para Cod_Regiao';


GO
PRINT N'A operação de refatoração Renomear com chave a4a0ac15-41f3-41fd-9469-7c2d81f9f9cc foi ignorada; o elemento [dbo].[Dim_Cliente].[Desc_Cidade] (SqlSimpleColumn) não será renomeado para Desc_Regiao';


GO
PRINT N'A operação de refatoração Renomear com chave 08125807-f4e4-4f29-80ba-efc2958c8760 foi ignorada; o elemento [dbo].[Dim_Cliente].[Id] (SqlSimpleColumn) não será renomeado para Cod_Cliente';


GO
PRINT N'A operação de refatoração Renomear com chave 5ee69504-618e-4d3f-885b-e4abe0554ba8 foi ignorada; o elemento [dbo].[Dim_Cliente].[Cod_Cidade] (SqlSimpleColumn) não será renomeado para Cod_Segmento';


GO
PRINT N'A operação de refatoração Renomear com chave 1bfcc2cc-4a07-41da-80e1-a7f603f165c5 foi ignorada; o elemento [dbo].[Dim_Cliente].[Desc_Cidade] (SqlSimpleColumn) não será renomeado para Desc_Segmento';


GO
PRINT N'Criando [dbo].[Dim_Cliente]...';


GO
CREATE TABLE [dbo].[Dim_Cliente] (
    [Cod_Cliente]   NVARCHAR (50)  NOT NULL,
    [Desc_Cliente]  NVARCHAR (200) NULL,
    [Cod_Cidade]    NVARCHAR (50)  NULL,
    [Desc_Cidade]   NVARCHAR (200) NULL,
    [Cod_Estado]    NVARCHAR (50)  NULL,
    [Desc_Estado]   NVARCHAR (200) NULL,
    [Cod_Regiao]    NVARCHAR (50)  NULL,
    [Desc_Regiao]   NVARCHAR (200) NULL,
    [Cod_Segmento]  NVARCHAR (50)  NULL,
    [Desc_Segmento] NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Cliente] ASC)
);


GO
-- Etapa de refatoração para atualizar o servidor de destino com logs de transação implantados
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '08125807-f4e4-4f29-80ba-efc2958c8760')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('08125807-f4e4-4f29-80ba-efc2958c8760')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7c26759f-5eb2-499c-8327-881261ceed88')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7c26759f-5eb2-499c-8327-881261ceed88')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a4d600a6-1974-44fd-b351-6499e9108dbb')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a4d600a6-1974-44fd-b351-6499e9108dbb')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c1363b5d-2186-4d38-a4d4-b00ca8d6e3c9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c1363b5d-2186-4d38-a4d4-b00ca8d6e3c9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a4a0ac15-41f3-41fd-9469-7c2d81f9f9cc')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a4a0ac15-41f3-41fd-9469-7c2d81f9f9cc')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '5ee69504-618e-4d3f-885b-e4abe0554ba8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('5ee69504-618e-4d3f-885b-e4abe0554ba8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '1bfcc2cc-4a07-41da-80e1-a7f603f165c5')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('1bfcc2cc-4a07-41da-80e1-a7f603f165c5')

GO

GO
PRINT N'Atualização concluída.';


GO
