
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
<<<<<<< HEAD
-- Date Created: 08/03/2013 22:28:12
-- Generated from EDMX file: C:\Users\NestorLuis\Documents\Visual Studio 2012\Projects\BO\BO\db.edmx
=======
-- Date Created: 08/04/2013 03:06:22
-- Generated from EDMX file: C:\Users\Alexandra\Documents\Visual Studio 2012\Projects\TDACL\BO\db.edmx
>>>>>>> a075f9207af30705ec66f5b3b153baa61f15581a
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Toyaldia];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AdministratorsAdministratorContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdministratorContacts] DROP CONSTRAINT [FK_AdministratorsAdministratorContact];
GO
IF OBJECT_ID(N'[dbo].[fk_images_news]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Images] DROP CONSTRAINT [fk_images_news];
GO
IF OBJECT_ID(N'[dbo].[FK_PermisoRole_Permiso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermisoRole] DROP CONSTRAINT [FK_PermisoRole_Permiso];
GO
IF OBJECT_ID(N'[dbo].[FK_PermisoRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermisoRole] DROP CONSTRAINT [FK_PermisoRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_PermisoSeccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Permisos] DROP CONSTRAINT [FK_PermisoSeccion];
GO
IF OBJECT_ID(N'[dbo].[FK_ProvidersFeeds]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Feeds] DROP CONSTRAINT [FK_ProvidersFeeds];
GO
IF OBJECT_ID(N'[dbo].[FK_ProvidersNews]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[News] DROP CONSTRAINT [FK_ProvidersNews];
GO
IF OBJECT_ID(N'[dbo].[FK_SeccionPermiso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Permisos] DROP CONSTRAINT [FK_SeccionPermiso];
GO
IF OBJECT_ID(N'[dbo].[FK_SectionsFeeds]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Feeds] DROP CONSTRAINT [FK_SectionsFeeds];
GO
IF OBJECT_ID(N'[dbo].[FK_SectionsNews]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[News] DROP CONSTRAINT [FK_SectionsNews];
GO
IF OBJECT_ID(N'[dbo].[FK_SectionsSubscriptions_Sections]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SectionsSubscriptions] DROP CONSTRAINT [FK_SectionsSubscriptions_Sections];
GO
IF OBJECT_ID(N'[dbo].[FK_SectionsSubscriptions_Subscriptions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SectionsSubscriptions] DROP CONSTRAINT [FK_SectionsSubscriptions_Subscriptions];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscriptionsEmails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Emails] DROP CONSTRAINT [FK_SubscriptionsEmails];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AdministratorContacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdministratorContacts];
GO
IF OBJECT_ID(N'[dbo].[Administrators]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Administrators];
GO
IF OBJECT_ID(N'[dbo].[Emails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Emails];
GO
IF OBJECT_ID(N'[dbo].[Feeds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Feeds];
GO
IF OBJECT_ID(N'[dbo].[Images]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Images];
GO
IF OBJECT_ID(N'[dbo].[News]', 'U') IS NOT NULL
    DROP TABLE [dbo].[News];
GO
IF OBJECT_ID(N'[dbo].[Parameters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Parameters];
GO
IF OBJECT_ID(N'[dbo].[PermisoRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PermisoRole];
GO
IF OBJECT_ID(N'[dbo].[Permisos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Permisos];
GO
IF OBJECT_ID(N'[dbo].[Providers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Providers];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Secciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Secciones];
GO
IF OBJECT_ID(N'[dbo].[Sections]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sections];
GO
IF OBJECT_ID(N'[dbo].[SectionsSubscriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SectionsSubscriptions];
GO
IF OBJECT_ID(N'[dbo].[Subscriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subscriptions];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AdministratorContacts'
CREATE TABLE [dbo].[AdministratorContacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Contact] nvarchar(50)  NOT NULL,
    [Type] nvarchar(2)  NOT NULL,
    [AdministratorsId] int  NOT NULL
);
GO

-- Creating table 'Administrators'
CREATE TABLE [dbo].[Administrators] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [DocumentId] nvarchar(11)  NOT NULL,
    [Active] bit  NOT NULL,
    [LastUpdate] datetime  NOT NULL,
    [InsertedDate] datetime  NOT NULL
);
GO

-- Creating table 'Emails'
CREATE TABLE [dbo].[Emails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Email1] nvarchar(50)  NOT NULL,
    [SubscriptionsId] int  NOT NULL
);
GO

-- Creating table 'Feeds'
CREATE TABLE [dbo].[Feeds] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Feed1] nvarchar(500)  NOT NULL,
    [InsertedDate] datetime  NOT NULL,
    [SectionsId] int  NOT NULL,
    [ProvidersId] int  NOT NULL
);
GO

-- Creating table 'News'
CREATE TABLE [dbo].[News] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] varchar(500)  NOT NULL,
    [Content] varchar(max)  NOT NULL,
    [InsertedDate] datetime  NOT NULL,
    [SectionsId] int  NOT NULL,
    [ProvidersId] int  NOT NULL,
    [HasVideo] bit  NOT NULL,
    [PubDate] datetime  NOT NULL,
    [Description] varchar(max)  NOT NULL,
    [Source] varchar(500)  NOT NULL
);
GO

-- Creating table 'Parameters'
CREATE TABLE [dbo].[Parameters] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Value] nvarchar(100)  NOT NULL,
    [Active] nvarchar(max)  NOT NULL,
    [InsertedDate] datetime  NOT NULL
);
GO

-- Creating table 'Providers'
CREATE TABLE [dbo].[Providers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Url] nvarchar(500)  NOT NULL,
    [InsertedDate] datetime  NOT NULL,
    [Active] bit  NOT NULL,
    [Parser] varchar(100)  NULL
);
GO

-- Creating table 'Sections'
CREATE TABLE [dbo].[Sections] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [InsertedDate] datetime  NOT NULL,
    [ImageUrl] nvarchar(500)  NULL,
    [ThumbnailUrl] nvarchar(500)  NULL
);
GO

-- Creating table 'Subscriptions'
CREATE TABLE [dbo].[Subscriptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Active] bit  NOT NULL,
    [InsertedDate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Permisos'
CREATE TABLE [dbo].[Permisos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Url] nvarchar(max)  NOT NULL,
    [SeccionId] int  NOT NULL,
    [SeccioneId] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Activo] bit  NOT NULL
);
GO

-- Creating table 'Secciones'
CREATE TABLE [dbo].[Secciones] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Orden] int  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Activo] bit  NOT NULL,
    [Tipo] int  NOT NULL,
    [RoleId] int  NOT NULL
);
GO

-- Creating table 'Images'
CREATE TABLE [dbo].[Images] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NewsId] int  NOT NULL,
    [Url] varchar(500)  NOT NULL,
    [Thumbnail] varchar(500)  NULL,
    [Hight] varchar(500)  NULL
);
GO

-- Creating table 'SectionsSubscriptions'
CREATE TABLE [dbo].[SectionsSubscriptions] (
    [Sections_Id] int  NOT NULL,
    [Subscriptions_Id] int  NOT NULL
);
GO

-- Creating table 'PermisoRole'
CREATE TABLE [dbo].[PermisoRole] (
    [Permisos_Id] int  NOT NULL,
    [Roles_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AdministratorContacts'
ALTER TABLE [dbo].[AdministratorContacts]
ADD CONSTRAINT [PK_AdministratorContacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Administrators'
ALTER TABLE [dbo].[Administrators]
ADD CONSTRAINT [PK_Administrators]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [PK_Emails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Feeds'
ALTER TABLE [dbo].[Feeds]
ADD CONSTRAINT [PK_Feeds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'News'
ALTER TABLE [dbo].[News]
ADD CONSTRAINT [PK_News]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Parameters'
ALTER TABLE [dbo].[Parameters]
ADD CONSTRAINT [PK_Parameters]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Providers'
ALTER TABLE [dbo].[Providers]
ADD CONSTRAINT [PK_Providers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sections'
ALTER TABLE [dbo].[Sections]
ADD CONSTRAINT [PK_Sections]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subscriptions'
ALTER TABLE [dbo].[Subscriptions]
ADD CONSTRAINT [PK_Subscriptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Permisos'
ALTER TABLE [dbo].[Permisos]
ADD CONSTRAINT [PK_Permisos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Secciones'
ALTER TABLE [dbo].[Secciones]
ADD CONSTRAINT [PK_Secciones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [PK_Images]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Sections_Id], [Subscriptions_Id] in table 'SectionsSubscriptions'
ALTER TABLE [dbo].[SectionsSubscriptions]
ADD CONSTRAINT [PK_SectionsSubscriptions]
    PRIMARY KEY NONCLUSTERED ([Sections_Id], [Subscriptions_Id] ASC);
GO

-- Creating primary key on [Permisos_Id], [Roles_Id] in table 'PermisoRole'
ALTER TABLE [dbo].[PermisoRole]
ADD CONSTRAINT [PK_PermisoRole]
    PRIMARY KEY NONCLUSTERED ([Permisos_Id], [Roles_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AdministratorsId] in table 'AdministratorContacts'
ALTER TABLE [dbo].[AdministratorContacts]
ADD CONSTRAINT [FK_AdministratorsAdministratorContact]
    FOREIGN KEY ([AdministratorsId])
    REFERENCES [dbo].[Administrators]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdministratorsAdministratorContact'
CREATE INDEX [IX_FK_AdministratorsAdministratorContact]
ON [dbo].[AdministratorContacts]
    ([AdministratorsId]);
GO

-- Creating foreign key on [SubscriptionsId] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_SubscriptionsEmails]
    FOREIGN KEY ([SubscriptionsId])
    REFERENCES [dbo].[Subscriptions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubscriptionsEmails'
CREATE INDEX [IX_FK_SubscriptionsEmails]
ON [dbo].[Emails]
    ([SubscriptionsId]);
GO

-- Creating foreign key on [ProvidersId] in table 'Feeds'
ALTER TABLE [dbo].[Feeds]
ADD CONSTRAINT [FK_ProvidersFeeds]
    FOREIGN KEY ([ProvidersId])
    REFERENCES [dbo].[Providers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProvidersFeeds'
CREATE INDEX [IX_FK_ProvidersFeeds]
ON [dbo].[Feeds]
    ([ProvidersId]);
GO

-- Creating foreign key on [SectionsId] in table 'Feeds'
ALTER TABLE [dbo].[Feeds]
ADD CONSTRAINT [FK_SectionsFeeds]
    FOREIGN KEY ([SectionsId])
    REFERENCES [dbo].[Sections]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SectionsFeeds'
CREATE INDEX [IX_FK_SectionsFeeds]
ON [dbo].[Feeds]
    ([SectionsId]);
GO

-- Creating foreign key on [ProvidersId] in table 'News'
ALTER TABLE [dbo].[News]
ADD CONSTRAINT [FK_ProvidersNews]
    FOREIGN KEY ([ProvidersId])
    REFERENCES [dbo].[Providers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProvidersNews'
CREATE INDEX [IX_FK_ProvidersNews]
ON [dbo].[News]
    ([ProvidersId]);
GO

-- Creating foreign key on [SectionsId] in table 'News'
ALTER TABLE [dbo].[News]
ADD CONSTRAINT [FK_SectionsNews]
    FOREIGN KEY ([SectionsId])
    REFERENCES [dbo].[Sections]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SectionsNews'
CREATE INDEX [IX_FK_SectionsNews]
ON [dbo].[News]
    ([SectionsId]);
GO

-- Creating foreign key on [Sections_Id] in table 'SectionsSubscriptions'
ALTER TABLE [dbo].[SectionsSubscriptions]
ADD CONSTRAINT [FK_SectionsSubscriptions_Sections]
    FOREIGN KEY ([Sections_Id])
    REFERENCES [dbo].[Sections]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Subscriptions_Id] in table 'SectionsSubscriptions'
ALTER TABLE [dbo].[SectionsSubscriptions]
ADD CONSTRAINT [FK_SectionsSubscriptions_Subscriptions]
    FOREIGN KEY ([Subscriptions_Id])
    REFERENCES [dbo].[Subscriptions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SectionsSubscriptions_Subscriptions'
CREATE INDEX [IX_FK_SectionsSubscriptions_Subscriptions]
ON [dbo].[SectionsSubscriptions]
    ([Subscriptions_Id]);
GO

-- Creating foreign key on [Permisos_Id] in table 'PermisoRole'
ALTER TABLE [dbo].[PermisoRole]
ADD CONSTRAINT [FK_PermisoRole_Permiso]
    FOREIGN KEY ([Permisos_Id])
    REFERENCES [dbo].[Permisos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Roles_Id] in table 'PermisoRole'
ALTER TABLE [dbo].[PermisoRole]
ADD CONSTRAINT [FK_PermisoRole_Role]
    FOREIGN KEY ([Roles_Id])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PermisoRole_Role'
CREATE INDEX [IX_FK_PermisoRole_Role]
ON [dbo].[PermisoRole]
    ([Roles_Id]);
GO

-- Creating foreign key on [NewsId] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [fk_images_news]
    FOREIGN KEY ([NewsId])
    REFERENCES [dbo].[News]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_images_news'
CREATE INDEX [IX_fk_images_news]
ON [dbo].[Images]
    ([NewsId]);
GO

-- Creating foreign key on [RoleId] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [FK_RoleUsuario]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleUsuario'
CREATE INDEX [IX_FK_RoleUsuario]
ON [dbo].[Usuarios]
    ([RoleId]);
GO

-- Creating foreign key on [SeccioneId] in table 'Permisos'
ALTER TABLE [dbo].[Permisos]
ADD CONSTRAINT [FK_SeccionePermiso]
    FOREIGN KEY ([SeccioneId])
    REFERENCES [dbo].[Secciones]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SeccionePermiso'
CREATE INDEX [IX_FK_SeccionePermiso]
ON [dbo].[Permisos]
    ([SeccioneId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------