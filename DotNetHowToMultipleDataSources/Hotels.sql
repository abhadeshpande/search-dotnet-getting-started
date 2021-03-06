ALTER DATABASE CURRENT
SET CHANGE_TRACKING = ON
(CHANGE_RETENTION = 2 DAYS, AUTO_CLEANUP = ON)

CREATE TABLE Hotels (
    [HotelId] nvarchar(450) NOT NULL PRIMARY KEY,
    [BaseRate] float NULL,
    [Category] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Description_fr] nvarchar(max) NULL,
    [HotelName] nvarchar(max) NULL,
    [Rating] int NULL,
    [SmokingAllowed] bit NULL,
)
GO

ALTER TABLE Hotels
ENABLE CHANGE_TRACKING
WITH (TRACK_COLUMNS_UPDATED = ON)

INSERT INTO Hotels (HotelId, BaseRate, Category, Description, description_fr, HotelName, Rating, SmokingAllowed)
VALUES (N'1', 199, N'Luxury', N'Best hotel in town', N'Meilleur hôtel en ville', N'Fancy Stay', 5, 0)

INSERT INTO Hotels (HotelId, BaseRate, Category, Description, description_fr, HotelName, Rating, SmokingAllowed)
VALUES (N'2', 79.99, N'Budget', N'Cheapest hotel in town', N'Hôtel le moins cher en ville', N'Roach Motel', 1, 1)

INSERT INTO Hotels (HotelId, BaseRate, Category, Description, description_fr, HotelName, Rating, SmokingAllowed)
VALUES (N'3', 129.99, NULL, N'Close to town hall and the river', NULL, NULL, NULL, NULL)
GO
