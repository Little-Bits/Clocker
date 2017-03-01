
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/01/2017 12:36:44
-- Generated from EDMX file: C:\Users\nasee\Desktop\GitRepos\Clocker\Clocker\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ClockerDB];
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

-- Creating table 'Individuals'
CREATE TABLE [dbo].[Individuals] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TrackedDollars] nvarchar(max)  NOT NULL,
    [GroupID] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Groups'
CREATE TABLE [dbo].[Groups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StartTime] time  NOT NULL,
    [EndTime] time  NOT NULL
);
GO

-- Creating table 'ClockerIndivs'
CREATE TABLE [dbo].[ClockerIndivs] (
    [IndivID] int IDENTITY(1,1) NOT NULL,
    [Points] int  NOT NULL,
    [GroupID] int  NOT NULL
);
GO

-- Creating table 'ClockerGroups'
CREATE TABLE [dbo].[ClockerGroups] (
    [GroupID] int IDENTITY(1,1) NOT NULL,
    [StartTime] time  NOT NULL,
    [EndTime] time  NOT NULL,
    [CurrencyType] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Individuals'
ALTER TABLE [dbo].[Individuals]
ADD CONSTRAINT [PK_Individuals]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Groups'
ALTER TABLE [dbo].[Groups]
ADD CONSTRAINT [PK_Groups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IndivID] in table 'ClockerIndivs'
ALTER TABLE [dbo].[ClockerIndivs]
ADD CONSTRAINT [PK_ClockerIndivs]
    PRIMARY KEY CLUSTERED ([IndivID] ASC);
GO

-- Creating primary key on [GroupID] in table 'ClockerGroups'
ALTER TABLE [dbo].[ClockerGroups]
ADD CONSTRAINT [PK_ClockerGroups]
    PRIMARY KEY CLUSTERED ([GroupID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [GroupID] in table 'ClockerIndivs'
ALTER TABLE [dbo].[ClockerIndivs]
ADD CONSTRAINT [FK_Entity2Entity1]
    FOREIGN KEY ([GroupID])
    REFERENCES [dbo].[ClockerGroups]
        ([GroupID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity2Entity1'
CREATE INDEX [IX_FK_Entity2Entity1]
ON [dbo].[ClockerIndivs]
    ([GroupID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------