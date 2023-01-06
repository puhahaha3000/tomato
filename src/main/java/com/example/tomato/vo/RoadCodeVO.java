package com.example.tomato.vo;

import lombok.Data;

/*
-------------- -------- ------------ 
CODE           NOT NULL VARCHAR2(12) 
DONG_ID        NOT NULL VARCHAR2(2)  
ROAD_NAME               VARCHAR2(80) 
ROAD_ROMA               VARCHAR2(80) 
SIDO_NAME               VARCHAR2(20) 
SIDO_NAME_ROMA          VARCHAR2(40) 
SIGUNGU_NAME            VARCHAR2(20) 
SIGUNGU_ROMA            VARCHAR2(40) 
DONG_NAME               VARCHAR2(20) 
DONG_ROMA               VARCHAR2(40) 
DONG_FLAG               VARCHAR2(1)  
DONG_CODE               VARCHAR2(3)  
USE_FLAG                VARCHAR2(1)  
MODIFY_REASON           VARCHAR2(1)  
HISTORY                 VARCHAR2(14) 
NOTIFY_DATE             VARCHAR2(8)  
DELETE_DATE             VARCHAR2(8)
 */

@Data
public class RoadCodeVO {
	private String code;
	private String dongId;
	private String roadName;
	private String roadRoma;
	private String sidoName;
	private String sidoNameRoma;
	private String sigunguName;
	private String sigunguRoma;
	private String dongName;
	private String dongRoma;
	private String dongFlag;
	private String dongCode;
	private String useFlag;
	private String modifyReason;
	private String history;
	private String notifyDate;
	private String deleteDate;
}
