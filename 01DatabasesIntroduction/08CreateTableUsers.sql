CREATE TABLE Users (

Id BIGINT PRIMARY KEY IDENTITY(1, 1),
Username VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(MAX),
CHECK (DATALENGTH(ProfilePicture) <= 921600),
LastLongTime SMALLDATETIME,
IsDeleted BIT NOT NULL
)

INSERT INTO USers(Username, [Password], ProfilePicture, LastLongTime, IsDeleted) VALUES
('NENOVA', '123', NULL, NULL, 0),
('rouzi', '567', NULL, NULL, 1),
('rnenova', '67890', NULL, NULL, 0),
('ros', '56@', NULL, NULL, 0),
('university', 'stars', NULL, NULL, 0)