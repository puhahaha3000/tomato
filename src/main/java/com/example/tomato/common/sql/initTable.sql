BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE FAVORITE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE IMAGES';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE NOTICE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE QNAS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE REPORTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE REPORT_CATEGORY';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE AUTHORITIES';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE CHAT_ROOM';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE TRADE';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE TRADE_STATUS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE BOARD';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE ITEM_CATEGORY';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE MEMBERS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE ADDRESS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE NOTICE_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE MEMBER_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE IMAGE_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE TRADE_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE REPORT_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE BOARD_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE QNA_NO_SEQ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2289 THEN
            RAISE;
        END IF;
END;

CREATE TABLE notice
(
    no       number NOT NULL,
    board_no number NOT NULL
);

CREATE TABLE members
(
    no         number              NOT NULL,
    id         varchar2(60)        NOT NULL,
    address_no number              NOT NULL,
    password   varchar2(60)        NOT NULL,
    name       varchar2(60)        NOT NULL,
    tel        varchar2(20)        NOT NULL,
    email      varchar2(100)       NOT NULL,
    nickname   varchar2(60)        NOT NULL,
    del_flag   char(1) DEFAULT 'N' NOT NULL
);

CREATE TABLE images
(
    no        number         NOT NULL,
    trade_no  number         NOT NULL,
    thumbnail varchar2(1000) NOT NULL,
    photo     varchar2(1000) NOT NULL,
    orders    number         NOT NULL
);

CREATE TABLE trade
(
    no            number NOT NULL,
    board_no      number NOT NULL,
    item_category number NOT NULL,
    address_no    number NOT NULL,
    buyer_no      number NULL,
    status_no     number NOT NULL,
    price         number NOT NULL
);

CREATE TABLE item_category
(
    no   number        NOT NULL,
    name varchar2(100) NOT NULL
);

CREATE TABLE address
(
    no           number       not null,
    sido_name    varchar2(60) null,
    sigungu_name varchar2(60) null,
    dong_name    varchar2(60) null
);

CREATE TABLE authorities
(
    member_no number       NOT NULL,
    authority varchar2(50) NOT NULL
);

CREATE TABLE reports
(
    no            number                  NOT NULL,
    member_no     number                  NOT NULL,
    trade_no      number                  NOT NULL,
    category_no   number                  NOT NULL,
    content       varchar2(1000)          NULL,
    create_date   date    DEFAULT SYSDATE NOT NULL,
    complete_flag char(1) DEFAULT 'N'     NOT NULL
);

CREATE TABLE report_category
(
    no   number        NOT NULL,
    name varchar2(500) NOT NULL
);

CREATE TABLE chat_room
(
    no          number                  NOT NULL,
    trade_no    number                  NOT NULL,
    member_no   number                  NOT NULL,
    member_no2  number                  NOT NULL,
    create_date date    DEFAULT SYSDATE NOT NULL,
    open_flag   char(1) DEFAULT 'Y'     NOT NULL,
    file_url    varchar2(1000)          NOT NULL
);

CREATE TABLE favorite
(
    owner_no number NOT NULL,
    trade_no number NOT NULL
);

CREATE TABLE trade_status
(
    no   number       NOT NULL,
    name varchar2(30) NOT NULL
);

CREATE TABLE board
(
    no            number                  NOT NULL,
    member_no     number                  NOT NULL,
    title         varchar2(300)           NOT NULL,
    content       varchar2(3000)          NOT NULL,
    create_date   date    DEFAULT SYSDATE NOT NULL,
    modified_date date    DEFAULT SYSDATE NOT NULL,
    hit           number  DEFAULT 0       NOT NULL,
    del_flag      char(1) DEFAULT 'N'     NOT NULL
);

CREATE TABLE qnas
(
    no            number              NOT NULL,
    board_no      number              NOT NULL,
    hidden_flag   char(1)             NOT NULL,
    complete_flag char(1) DEFAULT 'N' NOT NULL
);

CREATE SEQUENCE NOTICE_NO_SEQ;
CREATE SEQUENCE MEMBER_NO_SEQ;
CREATE SEQUENCE IMAGE_NO_SEQ;
CREATE SEQUENCE TRADE_NO_SEQ;
CREATE SEQUENCE REPORT_NO_SEQ;
CREATE SEQUENCE BOARD_NO_SEQ;
CREATE SEQUENCE QNA_NO_SEQ;

ALTER TABLE notice
    ADD CONSTRAINT PK_NOTICE PRIMARY KEY (no);
ALTER TABLE members
    ADD CONSTRAINT PK_MEMBERS PRIMARY KEY (no);
ALTER TABLE images
    ADD CONSTRAINT PK_IMAGES PRIMARY KEY (no);
ALTER TABLE trade
    ADD CONSTRAINT PK_TRADE PRIMARY KEY (no);
ALTER TABLE item_category
    ADD CONSTRAINT PK_ITEM_CATEGORY PRIMARY KEY (no);
ALTER TABLE address
    ADD CONSTRAINT PK_ADDRESS PRIMARY KEY (no);
ALTER TABLE reports
    ADD CONSTRAINT PK_REPORTS PRIMARY KEY (no);
ALTER TABLE report_category
    ADD CONSTRAINT PK_REPORT_CATEGORY PRIMARY KEY (no);
ALTER TABLE chat_room
    ADD CONSTRAINT PK_CHAT_ROOM PRIMARY KEY (no);
ALTER TABLE trade_status
    ADD CONSTRAINT PK_TRADE_STATUS PRIMARY KEY (no);
ALTER TABLE board
    ADD CONSTRAINT PK_BOARD PRIMARY KEY (no);
ALTER TABLE qnas
    ADD CONSTRAINT PK_QNAS PRIMARY KEY (no);
ALTER TABLE notice
    ADD CONSTRAINT FK_board_TO_notice_1 FOREIGN KEY (board_no) REFERENCES board (no);
ALTER TABLE members
    ADD CONSTRAINT FK_address_TO_members_1 FOREIGN KEY (address_no) REFERENCES address (no);
ALTER TABLE images
    ADD CONSTRAINT FK_trade_TO_images_1 FOREIGN KEY (trade_no) REFERENCES trade (no);
ALTER TABLE trade
    ADD CONSTRAINT FK_board_TO_trade_1 FOREIGN KEY (board_no) REFERENCES board (no);
ALTER TABLE trade
    ADD CONSTRAINT FK_item_category_TO_trade_1 FOREIGN KEY (item_category) REFERENCES item_category (no);
ALTER TABLE trade
    ADD CONSTRAINT FK_address_TO_trade_1 FOREIGN KEY (address_no) REFERENCES address (no);
ALTER TABLE trade
    ADD CONSTRAINT FK_members_TO_trade_1 FOREIGN KEY (buyer_no) REFERENCES members (no);
ALTER TABLE trade
    ADD CONSTRAINT FK_trade_status_TO_trade_1 FOREIGN KEY (status_no) REFERENCES trade_status (no);
ALTER TABLE authorities
    ADD CONSTRAINT FK_members_TO_Authorities_1 FOREIGN KEY (member_no) REFERENCES members (no);
ALTER TABLE reports
    ADD CONSTRAINT FK_members_TO_reports_1 FOREIGN KEY (member_no) REFERENCES members (no);
ALTER TABLE reports
    ADD CONSTRAINT FK_trade_TO_reports_1 FOREIGN KEY (trade_no) REFERENCES trade (no);
ALTER TABLE reports
    ADD CONSTRAINT FK_category_TO_reports_1 FOREIGN KEY (category_no) REFERENCES report_category (no);
ALTER TABLE chat_room
    ADD CONSTRAINT FK_trade_TO_chat_room_1 FOREIGN KEY (trade_no) REFERENCES trade (no);
ALTER TABLE chat_room
    ADD CONSTRAINT FK_members_TO_chat_room_1 FOREIGN KEY (member_no) REFERENCES members (no);
ALTER TABLE chat_room
    ADD CONSTRAINT FK_members_TO_chat_room_2 FOREIGN KEY (member_no2) REFERENCES members (no);
ALTER TABLE favorite
    ADD CONSTRAINT FK_members_TO_Favorite_1 FOREIGN KEY (owner_no) REFERENCES members (no);
ALTER TABLE favorite
    ADD CONSTRAINT FK_trade_TO_Favorite_1 FOREIGN KEY (trade_no) REFERENCES trade (no);
ALTER TABLE board
    ADD CONSTRAINT FK_members_TO_board_1 FOREIGN KEY (member_no) REFERENCES members (no);
ALTER TABLE qnas
    ADD CONSTRAINT FK_board_TO_qnas_1 FOREIGN KEY (board_no) REFERENCES board (no);