IF OBJECT_ID('dbo.ActionLogs') IS NULL
BEGIN
	/****** Object:  Table [dbo].[ActionLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ActionLogs](
		[ActionLogId] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[ActionTypeId] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[GeoLocationData] [nvarchar](max) NULL,
		[DestinationId] [int] NULL,
		[DestinationType] [int] NULL,
		[Note] [nvarchar](max) NULL,
	 CONSTRAINT [PK_ActionLogs] PRIMARY KEY CLUSTERED 
	(
		[ActionLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Addresses]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Addresses](
		[AddressId] [int] IDENTITY(1,1) NOT NULL,
		[Address1] [nvarchar](200) NOT NULL,
		[City] [nvarchar](100) NOT NULL,
		[State] [nvarchar](50) NOT NULL,
		[PostalCode] [nvarchar](50) NULL,
		[Country] [nvarchar](100) NOT NULL,
	 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
	(
		[AddressId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Affiliates]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Affiliates](
		[AffiliateId] [int] IDENTITY(1,1) NOT NULL,
		[AffiliateMailingAddressId] [int] NULL,
		[AffiliateCode] [nvarchar](max) NULL,
		[FirstName] [nvarchar](max) NULL,
		[LastName] [nvarchar](max) NULL,
		[EmailAddress] [nvarchar](max) NULL,
		[CompanyOrDepartment] [nvarchar](max) NULL,
		[Country] [nvarchar](max) NULL,
		[Region] [nvarchar](max) NULL,
		[Experiance] [nvarchar](max) NULL,
		[Qualifications] [nvarchar](max) NULL,
		[Approved] [bit] NOT NULL,
		[RejectReason] [nvarchar](max) NULL,
		[PayPalAddress] [nvarchar](max) NULL,
		[TaxIdentifier] [nvarchar](max) NULL,
		[Active] [bit] NOT NULL,
		[DeactivateReason] [nvarchar](max) NULL,
		[TimeZone] [nvarchar](max) NULL,
		[CreatedOn] [datetime] NOT NULL,
		[ApprovedOn] [datetime] NULL,
		[DeactivatedOn] [datetime] NULL,
		[UserId] [uniqueidentifier] NULL,
		[Rejected] [bit] NOT NULL,
		[RejectedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.Affiliates] PRIMARY KEY CLUSTERED 
	(
		[AffiliateId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetRoleClaims](
		[Id] [nvarchar](128) NOT NULL,
		[RoleId] [nvarchar](max) NOT NULL,
		[ClaimType] [nvarchar](max) NULL,
		[ClaimValue] [nvarchar](max) NULL,
		[IdentityRole_Id] [nvarchar](128) NULL,
	 CONSTRAINT [PK_dbo.AspNetRoleClaims] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetRoles](
		[Id] [nvarchar](128) NOT NULL,
		[Name] [nvarchar](256) NULL,
		[NormalizedName] [nvarchar](256) NULL,
		[ConcurrencyStamp] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetUserClaims](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](max) NOT NULL,
		[ClaimType] [nvarchar](max) NULL,
		[ClaimValue] [nvarchar](max) NULL,
		[IdentityUser_Id] [nvarchar](128) NULL,
	 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetUserLogins](
		[UserId] [nvarchar](128) NOT NULL,
		[Id] [nvarchar](128) NULL,
		[LoginProvider] [nvarchar](max) NOT NULL,
		[ProviderKey] [nvarchar](max) NOT NULL,
		[ProviderDisplayName] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
	(
		[UserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetUserRoles](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](max) NOT NULL,
		[RoleId] [nvarchar](max) NOT NULL,
		[IdentityRole_Id] [nvarchar](128) NULL,
		[IdentityUser_Id] [nvarchar](128) NULL,
	 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetUsers](
		[Id] [nvarchar](128) NOT NULL,
		[UserName] [nvarchar](256) NULL,
		[NormalizedUserName] [nvarchar](256) NULL,
		[Email] [nvarchar](256) NULL,
		[NormalizedEmail] [nvarchar](256) NULL,
		[EmailConfirmed] [bit] NOT NULL,
		[PasswordHash] [nvarchar](max) NULL,
		[SecurityStamp] [nvarchar](max) NULL,
		[ConcurrencyStamp] [nvarchar](max) NULL,
		[PhoneNumber] [nvarchar](max) NULL,
		[PhoneNumberConfirmed] [bit] NOT NULL,
		[TwoFactorEnabled] [bit] NOT NULL,
		[LockoutEnd] [datetimeoffset](7) NULL,
		[LockoutEnabled] [bit] NULL,
		[AccessFailedCount] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetUsersExt]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetUsersExt](
		[UserId] [nvarchar](128) NOT NULL,
		[SecurityQuestion] [nvarchar](256) NULL,
		[SecurityAnswer] [nvarchar](128) NULL,
		[SecurityAnswerSalt] [nvarchar](128) NULL,
		[CreateDate] [datetime] NOT NULL,
		[LastActivityDate] [datetime] NULL,
	 CONSTRAINT [PK_dbo.AspNetUsersExt] PRIMARY KEY CLUSTERED 
	(
		[UserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AspNetUserTokens](
		[UserId] [nvarchar](128) NOT NULL,
		[LoginProvider] [nvarchar](max) NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Value] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.AspNetUserTokens] PRIMARY KEY CLUSTERED 
	(
		[UserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[AuditLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[AuditLogs](
		[AuditLogId] [int] IDENTITY(1,1) NOT NULL,
		[LogType] [int] NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[UserId] [nvarchar](max) NULL,
		[Data] [nvarchar](max) NULL,
		[Message] [nvarchar](max) NULL,
		[LoggedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.AuditLogs] PRIMARY KEY CLUSTERED 
	(
		[AuditLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Automations]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Automations](
		[AutomationId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[AutomationType] [int] NOT NULL,
		[IsDisabled] [bit] NOT NULL,
		[TargetType] [nvarchar](max) NULL,
		[GroupId] [int] NULL,
		[Data] [nvarchar](max) NULL,
		[CreatedByUserId] [nvarchar](max) NULL,
		[CreatedOn] [datetime] NOT NULL,
	 CONSTRAINT [PK_dbo.Automations] PRIMARY KEY CLUSTERED 
	(
		[AutomationId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CalendarItemAttendees]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CalendarItemAttendees](
		[CalendarItemAttendeeId] [int] IDENTITY(1,1) NOT NULL,
		[CalendarItemId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[AttendeeType] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[Note] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.CalendarItemAttendees] PRIMARY KEY CLUSTERED 
	(
		[CalendarItemAttendeeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CalendarItems]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CalendarItems](
		[CalendarItemId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Title] [nvarchar](max) NOT NULL,
		[Start] [datetime] NOT NULL,
		[End] [datetime] NOT NULL,
		[StartTimezone] [nvarchar](max) NULL,
		[EndTimezone] [nvarchar](max) NULL,
		[Description] [nvarchar](max) NULL,
		[RecurrenceId] [nvarchar](max) NULL,
		[RecurrenceRule] [nvarchar](max) NULL,
		[RecurrenceException] [nvarchar](max) NULL,
		[ItemType] [int] NOT NULL,
		[IsAllDay] [bit] NOT NULL,
		[Location] [nvarchar](max) NULL,
		[SignupType] [int] NOT NULL,
		[Reminder] [int] NOT NULL,
		[LockEditing] [bit] NOT NULL,
		[Entities] [nvarchar](max) NULL,
		[RequiredAttendes] [nvarchar](max) NULL,
		[OptionalAttendes] [nvarchar](max) NULL,
		[ReminderSent] [bit] NOT NULL,
		[CreatorUserId] [nvarchar](max) NULL,
		[Public] [bit] NOT NULL,
		[IsV2Schedule] [bit] NOT NULL,
		[RecurrenceType] [int] NOT NULL,
		[RecurrenceEnd] [datetime] NULL,
		[Sunday] [bit] NOT NULL,
		[Monday] [bit] NOT NULL,
		[Tuesday] [bit] NOT NULL,
		[Wednesday] [bit] NOT NULL,
		[Thursday] [bit] NOT NULL,
		[Friday] [bit] NOT NULL,
		[Saturday] [bit] NOT NULL,
		[RepeatOnDay] [int] NOT NULL,
		[RepeatOnWeek] [int] NOT NULL,
		[RepeatOnMonth] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.CalendarItems] PRIMARY KEY CLUSTERED 
	(
		[CalendarItemId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CalendarItemTypes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CalendarItemTypes](
		[CalendarItemTypeId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Color] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.CalendarItemTypes] PRIMARY KEY CLUSTERED 
	(
		[CalendarItemTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallAttachments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallAttachments](
		[CallAttachmentId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[CallAttachmentType] [int] NOT NULL,
		[Data] [varbinary](max) NULL,
		[FileName] [nvarchar](max) NULL,
		[UserId] [nvarchar](max) NULL,
		[Timestamp] [datetime] NULL,
		[Name] [nvarchar](250) NULL,
		[Size] [int] NULL,
		[Latitude] [decimal](18, 2) NULL,
		[Longitude] [decimal](18, 2) NULL,
	 CONSTRAINT [PK_dbo.CallAttachments] PRIMARY KEY CLUSTERED 
	(
		[CallAttachmentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallDispatches]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallDispatches](
		[CallDispatchId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[GroupId] [int] NULL,
		[ActionLogId] [int] NULL,
		[DispatchCount] [int] NOT NULL,
		[LastDispatchedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.CallDispatches] PRIMARY KEY CLUSTERED 
	(
		[CallDispatchId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallDispatchGroups]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallDispatchGroups](
		[CallDispatchGroupId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[DepartmentGroupId] [int] NOT NULL,
		[DispatchCount] [int] NOT NULL,
		[LastDispatchedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.CallDispatchGroups] PRIMARY KEY CLUSTERED 
	(
		[CallDispatchGroupId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallDispatchRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallDispatchRoles](
		[CallDispatchRoleId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[RoleId] [int] NOT NULL,
		[DispatchCount] [int] NOT NULL,
		[LastDispatchedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.CallDispatchRoles] PRIMARY KEY CLUSTERED 
	(
		[CallDispatchRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallDispatchUnits]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallDispatchUnits](
		[CallDispatchUnitId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[UnitId] [int] NOT NULL,
		[DispatchCount] [int] NOT NULL,
		[LastDispatchedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.CallDispatchUnits] PRIMARY KEY CLUSTERED 
	(
		[CallDispatchUnitId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallLogs](
		[CallLogId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Narrative] [nvarchar](4000) NOT NULL,
		[CallId] [int] NOT NULL,
		[LoggedOn] [datetime] NOT NULL,
		[LoggedByUserId] [nvarchar](128) NOT NULL,
	 CONSTRAINT [PK_dbo.CallLogs] PRIMARY KEY CLUSTERED 
	(
		[CallLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallNotes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallNotes](
		[CallNoteId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[Note] [nvarchar](max) NULL,
		[Source] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[Latitude] [decimal](18, 2) NULL,
		[Longitude] [decimal](18, 2) NULL,
	 CONSTRAINT [PK_dbo.CallNotes] PRIMARY KEY CLUSTERED 
	(
		[CallNoteId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallProtocols]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallProtocols](
		[CallProtocolId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[DispatchProtocolId] [int] NOT NULL,
		[Score] [int] NOT NULL,
		[Trigger] [int] NOT NULL,
		[Data] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.CallProtocols] PRIMARY KEY CLUSTERED 
	(
		[CallProtocolId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallQuickTemplates]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallQuickTemplates](
		[CallQuickTemplateId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[IsDisabled] [bit] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[CallName] [nvarchar](max) NULL,
		[CallNature] [nvarchar](max) NULL,
		[CallType] [nvarchar](max) NULL,
		[CallPriority] [int] NOT NULL,
		[CreatedByUserId] [nvarchar](128) NULL,
		[CreatedOn] [datetime] NOT NULL,
	 CONSTRAINT [PK_dbo.CallQuickTemplates] PRIMARY KEY CLUSTERED 
	(
		[CallQuickTemplateId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Calls]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Calls](
		[CallId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[ReportingUserId] [nvarchar](128) NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[NatureOfCall] [nvarchar](max) NOT NULL,
		[Notes] [nvarchar](max) NULL,
		[LoggedOn] [datetime] NOT NULL,
		[Priority] [int] NOT NULL,
		[IsCritical] [bit] NOT NULL,
		[MapPage] [nvarchar](max) NULL,
		[CompletedNotes] [nvarchar](max) NULL,
		[Address] [nvarchar](max) NULL,
		[GeoLocationData] [nvarchar](max) NULL,
		[ClosedByUserId] [nvarchar](128) NULL,
		[ClosedOn] [datetime] NULL,
		[State] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[Type] [nvarchar](max) NULL,
		[IncidentNumber] [nvarchar](max) NULL,
		[CallSource] [int] NOT NULL,
		[SourceIdentifier] [nvarchar](max) NULL,
		[Number] [nvarchar](max) NULL,
		[DispatchCount] [int] NOT NULL,
		[LastDispatchedOn] [datetime] NULL,
		[W3W] [nvarchar](max) NULL,
		[ContactName] [nvarchar](max) NULL,
		[ContactNumber] [nvarchar](max) NULL,
		[Public] [bit] NOT NULL,
		[ExternalIdentifier] [nvarchar](max) NULL,
		[ReferenceNumber] [nvarchar](max) NULL,
	 CONSTRAINT [PK_Calls] PRIMARY KEY CLUSTERED 
	(
		[CallId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallTypes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallTypes](
		[CallTypeId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Type] [nvarchar](100) NOT NULL,
	 CONSTRAINT [PK_dbo.CallTypes] PRIMARY KEY CLUSTERED 
	(
		[CallTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CallUnits]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CallUnits](
		[CallUnitId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[UnitId] [int] NOT NULL,
		[DispatchCount] [int] NOT NULL,
		[LastDispatchedOn] [datetime] NULL,
		[UnitStateId] [int] NULL,
	 CONSTRAINT [PK_dbo.CallUnits] PRIMARY KEY CLUSTERED 
	(
		[CallUnitId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CommandDefinitionRoleCerts]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CommandDefinitionRoleCerts](
		[CommandDefinitionRoleCertId] [int] IDENTITY(1,1) NOT NULL,
		[CommandDefinitionRoleId] [int] NOT NULL,
		[DepartmentCertificationTypeId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.CommandDefinitionRoleCerts] PRIMARY KEY CLUSTERED 
	(
		[CommandDefinitionRoleCertId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CommandDefinitionRolePersonnelRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CommandDefinitionRolePersonnelRoles](
		[CommandDefinitionRolePersonnelRoleId] [int] IDENTITY(1,1) NOT NULL,
		[CommandDefinitionRoleId] [int] NOT NULL,
		[PersonnelRoleId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.CommandDefinitionRolePersonnelRoles] PRIMARY KEY CLUSTERED 
	(
		[CommandDefinitionRolePersonnelRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CommandDefinitionRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CommandDefinitionRoles](
		[CommandDefinitionRoleId] [int] IDENTITY(1,1) NOT NULL,
		[CommandDefinitionId] [int] NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Description] [nvarchar](max) NULL,
		[MinUnitPersonnel] [int] NOT NULL,
		[MaxUnitPersonnel] [int] NOT NULL,
		[MaxUnits] [int] NOT NULL,
		[MinTimeInRole] [int] NOT NULL,
		[MaxTimeInRole] [int] NOT NULL,
		[ForceRequirements] [bit] NOT NULL,
	 CONSTRAINT [PK_dbo.CommandDefinitionRoles] PRIMARY KEY CLUSTERED 
	(
		[CommandDefinitionRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CommandDefinitionRoleUnitTypes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CommandDefinitionRoleUnitTypes](
		[CommandDefinitionRoleUnitTypeId] [int] IDENTITY(1,1) NOT NULL,
		[CommandDefinitionRoleId] [int] NOT NULL,
		[UnitTypeId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.CommandDefinitionRoleUnitTypes] PRIMARY KEY CLUSTERED 
	(
		[CommandDefinitionRoleUnitTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CommandDefinitions]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CommandDefinitions](
		[CommandDefinitionId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[CallTypeId] [int] NULL,
		[Timer] [bit] NOT NULL,
		[TimerMinutes] [int] NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Description] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.CommandDefinitions] PRIMARY KEY CLUSTERED 
	(
		[CommandDefinitionId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CustomStateDetails]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CustomStateDetails](
		[CustomStateDetailId] [int] IDENTITY(1,1) NOT NULL,
		[CustomStateId] [int] NOT NULL,
		[ButtonText] [nvarchar](max) NOT NULL,
		[ButtonColor] [nvarchar](max) NOT NULL,
		[GpsRequired] [bit] NOT NULL,
		[NoteType] [int] NOT NULL,
		[DetailType] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[TextColor] [nvarchar](max) NULL,
		[Order] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.CustomStateDetails] PRIMARY KEY CLUSTERED 
	(
		[CustomStateDetailId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[CustomStates]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[CustomStates](
		[DepartmentId] [int] NOT NULL,
		[Type] [int] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Description] [nvarchar](max) NULL,
		[IsDeleted] [bit] NOT NULL,
		[CustomStateId] [int] IDENTITY(1,1) NOT NULL,
	 CONSTRAINT [PK_dbo.CustomStates] PRIMARY KEY CLUSTERED 
	(
		[CustomStateId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentCallEmails]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentCallEmails](
		[DepartmentCallEmailId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Hostname] [nvarchar](500) NULL,
		[Port] [int] NOT NULL,
		[UseSsl] [bit] NOT NULL,
		[Username] [nvarchar](125) NULL,
		[Password] [nvarchar](125) NULL,
		[LastCheck] [datetime] NULL,
		[IsFailure] [bit] NOT NULL,
		[ErrorMessage] [nvarchar](1000) NULL,
		[FormatType] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentCallEmails] PRIMARY KEY CLUSTERED 
	(
		[DepartmentCallEmailId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentCallPriorities]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentCallPriorities](
		[DepartmentCallPriorityId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Color] [nvarchar](max) NULL,
		[Sort] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[IsDefault] [bit] NOT NULL,
		[PushNotificationSound] [varbinary](max) NULL,
		[ShortNotificationSound] [varbinary](max) NULL,
		[DispatchPersonnel] [bit] NOT NULL,
		[DispatchUnits] [bit] NOT NULL,
		[ForceNotifyAllPersonnel] [bit] NOT NULL,
		[IOSPushNotificationSound] [varbinary](max) NULL,
		[Tone] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentCallPriorities] PRIMARY KEY CLUSTERED 
	(
		[DepartmentCallPriorityId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentCallPruning]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentCallPruning](
		[DepartmentCallPruningId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[PruneUserEnteredCalls] [bit] NULL,
		[UserCallPruneInterval] [int] NULL,
		[PruneEmailImportedCalls] [bit] NULL,
		[EmailImportCallPruneInterval] [int] NULL,
	 CONSTRAINT [PK_dbo.DepartmentCallPruning] PRIMARY KEY CLUSTERED 
	(
		[DepartmentCallPruningId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentCertificationTypes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentCertificationTypes](
		[DepartmentCertificationTypeId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Type] [nvarchar](100) NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentCertificationTypes] PRIMARY KEY CLUSTERED 
	(
		[DepartmentCertificationTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentFiles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentFiles](
		[DepartmentFileId] [uniqueidentifier] NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Type] [int] NOT NULL,
		[FileName] [nvarchar](max) NOT NULL,
		[Data] [varbinary](max) NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentFiles] PRIMARY KEY CLUSTERED 
	(
		[DepartmentFileId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentGroupMembers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentGroupMembers](
		[DepartmentGroupMemberId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentGroupId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[IsAdmin] [bit] NULL,
		[DepartmentId] [int] NOT NULL,
	 CONSTRAINT [PK_DepartmentGroupMembers] PRIMARY KEY CLUSTERED 
	(
		[DepartmentGroupMemberId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentGroups]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentGroups](
		[DepartmentGroupId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[Type] [int] NULL,
		[AddressId] [int] NULL,
		[ParentDepartmentGroupId] [int] NULL,
		[Geofence] [nvarchar](max) NULL,
		[GeofenceColor] [nvarchar](max) NULL,
		[DispatchEmail] [nvarchar](max) NULL,
		[MessageEmail] [nvarchar](max) NULL,
		[Latitude] [nvarchar](max) NULL,
		[Longitude] [nvarchar](max) NULL,
		[What3Words] [nvarchar](max) NULL,
		[DispatchToPrinter] [bit] NOT NULL,
		[PrinterData] [nvarchar](max) NULL,
		[DispatchToFax] [bit] NOT NULL,
		[FaxNumber] [nvarchar](max) NULL,
	 CONSTRAINT [PK_DepartmentGroups] PRIMARY KEY CLUSTERED 
	(
		[DepartmentGroupId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentLinks]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentLinks](
		[DepartmentLinkId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[DepartmentColor] [nvarchar](max) NULL,
		[DepartmentShareCalls] [bit] NOT NULL,
		[DepartmentShareUnits] [bit] NOT NULL,
		[DepartmentSharePersonnel] [bit] NOT NULL,
		[LinkedDepartmentId] [int] NOT NULL,
		[LinkEnabled] [bit] NOT NULL,
		[LinkedDepartmentColor] [nvarchar](max) NULL,
		[LinkedDepartmentShareCalls] [bit] NOT NULL,
		[LinkedDepartmentShareUnits] [bit] NOT NULL,
		[LinkedDepartmentSharePersonnel] [bit] NOT NULL,
		[LinkCreated] [datetime] NOT NULL,
		[LinkAccepted] [datetime] NULL,
		[DepartmentShareOrders] [bit] NOT NULL,
		[LinkedDepartmentShareOrders] [bit] NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentLinks] PRIMARY KEY CLUSTERED 
	(
		[DepartmentLinkId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentMembers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentMembers](
		[DepartmentMemberId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[IsAdmin] [bit] NULL,
		[IsDisabled] [bit] NULL,
		[IsHidden] [bit] NULL,
		[IsDefault] [bit] NOT NULL,
		[IsActive] [bit] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[RankId] [int] NULL,
	 CONSTRAINT [PK_DepartmentMembers] PRIMARY KEY CLUSTERED 
	(
		[DepartmentMemberId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentNotifications]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentNotifications](
		[DepartmentNotificationId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[EventType] [int] NOT NULL,
		[UsersToNotify] [nvarchar](max) NULL,
		[RolesToNotify] [nvarchar](max) NULL,
		[GroupsToNotify] [nvarchar](max) NULL,
		[LockToGroup] [bit] NOT NULL,
		[SelectedGroupsAdminsOnly] [bit] NOT NULL,
		[DepartmentAdmins] [bit] NOT NULL,
		[Everyone] [bit] NOT NULL,
		[Disabled] [bit] NOT NULL,
		[Data] [nvarchar](max) NULL,
		[BeforeData] [nvarchar](max) NULL,
		[CurrentData] [nvarchar](max) NULL,
		[UpperLimit] [int] NULL,
		[LowerLimit] [int] NULL,
	 CONSTRAINT [PK_dbo.DepartmentNotifications] PRIMARY KEY CLUSTERED 
	(
		[DepartmentNotificationId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentProfileArticles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentProfileArticles](
		[DepartmentProfileArticleId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentProfileId] [int] NOT NULL,
		[Title] [nvarchar](max) NOT NULL,
		[Body] [nvarchar](max) NOT NULL,
		[SmallImage] [varbinary](max) NULL,
		[LargeImage] [varbinary](max) NULL,
		[CreatedOn] [datetime] NOT NULL,
		[ExpiresOn] [datetime] NULL,
		[Keywords] [nvarchar](max) NULL,
		[CreatedByUserId] [nvarchar](128) NOT NULL,
		[StartOn] [datetime] NOT NULL,
		[Deleted] [bit] NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentProfileArticles] PRIMARY KEY CLUSTERED 
	(
		[DepartmentProfileArticleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentProfileInvites]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentProfileInvites](
		[DepartmentProfileInviteId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentProfileId] [int] NOT NULL,
		[Code] [nvarchar](max) NULL,
		[UsedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.DepartmentProfileInvites] PRIMARY KEY CLUSTERED 
	(
		[DepartmentProfileInviteId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentProfileMessages]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentProfileMessages](
		[DepartmentProfileMessageId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentProfileId] [int] NOT NULL,
		[UserId] [nvarchar](max) NULL,
		[Name] [nvarchar](max) NOT NULL,
		[ContactInfo] [nvarchar](max) NOT NULL,
		[Message] [nvarchar](max) NOT NULL,
		[SentOn] [datetime] NOT NULL,
		[Image] [varbinary](max) NULL,
		[Latitude] [nvarchar](max) NULL,
		[Longitude] [nvarchar](max) NULL,
		[Response] [nvarchar](max) NULL,
		[Closed] [bit] NOT NULL,
		[ConvertedToCall] [bit] NOT NULL,
		[ReplyToMessageId] [int] NULL,
		[ReadOn] [datetime] NULL,
		[CallId] [int] NULL,
		[Spam] [bit] NOT NULL,
		[Deleted] [bit] NOT NULL,
		[IsUserSender] [bit] NOT NULL,
		[ConversationId] [uniqueidentifier] NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentProfileMessages] PRIMARY KEY CLUSTERED 
	(
		[DepartmentProfileMessageId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentProfiles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentProfiles](
		[DepartmentProfileId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Code] [nvarchar](max) NOT NULL,
		[ShortName] [nvarchar](max) NULL,
		[Description] [nvarchar](max) NULL,
		[InCaseOfEmergency] [nvarchar](max) NULL,
		[ServiceArea] [nvarchar](max) NULL,
		[ServicesProvided] [nvarchar](max) NULL,
		[Founded] [datetime] NULL,
		[Lo] [varbinary](max) NULL,
		[Keywords] [nvarchar](max) NULL,
		[InviteOnly] [bit] NOT NULL,
		[AllowMessages] [bit] NOT NULL,
		[VolunteerPositionsAvailable] [bit] NOT NULL,
		[ShareStats] [bit] NOT NULL,
		[VolunteerKeywords] [nvarchar](max) NULL,
		[VolunteerDescription] [nvarchar](max) NULL,
		[VolunteerContactName] [nvarchar](max) NULL,
		[VolunteerContactInfo] [nvarchar](max) NULL,
		[Geofence] [nvarchar](max) NULL,
		[AddressId] [int] NULL,
		[Latitude] [nvarchar](max) NULL,
		[Longitude] [nvarchar](max) NULL,
		[What3Words] [nvarchar](max) NULL,
		[Disabled] [bit] NOT NULL,
		[Facebook] [nvarchar](max) NULL,
		[Twitter] [nvarchar](max) NULL,
		[oglePlus] [nvarchar](max) NULL,
		[LinkedIn] [nvarchar](max) NULL,
		[Instagram] [nvarchar](max) NULL,
		[YouTube] [nvarchar](max) NULL,
		[Website] [nvarchar](max) NULL,
		[PhoneNumber] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.DepartmentProfiles] PRIMARY KEY CLUSTERED 
	(
		[DepartmentProfileId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentProfileUserFollows]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentProfileUserFollows](
		[DepartmentProfileUserFollowId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentProfileUserId] [nvarchar](128) NOT NULL,
		[DepartmentProfileId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.DepartmentProfileUserFollows] PRIMARY KEY CLUSTERED 
	(
		[DepartmentProfileUserFollowId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentProfileUsers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentProfileUsers](
		[DepartmentProfileUserId] [nvarchar](128) NOT NULL,
		[Identity] [nvarchar](max) NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Email] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.DepartmentProfileUsers] PRIMARY KEY CLUSTERED 
	(
		[DepartmentProfileUserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Departments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Departments](
		[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
		[Name] [nvarchar](150) NOT NULL,
		[Code] [nvarchar](4) NULL,
		[ManagingUserId] [nvarchar](128) NOT NULL,
		[ShowWelcome] [bit] NOT NULL,
		[CreatedOn] [datetime] NULL,
		[UpdatedOn] [datetime] NULL,
		[TimeZone] [nvarchar](max) NULL,
		[ApiKey] [nvarchar](max) NULL,
		[DepartmentType] [nvarchar](150) NULL,
		[AddressId] [int] NULL,
		[PublicApiKey] [nvarchar](max) NULL,
		[ReferringDepartmentId] [int] NULL,
		[AffiliateCode] [nvarchar](max) NULL,
		[SharedSecret] [nvarchar](20) NULL,
		[Use24HourTime] [bit] NULL,
		[LinkCode] [nvarchar](max) NULL,
	 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
	(
		[DepartmentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DepartmentSettings]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DepartmentSettings](
		[DepartmentSettingId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[SettingType] [int] NOT NULL,
		[Setting] [nvarchar](max) NOT NULL,
	 CONSTRAINT [PK_DepartmentSettings] PRIMARY KEY CLUSTERED 
	(
		[DepartmentSettingId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DispatchProtocolAttachments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DispatchProtocolAttachments](
		[DispatchProtocolAttachmentId] [int] IDENTITY(1,1) NOT NULL,
		[DispatchProtocolId] [int] NOT NULL,
		[FileName] [nvarchar](max) NULL,
		[FileType] [nvarchar](max) NULL,
		[Data] [varbinary](max) NULL,
	 CONSTRAINT [PK_dbo.DispatchProtocolAttachments] PRIMARY KEY CLUSTERED 
	(
		[DispatchProtocolAttachmentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DispatchProtocolQuestionAnswers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DispatchProtocolQuestionAnswers](
		[DispatchProtocolQuestionAnswerId] [int] IDENTITY(1,1) NOT NULL,
		[DispatchProtocolQuestionId] [int] NOT NULL,
		[Answer] [nvarchar](max) NULL,
		[Weight] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.DispatchProtocolQuestionAnswers] PRIMARY KEY CLUSTERED 
	(
		[DispatchProtocolQuestionAnswerId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DispatchProtocolQuestions]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DispatchProtocolQuestions](
		[DispatchProtocolQuestionId] [int] IDENTITY(1,1) NOT NULL,
		[DispatchProtocolId] [int] NOT NULL,
		[Question] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.DispatchProtocolQuestions] PRIMARY KEY CLUSTERED 
	(
		[DispatchProtocolQuestionId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DispatchProtocols]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DispatchProtocols](
		[DispatchProtocolId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](100) NOT NULL,
		[Code] [nvarchar](4) NOT NULL,
		[IsDisabled] [bit] NOT NULL,
		[Description] [nvarchar](500) NULL,
		[ProtocolText] [nvarchar](max) NULL,
		[CreatedOn] [datetime] NOT NULL,
		[CreatedByUserId] [nvarchar](max) NOT NULL,
		[UpdatedOn] [datetime] NULL,
		[MinimumWeight] [int] NOT NULL,
		[UpdatedByUserId] [nvarchar](max) NOT NULL,
	 CONSTRAINT [PK_dbo.DispatchProtocols] PRIMARY KEY CLUSTERED 
	(
		[DispatchProtocolId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DispatchProtocolTriggers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DispatchProtocolTriggers](
		[DispatchProtocolTriggerId] [int] IDENTITY(1,1) NOT NULL,
		[DispatchProtocolId] [int] NOT NULL,
		[Type] [int] NOT NULL,
		[StartsOn] [datetime] NULL,
		[EndsOn] [datetime] NULL,
		[Priority] [int] NULL,
		[CallType] [nvarchar](max) NULL,
		[Geofence] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.DispatchProtocolTriggers] PRIMARY KEY CLUSTERED 
	(
		[DispatchProtocolTriggerId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DistributionListMembers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DistributionListMembers](
		[DistributionListMemberId] [int] IDENTITY(1,1) NOT NULL,
		[DistributionListId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
	 CONSTRAINT [PK_dbo.DistributionListMembers] PRIMARY KEY CLUSTERED 
	(
		[DistributionListMemberId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[DistributionLists]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[DistributionLists](
		[DistributionListId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[IsDisabled] [bit] NOT NULL,
		[Hostname] [nvarchar](500) NULL,
		[Port] [int] NULL,
		[UseSsl] [bit] NULL,
		[Username] [nvarchar](125) NULL,
		[Password] [nvarchar](125) NULL,
		[LastCheck] [datetime] NULL,
		[IsFailure] [bit] NOT NULL,
		[ErrorMessage] [nvarchar](1000) NULL,
		[EmailAddress] [nvarchar](max) NULL,
		[Type] [int] NULL,
	 CONSTRAINT [PK_dbo.DistributionLists] PRIMARY KEY CLUSTERED 
	(
		[DistributionListId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Documents]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Documents](
		[DocumentId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Catery] [nvarchar](max) NULL,
		[Description] [nvarchar](max) NULL,
		[AdminsOnly] [bit] NOT NULL,
		[Data] [varbinary](max) NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[AddedOn] [datetime] NOT NULL,
		[RemoveOn] [datetime] NULL,
		[Type] [nvarchar](max) NULL,
		[Filename] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Documents] PRIMARY KEY CLUSTERED 
	(
		[DocumentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Files]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Files](
		[FileId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[MessageId] [int] NULL,
		[FileName] [nvarchar](max) NULL,
		[FileType] [nvarchar](max) NULL,
		[Data] [varbinary](max) NULL,
		[Timestamp] [datetime] NOT NULL,
		[ContentId] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Files] PRIMARY KEY CLUSTERED 
	(
		[FileId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[InboundMessageEvents]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[InboundMessageEvents](
		[InboundMessageEventId] [int] IDENTITY(1,1) NOT NULL,
		[MessageType] [int] NOT NULL,
		[CustomerId] [nvarchar](max) NOT NULL,
		[RecievedOn] [datetime] NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[Type] [nvarchar](max) NULL,
		[Processed] [bit] NULL,
	 CONSTRAINT [PK_dbo.InboundMessageEvents] PRIMARY KEY CLUSTERED 
	(
		[InboundMessageEventId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[IncidentLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[IncidentLogs](
		[IncidentLogId] [int] IDENTITY(1,1) NOT NULL,
		[IncidentId] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[Description] [nvarchar](max) NULL,
		[UnitId] [int] NOT NULL,
		[Type] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.IncidentLogs] PRIMARY KEY CLUSTERED 
	(
		[IncidentLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Incidents]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Incidents](
		[IncidentId] [int] IDENTITY(1,1) NOT NULL,
		[CallId] [int] NOT NULL,
		[CommandDefinitionId] [int] NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Start] [datetime] NOT NULL,
		[End] [datetime] NULL,
		[State] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.Incidents] PRIMARY KEY CLUSTERED 
	(
		[IncidentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Inventories]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Inventories](
		[InventoryId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[GroupId] [int] NOT NULL,
		[TypeId] [int] NOT NULL,
		[Batch] [nvarchar](max) NULL,
		[Note] [nvarchar](max) NULL,
		[Amount] [float] NOT NULL,
		[TimeStamp] [datetime] NOT NULL,
		[AddedByUserId] [nvarchar](128) NULL,
		[InventoryType_InventoryTypeId] [int] NULL,
		[UnitId] [int] NULL,
		[Location] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Inventories] PRIMARY KEY CLUSTERED 
	(
		[InventoryId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[InventoryTypes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[InventoryTypes](
		[InventoryTypeId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Type] [nvarchar](250) NOT NULL,
		[ExpiresDays] [int] NOT NULL,
		[Description] [nvarchar](max) NULL,
		[UnitOfMesasure] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.InventoryTypes] PRIMARY KEY CLUSTERED 
	(
		[InventoryTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Invites]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Invites](
		[InviteId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Code] [uniqueidentifier] NOT NULL,
		[EmailAddress] [nvarchar](max) NOT NULL,
		[SendingUserId] [nvarchar](128) NOT NULL,
		[SentOn] [datetime] NOT NULL,
		[CompletedOn] [datetime] NULL,
		[CompletedUserId] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Invites] PRIMARY KEY CLUSTERED 
	(
		[InviteId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Jobs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Jobs](
		[JobId] [int] IDENTITY(1,1) NOT NULL,
		[JobType] [int] NOT NULL,
		[CheckInterval] [int] NOT NULL,
		[StartTimestamp] [datetime] NULL,
		[LastCheckTimestamp] [datetime] NULL,
		[DoRestart] [bit] NULL,
		[RestartRequestedTimestamp] [datetime] NULL,
		[LastResetTimestamp] [datetime] NULL,
	 CONSTRAINT [PK_dbo.Jobs] PRIMARY KEY CLUSTERED 
	(
		[JobId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[LogAttachments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[LogAttachments](
		[LogAttachmentId] [int] IDENTITY(1,1) NOT NULL,
		[LogId] [int] NOT NULL,
		[FileName] [nvarchar](max) NULL,
		[Data] [varbinary](max) NULL,
		[UserId] [nvarchar](max) NULL,
		[Timestamp] [datetime] NOT NULL,
		[Size] [int] NOT NULL,
		[Type] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.LogAttachments] PRIMARY KEY CLUSTERED 
	(
		[LogAttachmentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[LogEntries]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[LogEntries](
		[id] [int] IDENTITY(1,1) NOT NULL,
		[TimeStamp] [datetime] NOT NULL,
		[Message] [nvarchar](max) NULL,
		[level] [nvarchar](max) NULL,
		[logger] [nvarchar](max) NULL,
	 CONSTRAINT [PK_LogEntries] PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Logs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Logs](
		[LogId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Narrative] [nvarchar](4000) NOT NULL,
		[StartedOn] [datetime] NULL,
		[EndedOn] [datetime] NULL,
		[LoggedOn] [datetime] NOT NULL,
		[LoggedByUserId] [nvarchar](128) NULL,
		[LogType] [int] NULL,
		[ExternalId] [nvarchar](max) NULL,
		[InitialReport] [nvarchar](max) NULL,
		[Type] [nvarchar](max) NULL,
		[StationGroupId] [int] NULL,
		[Course] [nvarchar](max) NULL,
		[CourseCode] [nvarchar](max) NULL,
		[Instructors] [nvarchar](max) NULL,
		[Cause] [nvarchar](max) NULL,
		[InvestigatedByUserId] [nvarchar](128) NULL,
		[ContactName] [nvarchar](max) NULL,
		[ContactNumber] [nvarchar](max) NULL,
		[OfficerUserId] [nvarchar](128) NULL,
		[CallId] [int] NULL,
		[OtherPersonnel] [nvarchar](max) NULL,
		[Location] [nvarchar](max) NULL,
		[OtherAgencies] [nvarchar](max) NULL,
		[OtherUnits] [nvarchar](max) NULL,
		[BodyLocation] [nvarchar](max) NULL,
		[PronouncedDeceasedBy] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Logs] PRIMARY KEY CLUSTERED 
	(
		[LogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[LogUnits]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[LogUnits](
		[LogUnitId] [int] IDENTITY(1,1) NOT NULL,
		[LogId] [int] NOT NULL,
		[UnitId] [int] NOT NULL,
		[Dispatched] [datetime] NULL,
		[Enroute] [datetime] NULL,
		[OnScene] [datetime] NULL,
		[Released] [datetime] NULL,
		[InQuarters] [datetime] NULL,
	 CONSTRAINT [PK_dbo.LogUnits] PRIMARY KEY CLUSTERED 
	(
		[LogUnitId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[LogUsers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[LogUsers](
		[LogUserId] [int] IDENTITY(1,1) NOT NULL,
		[LogId] [int] NOT NULL,
		[UnitId] [int] NULL,
		[UserId] [nvarchar](128) NOT NULL,
	 CONSTRAINT [PK_dbo.LogUsers] PRIMARY KEY CLUSTERED 
	(
		[LogUserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[MessageRecipients]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[MessageRecipients](
		[MessageRecipientId] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[ReadOn] [datetime] NULL,
		[Response] [nvarchar](max) NULL,
		[Note] [nvarchar](max) NULL,
		[Latitude] [decimal](18, 2) NULL,
		[Longitude] [decimal](18, 2) NULL,
		[Message_MessageId] [int] NULL,
		[MessageId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.MessageRecipients] PRIMARY KEY CLUSTERED 
	(
		[MessageRecipientId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Messages]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Messages](
		[MessageId] [int] IDENTITY(1,1) NOT NULL,
		[Subject] [nvarchar](150) NOT NULL,
		[IsBroadcast] [bit] NOT NULL,
		[SendingUserId] [nvarchar](128) NULL,
		[Body] [nvarchar](4000) NOT NULL,
		[SentOn] [datetime] NOT NULL,
		[Recipients] [nvarchar](max) NULL,
		[ReceivingUserId] [nvarchar](128) NULL,
		[IsDeleted] [bit] NOT NULL,
		[ReadOn] [datetime] NULL,
		[SystemGenerated] [bit] NOT NULL,
		[Type] [int] NOT NULL,
		[ExpireOn] [datetime] NULL,
	 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
	(
		[MessageId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Notes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Notes](
		[NoteId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[UserId] [nvarchar](max) NULL,
		[Title] [nvarchar](max) NOT NULL,
		[Body] [nvarchar](max) NOT NULL,
		[IsAdminOnly] [bit] NOT NULL,
		[Color] [nvarchar](max) NULL,
		[ExpiresOn] [datetime] NULL,
		[AddedOn] [datetime] NOT NULL,
		[Catery] [nvarchar](max) NULL,
		[StartsOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.Notes] PRIMARY KEY CLUSTERED 
	(
		[NoteId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[NotificationAlerts]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[NotificationAlerts](
		[NotificationAlertId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[DepartmentGroupId] [int] NULL,
		[EventType] [int] NOT NULL,
		[Opened] [datetime] NOT NULL,
		[Closed] [datetime] NULL,
		[ManuallyClosed] [bit] NOT NULL,
		[Data] [nvarchar](max) NULL,
		[ManualNote] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.NotificationAlerts] PRIMARY KEY CLUSTERED 
	(
		[NotificationAlertId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PaymentProviderEvents]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PaymentProviderEvents](
		[PaymentProviderEventId] [int] IDENTITY(1,1) NOT NULL,
		[ProviderType] [int] NOT NULL,
		[CustomerId] [nvarchar](max) NOT NULL,
		[RecievedOn] [datetime] NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[Type] [nvarchar](max) NULL,
		[Processed] [bit] NULL,
	 CONSTRAINT [PK_dbo.PaymentProviderEvents] PRIMARY KEY CLUSTERED 
	(
		[PaymentProviderEventId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Payments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Payments](
		[PaymentId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[PlanId] [int] NOT NULL,
		[Method] [int] NOT NULL,
		[IsTrial] [bit] NOT NULL,
		[PurchaseOn] [datetime] NOT NULL,
		[PurchasingUserId] [nvarchar](128) NOT NULL,
		[TransactionId] [nvarchar](max) NULL,
		[Successful] [bit] NOT NULL,
		[Data] [nvarchar](max) NULL,
		[IsUpgrade] [bit] NOT NULL,
		[Description] [nvarchar](max) NULL,
		[EffectiveOn] [datetime] NOT NULL,
		[Amount] [float] NOT NULL,
		[Payment_PaymentId] [int] NULL,
		[EndingOn] [datetime] NOT NULL,
		[Cancelled] [bit] NOT NULL,
		[CancelledOn] [datetime] NULL,
		[CancelledData] [nvarchar](max) NULL,
		[UpgradedPaymentId] [int] NULL,
		[SubscriptionId] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Payments] PRIMARY KEY CLUSTERED 
	(
		[PaymentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Permissions]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Permissions](
		[PermissionId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[PermissionType] [int] NOT NULL,
		[Action] [int] NOT NULL,
		[Data] [nvarchar](max) NULL,
		[UpdatedBy] [nvarchar](max) NULL,
		[UpdatedOn] [datetime] NOT NULL,
		[LockToGroup] [bit] NOT NULL,
	 CONSTRAINT [PK_dbo.Permissions] PRIMARY KEY CLUSTERED 
	(
		[PermissionId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PersonnelCertifications]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PersonnelCertifications](
		[PersonnelCertificationId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Number] [nvarchar](max) NULL,
		[Type] [nvarchar](max) NULL,
		[Area] [nvarchar](max) NULL,
		[ExpiresOn] [datetime] NULL,
		[RecievedOn] [datetime] NULL,
		[IssuedBy] [nvarchar](max) NULL,
		[Filetype] [nvarchar](max) NULL,
		[Filename] [nvarchar](max) NULL,
		[Data] [varbinary](max) NULL,
	 CONSTRAINT [PK_dbo.PersonnelCertifications] PRIMARY KEY CLUSTERED 
	(
		[PersonnelCertificationId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PersonnelRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PersonnelRoles](
		[PersonnelRoleId] [int] IDENTITY(1,1) NOT NULL,
		[Name] [nvarchar](250) NOT NULL,
		[Description] [nvarchar](3000) NULL,
		[DepartmentId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.PersonnelRoles] PRIMARY KEY CLUSTERED 
	(
		[PersonnelRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PersonnelRoleUsers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PersonnelRoleUsers](
		[PersonnelRoleUserId] [int] IDENTITY(1,1) NOT NULL,
		[PersonnelRoleId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[DepartmentId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.PersonnelRoleUsers] PRIMARY KEY CLUSTERED 
	(
		[PersonnelRoleUserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PlanLimits]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PlanLimits](
		[PlanLimitId] [int] IDENTITY(1,1) NOT NULL,
		[PlanId] [int] NOT NULL,
		[LimitType] [int] NOT NULL,
		[LimitValue] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.PlanLimits] PRIMARY KEY CLUSTERED 
	(
		[PlanLimitId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Plans]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Plans](
		[PlanId] [int] IDENTITY(1,1) NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Cost] [float] NOT NULL,
		[Frequency] [int] NOT NULL,
		[ExternalId] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Plans] PRIMARY KEY CLUSTERED 
	(
		[PlanId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Pois]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Pois](
		[PoiId] [int] IDENTITY(1,1) NOT NULL,
		[PoiTypeId] [int] NOT NULL,
		[Longitude] [float] NOT NULL,
		[Latitude] [float] NOT NULL,
		[Note] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Pois] PRIMARY KEY CLUSTERED 
	(
		[PoiId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[POITypes]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[POITypes](
		[PoiTypeId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](100) NOT NULL,
		[Image] [nvarchar](max) NULL,
		[Color] [nvarchar](max) NULL,
		[IsDestination] [bit] NOT NULL,
		[Marker] [nvarchar](max) NULL,
		[Size] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.POITypes] PRIMARY KEY CLUSTERED 
	(
		[PoiTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ProcessLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ProcessLogs](
		[ProcessLogId] [int] IDENTITY(1,1) NOT NULL,
		[Type] [int] NOT NULL,
		[SourceId] [int] NOT NULL,
		[TargetRunTime] [datetime] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
	 CONSTRAINT [PK_dbo.ProcessLogs] PRIMARY KEY CLUSTERED 
	(
		[ProcessLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PushLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PushLogs](
		[PushLogId] [int] IDENTITY(1,1) NOT NULL,
		[ChannelUri] [nvarchar](max) NOT NULL,
		[Status] [nvarchar](max) NOT NULL,
		[Connection] [nvarchar](max) NOT NULL,
		[Subscription] [nvarchar](max) NOT NULL,
		[Notification] [nvarchar](max) NOT NULL,
		[Exception] [nvarchar](max) NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[MessageId] [nvarchar](max) NOT NULL,
	 CONSTRAINT [PK_dbo.PushLogs] PRIMARY KEY CLUSTERED 
	(
		[PushLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PushTemplates]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PushTemplates](
		[PushTemplateId] [int] IDENTITY(1,1) NOT NULL,
		[PlatformType] [int] NOT NULL,
		[Template] [nvarchar](1000) NULL,
	 CONSTRAINT [PK_dbo.PushTemplates] PRIMARY KEY CLUSTERED 
	(
		[PushTemplateId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[PushUris]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[PushUris](
		[PushUriId] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[PlatformType] [int] NOT NULL,
		[PushLocation] [nvarchar](max) NOT NULL,
		[CreatedOn] [datetime] NOT NULL,
		[DeviceId] [nvarchar](500) NULL,
		[UnitId] [int] NULL,
	 CONSTRAINT [PK_dbo.PushUris] PRIMARY KEY CLUSTERED 
	(
		[PushUriId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[QueueItems]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[QueueItems](
		[QueueItemId] [int] IDENTITY(1,1) NOT NULL,
		[QueueType] [int] NOT NULL,
		[SourceId] [nvarchar](max) NULL,
		[QueuedOn] [datetime] NOT NULL,
		[PickedUp] [datetime] NULL,
		[CompletedOn] [datetime] NULL,
		[Receipt] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.QueueItems] PRIMARY KEY CLUSTERED 
	(
		[QueueItemId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Ranks]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Ranks](
		[RankId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Code] [nvarchar](max) NULL,
		[SortWeight] [int] NOT NULL,
		[TradeWeight] [int] NOT NULL,
		[Image] [varbinary](max) NULL,
		[Color] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.Ranks] PRIMARY KEY CLUSTERED 
	(
		[RankId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ResourceOrderFills]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ResourceOrderFills](
		[ResourceOrderFillId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[ResourceOrderItemId] [int] NOT NULL,
		[FillingUserId] [nvarchar](128) NULL,
		[Note] [nvarchar](max) NULL,
		[ContactName] [nvarchar](max) NULL,
		[ContactNumber] [nvarchar](max) NULL,
		[FilledOn] [datetime] NOT NULL,
		[Accepted] [bit] NOT NULL,
		[AcceptedOn] [datetime] NULL,
		[LeadUserId] [nvarchar](128) NULL,
		[AcceptedUserId] [nvarchar](128) NULL,
	 CONSTRAINT [PK_dbo.ResourceOrderFills] PRIMARY KEY CLUSTERED 
	(
		[ResourceOrderFillId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ResourceOrderFillUnits]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ResourceOrderFillUnits](
		[ResourceOrderFillUnitId] [int] IDENTITY(1,1) NOT NULL,
		[ResourceOrderFillId] [int] NOT NULL,
		[UnitId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.ResourceOrderFillUnits] PRIMARY KEY CLUSTERED 
	(
		[ResourceOrderFillUnitId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ResourceOrderItems]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ResourceOrderItems](
		[ResourceOrderItemId] [int] IDENTITY(1,1) NOT NULL,
		[ResourceOrderId] [int] NOT NULL,
		[Resource] [nvarchar](max) NULL,
		[Min] [int] NOT NULL,
		[Max] [int] NOT NULL,
		[FinancialCode] [nvarchar](max) NULL,
		[SpecialNeeds] [nvarchar](max) NULL,
		[Requirements] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.ResourceOrderItems] PRIMARY KEY CLUSTERED 
	(
		[ResourceOrderItemId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ResourceOrders]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ResourceOrders](
		[ResourceOrderId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Type] [int] NOT NULL,
		[AllowPartialFills] [bit] NOT NULL,
		[Title] [nvarchar](max) NULL,
		[IncidentNumber] [nvarchar](max) NULL,
		[IncidentName] [nvarchar](max) NULL,
		[IncidentAddress] [nvarchar](max) NULL,
		[IncidentLatitude] [decimal](18, 2) NULL,
		[IncidentLongitude] [decimal](18, 2) NULL,
		[Summary] [nvarchar](max) NULL,
		[OpenDate] [datetime] NOT NULL,
		[NeededBy] [datetime] NOT NULL,
		[MeetupDate] [datetime] NULL,
		[CloseDate] [datetime] NULL,
		[ContactName] [nvarchar](max) NULL,
		[ContactNumber] [nvarchar](max) NULL,
		[SpecialInstructions] [nvarchar](max) NULL,
		[MeetupLocation] [nvarchar](max) NULL,
		[FinancialCode] [nvarchar](max) NULL,
		[AutomaticFillAcceptance] [bit] NOT NULL,
		[Visibility] [int] NOT NULL,
		[Range] [int] NOT NULL,
		[OriginLatitude] [float] NULL,
		[OriginLongitude] [float] NULL,
	 CONSTRAINT [PK_dbo.ResourceOrders] PRIMARY KEY CLUSTERED 
	(
		[ResourceOrderId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ResourceOrderSettings]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ResourceOrderSettings](
		[ResourceOrderSettingId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Visibility] [int] NOT NULL,
		[DoNotReceiveOrders] [bit] NOT NULL,
		[RoleAllowedToFulfilOrdersRoleId] [int] NULL,
		[LimitStaffingLevelToReceiveNotifications] [bit] NOT NULL,
		[AllowedStaffingLevelToReceiveNotifications] [int] NOT NULL,
		[DefaultResourceOrderManagerUserId] [nvarchar](max) NULL,
		[Latitude] [decimal](18, 2) NULL,
		[Longitude] [decimal](18, 2) NULL,
		[Range] [int] NOT NULL,
		[BoundryGeofence] [nvarchar](max) NULL,
		[TargetDepartmentType] [nvarchar](max) NULL,
		[AutomaticFillAcceptance] [bit] NOT NULL,
		[ImportEmailCode] [nvarchar](max) NULL,
		[NotifyUsers] [bit] NOT NULL,
		[UserIdsToNotifyOnOrders] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.ResourceOrderSettings] PRIMARY KEY CLUSTERED 
	(
		[ResourceOrderSettingId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ScheduledTaskLogs]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ScheduledTaskLogs](
		[ScheduledTaskLogId] [int] IDENTITY(1,1) NOT NULL,
		[ScheduledTaskId] [int] NOT NULL,
		[RunDate] [datetime] NOT NULL,
		[Successful] [bit] NOT NULL,
		[Data] [nvarchar](3000) NULL,
	 CONSTRAINT [PK_dbo.ScheduledTaskLogs] PRIMARY KEY CLUSTERED 
	(
		[ScheduledTaskLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ScheduledTasks]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ScheduledTasks](
		[UserId] [nvarchar](128) NOT NULL,
		[ScheduleType] [int] NOT NULL,
		[SpecifcDate] [datetime] NULL,
		[Sunday] [bit] NOT NULL,
		[Monday] [bit] NOT NULL,
		[Tuesday] [bit] NOT NULL,
		[Wednesday] [bit] NOT NULL,
		[Thursday] [bit] NOT NULL,
		[Friday] [bit] NOT NULL,
		[Saturday] [bit] NOT NULL,
		[Active] [bit] NOT NULL,
		[TaskType] [int] NOT NULL,
		[Data] [nvarchar](3000) NULL,
		[ScheduledTaskId] [int] IDENTITY(1,1) NOT NULL,
		[Time] [nvarchar](50) NULL,
		[AddedOn] [datetime] NULL,
		[Note] [nvarchar](max) NULL,
		[DepartmentId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.ScheduledTasks] PRIMARY KEY CLUSTERED 
	(
		[ScheduledTaskId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftAdmins]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftAdmins](
		[ShiftAdminId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
	 CONSTRAINT [PK_dbo.ShiftAdmins] PRIMARY KEY CLUSTERED 
	(
		[ShiftAdminId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftDays]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftDays](
		[ShiftDayId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftId] [int] NOT NULL,
		[Day] [datetime] NOT NULL,
		[Processed] [bit] NULL,
	 CONSTRAINT [PK_dbo.ShiftDays] PRIMARY KEY CLUSTERED 
	(
		[ShiftDayId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftGroupAssignments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftGroupAssignments](
		[ShiftGroupAssignmentId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftGroupId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[Assigned] [bit] NOT NULL,
		[ShiftDay] [datetime] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[AssignedByUserId] [uniqueidentifier] NOT NULL,
	 CONSTRAINT [PK_dbo.ShiftGroupAssignments] PRIMARY KEY CLUSTERED 
	(
		[ShiftGroupAssignmentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftGroupRoles]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftGroupRoles](
		[ShiftGroupRoleId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftGroupId] [int] NOT NULL,
		[PersonnelRoleId] [int] NOT NULL,
		[Required] [int] NOT NULL,
		[Optional] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.ShiftGroupRoles] PRIMARY KEY CLUSTERED 
	(
		[ShiftGroupRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftGroups]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftGroups](
		[ShiftGroupId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftId] [int] NOT NULL,
		[DepartmentGroupId] [int] NOT NULL,
	 CONSTRAINT [PK_dbo.ShiftGroups] PRIMARY KEY CLUSTERED 
	(
		[ShiftGroupId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftPersons]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftPersons](
		[ShiftPersonId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[GroupId] [int] NULL,
	 CONSTRAINT [PK_dbo.ShiftPersons] PRIMARY KEY CLUSTERED 
	(
		[ShiftPersonId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Shifts]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Shifts](
		[ShiftId] [int] IDENTITY(1,1) NOT NULL,
		[Name] [nvarchar](max) NULL,
		[Code] [nvarchar](max) NULL,
		[ScheduleType] [int] NOT NULL,
		[AssignmentType] [int] NOT NULL,
		[Color] [nvarchar](max) NULL,
		[StartDay] [datetime] NOT NULL,
		[StartTime] [nvarchar](max) NULL,
		[DepartmentId] [int] NOT NULL,
		[AllowPartials] [bit] NULL,
		[RequireApproval] [bit] NULL,
		[EndTime] [nvarchar](max) NULL,
		[Hours] [int] NULL,
	 CONSTRAINT [PK_dbo.Shifts] PRIMARY KEY CLUSTERED 
	(
		[ShiftId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftSignups]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftSignups](
		[ShiftSignupId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[SignupTimestamp] [datetime] NOT NULL,
		[ShiftDay] [datetime] NOT NULL,
		[Denied] [bit] NOT NULL,
		[DepartmentGroupId] [int] NULL,
	 CONSTRAINT [PK_dbo.ShiftSignups] PRIMARY KEY CLUSTERED 
	(
		[ShiftSignupId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftSignupTrades]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftSignupTrades](
		[ShiftSignupTradeId] [int] IDENTITY(1,1) NOT NULL,
		[SourceShiftSignupId] [int] NOT NULL,
		[TargetShiftSignupId] [int] NULL,
		[Denied] [bit] NOT NULL,
		[UserId] [nvarchar](128) NULL,
		[Note] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.ShiftSignupTrades] PRIMARY KEY CLUSTERED 
	(
		[ShiftSignupTradeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftSignupTradeUsers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftSignupTradeUsers](
		[ShiftSignupTradeUserId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftSignupTradeId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[Declined] [bit] NOT NULL,
		[Reason] [nvarchar](max) NULL,
		[Offered] [bit] NOT NULL,
	 CONSTRAINT [PK_dbo.ShiftSignupTradeUsers] PRIMARY KEY CLUSTERED 
	(
		[ShiftSignupTradeUserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftSignupTradeUserShifts]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftSignupTradeUserShifts](
		[ShiftSignupTradeUserShiftId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftSignupTradeUserId] [int] NOT NULL,
		[ShiftSignupId] [int] NULL,
	 CONSTRAINT [PK_dbo.ShiftSignupTradeUserShifts] PRIMARY KEY CLUSTERED 
	(
		[ShiftSignupTradeUserShiftId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftStaffingPersons]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftStaffingPersons](
		[ShiftStaffingPersonId] [int] IDENTITY(1,1) NOT NULL,
		[ShiftStaffingId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[Assigned] [bit] NOT NULL,
		[GroupId] [int] NULL,
	 CONSTRAINT [PK_dbo.ShiftStaffingPersons] PRIMARY KEY CLUSTERED 
	(
		[ShiftStaffingPersonId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[ShiftStaffings]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[ShiftStaffings](
		[ShiftStaffingId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[ShiftId] [int] NOT NULL,
		[ShiftDay] [datetime] NOT NULL,
		[Note] [nvarchar](max) NULL,
		[AddedByUserId] [nvarchar](128) NOT NULL,
		[AddedOn] [datetime] NOT NULL,
	 CONSTRAINT [PK_dbo.ShiftStaffings] PRIMARY KEY CLUSTERED 
	(
		[ShiftStaffingId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[TrainingAttachments]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[TrainingAttachments](
		[TrainingAttachmentId] [int] IDENTITY(1,1) NOT NULL,
		[TrainingId] [int] NOT NULL,
		[FileName] [nvarchar](max) NULL,
		[Data] [varbinary](max) NULL,
		[FileType] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.TrainingAttachments] PRIMARY KEY CLUSTERED 
	(
		[TrainingAttachmentId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[TrainingQuestionAnswers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[TrainingQuestionAnswers](
		[TrainingQuestionAnswerId] [int] IDENTITY(1,1) NOT NULL,
		[TrainingQuestionId] [int] NOT NULL,
		[Answer] [nvarchar](max) NULL,
		[Correct] [bit] NOT NULL,
	 CONSTRAINT [PK_dbo.TrainingQuestionAnswers] PRIMARY KEY CLUSTERED 
	(
		[TrainingQuestionAnswerId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[TrainingQuestions]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[TrainingQuestions](
		[TrainingQuestionId] [int] IDENTITY(1,1) NOT NULL,
		[TrainingId] [int] NOT NULL,
		[Question] [nvarchar](max) NULL,
	 CONSTRAINT [PK_dbo.TrainingQuestions] PRIMARY KEY CLUSTERED 
	(
		[TrainingQuestionId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Trainings]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Trainings](
		[TrainingId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[CreatedByUserId] [nvarchar](max) NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Description] [nvarchar](max) NOT NULL,
		[TrainingText] [nvarchar](max) NOT NULL,
		[MinimumScore] [float] NOT NULL,
		[CreatedOn] [datetime] NOT NULL,
		[UsersToAdd] [nvarchar](max) NULL,
		[GroupsToAdd] [nvarchar](max) NULL,
		[RolesToAdd] [nvarchar](max) NULL,
		[ToBeCompletedBy] [datetime] NULL,
		[Notified] [datetime] NULL,
	 CONSTRAINT [PK_dbo.Trainings] PRIMARY KEY CLUSTERED 
	(
		[TrainingId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[TrainingUsers]    Script Date: 11/3/2020 9:22:03 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[TrainingUsers](
		[TrainingUserId] [int] IDENTITY(1,1) NOT NULL,
		[TrainingId] [int] NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[Complete] [bit] NOT NULL,
		[Score] [float] NOT NULL,
		[Viewed] [bit] NOT NULL,
		[ViewedOn] [datetime] NULL,
		[CompletedOn] [datetime] NULL,
	 CONSTRAINT [PK_dbo.TrainingUsers] PRIMARY KEY CLUSTERED 
	(
		[TrainingUserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UnitLocations]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UnitLocations](
		[UnitLocationId] [int] IDENTITY(1,1) NOT NULL,
		[UnitId] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[Latitude] [decimal](18, 2) NULL,
		[Longitude] [decimal](18, 2) NULL,
		[Accuracy] [decimal](18, 2) NULL,
		[Altitude] [decimal](18, 2) NULL,
		[AltitudeAccuracy] [decimal](18, 2) NULL,
		[Speed] [decimal](18, 2) NULL,
		[Heading] [decimal](18, 2) NULL,
	 CONSTRAINT [PK_dbo.UnitLocations] PRIMARY KEY CLUSTERED 
	(
		[UnitLocationId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UnitLogs]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UnitLogs](
		[UnitLogId] [int] IDENTITY(1,1) NOT NULL,
		[UnitId] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[Narrative] [nvarchar](4000) NOT NULL,
	 CONSTRAINT [PK_dbo.UnitLogs] PRIMARY KEY CLUSTERED 
	(
		[UnitLogId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UnitRoles]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UnitRoles](
		[UnitRoleId] [int] IDENTITY(1,1) NOT NULL,
		[UnitId] [int] NOT NULL,
		[Name] [nvarchar](250) NOT NULL,
	 CONSTRAINT [PK_dbo.UnitRoles] PRIMARY KEY CLUSTERED 
	(
		[UnitRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[Units]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[Units](
		[UnitId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Name] [nvarchar](max) NOT NULL,
		[Type] [nvarchar](max) NULL,
		[StationGroupId] [int] NULL,
		[VIN] [nvarchar](max) NULL,
		[PlateNumber] [nvarchar](max) NULL,
		[FourWheel] [bit] NULL,
		[SpecialPermit] [bit] NULL,
	 CONSTRAINT [PK_dbo.Units] PRIMARY KEY CLUSTERED 
	(
		[UnitId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UnitStateRoles]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UnitStateRoles](
		[UnitStateRoleId] [int] IDENTITY(1,1) NOT NULL,
		[UnitStateId] [int] NOT NULL,
		[Role] [nvarchar](250) NULL,
		[UserId] [nvarchar](128) NOT NULL,
	 CONSTRAINT [PK_dbo.UnitStateRoles] PRIMARY KEY CLUSTERED 
	(
		[UnitStateRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UnitStates]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UnitStates](
		[UnitStateId] [int] IDENTITY(1,1) NOT NULL,
		[UnitId] [int] NOT NULL,
		[State] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[GeoLocationData] [nvarchar](max) NULL,
		[DestinationId] [int] NULL,
		[LocalTimestamp] [datetime] NULL,
		[Note] [nvarchar](max) NULL,
		[Latitude] [decimal](10, 7) NULL,
		[Longitude] [decimal](10, 7) NULL,
		[Accuracy] [decimal](6, 2) NULL,
		[Altitude] [decimal](7, 2) NULL,
		[AltitudeAccuracy] [decimal](6, 2) NULL,
		[Speed] [decimal](5, 2) NULL,
		[Heading] [decimal](5, 2) NULL,
	 CONSTRAINT [PK_dbo.UnitStates] PRIMARY KEY CLUSTERED 
	(
		[UnitStateId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UnitTypes]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UnitTypes](
		[UnitTypeId] [int] IDENTITY(1,1) NOT NULL,
		[DepartmentId] [int] NOT NULL,
		[Type] [nvarchar](100) NOT NULL,
		[CustomStatesId] [int] NULL,
	 CONSTRAINT [PK_dbo.UnitTypes] PRIMARY KEY CLUSTERED 
	(
		[UnitTypeId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UserProfiles]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UserProfiles](
		[UserProfileId] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[FirstName] [nvarchar](max) NULL,
		[LastName] [nvarchar](max) NULL,
		[TimeZone] [nvarchar](max) NULL,
		[MobileNumber] [nvarchar](max) NULL,
		[MobileCarrier] [int] NOT NULL,
		[SendEmail] [bit] NOT NULL,
		[SendPush] [bit] NOT NULL,
		[SendSms] [bit] NOT NULL,
		[SendMessageEmail] [bit] NOT NULL,
		[SendMessagePush] [bit] NOT NULL,
		[SendMessageSms] [bit] NOT NULL,
		[DoNotRecieveNewsletters] [bit] NOT NULL,
		[HomeNumber] [nvarchar](max) NULL,
		[HomeAddressId] [int] NULL,
		[MailingAddressId] [int] NULL,
		[IdentificationNumber] [nvarchar](max) NULL,
		[SendNotificationEmail] [bit] NOT NULL,
		[SendNotificationPush] [bit] NOT NULL,
		[SendNotificationSms] [bit] NOT NULL,
		[VoiceForCall] [bit] NOT NULL,
		[VoiceCallMobile] [bit] NOT NULL,
		[VoiceCallHome] [bit] NOT NULL,
		[Image] [varbinary](max) NULL,
		[LastUpdated] [datetime] NULL,
		[CustomPushSounds] [bit] NOT NULL,
		[StartDate] [datetime] NULL,
		[EndDate] [datetime] NULL,
	 CONSTRAINT [PK_dbo.UserProfiles] PRIMARY KEY CLUSTERED 
	(
		[UserProfileId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
	
	/****** Object:  Table [dbo].[UserStates]    Script Date: 11/3/2020 9:22:04 AM ******/
	
	
	
	
	CREATE TABLE [dbo].[UserStates](
		[UserStateId] [int] IDENTITY(1,1) NOT NULL,
		[UserId] [nvarchar](128) NOT NULL,
		[State] [int] NOT NULL,
		[Timestamp] [datetime] NOT NULL,
		[Note] [nvarchar](3000) NULL,
		[DepartmentId] [int] NOT NULL,
	 CONSTRAINT [PK_UserStates] PRIMARY KEY CLUSTERED 
	(
		[UserStateId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1f6a03a8-62f4-4179-80fc-2eb96266cf04', N'Admins', N'Admins', N'8c03db29-f46e-483b-907d-15e85262f5d5')
	INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'38b461d7-e848-46ef-8c06-ece5b618d9d1', N'Users', N'Users', N'1e663d87-3a14-48b5-b6ad-b4685353dd56')
	INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3aba8863-e46d-40cc-ab86-309f9c3e4f97', N'Affiliates', N'Affiliates', N'36bb5ede-09c8-4faf-acca-63767c604ec0')
	
	SET IDENTITY_INSERT [dbo].[AspNetUserRoles] ON 

	INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [IdentityRole_Id], [IdentityUser_Id]) VALUES (1, N'474468cd-6bfd-4717-8302-60bbe3530fdb', N'38b461d7-e848-46ef-8c06-ece5b618d9d1', NULL, NULL)
	INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [IdentityRole_Id], [IdentityUser_Id]) VALUES (2, N'c4d78e63-aa6e-4c38-9f03-a0a6311b4aa5', N'38b461d7-e848-46ef-8c06-ece5b618d9d1', NULL, NULL)
	INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [IdentityRole_Id], [IdentityUser_Id]) VALUES (3, N'88b16e75-a5ca-4489-8b38-eba1e4cdcba0', N'38b461d7-e848-46ef-8c06-ece5b618d9d1', NULL, NULL)
	INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [IdentityRole_Id], [IdentityUser_Id]) VALUES (4, N'66352698-a346-4a99-bb9a-12ac35aad62e', N'1f6a03a8-62f4-4179-80fc-2eb96266cf04', NULL, NULL)
	SET IDENTITY_INSERT [dbo].[AspNetUserRoles] OFF
	
	INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'474468CD-6BFD-4717-8302-60BBE3530FDB', N'TestAccount1', N'TestAccount1', N'testaccount1@yourcompany.local', N'testaccount1@yourcompany.local', 1, N'AQAAAAEAACcQAAAAEB3WroDEDRMBLpq6xkKCCQCF1nfwjsIrTb2AmO1/+0PaMdfJYZSfq33DSYws5wF4Xg==', N'afa823df-6084-4a43-9356-997450d84bb0', N'3f0a5d6e-b075-423d-856b-9522ef7f0ccc', NULL, 0, 0, NULL, 1, 0)
	INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'66352698-a346-4a99-bb9a-12ac35aad62e', N'Administrator', N'Administrator', N'administrator@yourcompany.local', N'administrator@yourcompany.local', 1, N'AQAAAAEAACcQAAAAEB3WroDEDRMBLpq6xkKCCQCF1nfwjsIrTb2AmO1/+0PaMdfJYZSfq33DSYws5wF4Xg==', N'39fef507-3dd3-4c78-b8d2-d59e5b1f963e', N'54ebd189-52ee-465d-bae6-ce6823a97526', NULL, 0, 0, NULL, 1, 0)
	INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'88b16e75-a5ca-4489-8b38-eba1e4cdcba0', N'admin', N'ADMIN', N'admin@yourcompany.local', N'ADMIN@YOURCOMPANY.LOCAL', 1, N'AQAAAAEAACcQAAAAEB3WroDEDRMBLpq6xkKCCQCF1nfwjsIrTb2AmO1/+0PaMdfJYZSfq33DSYws5wF4Xg==', N'6e526153-a336-478c-9ade-d9ebcbc9748e', NULL, NULL, 0, 0, NULL, 1, 0)
	INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'C4D78E63-AA6E-4C38-9F03-A0A6311B4AA5', N'TestAccount2', N'TestAccount2', N'testaccount2@yourcompany.local', N'testaccount2@yourcompany.local', 1, N'AQAAAAEAACcQAAAAEB3WroDEDRMBLpq6xkKCCQCF1nfwjsIrTb2AmO1/+0PaMdfJYZSfq33DSYws5wF4Xg==', N'80cabb04-9435-4b52-8f5c-b59d9d551f5c', N'b732f44f-c591-472c-8e4a-f7377a3859e0', NULL, 0, 0, NULL, 1, 0)
	
	SET IDENTITY_INSERT [dbo].[DepartmentCallPriorities] ON 

	INSERT [dbo].[DepartmentCallPriorities] ([DepartmentCallPriorityId], [DepartmentId], [Name], [Color], [Sort], [IsDeleted], [IsDefault], [PushNotificationSound], [ShortNotificationSound], [DispatchPersonnel], [DispatchUnits], [ForceNotifyAllPersonnel], [IOSPushNotificationSound], [Tone]) VALUES (0, 1, N'Low', N'#028602', 0, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0)
	INSERT [dbo].[DepartmentCallPriorities] ([DepartmentCallPriorityId], [DepartmentId], [Name], [Color], [Sort], [IsDeleted], [IsDefault], [PushNotificationSound], [ShortNotificationSound], [DispatchPersonnel], [DispatchUnits], [ForceNotifyAllPersonnel], [IOSPushNotificationSound], [Tone]) VALUES (1, 1, N'Medium', N'#DBDB2E', 1, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0)
	INSERT [dbo].[DepartmentCallPriorities] ([DepartmentCallPriorityId], [DepartmentId], [Name], [Color], [Sort], [IsDeleted], [IsDefault], [PushNotificationSound], [ShortNotificationSound], [DispatchPersonnel], [DispatchUnits], [ForceNotifyAllPersonnel], [IOSPushNotificationSound], [Tone]) VALUES (2, 1, N'High', N'#f9a203', 2, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0)
	INSERT [dbo].[DepartmentCallPriorities] ([DepartmentCallPriorityId], [DepartmentId], [Name], [Color], [Sort], [IsDeleted], [IsDefault], [PushNotificationSound], [ShortNotificationSound], [DispatchPersonnel], [DispatchUnits], [ForceNotifyAllPersonnel], [IOSPushNotificationSound], [Tone]) VALUES (3, 1, N'Emergency', N'#fd0303', 3, 0, 1, NULL, NULL, 0, 0, 0, NULL, 0)
	SET IDENTITY_INSERT [dbo].[DepartmentCallPriorities] OFF
	
	SET IDENTITY_INSERT [dbo].[DepartmentMembers] ON 

	INSERT [dbo].[DepartmentMembers] ([DepartmentMemberId], [DepartmentId], [UserId], [IsAdmin], [IsDisabled], [IsHidden], [IsDefault], [IsActive], [IsDeleted], [RankId]) VALUES (1, 1, N'474468CD-6BFD-4717-8302-60BBE3530FDB', 1, 0, 0, 1, 1, 0, NULL)
	INSERT [dbo].[DepartmentMembers] ([DepartmentMemberId], [DepartmentId], [UserId], [IsAdmin], [IsDisabled], [IsHidden], [IsDefault], [IsActive], [IsDeleted], [RankId]) VALUES (2, 1, N'C4D78E63-AA6E-4C38-9F03-A0A6311B4AA5', 0, 0, 0, 1, 1, 0, NULL)
	INSERT [dbo].[DepartmentMembers] ([DepartmentMemberId], [DepartmentId], [UserId], [IsAdmin], [IsDisabled], [IsHidden], [IsDefault], [IsActive], [IsDeleted], [RankId]) VALUES (3, 2, N'88b16e75-a5ca-4489-8b38-eba1e4cdcba0', 1, 0, 0, 1, 1, 0, NULL)
	SET IDENTITY_INSERT [dbo].[DepartmentMembers] OFF
	
	SET IDENTITY_INSERT [dbo].[Departments] ON 

	INSERT [dbo].[Departments] ([DepartmentId], [Name], [Code], [ManagingUserId], [ShowWelcome], [CreatedOn], [UpdatedOn], [TimeZone], [ApiKey], [DepartmentType], [AddressId], [PublicApiKey], [ReferringDepartmentId], [AffiliateCode], [SharedSecret], [Use24HourTime], [LinkCode]) VALUES (1, N'Resgrid System Department', N'XXXX', N'474468CD-6BFD-4717-8302-60BBE3530FDB', 0, NULL, NULL, N'Pacific Standard Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'E61C8E')
	INSERT [dbo].[Departments] ([DepartmentId], [Name], [Code], [ManagingUserId], [ShowWelcome], [CreatedOn], [UpdatedOn], [TimeZone], [ApiKey], [DepartmentType], [AddressId], [PublicApiKey], [ReferringDepartmentId], [AffiliateCode], [SharedSecret], [Use24HourTime], [LinkCode]) VALUES (2, N'Your Department', N'ABCD', N'88b16e75-a5ca-4489-8b38-eba1e4cdcba0', 0, NULL, NULL, N'Pacific Standard Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
	SET IDENTITY_INSERT [dbo].[Departments] OFF
	
	SET IDENTITY_INSERT [dbo].[DepartmentSettings] ON 

	INSERT [dbo].[DepartmentSettings] ([DepartmentSettingId], [DepartmentId], [SettingType], [Setting]) VALUES (1, 1, 15, N'F0D74B')
	SET IDENTITY_INSERT [dbo].[DepartmentSettings] OFF
	
	SET IDENTITY_INSERT [dbo].[Payments] ON 

	INSERT [dbo].[Payments] ([PaymentId], [DepartmentId], [PlanId], [Method], [IsTrial], [PurchaseOn], [PurchasingUserId], [TransactionId], [Successful], [Data], [IsUpgrade], [Description], [EffectiveOn], [Amount], [Payment_PaymentId], [EndingOn], [Cancelled], [CancelledOn], [CancelledData], [UpgradedPaymentId], [SubscriptionId]) VALUES (1, 2, 1, 4, 0, CAST(N'2020-11-03T08:32:16.043' AS DateTime), N'88b16e75-a5ca-4489-8b38-eba1e4cdcba0', N'SYSTEM', 1, NULL, 0, N'Default Forever Plan', CAST(N'2020-11-02T08:32:16.043' AS DateTime), 0, NULL, CAST(N'9999-12-31T23:59:59.997' AS DateTime), 0, NULL, NULL, NULL, NULL)
	SET IDENTITY_INSERT [dbo].[Payments] OFF
	
	SET IDENTITY_INSERT [dbo].[PlanLimits] ON 

	INSERT [dbo].[PlanLimits] ([PlanLimitId], [PlanId], [LimitType], [LimitValue]) VALUES (1, 1, 1, 2147483647)
	INSERT [dbo].[PlanLimits] ([PlanLimitId], [PlanId], [LimitType], [LimitValue]) VALUES (2, 1, 2, 2147483647)
	INSERT [dbo].[PlanLimits] ([PlanLimitId], [PlanId], [LimitType], [LimitValue]) VALUES (3, 1, 3, 2147483647)
	INSERT [dbo].[PlanLimits] ([PlanLimitId], [PlanId], [LimitType], [LimitValue]) VALUES (4, 1, 4, 2147483647)
	SET IDENTITY_INSERT [dbo].[PlanLimits] OFF
	
	SET IDENTITY_INSERT [dbo].[Plans] ON 

	INSERT [dbo].[Plans] ([PlanId], [Name], [Cost], [Frequency], [ExternalId]) VALUES (1, N'Default Plan', 0, 1, N'')
	SET IDENTITY_INSERT [dbo].[Plans] OFF
	
	SET IDENTITY_INSERT [dbo].[UserProfiles] ON 

	INSERT [dbo].[UserProfiles] ([UserProfileId], [UserId], [FirstName], [LastName], [TimeZone], [MobileNumber], [MobileCarrier], [SendEmail], [SendPush], [SendSms], [SendMessageEmail], [SendMessagePush], [SendMessageSms], [DoNotRecieveNewsletters], [HomeNumber], [HomeAddressId], [MailingAddressId], [IdentificationNumber], [SendNotificationEmail], [SendNotificationPush], [SendNotificationSms], [VoiceForCall], [VoiceCallMobile], [VoiceCallHome], [Image], [LastUpdated], [CustomPushSounds], [StartDate], [EndDate]) VALUES (1, N'474468CD-6BFD-4717-8302-60BBE3530FDB', N'Test', N'User', NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
	INSERT [dbo].[UserProfiles] ([UserProfileId], [UserId], [FirstName], [LastName], [TimeZone], [MobileNumber], [MobileCarrier], [SendEmail], [SendPush], [SendSms], [SendMessageEmail], [SendMessagePush], [SendMessageSms], [DoNotRecieveNewsletters], [HomeNumber], [HomeAddressId], [MailingAddressId], [IdentificationNumber], [SendNotificationEmail], [SendNotificationPush], [SendNotificationSms], [VoiceForCall], [VoiceCallMobile], [VoiceCallHome], [Image], [LastUpdated], [CustomPushSounds], [StartDate], [EndDate]) VALUES (2, N'C4D78E63-AA6E-4C38-9F03-A0A6311B4AA5', N'Test', N'User2', NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
	INSERT [dbo].[UserProfiles] ([UserProfileId], [UserId], [FirstName], [LastName], [TimeZone], [MobileNumber], [MobileCarrier], [SendEmail], [SendPush], [SendSms], [SendMessageEmail], [SendMessagePush], [SendMessageSms], [DoNotRecieveNewsletters], [HomeNumber], [HomeAddressId], [MailingAddressId], [IdentificationNumber], [SendNotificationEmail], [SendNotificationPush], [SendNotificationSms], [VoiceForCall], [VoiceCallMobile], [VoiceCallHome], [Image], [LastUpdated], [CustomPushSounds], [StartDate], [EndDate]) VALUES (3, N'88b16e75-a5ca-4489-8b38-eba1e4cdcba0', N'Department', N'Admin', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
	SET IDENTITY_INSERT [dbo].[UserProfiles] OFF
	
	ALTER TABLE [dbo].[Affiliates] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreatedOn]
	
	ALTER TABLE [dbo].[Affiliates] ADD  DEFAULT ((0)) FOR [Rejected]
	
	ALTER TABLE [dbo].[AspNetUsersExt] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreateDate]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [IsAllDay]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [SignupType]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Reminder]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [LockEditing]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [ReminderSent]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Public]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [IsV2Schedule]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [RecurrenceType]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Sunday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Monday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Tuesday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Wednesday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Thursday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Friday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [Saturday]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [RepeatOnDay]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [RepeatOnWeek]
	
	ALTER TABLE [dbo].[CalendarItems] ADD  DEFAULT ((0)) FOR [RepeatOnMonth]
	
	ALTER TABLE [dbo].[CallDispatches] ADD  DEFAULT ((0)) FOR [DispatchCount]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [Priority]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [IsCritical]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [State]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [IsDeleted]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [CallSource]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [DispatchCount]
	
	ALTER TABLE [dbo].[Calls] ADD  DEFAULT ((0)) FOR [Public]
	
	ALTER TABLE [dbo].[CustomStateDetails] ADD  DEFAULT ((0)) FOR [Order]
	
	ALTER TABLE [dbo].[CustomStates] ADD  DEFAULT ((0)) FOR [IsDeleted]
	
	ALTER TABLE [dbo].[DepartmentCallEmails] ADD  DEFAULT ((0)) FOR [IsFailure]
	
	ALTER TABLE [dbo].[DepartmentCallEmails] ADD  DEFAULT ((0)) FOR [FormatType]
	
	ALTER TABLE [dbo].[DepartmentCallPriorities] ADD  DEFAULT ((0)) FOR [DispatchPersonnel]
	
	ALTER TABLE [dbo].[DepartmentCallPriorities] ADD  DEFAULT ((0)) FOR [DispatchUnits]
	
	ALTER TABLE [dbo].[DepartmentCallPriorities] ADD  DEFAULT ((0)) FOR [ForceNotifyAllPersonnel]
	
	ALTER TABLE [dbo].[DepartmentCallPriorities] ADD  DEFAULT ((0)) FOR [Tone]
	
	ALTER TABLE [dbo].[DepartmentFiles] ADD  DEFAULT (newsequentialid()) FOR [DepartmentFileId]
	
	ALTER TABLE [dbo].[DepartmentGroupMembers] ADD  DEFAULT ((0)) FOR [DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentGroups] ADD  DEFAULT ((0)) FOR [DispatchToPrinter]
	
	ALTER TABLE [dbo].[DepartmentGroups] ADD  DEFAULT ((0)) FOR [DispatchToFax]
	
	ALTER TABLE [dbo].[DepartmentLinks] ADD  DEFAULT ((0)) FOR [DepartmentShareOrders]
	
	ALTER TABLE [dbo].[DepartmentLinks] ADD  DEFAULT ((0)) FOR [LinkedDepartmentShareOrders]
	
	ALTER TABLE [dbo].[DepartmentMembers] ADD  DEFAULT ((0)) FOR [IsDefault]
	
	ALTER TABLE [dbo].[DepartmentMembers] ADD  DEFAULT ((0)) FOR [IsActive]
	
	ALTER TABLE [dbo].[DepartmentMembers] ADD  DEFAULT ((0)) FOR [IsDeleted]
	
	ALTER TABLE [dbo].[DepartmentNotifications] ADD  DEFAULT ((0)) FOR [SelectedGroupsAdminsOnly]
	
	ALTER TABLE [dbo].[DepartmentNotifications] ADD  DEFAULT ((0)) FOR [DepartmentAdmins]
	
	ALTER TABLE [dbo].[DepartmentNotifications] ADD  DEFAULT ((0)) FOR [Everyone]
	
	ALTER TABLE [dbo].[DepartmentNotifications] ADD  DEFAULT ((0)) FOR [Disabled]
	
	ALTER TABLE [dbo].[DepartmentProfileArticles] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [StartOn]
	
	ALTER TABLE [dbo].[DepartmentProfileArticles] ADD  DEFAULT ((0)) FOR [Deleted]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] ADD  DEFAULT ((0)) FOR [Spam]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] ADD  DEFAULT ((0)) FOR [Deleted]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] ADD  DEFAULT ((0)) FOR [IsUserSender]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ConversationId]
	
	ALTER TABLE [dbo].[DepartmentProfiles] ADD  DEFAULT ((0)) FOR [Disabled]
	
	ALTER TABLE [dbo].[IncidentLogs] ADD  DEFAULT ((0)) FOR [UnitId]
	
	ALTER TABLE [dbo].[IncidentLogs] ADD  DEFAULT ((0)) FOR [Type]
	
	ALTER TABLE [dbo].[Incidents] ADD  DEFAULT ((0)) FOR [CommandDefinitionId]
	
	ALTER TABLE [dbo].[Incidents] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Start]
	
	ALTER TABLE [dbo].[Incidents] ADD  DEFAULT ((0)) FOR [State]
	
	ALTER TABLE [dbo].[MessageRecipients] ADD  DEFAULT ((0)) FOR [MessageId]
	
	ALTER TABLE [dbo].[Messages] ADD  DEFAULT ((0)) FOR [IsDeleted]
	
	ALTER TABLE [dbo].[Messages] ADD  DEFAULT ((0)) FOR [SystemGenerated]
	
	ALTER TABLE [dbo].[Messages] ADD  DEFAULT ((0)) FOR [Type]
	
	ALTER TABLE [dbo].[Notes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [AddedOn]
	
	ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0)) FOR [IsUpgrade]
	
	ALTER TABLE [dbo].[Payments] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [EffectiveOn]
	
	ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0)) FOR [Amount]
	
	ALTER TABLE [dbo].[Payments] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [EndingOn]
	
	ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0)) FOR [Cancelled]
	
	ALTER TABLE [dbo].[Permissions] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [UpdatedOn]
	
	ALTER TABLE [dbo].[Permissions] ADD  DEFAULT ((0)) FOR [LockToGroup]
	
	ALTER TABLE [dbo].[PersonnelRoles] ADD  DEFAULT ((0)) FOR [DepartmentId]
	
	ALTER TABLE [dbo].[PersonnelRoleUsers] ADD  DEFAULT ((0)) FOR [DepartmentId]
	
	ALTER TABLE [dbo].[POITypes] ADD  DEFAULT ((0)) FOR [IsDestination]
	
	ALTER TABLE [dbo].[POITypes] ADD  DEFAULT ((0)) FOR [Size]
	
	ALTER TABLE [dbo].[PushLogs] ADD  DEFAULT ('') FOR [MessageId]
	
	ALTER TABLE [dbo].[PushUris] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreatedOn]
	
	ALTER TABLE [dbo].[ResourceOrders] ADD  DEFAULT ((0)) FOR [Visibility]
	
	ALTER TABLE [dbo].[ResourceOrders] ADD  DEFAULT ((0)) FOR [Range]
	
	ALTER TABLE [dbo].[ScheduledTasks] ADD  DEFAULT ((0)) FOR [DepartmentId]
	
	ALTER TABLE [dbo].[ShiftGroupAssignments] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Timestamp]
	
	ALTER TABLE [dbo].[ShiftGroupAssignments] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [AssignedByUserId]
	
	ALTER TABLE [dbo].[Shifts] ADD  DEFAULT ((0)) FOR [DepartmentId]
	
	ALTER TABLE [dbo].[ShiftSignupTradeUsers] ADD  DEFAULT ((0)) FOR [Declined]
	
	ALTER TABLE [dbo].[ShiftSignupTradeUsers] ADD  DEFAULT ((0)) FOR [Offered]
	
	ALTER TABLE [dbo].[TrainingUsers] ADD  DEFAULT ((0)) FOR [Viewed]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [SendMessageEmail]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [SendMessagePush]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [SendMessageSms]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [DoNotRecieveNewsletters]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [SendNotificationEmail]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [SendNotificationPush]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [SendNotificationSms]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [VoiceForCall]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [VoiceCallMobile]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [VoiceCallHome]
	
	ALTER TABLE [dbo].[UserProfiles] ADD  DEFAULT ((0)) FOR [CustomPushSounds]
	
	ALTER TABLE [dbo].[UserStates] ADD  DEFAULT ((0)) FOR [DepartmentId]
	
	ALTER TABLE [dbo].[ActionLogs]  WITH CHECK ADD  CONSTRAINT [FK_ActionLogs_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[ActionLogs] CHECK CONSTRAINT [FK_ActionLogs_Departments_DepartmentId]
	
	ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetRoleClaims_dbo.AspNetRoles_IdentityRole_Id] FOREIGN KEY([IdentityRole_Id])
	REFERENCES [dbo].[AspNetRoles] ([Id])
	
	ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_dbo.AspNetRoleClaims_dbo.AspNetRoles_IdentityRole_Id]
	
	ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_IdentityUser_Id] FOREIGN KEY([IdentityUser_Id])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_IdentityUser_Id]
	
	ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_Id]
	
	ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_IdentityRole_Id] FOREIGN KEY([IdentityRole_Id])
	REFERENCES [dbo].[AspNetRoles] ([Id])
	
	ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_IdentityRole_Id]
	
	ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_IdentityUser_Id] FOREIGN KEY([IdentityUser_Id])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_IdentityUser_Id]
	
	ALTER TABLE [dbo].[Automations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Automations_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Automations] CHECK CONSTRAINT [FK_dbo.Automations_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CalendarItemAttendees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CalendarItemAttendees_dbo.CalendarItems_CalendarItemId] FOREIGN KEY([CalendarItemId])
	REFERENCES [dbo].[CalendarItems] ([CalendarItemId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CalendarItemAttendees] CHECK CONSTRAINT [FK_dbo.CalendarItemAttendees_dbo.CalendarItems_CalendarItemId]
	
	ALTER TABLE [dbo].[CalendarItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CalendarItems_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CalendarItems] CHECK CONSTRAINT [FK_dbo.CalendarItems_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CalendarItemTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CalendarItemTypes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CalendarItemTypes] CHECK CONSTRAINT [FK_dbo.CalendarItemTypes_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CallAttachments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallAttachments_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallAttachments] CHECK CONSTRAINT [FK_dbo.CallAttachments_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallDispatches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatches_dbo.ActionLogs_ActionLogId] FOREIGN KEY([ActionLogId])
	REFERENCES [dbo].[ActionLogs] ([ActionLogId])
	
	ALTER TABLE [dbo].[CallDispatches] CHECK CONSTRAINT [FK_dbo.CallDispatches_dbo.ActionLogs_ActionLogId]
	
	ALTER TABLE [dbo].[CallDispatches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatches_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallDispatches] CHECK CONSTRAINT [FK_dbo.CallDispatches_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallDispatchGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatchGroups_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallDispatchGroups] CHECK CONSTRAINT [FK_dbo.CallDispatchGroups_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallDispatchGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatchGroups_dbo.DepartmentGroups_DepartmentGroupId] FOREIGN KEY([DepartmentGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[CallDispatchGroups] CHECK CONSTRAINT [FK_dbo.CallDispatchGroups_dbo.DepartmentGroups_DepartmentGroupId]
	
	ALTER TABLE [dbo].[CallDispatchRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatchRoles_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallDispatchRoles] CHECK CONSTRAINT [FK_dbo.CallDispatchRoles_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallDispatchRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatchRoles_dbo.PersonnelRoles_RoleId] FOREIGN KEY([RoleId])
	REFERENCES [dbo].[PersonnelRoles] ([PersonnelRoleId])
	
	ALTER TABLE [dbo].[CallDispatchRoles] CHECK CONSTRAINT [FK_dbo.CallDispatchRoles_dbo.PersonnelRoles_RoleId]
	
	ALTER TABLE [dbo].[CallDispatchUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatchUnits_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallDispatchUnits] CHECK CONSTRAINT [FK_dbo.CallDispatchUnits_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallDispatchUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallDispatchUnits_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallDispatchUnits] CHECK CONSTRAINT [FK_dbo.CallDispatchUnits_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[CallLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallLogs_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallLogs] CHECK CONSTRAINT [FK_dbo.CallLogs_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallLogs_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[CallLogs] CHECK CONSTRAINT [FK_dbo.CallLogs_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CallNotes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallNotes_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallNotes] CHECK CONSTRAINT [FK_dbo.CallNotes_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallProtocols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallProtocols_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallProtocols] CHECK CONSTRAINT [FK_dbo.CallProtocols_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallProtocols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallProtocols_dbo.DispatchProtocols_DispatchProtocolId] FOREIGN KEY([DispatchProtocolId])
	REFERENCES [dbo].[DispatchProtocols] ([DispatchProtocolId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallProtocols] CHECK CONSTRAINT [FK_dbo.CallProtocols_dbo.DispatchProtocols_DispatchProtocolId]
	
	ALTER TABLE [dbo].[CallQuickTemplates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallQuickTemplates_dbo.AspNetUsers_CreatedByUserId] FOREIGN KEY([CreatedByUserId])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[CallQuickTemplates] CHECK CONSTRAINT [FK_dbo.CallQuickTemplates_dbo.AspNetUsers_CreatedByUserId]
	
	ALTER TABLE [dbo].[CallQuickTemplates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallQuickTemplates_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallQuickTemplates] CHECK CONSTRAINT [FK_dbo.CallQuickTemplates_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Calls]  WITH CHECK ADD  CONSTRAINT [FK_Calls_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Calls] CHECK CONSTRAINT [FK_Calls_Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CallTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallTypes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallTypes] CHECK CONSTRAINT [FK_dbo.CallTypes_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CallUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallUnits_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallUnits] CHECK CONSTRAINT [FK_dbo.CallUnits_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[CallUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallUnits_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CallUnits] CHECK CONSTRAINT [FK_dbo.CallUnits_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[CallUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CallUnits_dbo.UnitStates_UnitStateId] FOREIGN KEY([UnitStateId])
	REFERENCES [dbo].[UnitStates] ([UnitStateId])
	
	ALTER TABLE [dbo].[CallUnits] CHECK CONSTRAINT [FK_dbo.CallUnits_dbo.UnitStates_UnitStateId]
	
	ALTER TABLE [dbo].[CommandDefinitionRoleCerts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRoleCerts_dbo.CommandDefinitionRoles_CommandDefinitionRoleId] FOREIGN KEY([CommandDefinitionRoleId])
	REFERENCES [dbo].[CommandDefinitionRoles] ([CommandDefinitionRoleId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRoleCerts] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRoleCerts_dbo.CommandDefinitionRoles_CommandDefinitionRoleId]
	
	ALTER TABLE [dbo].[CommandDefinitionRoleCerts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRoleCerts_dbo.DepartmentCertificationTypes_DepartmentCertificationTypeId] FOREIGN KEY([DepartmentCertificationTypeId])
	REFERENCES [dbo].[DepartmentCertificationTypes] ([DepartmentCertificationTypeId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRoleCerts] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRoleCerts_dbo.DepartmentCertificationTypes_DepartmentCertificationTypeId]
	
	ALTER TABLE [dbo].[CommandDefinitionRolePersonnelRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRolePersonnelRoles_dbo.CommandDefinitionRoles_CommandDefinitionRoleId] FOREIGN KEY([CommandDefinitionRoleId])
	REFERENCES [dbo].[CommandDefinitionRoles] ([CommandDefinitionRoleId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRolePersonnelRoles] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRolePersonnelRoles_dbo.CommandDefinitionRoles_CommandDefinitionRoleId]
	
	ALTER TABLE [dbo].[CommandDefinitionRolePersonnelRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRolePersonnelRoles_dbo.PersonnelRoles_PersonnelRoleId] FOREIGN KEY([PersonnelRoleId])
	REFERENCES [dbo].[PersonnelRoles] ([PersonnelRoleId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRolePersonnelRoles] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRolePersonnelRoles_dbo.PersonnelRoles_PersonnelRoleId]
	
	ALTER TABLE [dbo].[CommandDefinitionRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRoles_dbo.CommandDefinitions_CommandDefinitionId] FOREIGN KEY([CommandDefinitionId])
	REFERENCES [dbo].[CommandDefinitions] ([CommandDefinitionId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRoles] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRoles_dbo.CommandDefinitions_CommandDefinitionId]
	
	ALTER TABLE [dbo].[CommandDefinitionRoleUnitTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRoleUnitTypes_dbo.CommandDefinitionRoles_CommandDefinitionRoleId] FOREIGN KEY([CommandDefinitionRoleId])
	REFERENCES [dbo].[CommandDefinitionRoles] ([CommandDefinitionRoleId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRoleUnitTypes] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRoleUnitTypes_dbo.CommandDefinitionRoles_CommandDefinitionRoleId]
	
	ALTER TABLE [dbo].[CommandDefinitionRoleUnitTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitionRoleUnitTypes_dbo.UnitTypes_UnitTypeId] FOREIGN KEY([UnitTypeId])
	REFERENCES [dbo].[UnitTypes] ([UnitTypeId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CommandDefinitionRoleUnitTypes] CHECK CONSTRAINT [FK_dbo.CommandDefinitionRoleUnitTypes_dbo.UnitTypes_UnitTypeId]
	
	ALTER TABLE [dbo].[CommandDefinitions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitions_dbo.CallTypes_CallTypeId] FOREIGN KEY([CallTypeId])
	REFERENCES [dbo].[CallTypes] ([CallTypeId])
	
	ALTER TABLE [dbo].[CommandDefinitions] CHECK CONSTRAINT [FK_dbo.CommandDefinitions_dbo.CallTypes_CallTypeId]
	
	ALTER TABLE [dbo].[CommandDefinitions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommandDefinitions_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[CommandDefinitions] CHECK CONSTRAINT [FK_dbo.CommandDefinitions_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[CustomStateDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomStateDetails_dbo.CustomStates_CustomStateId] FOREIGN KEY([CustomStateId])
	REFERENCES [dbo].[CustomStates] ([CustomStateId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CustomStateDetails] CHECK CONSTRAINT [FK_dbo.CustomStateDetails_dbo.CustomStates_CustomStateId]
	
	ALTER TABLE [dbo].[CustomStates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomStates_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[CustomStates] CHECK CONSTRAINT [FK_dbo.CustomStates_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentCallEmails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentCallEmails_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentCallEmails] CHECK CONSTRAINT [FK_dbo.DepartmentCallEmails_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentCallPriorities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentCallPriorities_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentCallPriorities] CHECK CONSTRAINT [FK_dbo.DepartmentCallPriorities_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentCallPruning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentCallPruning_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentCallPruning] CHECK CONSTRAINT [FK_dbo.DepartmentCallPruning_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentCertificationTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentCertificationTypes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentCertificationTypes] CHECK CONSTRAINT [FK_dbo.DepartmentCertificationTypes_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentFiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentFiles_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentFiles] CHECK CONSTRAINT [FK_dbo.DepartmentFiles_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentGroupMembers]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentGroupMembers_DepartmentGroups_DepartmentGroupId] FOREIGN KEY([DepartmentGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[DepartmentGroupMembers] CHECK CONSTRAINT [FK_DepartmentGroupMembers_DepartmentGroups_DepartmentGroupId]
	
	ALTER TABLE [dbo].[DepartmentGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentGroups_dbo.Addresses_AddressId] FOREIGN KEY([AddressId])
	REFERENCES [dbo].[Addresses] ([AddressId])
	
	ALTER TABLE [dbo].[DepartmentGroups] CHECK CONSTRAINT [FK_dbo.DepartmentGroups_dbo.Addresses_AddressId]
	
	ALTER TABLE [dbo].[DepartmentGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentGroups_dbo.DepartmentGroups_ParentDepartmentGroupId] FOREIGN KEY([ParentDepartmentGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[DepartmentGroups] CHECK CONSTRAINT [FK_dbo.DepartmentGroups_dbo.DepartmentGroups_ParentDepartmentGroupId]
	
	ALTER TABLE [dbo].[DepartmentGroups]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentGroups_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentGroups] CHECK CONSTRAINT [FK_DepartmentGroups_Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentLinks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentLinks_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[DepartmentLinks] CHECK CONSTRAINT [FK_dbo.DepartmentLinks_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentLinks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentLinks_dbo.Departments_LinkedDepartmentId] FOREIGN KEY([LinkedDepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[DepartmentLinks] CHECK CONSTRAINT [FK_dbo.DepartmentLinks_dbo.Departments_LinkedDepartmentId]
	
	ALTER TABLE [dbo].[DepartmentMembers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentMembers_dbo.Ranks_RankId] FOREIGN KEY([RankId])
	REFERENCES [dbo].[Ranks] ([RankId])
	
	ALTER TABLE [dbo].[DepartmentMembers] CHECK CONSTRAINT [FK_dbo.DepartmentMembers_dbo.Ranks_RankId]
	
	ALTER TABLE [dbo].[DepartmentMembers]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentMembers_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentMembers] CHECK CONSTRAINT [FK_DepartmentMembers_Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentNotifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentNotifications_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentNotifications] CHECK CONSTRAINT [FK_dbo.DepartmentNotifications_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentProfileArticles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileArticles_dbo.DepartmentProfiles_DepartmentProfileId] FOREIGN KEY([DepartmentProfileId])
	REFERENCES [dbo].[DepartmentProfiles] ([DepartmentProfileId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentProfileArticles] CHECK CONSTRAINT [FK_dbo.DepartmentProfileArticles_dbo.DepartmentProfiles_DepartmentProfileId]
	
	ALTER TABLE [dbo].[DepartmentProfileInvites]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileInvites_dbo.DepartmentProfiles_DepartmentProfileId] FOREIGN KEY([DepartmentProfileId])
	REFERENCES [dbo].[DepartmentProfiles] ([DepartmentProfileId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentProfileInvites] CHECK CONSTRAINT [FK_dbo.DepartmentProfileInvites_dbo.DepartmentProfiles_DepartmentProfileId]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileMessages_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] CHECK CONSTRAINT [FK_dbo.DepartmentProfileMessages_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileMessages_dbo.DepartmentProfileMessages_ReplyToMessageId] FOREIGN KEY([ReplyToMessageId])
	REFERENCES [dbo].[DepartmentProfileMessages] ([DepartmentProfileMessageId])
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] CHECK CONSTRAINT [FK_dbo.DepartmentProfileMessages_dbo.DepartmentProfileMessages_ReplyToMessageId]
	
	ALTER TABLE [dbo].[DepartmentProfileMessages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileMessages_dbo.DepartmentProfiles_DepartmentProfileId] FOREIGN KEY([DepartmentProfileId])
	REFERENCES [dbo].[DepartmentProfiles] ([DepartmentProfileId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentProfileMessages] CHECK CONSTRAINT [FK_dbo.DepartmentProfileMessages_dbo.DepartmentProfiles_DepartmentProfileId]
	
	ALTER TABLE [dbo].[DepartmentProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfiles_dbo.Addresses_AddressId] FOREIGN KEY([AddressId])
	REFERENCES [dbo].[Addresses] ([AddressId])
	
	ALTER TABLE [dbo].[DepartmentProfiles] CHECK CONSTRAINT [FK_dbo.DepartmentProfiles_dbo.Addresses_AddressId]
	
	ALTER TABLE [dbo].[DepartmentProfiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfiles_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentProfiles] CHECK CONSTRAINT [FK_dbo.DepartmentProfiles_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DepartmentProfileUserFollows]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileUserFollows_dbo.DepartmentProfiles_DepartmentProfileId] FOREIGN KEY([DepartmentProfileId])
	REFERENCES [dbo].[DepartmentProfiles] ([DepartmentProfileId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentProfileUserFollows] CHECK CONSTRAINT [FK_dbo.DepartmentProfileUserFollows_dbo.DepartmentProfiles_DepartmentProfileId]
	
	ALTER TABLE [dbo].[DepartmentProfileUserFollows]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepartmentProfileUserFollows_dbo.DepartmentProfileUsers_DepartmentProfileUserId] FOREIGN KEY([DepartmentProfileUserId])
	REFERENCES [dbo].[DepartmentProfileUsers] ([DepartmentProfileUserId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentProfileUserFollows] CHECK CONSTRAINT [FK_dbo.DepartmentProfileUserFollows_dbo.DepartmentProfileUsers_DepartmentProfileUserId]
	
	ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Departments_dbo.Addresses_AddressId] FOREIGN KEY([AddressId])
	REFERENCES [dbo].[Addresses] ([AddressId])
	
	ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_dbo.Departments_dbo.Addresses_AddressId]
	
	ALTER TABLE [dbo].[DepartmentSettings]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentSettings_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DepartmentSettings] CHECK CONSTRAINT [FK_DepartmentSettings_Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DispatchProtocolAttachments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchProtocolAttachments_dbo.DispatchProtocols_DispatchProtocolId] FOREIGN KEY([DispatchProtocolId])
	REFERENCES [dbo].[DispatchProtocols] ([DispatchProtocolId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DispatchProtocolAttachments] CHECK CONSTRAINT [FK_dbo.DispatchProtocolAttachments_dbo.DispatchProtocols_DispatchProtocolId]
	
	ALTER TABLE [dbo].[DispatchProtocolQuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchProtocolQuestionAnswers_dbo.DispatchProtocolQuestions_DispatchProtocolQuestionId] FOREIGN KEY([DispatchProtocolQuestionId])
	REFERENCES [dbo].[DispatchProtocolQuestions] ([DispatchProtocolQuestionId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DispatchProtocolQuestionAnswers] CHECK CONSTRAINT [FK_dbo.DispatchProtocolQuestionAnswers_dbo.DispatchProtocolQuestions_DispatchProtocolQuestionId]
	
	ALTER TABLE [dbo].[DispatchProtocolQuestions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchProtocolQuestions_dbo.DispatchProtocols_DispatchProtocolId] FOREIGN KEY([DispatchProtocolId])
	REFERENCES [dbo].[DispatchProtocols] ([DispatchProtocolId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DispatchProtocolQuestions] CHECK CONSTRAINT [FK_dbo.DispatchProtocolQuestions_dbo.DispatchProtocols_DispatchProtocolId]
	
	ALTER TABLE [dbo].[DispatchProtocols]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchProtocols_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[DispatchProtocols] CHECK CONSTRAINT [FK_dbo.DispatchProtocols_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[DispatchProtocolTriggers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchProtocolTriggers_dbo.DispatchProtocols_DispatchProtocolId] FOREIGN KEY([DispatchProtocolId])
	REFERENCES [dbo].[DispatchProtocols] ([DispatchProtocolId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DispatchProtocolTriggers] CHECK CONSTRAINT [FK_dbo.DispatchProtocolTriggers_dbo.DispatchProtocols_DispatchProtocolId]
	
	ALTER TABLE [dbo].[DistributionListMembers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DistributionListMembers_dbo.DistributionLists_DistributionListId] FOREIGN KEY([DistributionListId])
	REFERENCES [dbo].[DistributionLists] ([DistributionListId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DistributionListMembers] CHECK CONSTRAINT [FK_dbo.DistributionListMembers_dbo.DistributionLists_DistributionListId]
	
	ALTER TABLE [dbo].[DistributionLists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DistributionLists_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[DistributionLists] CHECK CONSTRAINT [FK_dbo.DistributionLists_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Documents_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_dbo.Documents_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Files_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_dbo.Files_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Files_dbo.Messages_MessageId] FOREIGN KEY([MessageId])
	REFERENCES [dbo].[Messages] ([MessageId])
	
	ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_dbo.Files_dbo.Messages_MessageId]
	
	ALTER TABLE [dbo].[IncidentLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncidentLogs_dbo.Incidents_IncidentId] FOREIGN KEY([IncidentId])
	REFERENCES [dbo].[Incidents] ([IncidentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[IncidentLogs] CHECK CONSTRAINT [FK_dbo.IncidentLogs_dbo.Incidents_IncidentId]
	
	ALTER TABLE [dbo].[IncidentLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IncidentLogs_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[IncidentLogs] CHECK CONSTRAINT [FK_dbo.IncidentLogs_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[Incidents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Incidents_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Incidents] CHECK CONSTRAINT [FK_dbo.Incidents_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[Incidents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Incidents_dbo.CommandDefinitions_CommandDefinitionId] FOREIGN KEY([CommandDefinitionId])
	REFERENCES [dbo].[CommandDefinitions] ([CommandDefinitionId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Incidents] CHECK CONSTRAINT [FK_dbo.Incidents_dbo.CommandDefinitions_CommandDefinitionId]
	
	ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.AspNetUsers_AddedByUserId] FOREIGN KEY([AddedByUserId])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.AspNetUsers_AddedByUserId]
	
	ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.DepartmentGroups_GroupId] FOREIGN KEY([GroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.DepartmentGroups_GroupId]
	
	ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.InventoryTypes_InventoryType_InventoryTypeId] FOREIGN KEY([InventoryType_InventoryTypeId])
	REFERENCES [dbo].[InventoryTypes] ([InventoryTypeId])
	
	ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.InventoryTypes_InventoryType_InventoryTypeId]
	
	ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.InventoryTypes_TypeId] FOREIGN KEY([TypeId])
	REFERENCES [dbo].[InventoryTypes] ([InventoryTypeId])
	
	ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.InventoryTypes_TypeId]
	
	ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	
	ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[InventoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InventoryTypes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[InventoryTypes] CHECK CONSTRAINT [FK_dbo.InventoryTypes_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Invites]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Invites_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Invites] CHECK CONSTRAINT [FK_dbo.Invites_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[LogAttachments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogAttachments_dbo.Logs_LogId] FOREIGN KEY([LogId])
	REFERENCES [dbo].[Logs] ([LogId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[LogAttachments] CHECK CONSTRAINT [FK_dbo.LogAttachments_dbo.Logs_LogId]
	
	ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.AspNetUsers_LoggedByUserId] FOREIGN KEY([LoggedByUserId])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.AspNetUsers_LoggedByUserId]
	
	ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.Calls_CallId] FOREIGN KEY([CallId])
	REFERENCES [dbo].[Calls] ([CallId])
	
	ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.Calls_CallId]
	
	ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.DepartmentGroups_StationGroupId] FOREIGN KEY([StationGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.DepartmentGroups_StationGroupId]
	
	ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Logs_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_dbo.Logs_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[LogUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogUnits_dbo.Logs_LogId] FOREIGN KEY([LogId])
	REFERENCES [dbo].[Logs] ([LogId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[LogUnits] CHECK CONSTRAINT [FK_dbo.LogUnits_dbo.Logs_LogId]
	
	ALTER TABLE [dbo].[LogUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogUnits_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[LogUnits] CHECK CONSTRAINT [FK_dbo.LogUnits_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[LogUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogUsers_dbo.Logs_LogId] FOREIGN KEY([LogId])
	REFERENCES [dbo].[Logs] ([LogId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[LogUsers] CHECK CONSTRAINT [FK_dbo.LogUsers_dbo.Logs_LogId]
	
	ALTER TABLE [dbo].[LogUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LogUsers_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	
	ALTER TABLE [dbo].[LogUsers] CHECK CONSTRAINT [FK_dbo.LogUsers_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[MessageRecipients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MessageRecipients_dbo.Messages_Message_MessageId] FOREIGN KEY([Message_MessageId])
	REFERENCES [dbo].[Messages] ([MessageId])
	
	ALTER TABLE [dbo].[MessageRecipients] CHECK CONSTRAINT [FK_dbo.MessageRecipients_dbo.Messages_Message_MessageId]
	
	ALTER TABLE [dbo].[MessageRecipients]  WITH CHECK ADD  CONSTRAINT [FK_MessageRecipients_Messages_MessageId] FOREIGN KEY([MessageId])
	REFERENCES [dbo].[Messages] ([MessageId])
	
	ALTER TABLE [dbo].[MessageRecipients] CHECK CONSTRAINT [FK_MessageRecipients_Messages_MessageId]
	
	ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Notes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_dbo.Notes_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[NotificationAlerts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotificationAlerts_dbo.DepartmentGroups_DepartmentGroupId] FOREIGN KEY([DepartmentGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[NotificationAlerts] CHECK CONSTRAINT [FK_dbo.NotificationAlerts_dbo.DepartmentGroups_DepartmentGroupId]
	
	ALTER TABLE [dbo].[NotificationAlerts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NotificationAlerts_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[NotificationAlerts] CHECK CONSTRAINT [FK_dbo.NotificationAlerts_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payments_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_dbo.Payments_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payments_dbo.Payments_Payment_PaymentId] FOREIGN KEY([Payment_PaymentId])
	REFERENCES [dbo].[Payments] ([PaymentId])
	
	ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_dbo.Payments_dbo.Payments_Payment_PaymentId]
	
	ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payments_dbo.Plans_PlanId] FOREIGN KEY([PlanId])
	REFERENCES [dbo].[Plans] ([PlanId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_dbo.Payments_dbo.Plans_PlanId]
	
	ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[PersonnelCertifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonnelCertifications_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[PersonnelCertifications] CHECK CONSTRAINT [FK_dbo.PersonnelCertifications_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[PersonnelRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonnelRoles_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[PersonnelRoles] CHECK CONSTRAINT [FK_dbo.PersonnelRoles_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[PersonnelRoleUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonnelRoleUsers_dbo.PersonnelRoles_PersonnelRoleId] FOREIGN KEY([PersonnelRoleId])
	REFERENCES [dbo].[PersonnelRoles] ([PersonnelRoleId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[PersonnelRoleUsers] CHECK CONSTRAINT [FK_dbo.PersonnelRoleUsers_dbo.PersonnelRoles_PersonnelRoleId]
	
	ALTER TABLE [dbo].[PlanLimits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlanLimits_dbo.Plans_PlanId] FOREIGN KEY([PlanId])
	REFERENCES [dbo].[Plans] ([PlanId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[PlanLimits] CHECK CONSTRAINT [FK_dbo.PlanLimits_dbo.Plans_PlanId]
	
	ALTER TABLE [dbo].[Pois]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pois_dbo.POITypes_PoiTypeId] FOREIGN KEY([PoiTypeId])
	REFERENCES [dbo].[POITypes] ([PoiTypeId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Pois] CHECK CONSTRAINT [FK_dbo.Pois_dbo.POITypes_PoiTypeId]
	
	ALTER TABLE [dbo].[POITypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.POITypes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[POITypes] CHECK CONSTRAINT [FK_dbo.POITypes_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[Ranks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ranks_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[Ranks] CHECK CONSTRAINT [FK_dbo.Ranks_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[ResourceOrderFills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.AspNetUsers_AcceptedUserId] FOREIGN KEY([AcceptedUserId])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[ResourceOrderFills] CHECK CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.AspNetUsers_AcceptedUserId]
	
	ALTER TABLE [dbo].[ResourceOrderFills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.AspNetUsers_FillingUserId] FOREIGN KEY([FillingUserId])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[ResourceOrderFills] CHECK CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.AspNetUsers_FillingUserId]
	
	ALTER TABLE [dbo].[ResourceOrderFills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.AspNetUsers_LeadUserId] FOREIGN KEY([LeadUserId])
	REFERENCES [dbo].[AspNetUsers] ([Id])
	
	ALTER TABLE [dbo].[ResourceOrderFills] CHECK CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.AspNetUsers_LeadUserId]
	
	ALTER TABLE [dbo].[ResourceOrderFills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ResourceOrderFills] CHECK CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[ResourceOrderFills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.ResourceOrderItems_ResourceOrderItemId] FOREIGN KEY([ResourceOrderItemId])
	REFERENCES [dbo].[ResourceOrderItems] ([ResourceOrderItemId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ResourceOrderFills] CHECK CONSTRAINT [FK_dbo.ResourceOrderFills_dbo.ResourceOrderItems_ResourceOrderItemId]
	
	ALTER TABLE [dbo].[ResourceOrderFillUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFillUnits_dbo.ResourceOrderFills_ResourceOrderFillId] FOREIGN KEY([ResourceOrderFillId])
	REFERENCES [dbo].[ResourceOrderFills] ([ResourceOrderFillId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ResourceOrderFillUnits] CHECK CONSTRAINT [FK_dbo.ResourceOrderFillUnits_dbo.ResourceOrderFills_ResourceOrderFillId]
	
	ALTER TABLE [dbo].[ResourceOrderFillUnits]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderFillUnits_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ResourceOrderFillUnits] CHECK CONSTRAINT [FK_dbo.ResourceOrderFillUnits_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[ResourceOrderItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderItems_dbo.ResourceOrders_ResourceOrderId] FOREIGN KEY([ResourceOrderId])
	REFERENCES [dbo].[ResourceOrders] ([ResourceOrderId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ResourceOrderItems] CHECK CONSTRAINT [FK_dbo.ResourceOrderItems_dbo.ResourceOrders_ResourceOrderId]
	
	ALTER TABLE [dbo].[ResourceOrders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrders_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[ResourceOrders] CHECK CONSTRAINT [FK_dbo.ResourceOrders_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[ResourceOrderSettings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderSettings_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ResourceOrderSettings] CHECK CONSTRAINT [FK_dbo.ResourceOrderSettings_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[ResourceOrderSettings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ResourceOrderSettings_dbo.PersonnelRoles_RoleAllowedToFulfilOrdersRoleId] FOREIGN KEY([RoleAllowedToFulfilOrdersRoleId])
	REFERENCES [dbo].[PersonnelRoles] ([PersonnelRoleId])
	
	ALTER TABLE [dbo].[ResourceOrderSettings] CHECK CONSTRAINT [FK_dbo.ResourceOrderSettings_dbo.PersonnelRoles_RoleAllowedToFulfilOrdersRoleId]
	
	ALTER TABLE [dbo].[ScheduledTaskLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ScheduledTaskLogs_dbo.ScheduledTasks_ScheduledTaskId] FOREIGN KEY([ScheduledTaskId])
	REFERENCES [dbo].[ScheduledTasks] ([ScheduledTaskId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ScheduledTaskLogs] CHECK CONSTRAINT [FK_dbo.ScheduledTaskLogs_dbo.ScheduledTasks_ScheduledTaskId]
	
	ALTER TABLE [dbo].[ShiftAdmins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftAdmins_dbo.Shifts_ShiftId] FOREIGN KEY([ShiftId])
	REFERENCES [dbo].[Shifts] ([ShiftId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftAdmins] CHECK CONSTRAINT [FK_dbo.ShiftAdmins_dbo.Shifts_ShiftId]
	
	ALTER TABLE [dbo].[ShiftDays]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftDays_dbo.Shifts_ShiftId] FOREIGN KEY([ShiftId])
	REFERENCES [dbo].[Shifts] ([ShiftId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftDays] CHECK CONSTRAINT [FK_dbo.ShiftDays_dbo.Shifts_ShiftId]
	
	ALTER TABLE [dbo].[ShiftGroupAssignments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftGroupAssignments_dbo.ShiftGroups_ShiftGroupId] FOREIGN KEY([ShiftGroupId])
	REFERENCES [dbo].[ShiftGroups] ([ShiftGroupId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftGroupAssignments] CHECK CONSTRAINT [FK_dbo.ShiftGroupAssignments_dbo.ShiftGroups_ShiftGroupId]
	
	ALTER TABLE [dbo].[ShiftGroupRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftGroupRoles_dbo.PersonnelRoles_PersonnelRoleId] FOREIGN KEY([PersonnelRoleId])
	REFERENCES [dbo].[PersonnelRoles] ([PersonnelRoleId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftGroupRoles] CHECK CONSTRAINT [FK_dbo.ShiftGroupRoles_dbo.PersonnelRoles_PersonnelRoleId]
	
	ALTER TABLE [dbo].[ShiftGroupRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftGroupRoles_dbo.ShiftGroups_ShiftGroupId] FOREIGN KEY([ShiftGroupId])
	REFERENCES [dbo].[ShiftGroups] ([ShiftGroupId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftGroupRoles] CHECK CONSTRAINT [FK_dbo.ShiftGroupRoles_dbo.ShiftGroups_ShiftGroupId]
	
	ALTER TABLE [dbo].[ShiftGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftGroups_dbo.DepartmentGroups_DepartmentGroupId] FOREIGN KEY([DepartmentGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[ShiftGroups] CHECK CONSTRAINT [FK_dbo.ShiftGroups_dbo.DepartmentGroups_DepartmentGroupId]
	
	ALTER TABLE [dbo].[ShiftGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftGroups_dbo.Shifts_ShiftId] FOREIGN KEY([ShiftId])
	REFERENCES [dbo].[Shifts] ([ShiftId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftGroups] CHECK CONSTRAINT [FK_dbo.ShiftGroups_dbo.Shifts_ShiftId]
	
	ALTER TABLE [dbo].[ShiftPersons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftPersons_dbo.DepartmentGroups_GroupId] FOREIGN KEY([GroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[ShiftPersons] CHECK CONSTRAINT [FK_dbo.ShiftPersons_dbo.DepartmentGroups_GroupId]
	
	ALTER TABLE [dbo].[ShiftPersons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftPersons_dbo.Shifts_ShiftId] FOREIGN KEY([ShiftId])
	REFERENCES [dbo].[Shifts] ([ShiftId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftPersons] CHECK CONSTRAINT [FK_dbo.ShiftPersons_dbo.Shifts_ShiftId]
	
	ALTER TABLE [dbo].[Shifts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Shifts_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Shifts] CHECK CONSTRAINT [FK_dbo.Shifts_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[ShiftSignups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignups_dbo.DepartmentGroups_DepartmentGroupId] FOREIGN KEY([DepartmentGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[ShiftSignups] CHECK CONSTRAINT [FK_dbo.ShiftSignups_dbo.DepartmentGroups_DepartmentGroupId]
	
	ALTER TABLE [dbo].[ShiftSignups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignups_dbo.Shifts_ShiftId] FOREIGN KEY([ShiftId])
	REFERENCES [dbo].[Shifts] ([ShiftId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftSignups] CHECK CONSTRAINT [FK_dbo.ShiftSignups_dbo.Shifts_ShiftId]
	
	ALTER TABLE [dbo].[ShiftSignupTrades]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignupTrades_dbo.ShiftSignups_SourceShiftSignupId] FOREIGN KEY([SourceShiftSignupId])
	REFERENCES [dbo].[ShiftSignups] ([ShiftSignupId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftSignupTrades] CHECK CONSTRAINT [FK_dbo.ShiftSignupTrades_dbo.ShiftSignups_SourceShiftSignupId]
	
	ALTER TABLE [dbo].[ShiftSignupTrades]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignupTrades_dbo.ShiftSignups_TargetShiftSignupId] FOREIGN KEY([TargetShiftSignupId])
	REFERENCES [dbo].[ShiftSignups] ([ShiftSignupId])
	
	ALTER TABLE [dbo].[ShiftSignupTrades] CHECK CONSTRAINT [FK_dbo.ShiftSignupTrades_dbo.ShiftSignups_TargetShiftSignupId]
	
	ALTER TABLE [dbo].[ShiftSignupTradeUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignupTradeUsers_dbo.ShiftSignupTrades_ShiftSignupTradeId] FOREIGN KEY([ShiftSignupTradeId])
	REFERENCES [dbo].[ShiftSignupTrades] ([ShiftSignupTradeId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftSignupTradeUsers] CHECK CONSTRAINT [FK_dbo.ShiftSignupTradeUsers_dbo.ShiftSignupTrades_ShiftSignupTradeId]
	
	ALTER TABLE [dbo].[ShiftSignupTradeUserShifts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignupTradeUserShifts_dbo.ShiftSignups_ShiftSignupId] FOREIGN KEY([ShiftSignupId])
	REFERENCES [dbo].[ShiftSignups] ([ShiftSignupId])
	
	ALTER TABLE [dbo].[ShiftSignupTradeUserShifts] CHECK CONSTRAINT [FK_dbo.ShiftSignupTradeUserShifts_dbo.ShiftSignups_ShiftSignupId]
	
	ALTER TABLE [dbo].[ShiftSignupTradeUserShifts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftSignupTradeUserShifts_dbo.ShiftSignupTradeUsers_ShiftSignupTradeUserId] FOREIGN KEY([ShiftSignupTradeUserId])
	REFERENCES [dbo].[ShiftSignupTradeUsers] ([ShiftSignupTradeUserId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftSignupTradeUserShifts] CHECK CONSTRAINT [FK_dbo.ShiftSignupTradeUserShifts_dbo.ShiftSignupTradeUsers_ShiftSignupTradeUserId]
	
	ALTER TABLE [dbo].[ShiftStaffingPersons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftStaffingPersons_dbo.DepartmentGroups_GroupId] FOREIGN KEY([GroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[ShiftStaffingPersons] CHECK CONSTRAINT [FK_dbo.ShiftStaffingPersons_dbo.DepartmentGroups_GroupId]
	
	ALTER TABLE [dbo].[ShiftStaffingPersons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftStaffingPersons_dbo.ShiftStaffings_ShiftStaffingId] FOREIGN KEY([ShiftStaffingId])
	REFERENCES [dbo].[ShiftStaffings] ([ShiftStaffingId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftStaffingPersons] CHECK CONSTRAINT [FK_dbo.ShiftStaffingPersons_dbo.ShiftStaffings_ShiftStaffingId]
	
	ALTER TABLE [dbo].[ShiftStaffings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftStaffings_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[ShiftStaffings] CHECK CONSTRAINT [FK_dbo.ShiftStaffings_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[ShiftStaffings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShiftStaffings_dbo.Shifts_ShiftId] FOREIGN KEY([ShiftId])
	REFERENCES [dbo].[Shifts] ([ShiftId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[ShiftStaffings] CHECK CONSTRAINT [FK_dbo.ShiftStaffings_dbo.Shifts_ShiftId]
	
	ALTER TABLE [dbo].[TrainingAttachments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingAttachments_dbo.Trainings_TrainingId] FOREIGN KEY([TrainingId])
	REFERENCES [dbo].[Trainings] ([TrainingId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[TrainingAttachments] CHECK CONSTRAINT [FK_dbo.TrainingAttachments_dbo.Trainings_TrainingId]
	
	ALTER TABLE [dbo].[TrainingQuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingQuestionAnswers_dbo.TrainingQuestions_TrainingQuestionId] FOREIGN KEY([TrainingQuestionId])
	REFERENCES [dbo].[TrainingQuestions] ([TrainingQuestionId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[TrainingQuestionAnswers] CHECK CONSTRAINT [FK_dbo.TrainingQuestionAnswers_dbo.TrainingQuestions_TrainingQuestionId]
	
	ALTER TABLE [dbo].[TrainingQuestions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingQuestions_dbo.Trainings_TrainingId] FOREIGN KEY([TrainingId])
	REFERENCES [dbo].[Trainings] ([TrainingId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[TrainingQuestions] CHECK CONSTRAINT [FK_dbo.TrainingQuestions_dbo.Trainings_TrainingId]
	
	ALTER TABLE [dbo].[Trainings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Trainings_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Trainings] CHECK CONSTRAINT [FK_dbo.Trainings_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[TrainingUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrainingUsers_dbo.Trainings_TrainingId] FOREIGN KEY([TrainingId])
	REFERENCES [dbo].[Trainings] ([TrainingId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[TrainingUsers] CHECK CONSTRAINT [FK_dbo.TrainingUsers_dbo.Trainings_TrainingId]
	
	ALTER TABLE [dbo].[UnitLocations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitLocations_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[UnitLocations] CHECK CONSTRAINT [FK_dbo.UnitLocations_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[UnitLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitLogs_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[UnitLogs] CHECK CONSTRAINT [FK_dbo.UnitLogs_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[UnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitRoles_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[UnitRoles] CHECK CONSTRAINT [FK_dbo.UnitRoles_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Units_dbo.DepartmentGroups_StationGroupId] FOREIGN KEY([StationGroupId])
	REFERENCES [dbo].[DepartmentGroups] ([DepartmentGroupId])
	
	ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [FK_dbo.Units_dbo.DepartmentGroups_StationGroupId]
	
	ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Units_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	
	ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [FK_dbo.Units_dbo.Departments_DepartmentId]
	
	ALTER TABLE [dbo].[UnitStateRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitStateRoles_dbo.UnitStates_UnitStateId] FOREIGN KEY([UnitStateId])
	REFERENCES [dbo].[UnitStates] ([UnitStateId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[UnitStateRoles] CHECK CONSTRAINT [FK_dbo.UnitStateRoles_dbo.UnitStates_UnitStateId]
	
	ALTER TABLE [dbo].[UnitStates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitStates_dbo.Units_UnitId] FOREIGN KEY([UnitId])
	REFERENCES [dbo].[Units] ([UnitId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[UnitStates] CHECK CONSTRAINT [FK_dbo.UnitStates_dbo.Units_UnitId]
	
	ALTER TABLE [dbo].[UnitTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UnitTypes_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
	REFERENCES [dbo].[Departments] ([DepartmentId])
	ON DELETE CASCADE
	
	ALTER TABLE [dbo].[UnitTypes] CHECK CONSTRAINT [FK_dbo.UnitTypes_dbo.Departments_DepartmentId]
	
END
