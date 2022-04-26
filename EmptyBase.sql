USE [emptybase]
GO

/****** Object:  Table [dbo].[ToDoList]    Script Date: 18.04.2022 22:34:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Categories(
       CategoryId int Primary Key Identity(1,1)  NOT NULL,
	   CategoryName nvarchar(100) NOT NULL
)


CREATE Table Tasks(
       TaskId int Primary Key Identity(1,1)  NOT NULL,
	   TaskName nvarchar(100) NOT NULL,
	   IsDone bit DEFAULT 0 NOT NULL,
	   TimeList smalldatetime,
	   CategoryId int,
	   FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
	   ON DELETE SET NULL
)
GO


