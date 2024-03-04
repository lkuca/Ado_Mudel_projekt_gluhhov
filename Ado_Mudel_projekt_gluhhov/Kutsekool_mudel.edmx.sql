
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/04/2024 14:38:31
-- Generated from EDMX file: C:\Users\opilane\source\repos\Ado_Mudel_projekt_gluhhov\Ado_Mudel_projekt_gluhhov\Kutsekool_mudel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Kutsekool_Luca];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'OpilaneSet'
CREATE TABLE [dbo].[OpilaneSet] (
    [opilaneid] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [synniaeg] datetime  NOT NULL,
    [Ryhm_ryhmid] int  NOT NULL
);
GO

-- Creating table 'RyhmSet'
CREATE TABLE [dbo].[RyhmSet] (
    [ryhmid] int IDENTITY(1,1) NOT NULL,
    [ryhmNimi] nvarchar(max)  NOT NULL,
    [osakond] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [opilaneid] in table 'OpilaneSet'
ALTER TABLE [dbo].[OpilaneSet]
ADD CONSTRAINT [PK_OpilaneSet]
    PRIMARY KEY CLUSTERED ([opilaneid] ASC);
GO

-- Creating primary key on [ryhmid] in table 'RyhmSet'
ALTER TABLE [dbo].[RyhmSet]
ADD CONSTRAINT [PK_RyhmSet]
    PRIMARY KEY CLUSTERED ([ryhmid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Ryhm_ryhmid] in table 'OpilaneSet'
ALTER TABLE [dbo].[OpilaneSet]
ADD CONSTRAINT [FK_RyhmOpilane]
    FOREIGN KEY ([Ryhm_ryhmid])
    REFERENCES [dbo].[RyhmSet]
        ([ryhmid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RyhmOpilane'
CREATE INDEX [IX_FK_RyhmOpilane]
ON [dbo].[OpilaneSet]
    ([Ryhm_ryhmid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------