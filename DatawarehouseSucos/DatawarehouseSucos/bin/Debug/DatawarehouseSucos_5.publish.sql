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
PRINT N'A operação de refatoração Renomear com chave e1c00239-507b-43a9-94dc-a7d60198e0a0 foi ignorada; o elemento [dbo].[Dim_Tempo].[Id] (SqlSimpleColumn) não será renomeado para Cod_Dia';


GO
PRINT N'A operação de refatoração Renomear com chave 7adf1866-5616-48ea-a4a7-77245c54a5f9 foi ignorada; o elemento [dbo].[Dim_Tempo].[Code_Trimestr_Ano] (SqlSimpleColumn) não será renomeado para Code_Trimestre_Ano';


GO
PRINT N'A operação de refatoração Renomear com chave 58e4ba2d-0dfa-4327-a1bb-25f8eba3cb8b foi ignorada; o elemento [dbo].[Dim_Tempo].[Nome_Trimestre] (SqlSimpleColumn) não será renomeado para Nome_Trimestre_Ano';


GO
PRINT N'A operação de refatoração Renomear com chave 9b7d1300-5733-41d6-8d67-6ed127cc55cc foi ignorada; o elemento [dbo].[Dim_Tempo].[Cod] (SqlSimpleColumn) não será renomeado para Cod_Semestre';


GO
PRINT N'A operação de refatoração Renomear com chave 575d1438-083a-4049-a595-70d4b7ae85b2 foi ignorada; o elemento [dbo].[Dim_Tempo].[E_Dia_Semana] (SqlSimpleColumn) não será renomeado para Tipo_Dia';


GO
PRINT N'Criando [dbo].[Dim_Tempo]...';


GO
CREATE TABLE [dbo].[Dim_Tempo] (
    [Cod_Dia]            NVARCHAR (50) NOT NULL,
    [Data]               DATE          NULL,
    [Cod_Semana]         INT           NULL,
    [Nome_Dia_Semana]    NVARCHAR (50) NULL,
    [Cod_Mes]            INT           NULL,
    [Nome_Mes]           NVARCHAR (50) NULL,
    [Cod_Mes_Ano]        NVARCHAR (50) NULL,
    [Nome_Mes_Ano]       NVARCHAR (50) NULL,
    [Cod_Trimestre]      INT           NULL,
    [Nome_Trimestre]     NVARCHAR (50) NULL,
    [Code_Trimestre_Ano] NVARCHAR (50) NULL,
    [Nome_Trimestre_Ano] NVARCHAR (50) NULL,
    [Cod_Semestre]       NVARCHAR (50) NULL,
    [Nome_Semestre]      NVARCHAR (50) NULL,
    [Cod_Semestre_Ano]   NVARCHAR (50) NULL,
    [Nome_Semestre_Ano]  NVARCHAR (50) NULL,
    [Ano]                NVARCHAR (50) NULL,
    [Tipo_Dia]           NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Dia] ASC)
);


GO
-- Etapa de refatoração para atualizar o servidor de destino com logs de transação implantados
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'e1c00239-507b-43a9-94dc-a7d60198e0a0')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('e1c00239-507b-43a9-94dc-a7d60198e0a0')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7adf1866-5616-48ea-a4a7-77245c54a5f9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7adf1866-5616-48ea-a4a7-77245c54a5f9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '58e4ba2d-0dfa-4327-a1bb-25f8eba3cb8b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('58e4ba2d-0dfa-4327-a1bb-25f8eba3cb8b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9b7d1300-5733-41d6-8d67-6ed127cc55cc')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9b7d1300-5733-41d6-8d67-6ed127cc55cc')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '575d1438-083a-4049-a595-70d4b7ae85b2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('575d1438-083a-4049-a595-70d4b7ae85b2')

GO

GO
PRINT N'Atualização concluída.';


GO
