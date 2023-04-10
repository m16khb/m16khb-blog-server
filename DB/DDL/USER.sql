CREATE TABLE IF NOT EXISTS USER (
  _id                INT UNSIGNED        NOT NULL
                         AUTO_INCREMENT                                         COMMENT 'rowId',
  INS_DT             DATETIME            NOT NULL  DEFAULT CURRENT_TIMESTAMP    COMMENT '등록일',
  UDT_DT             DATETIME            NOT NULL  DEFAULT CURRENT_TIMESTAMP
                                                   ON UPDATE CURRENT_TIMESTAMP  COMMENT '수정일',
  DEL_DT             DATETIME            NULL                                   COMMENT '삭제일',                                               
  ID                 BINARY(16)          NOT NULL                               COMMENT '유저 ID',
  NAME               VARCHAR(10)         NOT NULL                               COMMENT '이름',
  MOBILE_NUM         VARCHAR(11)         NOT NULL                               COMMENT '휴대폰 번호',
  PRIMARY KEY USER_PK (_id),
  UNIQUE KEY USER_UK_ID (ID),
  INDEX USER_IX_NAME (NAME),
) 
ENGINE = INNODB
AUTO_INCREMENT = 1
COMMENT='유저'
;
