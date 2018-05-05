USE startrip;

--DROP TABLE favorite;
--DROP TABLE advertisement;
--DROP TABLE comment;
DROP TABLE memberorder;
DROP TABLE orderstate;
DROP TABLE paymentmethod;
DROP TABLE rulelist;
DROP TABLE facilitylist;
DROP TABLE servicelist;
DROP TABLE advanceday;
DROP TABLE refund;
DROP TABLE facilityname;
DROP TABLE servicename;
DROP TABLE mainphoto;
DROP TABLE photo;
DROP TABLE photoname;
DROP TABLE singlenight;
DROP TABLE roomtype;
DROP TABLE roomstate;
DROP TABLE hotels;
DROP TABLE member;

CREATE TABLE member(
memberid INT IDENTITY NOT NULL PRIMARY KEY,
membername VARCHAR(30),
memberemail VARCHAR(50),
memberpassword VARCHAR(30),
memberphone INT
);
INSERT INTO member(membername,memberemail,memberpassword,memberphone) values('test','test@test.com','test',0123456789);

CREATE TABLE hotels(
hotelmanagerid INT FOREIGN KEY REFERENCES member(memberid),
hotelid INT IDENTITY NOT NULL  PRIMARY KEY,
hotelname VARCHAR(30),
hotelphone VARCHAR(20),
hotelstar INT,
hoteladdress VARCHAR(200),
hotelstate BIT,
hotelinfo VARCHAR(8000),
hotelrulenote VARCHAR(8000),
);

CREATE TABLE roomstate(
stateid INT NOT NULL PRIMARY KEY,
statename VARCHAR(30)
);

INSERT INTO roomstate(stateid,statename) values(1,'未開放');
INSERT INTO roomstate(stateid,statename) values(2,'已開放');
INSERT INTO roomstate(stateid,statename) values(3,'作廢');


CREATE TABLE roomtype(
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
roomstate INT FOREIGN KEY REFERENCES roomstate(stateid),
roomid INT IDENTITY NOT NULL PRIMARY KEY,
roomname VARCHAR(30),
numberofpeople INT,
numberofrooms INT,
opendate DATE,
enddate DATE,
);


CREATE TABLE singlenight(
checknumber INT IDENTITY NOT NULL PRIMARY KEY ,
roomid INT FOREIGN KEY REFERENCES roomtype(roomid),
roomnumber INT,
bookingdate DATE,
roomprice INT,
locked BIT
);

CREATE TABLE photoname(
photonameid INT IDENTITY NOT NULL PRIMARY KEY ,
photoname VARCHAR(50)
);

INSERT INTO photoname(photoname) values('外部');
INSERT INTO photoname(photoname) values('內部/公共空間');
INSERT INTO photoname(photoname) values('大廳');
INSERT INTO photoname(photoname) values('餐廳');
INSERT INTO photoname(photoname) values('休閒設施');
INSERT INTO photoname(photoname) values('房間');
INSERT INTO photoname(photoname) values('其他');

CREATE TABLE photo(
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
photonameid INT FOREIGN KEY REFERENCES photoname(photonameid),
photoid INT IDENTITY NOT NULL PRIMARY KEY,
photoepath VARCHAR(100),
-- yyyyMMdd + hotelid + serial number
photosorting INT,
);

CREATE TABLE mainphoto(
checknumber INT IDENTITY NOT NULL PRIMARY KEY,
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
roomid INT FOREIGN KEY REFERENCES roomtype(roomid),
photoid INT FOREIGN KEY REFERENCES photo(photoid),
UNIQUE (hotelid, roomid)
);

CREATE TABLE servicename(
serviceid INT IDENTITY NOT NULL PRIMARY KEY,
servicename VARCHAR(50)
);

INSERT INTO servicename(servicename) values('免費早餐');
INSERT INTO servicename(servicename) values('免費午餐');
INSERT INTO servicename(servicename) values('免費晚餐');
INSERT INTO servicename(servicename) values('公共WIFI');
INSERT INTO servicename(servicename) values('客房WIFI');
INSERT INTO servicename(servicename) values('網際網路');
INSERT INTO servicename(servicename) values('接送服務');

CREATE TABLE facilityname(
facilityid INT IDENTITY NOT NULL PRIMARY KEY,
facilityname VARCHAR(50)
);

INSERT INTO facilityname(facilityname) values('餐廳');
INSERT INTO facilityname(facilityname) values('停車場');
INSERT INTO facilityname(facilityname) values('游泳池');
INSERT INTO facilityname(facilityname) values('健身房');
INSERT INTO facilityname(facilityname) values('酒吧');
INSERT INTO facilityname(facilityname) values('水療');

CREATE TABLE servicelist(
serviceid INT FOREIGN KEY REFERENCES servicename(serviceid),
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
checknumber INT IDENTITY NOT NULL PRIMARY KEY,
roomid INT FOREIGN KEY REFERENCES roomtype(roomid),
-- if roomid = null, all rooms has this service.
);

CREATE TABLE facilitylist(
facilityid INT FOREIGN KEY REFERENCES facilityname(facilityid),
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
checknumber INT IDENTITY NOT NULL PRIMARY KEY,
roomid INT FOREIGN KEY REFERENCES roomtype(roomid),
-- if roomid = null, all rooms has this facility.
);

CREATE TABLE refund(
refundid INT NOT NULL PRIMARY KEY,
rulename VARCHAR(50)
);

INSERT INTO refund(refundid,rulename) values(0, '預設');
INSERT INTO refund(refundid,rulename) values(1, '嚴格 - 不可退款');
INSERT INTO refund(refundid,rulename) values(2, '寬鬆 - 入住 3 日前可退款');
INSERT INTO refund(refundid,rulename) values(3, '基本 - 入住 7 日前可退款');
INSERT INTO refund(refundid,rulename) values(4, '無限制');

CREATE TABLE advanceday(
advancedayid INT NOT NULL PRIMARY KEY,
advancedayname VARCHAR(50)
);

INSERT INTO advanceday(advancedayid,advancedayname) values(0, '預設');
INSERT INTO advanceday(advancedayid,advancedayname) values(1, '一個月內');
INSERT INTO advanceday(advancedayid,advancedayname) values(2, '三個月內');
INSERT INTO advanceday(advancedayid,advancedayname) values(3, '六個月內');
INSERT INTO advanceday(advancedayid,advancedayname) values(4, '一年內');
INSERT INTO advanceday(advancedayid,advancedayname) values(5, '無限制');

CREATE TABLE rulelist(
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
refundid INT FOREIGN KEY REFERENCES refund(refundid),
advancedayid INT FOREIGN KEY REFERENCES advanceday(advancedayid),
checknumber INT IDENTITY NOT NULL PRIMARY KEY,
roomid INT FOREIGN KEY REFERENCES roomtype(roomid),
-- if roomid = null, all rooms has this rule.
);

CREATE TABLE paymentmethod(
methodid INT NOT NULL PRIMARY KEY,
methodname VARCHAR(30)
);

INSERT INTO paymentmethod(methodid,methodname) values(1,'信用卡');
INSERT INTO paymentmethod(methodid,methodname) values(2,'歐付寶');

CREATE TABLE orderstate(
orderstateid INT NOT NULL PRIMARY KEY,
orderstatename VARCHAR(30)
);

INSERT INTO orderstate(orderstateid,orderstatename) values(1,'未付款');
INSERT INTO orderstate(orderstateid,orderstatename) values(2,'訂單成立');
INSERT INTO orderstate(orderstateid,orderstatename) values(3,'作廢');

CREATE TABLE memberorder(
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
orderstateid INT FOREIGN KEY REFERENCES orderstate(orderstateid),
memberid INT FOREIGN KEY REFERENCES member(memberid),
ordernumber BIGINT NOT NULL PRIMARY KEY,
-- yyyyMMdd + serial number 
orderdate DATE,
ordernote VARCHAR(8000),
paymentmethodid INT FOREIGN KEY REFERENCES paymentmethod(methodid),
totalamount INT,
singlenightprice VARCHAR(8000),
-- use string to record list.
checkin DATE,
checkout DATE,
);

/*
廢棄功能
CREATE TABLE comment(
ordernumber INT  NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES memberorder(ordernumber),
rate INT,
content VARCHAR(8000)
);
*/
/*
預定新增功能
CREATE TABLE favorite(
memberid INT FOREIGN KEY REFERENCES member(memberid),
hotelid  INT FOREIGN KEY REFERENCES hotels(hotelid),
PRIMARY KEY(memberid,hotelid)
);

CREATE TABLE advertisement(
hotelid INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES hotels(hotelid)
);
*/