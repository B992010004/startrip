USE [startrip]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 2018/5/18 下午 05:36:51 ******/
DROP TABLE [dbo].[hotels]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 2018/5/18 下午 05:36:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[hotelid] [int] IDENTITY(1,1) NOT NULL,
	[hotelname] [varchar](200) NULL,
	[hotelphone] [varchar](200) NULL,
	[hotelstar] [int] NULL,
	[hoteladdress] [varchar](200) NULL,
	[hotelstate] [int] NULL,
	[hotelinfo] [varchar](8000) NULL,
	[hotelrulenote] [varchar](8000) NULL,
	[lowestPrice] [int] NULL,
	[hotelmanagerid] [int] NULL,
	[photoString] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[hotelid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[hotels] ON 

INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (1, N'太魯閣晶英酒店 (Silks Place Taroko Hotel)', N'38691155', 5, N'972花蓮縣秀林鄉天祥路18號', NULL, N'
如果您想尋找一家交通方便的花蓮縣住宿，那沒有比太魯閣晶英酒店更合適的選擇了。 這裡距離市中心僅50 km，離機場也不過60分鐘的路程。 住宿位於天祥, 太魯閣國家公園, 九曲洞的不遠處，旅客在旅遊觀光時大可不必大費周章。

太魯閣晶英酒店提供多種多樣的設施，令您在花蓮縣期間的旅程更豐富。 住宿提供的服務，包括所有房型皆附免費WiFi, 可代收包裹, 郵寄服務, 24小時前台服務, 配有無障礙協助設備。

5層樓的建築裡提供160間別緻客房，舒適的布置讓人有如家般的體驗。現代化的貼心設施，如平面電視, 地毯, 免費即溶咖啡, 免費茶包, 免費迎賓飲料，在特定的房型中提供，旅客可根據需求選擇最合適的房型。 住宿配備了瑜珈室, 熱水浴池, 健身房, 室外游泳池, 室?游泳池等娛樂設施，必定能讓您流連忘返。 入住太魯閣晶英酒店是來花蓮縣旅遊的明智選擇之一，飯店氣氛悠閒，遠離喧囂，非常適合放鬆身心。', NULL, 12457, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (2, N'遠雄悅來大飯店 (Farglory Hotel)', N'38123900', 5, N'974花蓮縣壽豐鄉鹽寮村山嶺18號', NULL, N'
花蓮遠雄悅來大飯店依山傍海，視野遼闊，聳立在海拔220公尺海岸山脈北端，10多公頃的維多利亞式造景設施，置身悅來，湛藍的太平洋將隨手可得，碧綠的花東縱谷盡收眼底，山海交錯，秀麗天成，花蓮悅來，使近者悅，讓遠者來。', NULL, 3934, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (3, N'花蓮理想大地渡假飯店 (Promisedland Resort & Lagoon)', N'38656789', 5, N'974花蓮縣壽豐鄉理想路1號', NULL, N'
理想大地這塊地，足足三百二十個地主，也就是有三百多張權狀，我一個人面對三百多人，前前後後買了三年才定案。從民國五十年，十八歲開始，用一千塊台幣和四個合夥人買了一部蹖床開始創業，一年之後因為理念不合各自離去，五十一年開始獨資，三年後開始經營『理想牌』，出產棒棒爐、彩色鍋、流理台，在當時台灣的廚具界連續十年佔有率高達55%，市佔率最高，後來賣給國泰公司，我就把所有的錢拿來買花蓮這塊土地。', NULL, 3391, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (4, N'美侖大飯店 (Parkview Hotel Hualien)', N'38222111', 5, N'970花蓮縣花蓮市林園1-1號', NULL, N'
花蓮美侖大飯店位於四季分明，氣候宜人的花蓮市緊鄰綠草如茵的高爾夫球場，於是在規劃設計上以自然環境之保育及舒適健康的休閒型態為主要課題，花蓮美侖大飯店期望塑造成一都市型之休閒飯店。', NULL, 1969, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (5, N'福容大飯店 - 花蓮 (Fullon Hotel Hualien)', N'38239988', 5, N'970花蓮縣花蓮市民生路51號', NULL, N'
花蓮遠雄悅來大飯店依山傍海，視野遼闊，聳立在海拔220公尺海岸山脈北端，10多公頃的維多利亞式造景設施，置身悅來，湛藍的太平洋將隨手可得，碧綠的花東縱谷盡收眼底，山海交錯，秀麗天成，花蓮悅來，使近者悅，讓遠者來。', NULL, 3714, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (6, N'花蓮翰品酒店 (Chateau de Chine Hotel Hualien)', N'38235388', 5, N'970花蓮縣花蓮市永興路2號', NULL, N'
花蓮五星級親子渡假酒店，150坪「歡樂森林」遊戲空間，結合幾米繪本主題房、戶外泳池、遊戲沙坑、翔雲廳自助餐美食饗宴，創造花蓮渡假新美學', NULL, 2022, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
INSERT [dbo].[hotels] ([hotelid], [hotelname], [hotelphone], [hotelstar], [hoteladdress], [hotelstate], [hotelinfo], [hotelrulenote], [lowestPrice], [hotelmanagerid], [photoString]) VALUES (7, N'山丘洋房親子民宿 (Bunny Hills Kids Bnb)', N'903329505', 5, N'970花蓮縣花蓮市佐倉街286號', NULL, N'
山丘洋房位在花蓮市區，開幕於2018年3月，是一棟獨立別墅庭園，戶外有寬敞的大草皮、戲水泳池，室內公共空間有兒童遊戲區、閱讀角、塗鴉牆、積木牆、娃娃屋以及超夢幻的玻璃屋決明子戲沙區。

民宿共有5間親子房型，分別是冒險家、烘焙家、探險家、夢想家與美食家，每間房內都有主題遊具，其中冒險家有刺激好玩的溜滑梯，其他房型內則是辦家家酒組或小帳篷。房內房外有的玩，每天早上10:00還有活潑的傑利叔叔帶活動，有DIY或是氣球時間，爸媽可趁此好好放鬆享受。

山丘洋房設計極具質感，不論是大廳或房內擺設都展現出低調奢華風格，房內有膠囊咖啡機、RO逆滲透冷熱水、TOTO免治馬桶等設備，提供嬰幼兒備品，第二天早餐放在漂亮的野餐籃裡送至房內享用，不用趕著幫小朋友換裝出門，早晨時光就讓這麼悠閒度過。', NULL, 5464, NULL, N'1.jpg;2.jpg;3.jpg;4.jpg;')
SET IDENTITY_INSERT [dbo].[hotels] OFF
