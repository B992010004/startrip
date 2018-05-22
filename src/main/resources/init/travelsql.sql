USE [startrip]
GO
ALTER TABLE [dbo].[TravelView] DROP CONSTRAINT [FK__TravelVie__membe__0B9350C2]
GO
ALTER TABLE [dbo].[TravelPlan] DROP CONSTRAINT [FK__TravelPla__membe__0E6FBD6D]
GO
ALTER TABLE [dbo].[TravelList] DROP CONSTRAINT [FK__TravelLis__viewI__12404E51]
GO
ALTER TABLE [dbo].[TravelList] DROP CONSTRAINT [FK__TravelLis__trave__114C2A18]
GO
/****** Object:  Table [dbo].[TravelView]    Script Date: 2018/5/22 下午 05:35:45 ******/
DROP TABLE [dbo].[TravelView]
GO
/****** Object:  Table [dbo].[TravelPlan]    Script Date: 2018/5/22 下午 05:35:45 ******/
DROP TABLE [dbo].[TravelPlan]
GO
/****** Object:  Table [dbo].[TravelList]    Script Date: 2018/5/22 下午 05:35:45 ******/
DROP TABLE [dbo].[TravelList]
GO
/****** Object:  Table [dbo].[TravelList]    Script Date: 2018/5/22 下午 05:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelList](
	[listId] [int] IDENTITY(1,1) NOT NULL,
	[travelId] [int] NOT NULL,
	[viewId] [int] NOT NULL,
	[endTime] [varchar](255) NULL,
	[startTime] [varchar](255) NULL,
	[travelType] [varchar](255) NULL,
	[tripday] [int] NOT NULL,
	[state] [int] NOT NULL,
	[travelName] [varchar](255) NULL,
	[viewName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[listId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelPlan]    Script Date: 2018/5/22 下午 05:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPlan](
	[travelId] [int] IDENTITY(1,1) NOT NULL,
	[endDate] [date] NULL,
	[startDate] [date] NULL,
	[travelDays] [int] NOT NULL,
	[travelName] [varchar](255) NULL,
	[img] [varchar](255) NULL,
	[state] [int] NOT NULL,
	[memberId] [int] NOT NULL,
	[mail] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[travelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelView]    Script Date: 2018/5/22 下午 05:35:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelView](
	[viewid] [int] IDENTITY(1,1) NOT NULL,
	[viewName] [varchar](255) NULL,
	[imgName] [varchar](max) NULL,
	[website] [varchar](255) NULL,
	[viewaddr] [varchar](255) NULL,
	[viewPhone] [varchar](255) NULL,
	[viewDetail] [varchar](255) NULL,
	[latlng] [varchar](255) NULL,
	[viewcount] [int] NULL,
	[tdate] [date] NULL,
	[memberId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[viewid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TravelList] ON 

INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (108, 1, 4, N'02:00', N'01:00', N'花蓮', 1, 1, N'food', N'bear two寶慶遠東專櫃4樓')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (109, 1, 19, N'05:08', N'03:28', N'花蓮', 1, 0, N'food', N'6星集足體養身會館')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (110, 1, 23, N'05:56', N'04:56', N'花蓮', 1, 0, N'food', N'6星集足體養生會館')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (111, 1, 19, N'05:08', N'03:28', N'花蓮', 1, 0, N'food', N'6星集足體養身會館')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (112, 1, 23, N'05:56', N'04:56', N'花蓮', 1, 0, N'food', N'6星集足體養生會館')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (113, 1, 19, N'05:08', N'03:28', N'花蓮', 1, 0, N'food', N'6星集足體養身會館')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (114, 1, 24, N'03:54', N'02:14', N'花蓮', 1, 1, N'food', N'6星集足體養身會館 民權會館')
INSERT [dbo].[TravelList] ([listId], [travelId], [viewId], [endTime], [startTime], [travelType], [tripday], [state], [travelName], [viewName]) VALUES (115, 1, 25, N'05:44', N'04:04', N'花蓮', 1, 0, N'food', N'6星集足體養生會館(八德會館)')
SET IDENTITY_INSERT [dbo].[TravelList] OFF
SET IDENTITY_INSERT [dbo].[TravelPlan] ON 

INSERT [dbo].[TravelPlan] ([travelId], [endDate], [startDate], [travelDays], [travelName], [img], [state], [memberId], [mail]) VALUES (1, CAST(N'2015-02-08' AS Date), CAST(N'2015-02-05' AS Date), 3, N'花蓮', N'1.jpg', 1, 1, NULL)
INSERT [dbo].[TravelPlan] ([travelId], [endDate], [startDate], [travelDays], [travelName], [img], [state], [memberId], [mail]) VALUES (2, CAST(N'2015-02-21' AS Date), CAST(N'2015-02-07' AS Date), 14, N'台北', N'2.jpg', 1, 1, NULL)
INSERT [dbo].[TravelPlan] ([travelId], [endDate], [startDate], [travelDays], [travelName], [img], [state], [memberId], [mail]) VALUES (3, CAST(N'2015-02-21' AS Date), CAST(N'2015-02-07' AS Date), 14, N'台北', N'3.jpg', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[TravelPlan] OFF
SET IDENTITY_INSERT [dbo].[TravelView] ON 

INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (1, N'東區正老牌關東煮', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAACsvU8TBD1uozASGfpGXDGGd3mnduVyedmcRJ38IxhXCrvasg8DdClrJsozWTvn8ghE_m6j4WE3l06qHmHFp002CAG6M9ib35SdKVWeSaYF69KSkyaPXUK-D7B7ZdPae1EhAHGzIQ77HKRr48sXKq5jvhGhS4Plqlo75RS9k1KHJIlXW1CHb9gw&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=120876', NULL, N'106台灣台北市大安區仁愛路四段345巷4弄16號', NULL, NULL, N'25.038797, 121.55313769999998', NULL, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (2, N'小巴廊 4 4 G a l l e r y', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAA-JE4D9E9KSQ2FWbS5ae0eUYccWS4iVWkFFEO-7Mi_T8qt3q0jW0xQ94AoiKWO8MkSYZxitZe7pLAfEKdn71Jlk7BTRam0pTy0nP8hPQfy48jSkmNO-IuPbxhVYK-OJJDEhA3b6Hp8Tse79n4sMwfibF2GhQsVUQEwBGKoXWLdVPypJ9PU_KYGQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=85607', N'null', N'建國南路一段202號, 大安區台北市台灣 106', N'null', NULL, N'25.0398647, 121.53731249999998', 42, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (3, N'武昌誠品4樓 CABRON', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAArsMs055nHLGP8-vC2zZYYQfAsU0cSqEIeUHBjYpy9RsXm_wo9yz80HbJQvd4yDKBYeULpJfN3DBbTjBgin-Sx-AHt_AgoBh8bI1nWh4y8drboHmdn5dg2t3dkWCCKJVTEhCwPMtCJOJ76wMmpn1Q53vVGhTiyiUS1u9CTqUe3StFUXj607ZmDA&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=72530', N'null', N'77號 4樓, Vanhua, 武昌街二段台灣 108', N'null', NULL, N'25.0452968, 121.5057746', 7, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (4, N'bear two寶慶遠東專櫃4樓', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAA3vttcT2zq3IcpMuIbIg3DMBzDCwCDBmEvuWhDIIcaQttdd_NblI_Tgxo5PldpQCvMB4jErjslhTFFdJIeYyliE6doLDo5VdHl4fjYj1cCjIRaP4LEOwPsLDKtIBgyhpqEhAouFJUAf-qw2iTOCEy-DC-GhRBMHf-9Xn9pOv7ZVbhuqHqWEvcHg&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=29621', N'null', N'100台灣中正區台北市寶慶路32號4樓', N'null', NULL, N'25.0415964, 121.50907789999997', 35, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (5, N'明洞館', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAApJNSA7t0BxBZzAXjLD_oGe2O0DN8uAeqe24vEQho6OJIsvwLehsgxWtc6SxmeahQ48DrITk5fb4PmSOGlRd24DB7N_OofRfP0TpgStNZPvyiQDSeogUuGMzZMcMc1N3MEhAYaFJhAVbJ64emfqpEV8ahGhS_KAatFROwtI5aFRMy29GrRTPVzg&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=67079', N'null', N'106台灣台北市大安區復興南路一段107巷5弄4號', N'null', NULL, N'25.044024, 121.54463780000003', 2, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (6, N'花蓮賞鯨旅遊中心', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAA63Q8Pk7Nk-LiXBHjhF09r1cdXTchoxqd8b-2xV5DqrZ3hsLqxBcnii-rSaoYrG0HIpVSquZXm9kZI2FMvB1PvSerqspklZJrevmIaO_tMBNRO4T5_B1wvh8aKvMBIo4sEhAI9sJ4K3Vg5zvKVw17irNKGhQwEgtIes6sn3r_mQSsGVtRAv1wyw&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=95017', N'null', N'97064台灣花蓮縣花蓮市港濱路35-1號', N'null', NULL, N'23.998699, 121.64077099999997', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (7, N'花蓮港景觀橋', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAjVeJyz3E9ai2SoP325NvXjM3xdUEfqs1Yr27INnz8lUC_Kg_nD_FkP9TsKLXDD9XR1l4Gl5I9az4elNZvWvC3JvO39VuTEFzlKbqEC51dxgk_eJ2lv-JedVxFHb2LSfZEhD8TW8OpktbR5z1P7CH8mpfGhSnUZ40C6ZzqVmOMBzSBfn8-12PrA&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=91190', N'null', N'970台灣花蓮縣花蓮市港口路8號', N'null', NULL, N'23.9926831, 121.63591440000005', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (8, N'石藝大街', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAA_-lbK8WDh26Z_rn6uUj9ZFpo3gzHXmK-4Rtbig_CH7LuONXDLxHtthZgWAtLwOiEsI-yKXIA1s1-yU9EYkkoKU8fL65azoyuLdnCyquecZ8GAnhdvAjJNrXSfZuGeI62EhBS3m9T16jAQQCPVDTj2fQfGhRw1EJ4j0iiXh15jnSIrYeQsCiEqQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=32776', N'null', N'970台灣花蓮縣花蓮市廣東街326號', N'null', NULL, N'23.972942, 121.60958099999993', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (9, N'宜家燒仙草(10月底～4月底）', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAmto9t4BJuByljCdzo-elHM8oei_e6pOD1iujVM2kzqmqK8BQququzFaz4h5lQoBnhZ6aSFolj_brxr3jnNtyDUGfqxfjQAQ1gyD-7CKpPgrH4aEd0M-EitzcAfR30ClwEhAryrqFxXykisxf9xNrRwS1GhSw_NFjwtmvf-8T3v1G12MuwjAMIg&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=101258', N'null', N'970台灣花蓮縣花蓮市建國路二段440號', N'null', NULL, N'23.9932491, 121.57426680000003', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (10, N'DOUBLE 4', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAfP9vVXyLR32pzrPzlQqkCHAfQZeW4pdj-rYWiHWntDD4m6S5ofAqc4UPrv10J465ag8FkJqot0lmb9NblBGqRayuxp54QLVRltv5zq7N8km3dZ_jVcMjXu1i_j4wJ7bdEhAqE3wHl4M82ciDfkZSrGBvGhRvjo2HPbtHCEtCcQx5VfCL2xKjyQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=90928', N'null', N'106台灣台北市大安區師大路49巷', N'null', NULL, N'25.0241775, 121.52910359999998', 16, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (11, N'7-ELEVEN', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAA3GU3MZdRDPLJCJpoAnc4HM_826eW8Igq1gWMGkEn8wknr1gYiRLUVZyGOM-Sm4i4Wxvru9Pq6px8hzWqL9bO4OFQRT3ysDnDJd-DJeNeS_3Yb3gS6anpz6cEddcCyicxEhDtVu06fzZzoQRPzvm3tdyMGhRamHZ8Nq_DatA4FoH9kbv4VLCmNQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=33389', N'null', N'106台灣台北市大安區永康街2巷12號', N'null', NULL, N'25.0331617, 121.52921779999997', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (12, N'7-ELEVEN 鑫華福門市', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAH7pbWUuRLNuS0KKthFXwXjnEEhlPxIOS7-LwDGjnIB3zLUSkh4898VrpCAScamEINNfqn2aTzTgfTSKu0y1tpkXvhH4FfcpgHmr_n9J58u_TZ2nsFqQk2xvMkW1CwwyjEhDR3_n_U4W6QemZfy0MBfPEGhQg1s3odHJFWTNmYshjXyt7AsMZkg&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=124218', N'null', N'100台灣台北市中正區懷寧街30號', N'null', NULL, N'25.0453802, 121.51402770000004', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (13, N'浮華四季', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAnDpX1px19cYf_Nby3jr0mH-7vlQIvoNvPZthwJi_1xSag63RyTUAo-LJP_oAKeWISnPnprKlKCxWbloEHD2HYjNOvyjtDtYprOlaFk3f3krGyVF5pSpIypdjWmjyXmaxEhBXQkEv0N1C8_5NkoUEMMzrGhQEmW-nRP54qV2Yj5-eZ381vlfKcQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=15898', N'null', N'265台灣宜蘭縣羅東鎮中山西街7號', N'null', NULL, N'24.67452, 121.77007500000002', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (14, N'蛋舖～線上轉蛋就素快！《萬年大樓4樓之30號店舖 扭蛋(轉蛋)專賣店》', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAATzAXgEt5nSc5p1y40hzbxI_dsgL64Rrag4QrgWncq92wR9zadb78S1UBA-R48qqStSR8Q-SV8NPAH3qea4Z_fvFEGUfKwp0oSQR8_lRaIiy-lbmjAxPGDZJ74ljxP365EhAWkePEWMyCX9gD6jsktu8kGhSa3UV6YTgm-VOHwaqnS2QpAMWl3A&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=18814', N'null', N'10844台灣台北市萬華區西寧南路70號4樓之30號店舖（西門町萬年大樓4樓之30號店舖）', N'null', NULL, N'25.043533, 121.50591099999997', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (15, N'Amy''s cafe愛蜜絲', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAHZgKIcQe6Z3hRBOe00UvAxJCYBKrOnwGKvxsL-X-YJKv-kBewVYZwxTnmy9e6wwW2MevmxMEMaMOs1BjiTx2RcNBx6f94GPOVpc7CYwzwgGX1LSIeSkZ5OB_dc15AUEcEhDp1yY0Txr3C6mhOOdXsGKVGhTAcLz5vlEEH9VZVfRVmPWgS6LxaQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=11986', N'null', N'265台灣宜蘭縣羅東鎮20 中山路4段20巷', N'null', NULL, N'24.6747106, 121.76303570000005', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (16, N'靚紅樓港式飲茶', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAXSEpuM7IvNsiHcNScz5kbuLyXMNthm9nL41r-puwTeiDzIG2-ZK632LxpUfmA_d8XBokPtF0FGD17xFxYYIJDfEaT12qD07Q7TPn6wJcmrxaZCP1_4WMl5uN-4gzCMCwEhCxl2tHf4L2Yi2bXNkFVv5VGhSY25wQ_S3GNkKZtvapYaX0svD4Wg&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=57925', N'null', N'260台灣宜蘭縣宜蘭市民權路二段38巷6號4樓', N'null', NULL, N'24.754852, 121.75071100000002', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (17, N'慶城街1號', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAbaK5guPB4jxQ2t3kqHyGyPrvD4Tm10ajNLOE-JXgocm2VlpeN-sI1qI_kgruT9B213kI1MQkRVudyAWKm3SjhtxYq2HpqfoeCPyoPTv9UatzGUKtq7Pt4IAZwuqlOpabEhAlDp1ISbUyNM4wq6q4nZKqGhTItPdSmMYJyvJWm1V6ZGmhzG2-wA&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=8227', N'null', N'105台灣台北市松山區慶城街1號', N'null', NULL, N'25.0526511, 121.5445436', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (18, N'6號廣場', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAg32YyIJEWjVkLSrsHSi0hHbdzZoFy0rQOK1Dr1MTPaBzoYkNLLVUYeMTrHNqcEOWcula-nVIdKqSPzt2oditPy93DmfsbRKMCsUMkjUU6eEWTrAEbUpENO3PxYSOc3SeEhCIobmphAbpODukQ7O4Yn1kGhRpLu3ebOnIoYoc_5vQaJv3Y3_SqQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=42787', N'null', N'108台灣台北市萬華區峨眉街41號', N'null', NULL, N'25.043553, 121.507161', 3, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (19, N'6星集足體養身會館', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAtR405tnmn-jIH7zaOHiJVGab-2sSF8mHgRsL2-_2zK_lBJSTp4otDxQoDkTUyk5rw-nOJDdIa61nXZ-j7OX-SPHGU9dvf9OF7Gysz2TJsO83WSIArxT12TGcIiGaML5PEhCZy41CX7R8V8y8yy9bb9BpGhT3FmMTSFF8J-RFScYBUmTpr75AUg&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=45369', N'null', N'10491台灣台北市中山區長安東路一段61號號', N'null', NULL, N'25.0486907, 121.52703980000001', 4, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (20, N'5味臭臭鍋林森店', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAWtXvv_LXBGmken_mY7A-TDlHPu5ibMMqAVyJjFjUrKS3ZnesxfKEaCTZFcDGiKRfeekpOjMMuKwEsrrSwef_JqdUqNqKVlaK2SZjKUX0Ie9L6_0HJ8zeRl_2Piqv2dSIEhAWWlBcIzKnXGJ4YunQdruEGhQ06BGRp8WYYqnzM6ZC6G5ZPM1rzA&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=95106', N'null', N'10491台灣台北市中山區林森北路119巷50號', N'null', NULL, N'25.050275, 121.52687300000002', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (21, N'幸福5熊', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAGnbDy8S8Ix6d7-GQSYDEHs6cBxJvs0Cl8HUoTkMjkWaA-kgE19huTDumtTBWg1b7ED7BbOt2YAC5tF76FGSY3gfkiQgYEa9ZfVna7WVtAh6AxCRminiSMap6uNvzYby-EhC_KkRovAR8BESEXcUjJHFIGhQN3cjrVnmobrv4SSxiJkagMEt8bA&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=5030', N'null', N'100台灣台北市中正區泉州街4-1號', N'null', NULL, N'25.0292852, 121.5141969', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (22, N'5大唱片(台北忠孝店)', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAu1g_8ovXjINXo5KyT_uLSfGziE-Yj5rvWxmyfC73_DwL-mJ2-JCqWOdVe6115zBz6rwAX-LkWxX51lR4MucE3RqgiyjbrIZdY-mMHymD9aYLQVG9i02nBNShM_rl3loDEhB5hIT95yW14OY26XmG74CMGhRHIQMtGz_NkZ0Xd_hDFJYbyeIafQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=125181', N'null', N'106台灣台北市大安區忠孝東路四段71-1號', N'null', NULL, N'25.0417921, 121.54692299999999', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (23, N'6星集足體養生會館', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAArte-G_w3L3W1VXQxrInci2Mevj5S0NyfIhhKcrHvW4ETsVMcZ7xiTVTiGt2i423GPuY74ePGzBp6KOAEdrUVDcV5Qdh31MJm-fc2H7VTlIPVX0_ysVFzNgj05VcnWXXhEhBQ0BK875w-KSrt3sP_YH_NGhRV904uIgM-EiHz0ROe9PAZEH7avQ&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=104585', N'null', N'105台灣台北市松山區南京東路五段76號', N'null', NULL, N'25.0512281, 121.56114580000008', 2, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (24, N'6星集足體養身會館 民權會館', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAlBjr_bpKQW3FChjk1wn3PPryCJ0nF8aO553u1BN5g2byqLT4M-U37th5U_SN0X6R34R4gPma59JckTpfbmjwvef-THV_5mtN5Ze4vsxDKUp7MyW1ziYszACzdhqmNARCEhCTNovoe9Hdzqd7rIICnSeCGhQfGgjoa8TQYet9VOUbs2DzmV7jog&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=76730', N'null', N'10491台灣台北市中山區民權東路二段28號', N'null', NULL, N'25.0624046, 121.52903979999996', 1, NULL, 1)
INSERT [dbo].[TravelView] ([viewid], [viewName], [imgName], [website], [viewaddr], [viewPhone], [viewDetail], [latlng], [viewcount], [tdate], [memberId]) VALUES (25, N'6星集足體養生會館(八德會館)', N'https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sCmRaAAAAnKE-vECrbZ2SL_8amtpIlBsetPCaAhy8Ii-jPsjSUHLvIFQr3XARP2aJxlLYhMf8QOl_UrPoo37ntSbDnOqHTg6U7EsplnTrjUgfSbM5Tklm2imzga_zjqvvIzp6YuS3EhC06QqFr_-G6UviZPhu9qvUGhQ8qsF05vl85CWOtSXc8eL24Grfpw&3u100&4u100&5m1&2e1&key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&callback=none&token=85963', N'null', N'10491台灣台北市中山區八德路二段298號', N'null', NULL, N'25.0470067, 121.54212849999999', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[TravelView] OFF
ALTER TABLE [dbo].[TravelList]  WITH CHECK ADD FOREIGN KEY([travelId])
REFERENCES [dbo].[TravelPlan] ([travelId])
GO
ALTER TABLE [dbo].[TravelList]  WITH CHECK ADD FOREIGN KEY([viewId])
REFERENCES [dbo].[TravelView] ([viewid])
GO
ALTER TABLE [dbo].[TravelPlan]  WITH CHECK ADD FOREIGN KEY([memberId])
REFERENCES [dbo].[Membertable] ([memberid])
GO
ALTER TABLE [dbo].[TravelView]  WITH CHECK ADD FOREIGN KEY([memberId])
REFERENCES [dbo].[Membertable] ([memberid])
GO
