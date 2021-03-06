if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ContactInfo_GetContact]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ContactInfo_GetContact]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ContactInfo_GetContactList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ContactInfo_GetContactList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ContactInfo_Insert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ContactInfo_Insert]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ContactInfo_Update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ContactInfo_Update]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ContactInfo_Delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ContactInfo_Delete]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ContactInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ContactInfo]
GO

CREATE TABLE [dbo].[ContactInfo] (
	[ContactID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FirstName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MiddleName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LastName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[JobTitle] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Company] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Website] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OfficePhone] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HomePhone] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Mobile] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Fax] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OfficialEmail] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PersonalEmail] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OAStreet] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OACity] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OAState] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OACountry] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OAZip] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PAStreet] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PACity] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PAState] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PACountry] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PAZip] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE ContactInfo_GetContact
(
          @ContactID int
)
AS 
SELECT *  FROM      ContactInfo   WHERE  ContactID = @ContactID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE  ContactInfo_GetContactList
(
    @FLetter char(1)
)
AS
IF @FLetter <> '0'
	   BEGIN
		    SELECT ContactID,   ([FirstName] +  '  '+ isnull([MiddleName],'')  + '  ' +  isnull( [LastName] ,'' ) ) as FullName, OfficialEmail , PersonalEmail , OfficePhone ,HomePhone   
		    FROM  ContactInfo Where [FirstName]  like   @FLetter +'%'    Order by  [FirstName] 
	   END
ELSE
	   BEGIN
		   SELECT ContactID,  ([FirstName] +  '  '+ isnull([MiddleName],'')  + '  ' +  isnull( [LastName] ,'' ) )  as FullName, OfficialEmail , PersonalEmail , OfficePhone ,HomePhone   
		   FROM  ContactInfo  Order by  [FirstName]
                 END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE ContactInfo_Insert
(
              @Title  varchar(5),
	 @FirstName 	varchar(20),
	 @MiddleName 	varchar(20),
	 @LastName 	[varchar](20),
	 @JobTitle 	[varchar](20),
	 @Company 	[varchar](50),
	 @Website 	[varchar](100),
	 @OfficePhone 	[varchar](25),
	 @HomePhone 	[varchar](25),
	 @Mobile 	[varchar](15),
	 @Fax   	[varchar](15),
	 @OfficialEmail 	[varchar](50),
	 @PersonalEmail [varchar](50),
	 @OAStreet 	[varchar](100),
	 @OACity 	[varchar](15),
	 @OAState 	[varchar](15),
	 @OACountry 	[varchar](20),
	 @OAZip 	[varchar](15),
	 @PAStreet 	[varchar](100),
	 @PACity 	[varchar](15),
	 @PAState 	[varchar](15),
	 @PACountry 	[varchar](20),
	 @PAZip 	[varchar](15) 
 )

AS INSERT INTO    [ContactInfo]
      ( 	
               [Title],
	 [FirstName],
	 [MiddleName],
	 [LastName],
	 [JobTitle],
	 [Company],
	 [Website],
	 [OfficePhone],
	 [HomePhone],
	 [Mobile],
	 [Fax],
	 [OfficialEmail],
	 [PersonalEmail],
	 [OAStreet],
	 [OACity],
	 [OAState],
	 [OACountry],
	 [OAZip],
	 [PAStreet],
	 [PACity],
	 [PAState],
	 [PACountry],
	 [PAZip]
 )
 
VALUES 
	( @Title,
	 @FirstName,
	 @MiddleName,
	 @LastName,
	 @JobTitle,
	 @Company,
	 @Website,
	 @OfficePhone,
	 @HomePhone,
	 @Mobile,
	 @Fax,
	 @OfficialEmail,
	 @PersonalEmail,
	 @OAStreet,
	 @OACity,
	 @OAState,
	 @OACountry,
	 @OAZip,
	 @PAStreet,
	 @PACity,
	 @PAState,
	 @PACountry,
	 @PAZip
	 )

Select @@Identity
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE ContactInfo_Update
(	
	 @ContactID 	int,
	 @Title 	  	varchar(5),
	 @FirstName 	varchar(20),
	 @MiddleName 	varchar(20),
	 @LastName 	 varchar(20),
	 @JobTitle 	 varchar(20),
	 @Company 	varchar(50),
	 @Website 	varchar(100),
	 @OfficePhone 	varchar(25),
	 @HomePhone 	varchar(25),
	 @Mobile 	varchar(15),
	 @Fax  		varchar(15),
	 @OfficialEmail 	varchar(50),
	 @PersonalEmail varchar(50),
	 @OAStreet 	varchar(100),
	 @OACity 	varchar(15),
	 @OAState 	varchar(15),
	 @OACountry 	varchar(20),
	 @OAZip 	 varchar(15),
	 @PAStreet 	varchar(100),
	 @PACity 	 varchar(15),
	 @PAState  	varchar(15),
	 @PACountry  	varchar(20),
	 @PAZip  	varchar(15)
)

AS 


 UPDATE  [ContactInfo] 

SET      

	 [Title]	 	= @Title,
	 [FirstName]	 = @FirstName,
	 [MiddleName]	 = @MiddleName,
	 [LastName]	 = @LastName,
	 [JobTitle]	 = @JobTitle,
	 [Company]	 = @Company,
	 [Website]	 = @Website,
	 [OfficePhone]	 = @OfficePhone,
	 [HomePhone]	 = @HomePhone,
	 [Mobile]	 = @Mobile,
	 [Fax]		 = @Fax,
	 [OfficialEmail]	 = @OfficialEmail,
	 [PersonalEmail]	 = @PersonalEmail,
	 [OAStreet]	 = @OAStreet,
	 [OACity]	 = @OACity,
	 [OAState]	 = @OAState,
	 [OACountry]	 = @OACountry,
	 [OAZip]	 	 = @OAZip,
	 [PAStreet]	 = @PAStreet,
	 [PACity]	 = @PACity,
	 [PAState]	 = @PAState,
	 [PACountry]	 = @PACountry,
	 [PAZip]	 	 = @PAZip 

WHERE 
	 [ContactID]	 = @ContactID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE ContactInfo_Delete
(
          @ContactID int
)
AS

DELETE FROM 
	ContactInfo	
WHERE 
	ContactID = @ContactID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

