USE [startrip]
GO
/****** Object:  Table [dbo].[STATION]    Script Date: 2018/5/29 上午 10:12:41 ******/
DROP TABLE [dbo].[STATION]
GO
/****** Object:  Table [dbo].[STATION]    Script Date: 2018/5/29 上午 10:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATION](
	[stationId] [int] IDENTITY(1,1) NOT NULL,
	[area] [nchar](10) NULL,
	[stationName] [nchar](10) NULL,
	[Address] [nchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[STATION] ON 

INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (1, N'台北        ', N'台北車站      ', N'台北市中正區市民大道一段168號                                                                                    ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (2, N'台北        ', N'市府轉運站     ', N'台北市信義區忠孝東路五段6號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (3, N'台北        ', N'士林轉運站     ', N'臺北市士林區福德路1號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (4, N'台北        ', N'松山機場站     ', N'台北市松山區敦化北路340之9號                                                                                    ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (5, N'台北        ', N'南港轉運站     ', N'台北市南港區南港路一段313號                                                                                     ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (6, N'台北        ', N'捷運南港展覽館   ', N'台北市南港區經貿二路1號(163櫃)                                                                                  ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (7, N'台北        ', N'捷運圓山站     ', N'台北市大同區酒泉街9-1號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (8, N'新北        ', N'重陽站       ', N'新北市三重區重陽路四段53號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (9, N'新北        ', N'板橋客運站     ', N'新北市板橋區新站路66-1號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (10, N'桃園        ', N'林口站       ', N'桃園市龜山區文化二路32-16                                                                                     ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (11, N'新北        ', N'金山車站      ', N'新北市金山區中山路87號                                                                                        ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (12, N'桃園        ', N'桃園車站      ', N'復興路157號                                      桃園市復興路157號                                             ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (13, N'桃園        ', N'中壢車站      ', N'桃園市中壢區建國路100號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (14, N'桃園        ', N'中壢民族站     ', N'桃園市中壢區民族路二段170 號                                                                                    ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (15, N'桃園        ', N'桃園機場一航廈站  ', N'桃園市大園區航站南路15號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (16, N'桃園        ', N'桃園機場二航廈站  ', N'桃園市大園區航站南路9號1006室                                                                                   ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (17, N'新竹        ', N'新竹車站      ', N'新竹市東區東南街1巷6號                                                                                        ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (18, N'新竹        ', N'清大站       ', N'新竹市東區光復路二段99號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (19, N'新竹        ', N'竹東站       ', N'新竹縣竹東鎮東寧路1段275號                                                                                     ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (20, N'苗栗        ', N'頭份站       ', N'苗栗縣頭份鎮中正路206號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (21, N'苗栗        ', N'苗栗站       ', N'苗栗縣苗栗市上苗里為公路8號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (22, N'新竹        ', N'竹北高鐵      ', N'新竹縣竹北市高鐵七路6號                                                                                        ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (23, N'苗栗        ', N'苗栗站       ', N'苗栗市為公路1號                                                                                            ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (24, N'台中        ', N'台中轉運站     ', N'台中市東區新民街88號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (25, N'台中        ', N'水湳站       ', N'台中市北屯區中清路二段346號1樓                                                                                   ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (26, N'台中        ', N'朝馬車站      ', N'台中市西屯區朝富路8號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (27, N'南投        ', N'南投車站      ', N'南投縣南投市三和三路21號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (28, N'南投        ', N'草屯站       ', N'南投縣草屯鎮中興路61號                                                                                        ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (29, N'南投        ', N'中興站       ', N'南投縣南投市中興新村省府路36號                                                                                    ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (30, N'南投        ', N'埔里車站      ', N'南投縣埔里鎮中正路338號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (31, N'南投        ', N'日月潭       ', N'南投縣埔里鎮中正路338號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (32, N'彰化        ', N'彰化車站      ', N'彰化縣彰化市長樂里中正路1段531號                                                                                  ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (33, N'彰化        ', N'彰化站       ', N'彰化縣彰化市三民路1號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (34, N'彰化        ', N'員林站       ', N'彰化縣員林鎮靜修路52-1號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (35, N'彰化        ', N'明道大學      ', N'彰化縣埤頭鄉文化路369號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (36, N'嘉義        ', N'嘉義車站      ', N'嘉義縣嘉義市西區中興路1號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (37, N'雲林        ', N'西螺站       ', N'雲林縣西螺鎮中山路70號                                                                                        ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (38, N'嘉義        ', N'嘉義高鐵      ', N'嘉義縣太保市高鐵西路168號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (39, N'台南        ', N'台南車站      ', N'台南市北門路2段43號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (40, N'高雄        ', N'高雄車站      ', N'高雄市三民區建國二路306號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (41, N'高雄        ', N'中正站       ', N'高雄市苓雅區中正一路127號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (42, N'高雄        ', N'楠梓站       ', N'高雄市楠梓區楠陽路113號1F                                                                                     ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (43, N'高雄        ', N'台東站       ', N'台東縣台東市中山路408號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (44, N'屏東        ', N'屏東車站      ', N'屏東縣屏東市中山路3號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (45, N'屏東        ', N'枋寮站       ', N'屏東縣枋寮鄉中興路7號                                                                                         ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (46, N'屏東        ', N'九如站       ', N'屏東縣九如鄉東寧村九如路二段270號                                                                                  ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (47, N'屏東        ', N'麟洛站       ', N'屏東縣麟洛鄉中山路66-5號                                                                                      ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (48, N'屏東        ', N'車城站       ', N'宜蘭縣頭城鎮青雲路三段199號                                                                                     ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (49, N'宜蘭        ', N'宜蘭轉運站     ', N'宜蘭縣宜蘭市校舍路190號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (50, N'宜蘭        ', N'羅東轉運站     ', N'宜蘭縣羅東鎮傳藝路三段229號                                                                                     ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (51, N'花蓮        ', N'東華大學站     ', N'花蓮縣壽豐鄉大學路二段1號                                                                                       ')
INSERT [dbo].[STATION] ([stationId], [area], [stationName], [Address]) VALUES (1002, N'花蓮        ', N'花蓮車站      ', N'花蓮縣花蓮市國聯一路100號                                                                                      ')
SET IDENTITY_INSERT [dbo].[STATION] OFF
