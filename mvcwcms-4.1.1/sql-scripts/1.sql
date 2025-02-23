USE [MVCwCMS]
GO

INSERT INTO [dbo].[tb_cms_subscriptions]
           ([Email]
           ,[Password]
           ,[Salt]
           ,[FirstName]
           ,[LastName]
           ,[Birthdate]
           ,[PhoneNumber]
           ,[Address]
           ,[City]
           ,[PostCode]
           ,[CountryCode]
           ,[SubscriptionStatusId]
           ,[WantsNewsletter]
           ,[JoinDate]
           ,[IpAddress]
           ,[ActivationKey]
           ,[PasswordResetKey]
           ,[Notes])
     VALUES
           (N'manhng83@gmail.com' --<Email, nvarchar(255),>
           ,N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk92zNVnXLu8YiiDo6PyUrFqa3W0/UjS'  --<Password, nvarchar(255),>
           ,N'dszVZ1y7vGIog6Oj8lKxamt1tP1I0g=='  --<Salt, nvarchar(255),>
           ,N'Manh'  --<FirstName, nvarchar(255),>
           ,N'Nguyen Viet'  --<LastName, nvarchar(255),>
           ,'1983-06-25 17:00:00'  --<Birthdate, datetime,>
           ,N'0982411958'  --<PhoneNumber, nvarchar(255),>
           ,N'Tecco Garden'  --<Address, nvarchar(255),>
           ,N'Ha Noi'  --<City, nvarchar(255),>
           ,N'100000'  --<PostCode, nvarchar(255),>
           ,'VN'  --<CountryCode, char(2),>
           ,2 --<SubscriptionStatusId, int,>
           ,1  --<WantsNewsletter, bit,>
           ,GETDATE()  --<JoinDate, datetime,>
           ,N'::1'  --<IpAddress, nvarchar(255),>
           ,N'4TRPNSOWYW9Cx33co5p52rx4d3b4ktdgs5y3'  --<ActivationKey, nvarchar(255),>
           ,NULL  --<PasswordResetKey, nvarchar(255),>
           ,NULL  --<Notes, nvarchar(1000),>
		   )
GO


