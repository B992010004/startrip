USE startrip;

--DROP TABLE IF EXISTS favorite;
--DROP TABLE IF EXISTS advertisement;
--DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS memberorder;
DROP TABLE IF EXISTS orderstate;
DROP TABLE IF EXISTS paymentmethod;
DROP TABLE IF EXISTS rulelist;
DROP TABLE IF EXISTS facilitylist;
DROP TABLE IF EXISTS servicelist;
DROP TABLE IF EXISTS advanceday;
DROP TABLE IF EXISTS refund;
DROP TABLE IF EXISTS facilityname;
DROP TABLE IF EXISTS servicename;
DROP TABLE IF EXISTS mainphoto;
DROP TABLE IF EXISTS photo;
DROP TABLE IF EXISTS photoname;
DROP TABLE IF EXISTS singlenight;
DROP TABLE IF EXISTS roomtype;
DROP TABLE IF EXISTS roomstate;
DROP TABLE IF EXISTS hotels;
DROP TABLE IF EXISTS member;

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
hotelphone INT,
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

INSERT INTO roomstate(stateid,statename) values(1,'���}��');
INSERT INTO roomstate(stateid,statename) values(2,'�w�}��');
INSERT INTO roomstate(stateid,statename) values(3,'�@�o');


CREATE TABLE roomtype(
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
roomstate INT FOREIGN KEY REFERENCES roomstate(stateid),
roomid INT IDENTITY NOT NULL PRIMARY KEY,
roomname VARCHAR(30),
numberofpeople INT,
numberofrooms INT,
opendate DATE,
enddate DATE,
extrabed BIT,
extrabedprice FLOAT
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

INSERT INTO photoname(photoname) values('�~��');
INSERT INTO photoname(photoname) values('����/���@�Ŷ�');
INSERT INTO photoname(photoname) values('�j�U');
INSERT INTO photoname(photoname) values('�\�U');
INSERT INTO photoname(photoname) values('�𶢳]�I');
INSERT INTO photoname(photoname) values('�ж�');
INSERT INTO photoname(photoname) values('��L');

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

INSERT INTO servicename(servicename) values('�K�O���\');
INSERT INTO servicename(servicename) values('�K�O���\');
INSERT INTO servicename(servicename) values('�K�O���\');
INSERT INTO servicename(servicename) values('���@WIFI');
INSERT INTO servicename(servicename) values('�ȩ�WIFI');
INSERT INTO servicename(servicename) values('���ں���');

CREATE TABLE facilityname(
facilityid INT IDENTITY NOT NULL PRIMARY KEY,
facilityname VARCHAR(50)
);

INSERT INTO facilityname(facilityname) values('�\�U');
INSERT INTO facilityname(facilityname) values('������');
INSERT INTO facilityname(facilityname) values('��a��');
INSERT INTO facilityname(facilityname) values('������');
INSERT INTO facilityname(facilityname) values('���e�A��');
INSERT INTO facilityname(facilityname) values('�s�a');
INSERT INTO facilityname(facilityname) values('����');

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

INSERT INTO refund(refundid,rulename) values(0, '�w�]');
INSERT INTO refund(refundid,rulename) values(1, '�Y�� - ���i�h��');
INSERT INTO refund(refundid,rulename) values(2, '�e�P - �J�� 3 ��e�i�h��');
INSERT INTO refund(refundid,rulename) values(3, '�� - �J�� 7 ��e�i�h��');
INSERT INTO refund(refundid,rulename) values(4, '�L����');

CREATE TABLE advanceday(
advancedayid INT NOT NULL PRIMARY KEY,
advancedayname VARCHAR(50)
);

INSERT INTO advanceday(advancedayid,advancedayname) values(0, '�w�]');
INSERT INTO advanceday(advancedayid,advancedayname) values(1, '�@�Ӥ뤺');
INSERT INTO advanceday(advancedayid,advancedayname) values(2, '�T�Ӥ뤺');
INSERT INTO advanceday(advancedayid,advancedayname) values(3, '���Ӥ뤺');
INSERT INTO advanceday(advancedayid,advancedayname) values(4, '�@�~��');
INSERT INTO advanceday(advancedayid,advancedayname) values(5, '�L����');

CREATE TABLE rulelist(
hotelid INT FOREIGN KEY REFERENCES hotels(hotelid),
refundid INT FOREIGN KEY REFERENCES refund(refundid),
advancedayid INT FOREIGN KEY REFERENCES advanceday(advancedayid),
bookingdaysperorder VARCHAR(50),
checknumber INT IDENTITY NOT NULL PRIMARY KEY,
roomid INT FOREIGN KEY REFERENCES roomtype(roomid),
-- if roomid = null, all rooms has this rule.
);

CREATE TABLE paymentmethod(
methodid INT NOT NULL PRIMARY KEY,
methodname VARCHAR(30)
);

INSERT INTO paymentmethod(methodid,methodname) values(1,'�H�Υd');
INSERT INTO paymentmethod(methodid,methodname) values(2,'�ڥI�_');

CREATE TABLE orderstate(
orderstateid INT NOT NULL PRIMARY KEY,
orderstatename VARCHAR(30)
);

INSERT INTO orderstate(orderstateid,orderstatename) values(1,'���I��');
INSERT INTO orderstate(orderstateid,orderstatename) values(2,'�q�榨��');
INSERT INTO orderstate(orderstateid,orderstatename) values(3,'�@�o');

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
�o��\��
CREATE TABLE comment(
ordernumber INT  NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES memberorder(ordernumber),
rate INT,
content VARCHAR(8000)
);
*/
/*
�w�w�s�W�\��
CREATE TABLE favorite(
memberid INT FOREIGN KEY REFERENCES member(memberid),
hotelid  INT FOREIGN KEY REFERENCES hotels(hotelid),
PRIMARY KEY(memberid,hotelid)
);

CREATE TABLE advertisement(
hotelid INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES hotels(hotelid)
);
*/