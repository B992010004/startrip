--create db  basic on default 

CREATE DATABASE startrip
GO

USE startrip
GO

DROP TABLE Reply
DROP TABLE Review

CREATE TABLE Review(
no int IDENTITY NOT NULL PRIMARY KEY,
articleID uniqueidentifier NOT NULL DEFAULT NEWID(),
hotelID int NOT NULL,
memberID varchar(32) NOT NULL,
lastname nvarchar(32),
updateTime datetime,
title nvarchar(32) NOT NULL,
content nvarchar(1000) NOT NULL,
tripType nvarchar(32),
stayed datetime,
overallRank int,
serviceRating int,
valueRating int,
roomsRating int,
roomTips nvarchar(32),
photo varchar(32),
video varchar(32),
fileName varchar(32),
thumbCount int
)
GO

CREATE TABLE Reply(
no int IDENTITY NOT NULL,
replyID uniqueidentifier NOT NULL DEFAULT NEWID(),
memberID varchar(32) NOT NULL,
lastname nvarchar(32),
articlePK int NOT NULL REFERENCES Review (no),
updateTime datetime,
content nvarchar(1000) NOT NULL,
photo varchar(32),
video varchar(32),
fileName varchar(32),
thumbCount int
)
GO

DROP TABLE mainphoto;
DROP TABLE photo;
DROP TABLE memberorder;
DROP TABLE orderstate;
DROP TABLE paymentmethod;
DROP TABLE facilitylist;
DROP TABLE servicelist;
DROP TABLE facilityname;
DROP TABLE servicename;
DROP TABLE photoname;
DROP TABLE singlenight;
DROP TABLE roomtype;
DROP TABLE hotels;
DROP TABLE advanceday;
DROP TABLE refund;

CREATE TABLE hotels(
hotelid INT IDENTITY NOT NULL  PRIMARY KEY,
hotelname VARCHAR(200),
hotelphone VARCHAR(200),
hotelstar INT,
hoteladdress VARCHAR(200),
hotelstate INT,
hotelinfo VARCHAR(8000),
hotelrulenote VARCHAR(8000),
lowestPrice INT
);
--refundid INT FOREIGN KEY REFERENCES refund(refundid),
--advancedayid INT FOREIGN KEY REFERENCES advanceday(advancedayid)


-- 插入花蓮飯店
INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('太魯閣晶英酒店 (Silks Place Taroko Hotel)', 038691155, '972花蓮縣秀林鄉天祥路18號', 5, '
如果您想尋找一家交通方便的花蓮縣住宿，那沒有比太魯閣晶英酒店更合適的選擇了。 這裡距離市中心僅50 km，離機場也不過60分鐘的路程。 住宿位於天祥, 太魯閣國家公園, 九曲洞的不遠處，旅客在旅遊觀光時大可不必大費周章。

太魯閣晶英酒店提供多種多樣的設施，令您在花蓮縣期間的旅程更豐富。 住宿提供的服務，包括所有房型皆附免費WiFi, 可代收包裹, 郵寄服務, 24小時前台服務, 配有無障礙協助設備。

5層樓的建築裡提供160間別緻客房，舒適的布置讓人有如家般的體驗。現代化的貼心設施，如平面電視, 地毯, 免費即溶咖啡, 免費茶包, 免費迎賓飲料，在特定的房型中提供，旅客可根據需求選擇最合適的房型。 住宿配備了瑜珈室, 熱水浴池, 健身房, 室外游泳池, 室内游泳池等娛樂設施，必定能讓您流連忘返。 入住太魯閣晶英酒店是來花蓮縣旅遊的明智選擇之一，飯店氣氛悠閒，遠離喧囂，非常適合放鬆身心。');

INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('遠雄悅來大飯店 (Farglory Hotel)', 038123900, '974花蓮縣壽豐鄉鹽寮村山嶺18號', 5, '
花蓮遠雄悅來大飯店依山傍海，視野遼闊，聳立在海拔220公尺海岸山脈北端，10多公頃的維多利亞式造景設施，置身悅來，湛藍的太平洋將隨手可得，碧綠的花東縱谷盡收眼底，山海交錯，秀麗天成，花蓮悅來，使近者悅，讓遠者來。');

INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('花蓮理想大地渡假飯店 (Promisedland Resort & Lagoon)', 038656789, '974花蓮縣壽豐鄉理想路1號', 5, '
理想大地這塊地，足足三百二十個地主，也就是有三百多張權狀，我一個人面對三百多人，前前後後買了三年才定案。從民國五十年，十八歲開始，用一千塊台幣和四個合夥人買了一部蹖床開始創業，一年之後因為理念不合各自離去，五十一年開始獨資，三年後開始經營『理想牌』，出產棒棒爐、彩色鍋、流理台，在當時台灣的廚具界連續十年佔有率高達55%，市佔率最高，後來賣給國泰公司，我就把所有的錢拿來買花蓮這塊土地。');

INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('美侖大飯店 (Parkview Hotel Hualien)', 038222111, '970花蓮縣花蓮市林園1-1號', 5, '
花蓮美侖大飯店位於四季分明，氣候宜人的花蓮市緊鄰綠草如茵的高爾夫球場，於是在規劃設計上以自然環境之保育及舒適健康的休閒型態為主要課題，花蓮美侖大飯店期望塑造成一都市型之休閒飯店。');

INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('福容大飯店 - 花蓮 (Fullon Hotel Hualien)', 038239988, '970花蓮縣花蓮市民生路51號', 5, '
花蓮遠雄悅來大飯店依山傍海，視野遼闊，聳立在海拔220公尺海岸山脈北端，10多公頃的維多利亞式造景設施，置身悅來，湛藍的太平洋將隨手可得，碧綠的花東縱谷盡收眼底，山海交錯，秀麗天成，花蓮悅來，使近者悅，讓遠者來。');

INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('花蓮翰品酒店 (Chateau de Chine Hotel Hualien)', 038235388, '970花蓮縣花蓮市永興路2號', 5, '
花蓮五星級親子渡假酒店，150坪「歡樂森林」遊戲空間，結合幾米繪本主題房、戶外泳池、遊戲沙坑、翔雲廳自助餐美食饗宴，創造花蓮渡假新美學');

INSERT INTO hotels(hotelname, hotelphone, hoteladdress, hotelstar, hotelinfo) 
values('山丘洋房親子民宿 (Bunny Hills Kids Bnb)', 0903329505, '970花蓮縣花蓮市佐倉街286號', 5, '
山丘洋房位在花蓮市區，開幕於2018年3月，是一棟獨立別墅庭園，戶外有寬敞的大草皮、戲水泳池，室內公共空間有兒童遊戲區、閱讀角、塗鴉牆、積木牆、娃娃屋以及超夢幻的玻璃屋決明子戲沙區。

民宿共有5間親子房型，分別是冒險家、烘焙家、探險家、夢想家與美食家，每間房內都有主題遊具，其中冒險家有刺激好玩的溜滑梯，其他房型內則是辦家家酒組或小帳篷。房內房外有的玩，每天早上10:00還有活潑的傑利叔叔帶活動，有DIY或是氣球時間，爸媽可趁此好好放鬆享受。

山丘洋房設計極具質感，不論是大廳或房內擺設都展現出低調奢華風格，房內有膠囊咖啡機、RO逆滲透冷熱水、TOTO免治馬桶等設備，提供嬰幼兒備品，第二天早餐放在漂亮的野餐籃裡送至房內享用，不用趕著幫小朋友換裝出門，早晨時光就讓這麼悠閒度過。');

