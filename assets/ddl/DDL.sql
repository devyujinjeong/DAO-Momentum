-- 외래 키 제약 조건 무시
SET FOREIGN_KEY_CHECKS = 0;

-- 1. 기초 테이블
DROP TABLE IF EXISTS `status`;
DROP TABLE IF EXISTS `file`;

-- 2. 인적 사항 테이블
DROP TABLE IF EXISTS `company`;
DROP TABLE IF EXISTS `holiday`;
DROP TABLE IF EXISTS `ip_address`;
DROP TABLE IF EXISTS `employee_records`;
DROP TABLE IF EXISTS `user_role`;
DROP TABLE IF EXISTS `employee_roles`;
DROP TABLE IF EXISTS `contract`;
DROP TABLE IF EXISTS `employee`;
DROP TABLE IF EXISTS `department`;
DROP TABLE IF EXISTS `dept_head`;
DROP TABLE IF EXISTS `appoint`;
DROP TABLE IF EXISTS `position`;

-- 3. 결재 테이블
DROP TABLE IF EXISTS `approve`;
DROP TABLE IF EXISTS `approve_line`;
DROP TABLE IF EXISTS `approve_line_list`;
DROP TABLE IF EXISTS `approve_proposal`;
DROP TABLE IF EXISTS `approve_receipt`;
DROP TABLE IF EXISTS `approve_cancel`;
DROP TABLE IF EXISTS `approve_ref`;

-- 4. 근태 테이블
DROP TABLE IF EXISTS `work_type`;
DROP TABLE IF EXISTS `work`;
DROP TABLE IF EXISTS `work_correction`;
DROP TABLE IF EXISTS `vacation_type`;
DROP TABLE IF EXISTS `vacation`;
DROP TABLE IF EXISTS `remote_work`;
DROP TABLE IF EXISTS `overtime`;
DROP TABLE IF EXISTS `business_trip`;

-- 5. 평가 테이블
DROP TABLE IF EXISTS `eval_type`;
DROP TABLE IF EXISTS `eval_form`;
DROP TABLE IF EXISTS `eval_property`;
DROP TABLE IF EXISTS `eval_prompt`;
DROP TABLE IF EXISTS `eval_round`;
DROP TABLE IF EXISTS `eval_response`;
DROP TABLE IF EXISTS `eval_score`;

-- 6. 성과 테이블
DROP TABLE IF EXISTS `kpi`;

-- 7. 인사 분석 테이블
DROP TABLE IF EXISTS `hr_weight`;
DROP TABLE IF EXISTS `hr_rate`;
DROP TABLE IF EXISTS `hr_objection`;

-- 8. 근속 테이블
DROP TABLE IF EXISTS `retention_round`;
DROP TABLE IF EXISTS `retention_support`;
DROP TABLE IF EXISTS `retention_insight`;
DROP TABLE IF EXISTS `retention_contact`;

-- 9. 알림, 공지사항 테이블
DROP TABLE IF EXISTS `notification`;
DROP TABLE IF EXISTS `evaluation_notification_reservation` ;
DROP TABLE IF EXISTS `announcement`;

-- 외래 키 제약 조건 다시 활성화
SET FOREIGN_KEY_CHECKS = 1;



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 1. 기초 테이블 생성
    -- 상태 테이블 생성
CREATE TABLE IF NOT EXISTS `status` (
                                        `status_id`   INT           NOT NULL AUTO_INCREMENT COMMENT '상태 ID',
                                        `status_type` VARCHAR(30)   NOT NULL UNIQUE COMMENT '상태 유형',
    PRIMARY KEY (`status_id`)
    ) ENGINE=InnoDB
    DEFAULT CHARSET=utf8mb4
    COLLATE=utf8mb4_general_ci
    COMMENT='상태 코드 테이블';


-- 첨부파일 테이블 생성
CREATE TABLE `file` (
                        `attachment_id`     BIGINT              NOT NULL AUTO_INCREMENT COMMENT '첨부파일 ID',
                        `announcement_id`   BIGINT          DEFAULT NULL COMMENT '공지사항 ID',
                        `approve_id`        BIGINT          DEFAULT NULL COMMENT '결재 ID',
                        `contract_id`       BIGINT          DEFAULT NULL COMMENT '계약서 ID',
                        `name`         VARCHAR(255)     NOT NULL COMMENT '파일 이름',
                        `s3_key`               VARCHAR(255)    NOT NULL COMMENT 'S3 파일 KEY',
                        `type`              VARCHAR(255)     NOT NULL COMMENT '파일 형식 (PNG, CSV, XLSX, HWP, PDF, JPEG)',
                        PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
    COMMENT='공지, 결재, 계약서에 대한 첨부파일을 저장하는 테이블';




-- --------------------------------------------------------
-- --------------------------------------------------------



-- 2. 인적 사항 테이블 생성
-- 회사 테이블 생성
CREATE TABLE `company` (
                           `company_id`                    INT             NOT NULL AUTO_INCREMENT COMMENT '회사 ID',
                           `name`                          VARCHAR(30)     NOT NULL COMMENT '회사명',
                           `chairman`                      VARCHAR(30)     NOT NULL COMMENT '대표명',
                           `address`                       VARCHAR(255)    NOT NULL COMMENT '주소',
                           `contact`                       VARCHAR(30)     NOT NULL COMMENT '연락처',
                           `email`                         VARCHAR(30)     NOT NULL COMMENT '이메일',
                           `business_registration_number`  VARCHAR(255)    NOT NULL COMMENT '사업자등록번호',
                           `payment_day`                   INT             NOT NULL COMMENT '월급 지급일',
                           `establish_date`                DATE            NOT NULL COMMENT '설립일',
                           `work_start_time`               TIME            NOT NULL COMMENT '출근시간',
                           PRIMARY KEY (`company_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='회사 정보에 대한 정보를 담은 테이블';


-- 휴일 테이블 생성
CREATE TABLE `holiday` (
                           `holiday_id`    INT         NOT NULL AUTO_INCREMENT COMMENT '휴일 ID',
                           `holiday_name`  VARCHAR(30) NOT NULL COMMENT '휴일명',
                           `date`          DATE        NOT NULL COMMENT '날짜',
                           PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='휴일 정보에 대한 정보를 담은 테이블';


-- IP 주소 테이블 생성
CREATE TABLE `ip_address` (
                              `ip_address_id` INT             NOT NULL AUTO_INCREMENT COMMENT 'ip주소ID',
                              `ip_address`    VARCHAR(255)    NOT NULL COMMENT 'ip주소',
                              `ip_name`        VARCHAR(255)        NOT NULL,
                              PRIMARY KEY (`ip_address_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='ip 주소 정보를 담은 테이블';


-- 인사정보 테이블 생성
CREATE TABLE `employee_records` (
                                    `record_id`     BIGINT          NOT NULL AUTO_INCREMENT COMMENT '인사정보ID',
                                    `emp_id`        BIGINT          NOT NULL COMMENT '사원ID',
                                    `type`          ENUM('EDUCATION', 'CERTIFICATE', 'AWARD', 'CAREER') NOT NULL COMMENT '종류',
                                    `organization`  VARCHAR(255)    DEFAULT NULL COMMENT '기관',
                                    `start_date`    DATE            NOT NULL COMMENT '시작일',
                                    `end_date`      DATE            DEFAULT NULL COMMENT '종료일',
                                    `name`          VARCHAR(255)    DEFAULT NULL COMMENT '이름',
                                    PRIMARY KEY (`record_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='학력, 자격증, 경력, 수상기록 정보를 저장하는 테이블';


-- 권한 테이블 생성
CREATE TABLE `user_role` (
                             `user_role_id`        INT        NOT NULL,
                             `user_role_name`        VARCHAR(255)        NOT NULL  UNIQUE,
                             PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='사원 권한 정보를 저장하는 테이블';


-- 사원 권한 매핑 테이블 생성
CREATE TABLE `employee_roles` (
                                  `employee_roles_id` BIGINT  NOT NULL AUTO_INCREMENT COMMENT '사원 권한 ID',
                                  `emp_id`            BIGINT  NOT NULL COMMENT '사원ID',
                                  `user_role_id`      INT     NOT NULL COMMENT '권한ID',
                                  PRIMARY KEY (`employee_roles_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='사원과 권한의 다대다 관계를 매칭하기 위한 테이블';


-- 계약서 테이블 생성
CREATE TABLE `contract` (
                            `contract_id`   BIGINT          NOT NULL AUTO_INCREMENT COMMENT '계약서ID',
                            `emp_id`        BIGINT          NOT NULL COMMENT '사원ID',
                            `type`          ENUM('EMPLOYEE_AGREEMENT', 'SALARY_AGREEMENT') NOT NULL COMMENT '종류',
                            `salary`        DECIMAL(15,3)   DEFAULT NULL COMMENT '연봉',
                            `created_at`    DATETIME        NOT NULL COMMENT '등록일시',
                            PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='계약서 정보를 저장하는 테이블';


-- 사원 테이블 생성
CREATE TABLE `employee` (
                            `emp_id`                    BIGINT          NOT NULL AUTO_INCREMENT COMMENT '사원ID',
                            `emp_no`                    VARCHAR(30)     NOT NULL UNIQUE COMMENT '사번',
                            `email`	                    VARCHAR(320)    NOT NULL,
                            `dept_id`                   INT             DEFAULT NULL COMMENT '부서ID',
                            `position_id`               INT             NOT NULL COMMENT '직위ID',
                            `password`                  VARCHAR(255)    NOT NULL COMMENT '비밀번호',
                            `name`                      VARCHAR(30)     NOT NULL COMMENT '이름',
                            `gender`                    ENUM('M', 'F')  NOT NULL COMMENT '성별',
                            `address`                   VARCHAR(30)     NOT NULL COMMENT '주소',
                            `contact`                   VARCHAR(30)     NOT NULL COMMENT '연락처',
                            `join_date`                 DATE NOT        NULL COMMENT '입사일',
                            `status`                    ENUM('EMPLOYED', 'ON_LEAVE', 'RESIGNED') NOT NULL COMMENT '상태',
                            `created_at`                DATETIME        NOT NULL DEFAULT NOW() COMMENT '생성일시',
                            `updated_at`                DATETIME        DEFAULT NULL COMMENT '수정일시',
                            `remaining_dayoff_hours`    INT             NOT NULL COMMENT '잔여 연차 시간',
                            `remaining_refresh_days`    INT             NOT NULL COMMENT '잔여 리프레시 휴가일수',
                            `birth_date`                DATE            NOT NULL COMMENT '생년월일',
                            PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='사원 정보를 저장하는 테이블';


-- 부서 테이블 생성
CREATE TABLE `department` (
                              `dept_id`           INT             NOT NULL AUTO_INCREMENT COMMENT '부서ID',
                              `parent_dept_id`    INT             DEFAULT NULL COMMENT '상위부서ID',
                              `name`              VARCHAR(30)     NOT NULL COMMENT '부서명',
                              `contact`           VARCHAR(30)     NOT NULL COMMENT '부서연락처',
                              `created_at`        DATETIME        NOT NULL DEFAULT NOW() COMMENT '생성일시',
                              `updated_at`        DATETIME        NOT NULL COMMENT '수정일시',
                              `is_deleted`        ENUM('Y', 'N')  NOT NULL DEFAULT 'N' COMMENT '삭제여부',
                              PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='부서 정보를 저장하는 테이블';


-- 부서장 테이블 생성
CREATE TABLE `dept_head` (
                             `dept_head_id`  INT     NOT NULL AUTO_INCREMENT COMMENT '부서장ID',
                             `emp_id`        BIGINT  DEFAULT NULL COMMENT '사원ID',
                             `dept_id`       INT     NOT NULL COMMENT '부서ID',
                             PRIMARY KEY (`dept_head_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='부서의 부서장 정보를 저장하는 테이블';


-- 인사 발령 내역 테이블 생성
CREATE TABLE `appoint` (
                           `appoint_id`        BIGINT  NOT NULL AUTO_INCREMENT COMMENT '인사 발령ID',
                           `emp_id`            BIGINT  NOT NULL COMMENT '사원ID',
                           `before_position`   INT     NOT NULL COMMENT '이전 직위ID',
                           `after_position`    INT     NOT NULL COMMENT '현재 직위ID',
                           `before_department` INT     NULL COMMENT '발령전부서ID',
                           `after_department`  INT     NULL COMMENT '발령후부서ID',
                           `type`              ENUM('PROMOTION', 'DEPARTMENT_TRANSFER') NOT NULL COMMENT '발령종류',
                           `appoint_date`      DATE    NOT NULL COMMENT '발령일',
                           PRIMARY KEY (`appoint_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='인사 발령 내역을 저장하는 테이블이다.';


-- 직위 테이블 생성
CREATE TABLE `position` (
                            `position_id`   INT             NOT NULL AUTO_INCREMENT COMMENT '직위ID',
                            `name`          VARCHAR(30)     NOT NULL COMMENT '직위명',
                            `level`         INT             NOT NULL COMMENT '직위단계',
                            `is_deleted`    ENUM('Y', 'N')  NOT NULL COMMENT '삭제여부',
                            PRIMARY KEY (`position_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='직위 정보를 저장하는 테이블';




-- --------------------------------------------------------
-- --------------------------------------------------------



-- 3. 결재 테이블 생성
-- 결재 테이블 생성
CREATE TABLE `approve` (
                           `approve_id`            BIGINT          NOT NULL AUTO_INCREMENT COMMENT '결재 ID',
                           `parent_approve_id`     BIGINT          DEFAULT NULL COMMENT '상위 결재 ID',
                           `status_id`             INT             NOT NULL DEFAULT 1 COMMENT '상태 ID',
                           `emp_id`                BIGINT          DEFAULT NULL COMMENT '기안자 ID',
                           `approve_title`         VARCHAR(255)    NOT NULL COMMENT '결재 제목',
                           `approve_type`          ENUM('WORKCORRECTION', 'VACATION', 'BUSINESSTRIP', 'REMOTEWORK', 'OVERTIME', 'RECEIPT', 'PROPOSAL', 'CANCEL') NOT NULL COMMENT '결재 종류',
                           `create_at`             DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                           `complete_at`           DATETIME        DEFAULT NULL COMMENT '완료 일시',
                           `cancel_at`             DATETIME        DEFAULT NULL COMMENT '취소 일시',
                           PRIMARY KEY (`approve_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='결재 정보를 담고 있는 테이블';


-- 결재선 테이블 생성
CREATE TABLE `approve_line` (
                                `approve_line_id`       BIGINT      NOT NULL AUTO_INCREMENT COMMENT '결재선 ID',
                                `status_id`             INT         NOT NULL DEFAULT 1 COMMENT '상태 ID',
                                `approve_id`            BIGINT      NOT NULL COMMENT '결재 ID',
                                `approve_line_order`    INT         NOT NULL COMMENT '결재 단계',
                                `is_required_all`       ENUM('REQUIRED', 'OPTIONAL') NOT NULL DEFAULT 'REQUIRED' COMMENT '결재 종류 (필수/선택)',
                                `complete_at`           DATETIME    DEFAULT NULL COMMENT '완료 일시',
                                PRIMARY KEY (`approve_line_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='결재 단계별 그룹 및 승인 조건을 관리하는 테이블';


-- 결재자 목록 테이블 생성
CREATE TABLE `approve_line_list` (
                                     `approve_line_list_id`  BIGINT      NOT NULL AUTO_INCREMENT COMMENT '결재자 목록 ID',
                                     `approve_line_id`       BIGINT      NOT NULL COMMENT '결재선 ID',
                                     `status_id`             INT         NOT NULL DEFAULT 1 COMMENT '상태 ID',
                                     `emp_id`                BIGINT      NOT NULL COMMENT '결재자 ID',
                                     `complete_at`           DATETIME    DEFAULT NULL COMMENT '완료 일시',
                                     `reason`                TEXT        DEFAULT NULL COMMENT '사유',
                                     PRIMARY KEY (`approve_line_list_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='결재선에 포함된 결재자들의 상태 및 정보를 담는 테이블';


-- 품의 결재 테이블 생성
CREATE TABLE `approve_proposal` (
                                    `approve_proposal_id`   BIGINT  NOT NULL AUTO_INCREMENT COMMENT '품의 결재 ID',
                                    `approve_id`            BIGINT  NOT NULL COMMENT '결재 ID',
                                    `content`               TEXT    NOT NULL COMMENT '내용',
                                    PRIMARY KEY (`approve_proposal_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='품의 결재 내용 저장 테이블';


-- 영수증 결재 테이블 생성
CREATE TABLE `approve_receipt` (
                                   `approve_receipt_id`    BIGINT          NOT NULL AUTO_INCREMENT COMMENT '영수증 결재 ID',
                                   `approve_id`            BIGINT          NOT NULL COMMENT '결재 ID',
                                   `receipt_type`          ENUM('MEALEXPENSE', 'TRAVELEXPENSE', 'SUPPLYPURCHASE', 'MISCELLANEOUS') NOT NULL COMMENT '구분',
                                   `store_name`            VARCHAR(255)    NOT NULL COMMENT '거래 매장명',
                                   `address`         VARCHAR(255)    NOT NULL COMMENT '매장 주소',
                                   `amount`                INT             NOT NULL COMMENT '거래 금액',
                                   `used_at`               DATE		        NOT NULL COMMENT '거래 일시',
                                   PRIMARY KEY (`approve_receipt_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='영수증 결재 내용 저장 테이블';


-- 취소 결재 테이블 생성
CREATE TABLE `approve_cancel` (
                                  `approve_cancel_id`   BIGINT  NOT NULL AUTO_INCREMENT COMMENT '취소 결재 ID',
                                  `approve_id`          BIGINT  NOT NULL COMMENT '결재 ID',
                                  `cancel_reason`       TEXT    NOT NULL COMMENT '취소 사유',
                                  PRIMARY KEY (`approve_cancel_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='취소 결재 내용 저장 테이블';


-- 결재 참조자 정보 테이블 생성
CREATE TABLE `approve_ref` (
                               `approve_ref_id`    BIGINT          NOT NULL AUTO_INCREMENT COMMENT '참조 ID',
                               `approve_id`        BIGINT          NOT NULL COMMENT '결재 ID',
                               `emp_id`            BIGINT          NOT NULL COMMENT '참조 사원 ID',
                               `is_confirmed`      ENUM('Y', 'N')  NOT NULL COMMENT '참조 상태',
                               PRIMARY KEY (`approve_ref_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='결재 참조자 정보 및 상태 저장 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------

-- 4. 근태 테이블 생성
-- 근무 유형 테이블 생성
CREATE TABLE `work_type` (
                             `type_id`   INT         NOT NULL AUTO_INCREMENT COMMENT '유형 ID',
                             `type_name` VARCHAR(30) NOT NULL UNIQUE COMMENT '유형 이름',
                             `parent_type_id` INT    NULL            COMMENT '상위 유형ID',
                             PRIMARY KEY (`type_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='근무 유형에 대한 정보를 담은 테이블';


-- 출퇴근 내역 테이블 생성
CREATE TABLE `work` (
                        `work_id`           BIGINT          NOT NULL AUTO_INCREMENT COMMENT '출퇴근ID',
                        `emp_id`            BIGINT          NOT NULL COMMENT '사원ID',
                        `type_id`           INT             NOT NULL COMMENT '근무 유형ID',
                        `vacation_type_id`  INT             NULL COMMENT '휴가 유형ID',
                        `start_at`          DATETIME        NOT NULL COMMENT '출근일시',
                        `end_at`            DATETIME        NOT NULL COMMENT '퇴근일시',
                        `break_time`        INT             NOT NULL COMMENT '휴게시간',
                        `start_pushed_at`   DATETIME        DEFAULT NULL COMMENT '출근등록일시',
                        `end_pushed_at`     DATETIME        DEFAULT NULL COMMENT '퇴근등록일시',
                        `is_normal_work`    ENUM('Y', 'N')  DEFAULT NULL COMMENT '정상근무 여부',
                        PRIMARY KEY (`work_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='출퇴근 내역을 기록하는 테이블';


-- 출퇴근 정정 신청 내역 테이블 생성
CREATE TABLE `work_correction` (
                                   `work_correction_id`    BIGINT          NOT NULL AUTO_INCREMENT COMMENT '출퇴근 정정ID',
                                   `work_id`               BIGINT          NOT NULL COMMENT '출퇴근ID',
                                   `approve_id`            BIGINT          NOT NULL COMMENT '결재ID',
                                   `before_start_at`       DATETIME        NOT NULL COMMENT '기존 출근일시',
                                   `before_end_at`         DATETIME        NOT NULL COMMENT '기존 퇴근일시',
                                   `after_start_at`        DATETIME        NOT NULL COMMENT '수정 출근일시',
                                   `after_end_at`          DATETIME        NOT NULL COMMENT '수정 퇴근일시',
                                   `reason`                TEXT            NOT NULL COMMENT '정정 사유',
                                   PRIMARY KEY (`work_correction_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='출퇴근 정정 신청 내역을 기록하는 테이블';


-- 휴가 유형 테이블 생성
CREATE TABLE `vacation_type` (
                                 `vacation_type_id`  INT         NOT NULL AUTO_INCREMENT COMMENT '휴가 유형ID',
                                 `vacation_type`     VARCHAR(30) NOT NULL COMMENT '휴가 유형 (영문 코드)',
                                 `description`       VARCHAR(30) NOT NULL COMMENT '설명',
                                 PRIMARY KEY (`vacation_type_id`),
                                 UNIQUE KEY `UQ_vacation_type` (`vacation_type`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='휴가 유형을 관리하는 테이블';


-- 휴가 신청 내역 테이블 생성
CREATE TABLE `vacation` (
                            `vacation_id`       BIGINT          NOT NULL AUTO_INCREMENT COMMENT '휴가ID',
                            `vacation_type_id`  INT             NOT NULL COMMENT '휴가 유형ID',
                            `approve_id`        BIGINT          NOT NULL COMMENT '결재ID',
                            `start_date`        DATE            NOT NULL COMMENT '시작일',
                            `end_date`          DATE            NOT NULL COMMENT '종료일',
                            `reason`            TEXT            DEFAULT NULL COMMENT '휴가 사유',
                            PRIMARY KEY (`vacation_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='휴가 신청 내역을 기록하는 테이블';


-- 재택근무 신청 내역 테이블 생성
CREATE TABLE `remote_work` (
                               `remote_work_id`    BIGINT          NOT NULL AUTO_INCREMENT COMMENT '재택 근무ID',
                               `approve_id`        BIGINT          NOT NULL COMMENT '결재ID',
                               `start_date`        DATE            NOT NULL COMMENT '시작일',
                               `end_date`          DATE            NOT NULL COMMENT '종료일',
                               `reason`            TEXT            DEFAULT NULL COMMENT '사유',
                               PRIMARY KEY (`remote_work_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='재택근무 신청 내역을 기록하는 테이블';


-- 초과근무 신청 내역 테이블 생성
CREATE TABLE `overtime` (
                            `overtime_id`   BIGINT          NOT NULL AUTO_INCREMENT COMMENT '초과근무ID',
                            `approve_id`    BIGINT          NOT NULL COMMENT '결재ID',
                            `start_at`      DATETIME        NOT NULL COMMENT '시작일시',
                            `end_at`        DATETIME        NOT NULL COMMENT '종료일시',
                            `break_time`    INT             NOT NULL COMMENT '휴게시간',
                            `reason`        TEXT            NOT NULL COMMENT '초과근무 사유',
                            PRIMARY KEY (`overtime_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='초과근무 신청 내역을 기록하는 테이블';


-- 출장 신청 내역 테이블 생성
CREATE TABLE `business_trip` (
                                 `business_trip_id`  BIGINT          NOT NULL AUTO_INCREMENT COMMENT '출장ID',
                                 `approve_id`        BIGINT          NOT NULL COMMENT '결재ID',
                                 `type`              ENUM('DOMESTIC', 'INTERNATIONAL') NOT NULL COMMENT '출장 유형',
                                 `place`             VARCHAR(255)    NOT NULL COMMENT '장소',
                                 `start_date`        DATE            NOT NULL COMMENT '시작일',
                                 `end_date`          DATE            NOT NULL COMMENT '종료일',
                                 `reason`            TEXT    NOT NULL COMMENT '출장 사유',
                                 `cost`              INT             NOT NULL DEFAULT 0 COMMENT '예상경비',
                                 PRIMARY KEY (`business_trip_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='출장 신청 내역을 기록하는 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------



-- 5. 평가 테이블 생성
-- 다면 평가 유형 테이블 생성
CREATE TABLE `eval_type` (
                             `type_id`       INT             NOT NULL AUTO_INCREMENT COMMENT '평가 유형 ID',
                             `name`          VARCHAR(30)     NOT NULL COMMENT '유형 이름',
                             `description`   VARCHAR(255)    NOT NULL COMMENT '설명',
                             PRIMARY KEY (`type_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='동료평가, 직급 간 평가 등 평가 유형에 대한 정보를 담은 테이블';


-- 다면 평가 양식 테이블 생성
CREATE TABLE `eval_form` (
                             `form_id`       INT             NOT NULL AUTO_INCREMENT COMMENT '평가 양식 ID',
                             `type_id`       INT             NOT NULL COMMENT '평가 유형 ID',
                             `name`          VARCHAR(50)     NOT NULL COMMENT '평가 이름',
                             `description`   VARCHAR(50)     NOT NULL COMMENT '설명',
                             `is_active`     ENUM('Y', 'N')  NOT NULL DEFAULT 'Y' COMMENT '사용 여부',
                             PRIMARY KEY (`form_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='조직 평가 중 조직 몰입도 등 실제 시행하는 평가 정보를 담은 테이블';


-- 다면 평가 요인 테이블 생성
CREATE TABLE `eval_property` (
                                 `property_id`   INT             NOT NULL AUTO_INCREMENT COMMENT '평가 요인 ID',
                                 `form_id`       INT             NOT NULL COMMENT '평가 양식 ID',
                                 `name`          VARCHAR(30)     NOT NULL COMMENT '요인 이름',
                                 PRIMARY KEY (`property_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='평가에서 확인하는 요인 정보를 담은 테이블';


-- 다면 평가 지문 테이블 생성
CREATE TABLE `eval_prompt` (
                               `prompt_id`     INT             NOT NULL AUTO_INCREMENT COMMENT '지문 ID',
                               `property_id`   INT             NOT NULL COMMENT '평가 요인 ID',
                               `content`       VARCHAR(255)    NOT NULL COMMENT '문항',
                               `is_positive`   ENUM('Y', 'N')  NOT NULL DEFAULT 'Y' COMMENT '긍정문 여부',
                               PRIMARY KEY (`prompt_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='평가에서 실제로 제시되는 문항의 정보를 담은 테이블';


-- 다면 평가 회차 테이블 생성
CREATE TABLE `eval_round` (
                              `round_id`  INT     NOT NULL AUTO_INCREMENT COMMENT '회차 ID',
                              `round_no`  INT     NOT NULL COMMENT '회차 번호',
                              `start_at`  DATE    NOT NULL COMMENT '평가 시작일',
                              PRIMARY KEY (`round_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='평가가 진행된 회차에 대한 정보를 담은 테이블';


-- 평가 결과 테이블 생성
CREATE TABLE `eval_response` (
                                 `result_id`     BIGINT          NOT NULL AUTO_INCREMENT COMMENT '평가 결과 ID',
                                 `round_id`      INT             NOT NULL COMMENT '회차 ID',
                                 `form_id`       INT             DEFAULT NULL COMMENT '평가 양식 ID',
                                 `eval_id`       BIGINT          NOT NULL COMMENT '작성자 ID',
                                 `target_id`     BIGINT          DEFAULT NULL COMMENT '피 평가자 ID',
                                 `score`         INT             NOT NULL COMMENT '종합 점수',
                                 `reason`        VARCHAR(255)    DEFAULT NULL COMMENT '사유',
                                 `created_at`    DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                                 PRIMARY KEY (`result_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='제출된 평가의 평가 결과 정보를 담은 테이블';


-- 요인별 점수 테이블 생성
CREATE TABLE `eval_score` (
                              `score_id`      BIGINT  NOT NULL AUTO_INCREMENT COMMENT '요인별 점수 ID',
                              `property_id`   INT     NOT NULL COMMENT '평가 요인 ID',
                              `result_id`     BIGINT  NOT NULL COMMENT '평가 결과 ID',
                              `score`         INT     NOT NULL COMMENT '점수',
                              PRIMARY KEY (`score_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='평가에서 요인별 점수 정보를 담은 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------



-- 6. 성과 테이블 생성
-- 성과 KPI 테이블 생성
CREATE TABLE `kpi` (
                       `kpi_id`        BIGINT          NOT NULL AUTO_INCREMENT COMMENT 'KPI ID',
                       `emp_id`        BIGINT          NOT NULL COMMENT '사원 ID',
                       `status_id`     INT             NOT NULL COMMENT '상태 ID',
                       `goal`          VARCHAR(255)    NOT NULL COMMENT 'KPI 목표',
                       `goal_value`    INT             NOT NULL COMMENT 'KPI 목표치',
                       `kpi_progress`  INT             NOT NULL COMMENT 'KPI 진척도',
                       `progress_25`   VARCHAR(255)    NOT NULL COMMENT '25% 진척 기준',
                       `progress_50`   VARCHAR(255)    NOT NULL COMMENT '50% 진척 기준',
                       `progress_75`   VARCHAR(255)    NOT NULL COMMENT '75% 진척 기준',
                       `progress_100`  VARCHAR(255)    NOT NULL COMMENT '100% 진척 기준',
                       `created_at`    DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                       `deadline`      DATE            NOT NULL COMMENT '마감 기한',
                       `reason`        VARCHAR(255)    DEFAULT NULL COMMENT '처리 사유',
                       `c_reason`      VARCHAR(255)    DEFAULT NULL COMMENT '취소 신청 사유',
                       `c_response`    VARCHAR(255)    DEFAULT NULL COMMENT '취소 처리 사유',
                       `is_deleted`    ENUM('Y', 'N')  NOT NULL DEFAULT 'N' COMMENT '삭제 여부',
                       PRIMARY KEY (`kpi_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='성과 KPI 등록 및 진행 정보를 담은 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------



-- 7. 인사 분석 테이블 생성
-- 인사 가중치 테이블 생성
CREATE TABLE `hr_weight` (
                             `weight_id`     INT     NOT NULL AUTO_INCREMENT COMMENT '가중치 ID',
                             `round_id`      INT     NOT NULL COMMENT '회차 ID',
                             `perform_wt`    INT  NOT NULL COMMENT '업무 수행 역량 가중치',
                             `team_wt`       INT  NOT NULL COMMENT '협업 역량 가중치',
                             `attitude_wt`   INT  NOT NULL COMMENT '자기관리 및 태도 가중치',
                             `growth_wt`     INT  NOT NULL COMMENT '성장 의지 가중치',
                             `engagement_wt` INT  NOT NULL COMMENT '조직 기여도 가중치',
                             `result_wt`     INT  NOT NULL COMMENT 'KPI 성과관리 가중치',
                             PRIMARY KEY (`weight_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='인사 평가 시 각 항목의 가중치 비율 정보를 담은 테이블';


-- 인사 등급 비율 테이블 생성
CREATE TABLE `hr_rate` (
                           `rate_id`   INT     NOT NULL AUTO_INCREMENT COMMENT '등급 비율 ID',
                           `round_id`  INT     NOT NULL COMMENT '회차 ID',
                           `rate_s`    INT     NOT NULL COMMENT 'S 등급 비율',
                           `rate_a`    INT     NOT NULL COMMENT 'A 등급 비율',
                           `rate_b`    INT     NOT NULL COMMENT 'B 등급 비율',
                           `rate_c`    INT     NOT NULL COMMENT 'C 등급 비율',
                           `rate_d`    INT     NOT NULL COMMENT 'D 등급 비율',
                           PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='인사 평가 시 사원들의 등급 비율 정보를 저장하는 테이블';


-- 인사 평가 이의제기 테이블 생성
CREATE TABLE `hr_objection` (
                                `objection_id`  BIGINT          NOT NULL AUTO_INCREMENT COMMENT '이의 제기 ID',
                                `result_id`     BIGINT          NOT NULL COMMENT '인사 평가 ID',
                                `writer_id`     BIGINT          NOT NULL COMMENT '요청자 ID',
                                `status_id`     INT             NOT NULL COMMENT '상태 ID',
                                `reason`        VARCHAR(255)    NOT NULL COMMENT '이의 제기 사유',
                                `response`      VARCHAR(255)    DEFAULT NULL COMMENT '처리 사유',
                                `created_at`    DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                                `response_at`   DATETIME        DEFAULT NULL COMMENT '처리 일시',
                                `is_deleted`    ENUM('Y', 'N')  NOT NULL DEFAULT 'N' COMMENT '삭제 여부',
                                PRIMARY KEY (`objection_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='인사 평가 결과에 대한 이의제기 정보를 담은 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------



-- 8. 근속 테이블 생성
-- 근속 지원 회차 테이블 생성
CREATE TABLE `retention_round` (
                                   `round_id`  INT     NOT NULL AUTO_INCREMENT COMMENT '회차 ID',
                                   `round_no`  INT     NOT NULL COMMENT '회차 번호',
                                   `year`      INT     NOT NULL COMMENT '평가 년도',
                                   `month`     INT     NOT NULL COMMENT '평가 월',
                                   PRIMARY KEY (`round_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='근속 지원 분석이 진행된 회차의 정보를 담은 테이블';


-- 근속 지원 테이블 생성
CREATE TABLE `retention_support` (
                                     `retention_id`      BIGINT        NOT NULL AUTO_INCREMENT COMMENT '근속 지원 ID',
                                     `emp_id`            BIGINT        NOT NULL COMMENT '사원 ID',
                                     `round_id`          INT           NOT NULL COMMENT '회차 ID',
                                     `job_level`         INT           NOT NULL COMMENT '직무만족도',
                                     `comp_level`        INT           NOT NULL COMMENT '보상만족도',
                                     `relation_level`    INT           NOT NULL COMMENT '관계만족도',
                                     `growth_level`      INT           NOT NULL COMMENT '성장만족도',
                                     `tenure_level`      INT           NOT NULL COMMENT '근속 연수',
                                     `wlb_level`         INT           NOT NULL COMMENT '워라밸만족도',
                                     `retention_score`   DECIMAL(4,2)  NOT NULL COMMENT '근속 지수',
                                     `created_at`        DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                                     PRIMARY KEY (`retention_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='사원들의 근속 지수와 평가 항목별 점수를 담은 테이블';


-- 근속 전망 테이블 생성
CREATE TABLE `retention_insight` (
                                     `insight_id`        BIGINT      NOT NULL AUTO_INCREMENT COMMENT '근속 전망 ID',
                                     `dept_id`           INT         NOT NULL COMMENT '부서 ID',
                                     `position_id`     	INT         NOT NULL COMMENT '직위 ID',
                                     `round_id`          INT         NOT NULL COMMENT '회차 ID',
                                     `retention_score`   INT         NOT NULL COMMENT '평균 근속 지수',
                                     `emp_count`         INT         NOT NULL COMMENT '사원 수',
                                     `progress_20`       INT         NOT NULL COMMENT '20% 사원 비중',
                                     `progress_40`       INT         NOT NULL COMMENT '40% 사원 비중',
                                     `progress_60`       INT         NOT NULL COMMENT '60% 사원 비중',
                                     `progress_80`       INT         NOT NULL COMMENT '80% 사원 비중',
                                     `progress_100`      INT         NOT NULL COMMENT '100% 사원 비중',
                                     `created_at`        DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                                     PRIMARY KEY (`insight_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='사원들의 근속 전망 시각화를 위한 통계 정보를 담은 테이블';


-- 면담 기록 테이블 생성
CREATE TABLE `retention_contact` (
                                     `retention_id`  BIGINT      NOT NULL AUTO_INCREMENT COMMENT '면담 기록 ID',
                                     `target_id`     BIGINT      NOT NULL COMMENT '사원 ID',
                                     `manager_id`    BIGINT      NOT NULL COMMENT '상급자 ID',
                                     `writer_id`     BIGINT      NOT NULL COMMENT '요청자 ID',
                                     `reason`        TEXT        NOT NULL COMMENT '연락 사유',
                                     `created_at`    DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
                                     `response`      TEXT        DEFAULT NULL COMMENT '대응 보고',
                                     `response_at`   DATETIME    DEFAULT NULL COMMENT '대응 일시',
                                     `feedback`      TEXT        DEFAULT NULL COMMENT '인사 조치',
                                     `is_deleted` ENUM('Y', 'N') NOT NULL DEFAULT 'N' COMMENT '삭제 여부',
                                     PRIMARY KEY (`retention_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='근속 전망에 따른 면담 요청 및 대응 정보를 담은 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------



-- 9. 알림, 공지사항 테이블 생성

-- 알림 테이블 생성
CREATE TABLE `notification` (
                                `notification_id`           BIGINT          NOT NULL AUTO_INCREMENT COMMENT '알림 ID',
                                `emp_id`                    BIGINT          NOT NULL COMMENT '알림 수신 사원 ID',
                                `approve_id`                BIGINT          DEFAULT NULL COMMENT '결재 ID',
                                `contact_id`                BIGINT          DEFAULT NULL COMMENT '면담 기록 ID',
                                `content`                   VARCHAR(1024)     NOT NULL COMMENT '알림 내용',
                                `url`                       VARCHAR(255)    NOT NULL COMMENT '연결 URL',
                                `is_read`                   ENUM('Y', 'N')  NOT NULL DEFAULT 'N' COMMENT '읽음 여부 (Y: 읽음, N: 안읽음)',
                                `created_at`                DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '알림 생성일시',
                                PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='결재, 평가, 근속 지원에 대한 알림 내용을 저장하는 테이블';

-- 알림 예약 테이블 생성
CREATE TABLE `evaluation_notification_reservation` (
                                                       `id`              BIGINT           NOT NULL AUTO_INCREMENT COMMENT '예약 ID',
                                                       `type`            VARCHAR(50)      NOT NULL COMMENT '알림 유형 (EVALUATION_START, EVALUATION_END)',
                                                       `scheduled_date`  DATETIME         NOT NULL COMMENT '알림 발송 예정일',
                                                       `start_date`      DATETIME         NOT NULL COMMENT '평가 시작일',
                                                       `end_date`        DATETIME         NOT NULL COMMENT '평가 종료일',
                                                       `is_sent`         ENUM('Y', 'N')   NOT NULL DEFAULT 'N' COMMENT '발송 여부 (Y: 발송 완료, N: 대기)',
                                                       `sent_at`         DATETIME         DEFAULT NULL COMMENT '실제 발송 시각',
                                                       `created_at`      DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
                                                       `updated_at`      DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
                                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='평가 시작/종료 알림 예약 정보 테이블';


-- 공지사항 테이블 생성
CREATE TABLE `announcement` (
                                `announcement_id`   BIGINT          NOT NULL AUTO_INCREMENT COMMENT '공지사항 ID',
                                `emp_id`            BIGINT          NOT NULL COMMENT '작성자 ID',
                                `title`             VARCHAR(50)     NOT NULL COMMENT '공지 제목',
                                `content`           TEXT            NOT NULL COMMENT '공지 내용',
                                `created_at`        DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일시',
                                `updated_at`        DATETIME        DEFAULT NULL COMMENT '수정일시',
                                `is_deleted`        ENUM('Y','N')   NOT NULL DEFAULT 'N' COMMENT '삭제 여부',
                                PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci
  COMMENT='공지사항을 저장하는 테이블';



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 외래키 제약 조건 추가



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 1. 기초 테이블 외래키 제약 조건 추가

-- 첨부 파일 테이블 외래키 제약 조건 생성
-- FK: 공지사항 ID → announcement
ALTER TABLE `file`
    ADD CONSTRAINT `fk_file_announcement`
        FOREIGN KEY (`announcement_id`)
            REFERENCES `announcement`(`announcement_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 결재 ID → approve
ALTER TABLE `file`
    ADD CONSTRAINT `fk_file_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 계약서 ID → contract
ALTER TABLE `file`
    ADD CONSTRAINT `fk_file_contract`
        FOREIGN KEY (`contract_id`)
            REFERENCES `contract`(`contract_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 2. 인적 사항 테이블 외래키 제약 조건 추가

-- 인사 정보 테이블 외래키 제약 조건 생성
-- 외래 키 설정: 사원 → 인사정보
ALTER TABLE `employee_records`
    ADD CONSTRAINT `FK_employee_TO_employee_records`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 사원 권한 테이블 외래키 제약 조건 생성
-- 외래 키 설정: 사원
ALTER TABLE `employee_roles`
    ADD CONSTRAINT `FK_employee_TO_employee_roles`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 외래 키 설정: 권한
ALTER TABLE `employee_roles`
    ADD CONSTRAINT `FK_user_role_TO_employee_roles`
        FOREIGN KEY (`user_role_id`)
            REFERENCES `user_role`(`user_role_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 계약서 테이블 외래키 제약 조건 생성
-- 외래 키 설정: 사원 → 계약서
ALTER TABLE `contract`
    ADD CONSTRAINT `FK_employee_TO_contract`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 사원 테이블 외래키 제약 조건 생성
-- FK: 부서
ALTER TABLE `employee`
    ADD CONSTRAINT `FK_department_TO_employee`
        FOREIGN KEY (`dept_id`)
            REFERENCES `department` (`dept_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 직위
ALTER TABLE `employee`
    ADD CONSTRAINT `FK_position_TO_employee`
        FOREIGN KEY (`position_id`)
            REFERENCES `position` (`position_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 부서 테이블 외래키 제약 조건 생성
-- FK 설정: 자기참조 (상위 부서 → 부서)
ALTER TABLE `department`
    ADD CONSTRAINT `FK_department_TO_department`
        FOREIGN KEY (`parent_dept_id`)
            REFERENCES `department` (`dept_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 부서장 테이블 외래키 제약 조건 생성
-- FK: 사원 → 부서장 (nullable, 삭제 시 NULL 처리)
ALTER TABLE `dept_head`
    ADD CONSTRAINT `FK_employee_TO_dept_head`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee` (`emp_id`)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

-- FK: 부서 → 부서장 (삭제 시 해당 부서장 정보도 삭제)
ALTER TABLE `dept_head`
    ADD CONSTRAINT `FK_department_TO_dept_head`
        FOREIGN KEY (`dept_id`)
            REFERENCES `department` (`dept_id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE;


-- 인사 발령 내역 테이블 외래키 제약 조건 생성
-- FK: 사원
ALTER TABLE `appoint`
    ADD CONSTRAINT `FK_appoint_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 이전 직위
ALTER TABLE `appoint`
    ADD CONSTRAINT `FK_appoint_before_position`
        FOREIGN KEY (`before_position`)
            REFERENCES `position`(`position_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 이후 직위
ALTER TABLE `appoint`
    ADD CONSTRAINT `FK_appoint_after_position`
        FOREIGN KEY (`after_position`)
            REFERENCES `position`(`position_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 이전 부서
ALTER TABLE `appoint`
    ADD CONSTRAINT `FK_appoint_before_department`
        FOREIGN KEY (`before_department`)
            REFERENCES `department`(`dept_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 이후 부서
ALTER TABLE `appoint`
    ADD CONSTRAINT `FK_appoint_after_department`
        FOREIGN KEY (`after_department`)
            REFERENCES `department`(`dept_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;



-- --------------------------------------------------------
-- --------------------------------------------------------



-- 3. 근태 테이블 외래키 제약 조건 추가

-- 근무 유형 테이블 외래키 제약 조건 생성
ALTER TABLE `work_type`
    ADD CONSTRAINT `FK_work_type_work_type_type_id`
        FOREIGN KEY (`parent_type_id`)
            REFERENCES `work_type` (`type_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 출퇴근 내역 테이블 외래키 제약 조건 생성
-- FK: 사원 → 출퇴근
ALTER TABLE `work`
    ADD CONSTRAINT `FK_work_employee`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee` (`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 근무 유형 → 출퇴근
ALTER TABLE `work`
    ADD CONSTRAINT `FK_work_work_type`
        FOREIGN KEY (`type_id`)
            REFERENCES `work_type` (`type_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 휴가 유형 → 출퇴근
ALTER TABLE `work`
    ADD CONSTRAINT `FK_work_vacation_type`
        FOREIGN KEY (`vacation_type_id`)
            REFERENCES `vacation_type` (`vacation_type_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 출퇴근 정정 신청 내역 테이블 외래키 제약 조건 생성
-- FK: 출퇴근 ID → 출퇴근 정정
ALTER TABLE `work_correction`
    ADD CONSTRAINT `FK_work_TO_work_correction`
        FOREIGN KEY (`work_id`)
            REFERENCES `work` (`work_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 결재 ID → 출퇴근 정정
ALTER TABLE `work_correction`
    ADD CONSTRAINT `FK_approve_TO_work_correction`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve` (`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 휴가 신청 내역 테이블 외래키 제약 조건 생성
-- FK: 휴가 유형
ALTER TABLE `vacation`
    ADD CONSTRAINT `FK_vacation_type_TO_vacation`
        FOREIGN KEY (`vacation_type_id`)
            REFERENCES `vacation_type` (`vacation_type_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 결재 ID
ALTER TABLE `vacation`
    ADD CONSTRAINT `FK_approve_TO_vacation`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve` (`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 재택 근무 신청 내역 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → 재택근무 신청
ALTER TABLE `remote_work`
    ADD CONSTRAINT `FK_approve_TO_remote_work`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve` (`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 초과 근무 신청 내역 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → 초과근무 신청
ALTER TABLE `overtime`
    ADD CONSTRAINT `FK_approve_TO_overtime`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve` (`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 출장 신청 내역 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → 출장 신청
ALTER TABLE `business_trip`
    ADD CONSTRAINT `FK_approve_TO_business_trip`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve` (`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;




-- --------------------------------------------------------
-- --------------------------------------------------------



-- 4. 결재 테이블 외래키 제약 조건 추가

-- 결재 테이블 외래키 제약 조건 생성
-- FK: 자기 참조 (상위 결재 ID)
ALTER TABLE `approve`
    ADD CONSTRAINT `FK_approve_parent`
        FOREIGN KEY (`parent_approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 상태 ID
ALTER TABLE `approve`
    ADD CONSTRAINT `FK_approve_status`
        FOREIGN KEY (`status_id`)
            REFERENCES `status`(`status_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 기안자 ID (사원)
ALTER TABLE `approve`
    ADD CONSTRAINT `FK_approve_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE SET NULL
            ON UPDATE CASCADE;


-- 결재선 테이블 외래키 제약 조건 생성
-- FK: 상태 ID → 상태 코드 테이블
ALTER TABLE `approve_line`
    ADD CONSTRAINT `FK_approve_line_status`
        FOREIGN KEY (`status_id`)
            REFERENCES `status`(`status_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 결재 ID → 결재 테이블
ALTER TABLE `approve_line`
    ADD CONSTRAINT `FK_approve_line_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE;


-- 결재자 목록 테이블 외래키 제약 조건 생성
-- 상태 ID → 상태 테이블
ALTER TABLE `approve_line_list`
    ADD CONSTRAINT `FK_approve_line_list_status`
        FOREIGN KEY (`status_id`)
            REFERENCES `status`(`status_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 결재선 ID → 결재선 테이블
ALTER TABLE `approve_line_list`
    ADD CONSTRAINT `FK_approve_line_list_line`
        FOREIGN KEY (`approve_line_id`)
            REFERENCES `approve_line`(`approve_line_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 결재자 ID → 사원 테이블
ALTER TABLE `approve_line_list`
    ADD CONSTRAINT `FK_approve_line_list_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE;


-- 품의 결재 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → approve 테이블
ALTER TABLE `approve_proposal`
    ADD CONSTRAINT `FK_approve_proposal_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 영수증 결재 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → approve 테이블
ALTER TABLE `approve_receipt`
    ADD CONSTRAINT `FK_approve_receipt_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 취소 결재 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → approve 테이블
ALTER TABLE `approve_cancel`
    ADD CONSTRAINT `FK_approve_cancel_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 결재 참조자 테이블 외래키 제약 조건 생성
-- FK: 결재 ID → approve
ALTER TABLE `approve_ref`
    ADD CONSTRAINT `FK_approve_ref_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- FK: 사원 ID → employee
ALTER TABLE `approve_ref`
    ADD CONSTRAINT `FK_approve_ref_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE;



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 5. 평가 테이블 외래키 제약 조건 추가

-- 다면 평가 양식 테이블 외래키 제약 조건 생성
-- FK: 평가 유형 ID → eval_type
ALTER TABLE `eval_form`
    ADD CONSTRAINT `FK_eval_form_type`
        FOREIGN KEY (`type_id`)
            REFERENCES `eval_type`(`type_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 다면 평가 요인 테이블 외래키 제약 조건 생성
-- FK: 평가 양식 ID → eval_form
ALTER TABLE `eval_property`
    ADD CONSTRAINT `FK_eval_property_form`
        FOREIGN KEY (`form_id`)
            REFERENCES `eval_form`(`form_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 다면 평가 지문 테이블 외래키 제약 조건 생성
-- FK: 평가 요인 ID → eval_property
ALTER TABLE `eval_prompt`
    ADD CONSTRAINT `FK_eval_prompt_property`
        FOREIGN KEY (`property_id`)
            REFERENCES `eval_property`(`property_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 평가 결과 테이블 외래키 제약 조건 생성
-- 회차 ID → eval_round
ALTER TABLE `eval_response`
    ADD CONSTRAINT `fk_response_round`
        FOREIGN KEY (`round_id`)
            REFERENCES `eval_round`(`round_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 평가 양식 ID → eval_form
ALTER TABLE `eval_response`
    ADD CONSTRAINT `fk_response_form`
        FOREIGN KEY (`form_id`)
            REFERENCES `eval_form`(`form_id`)
            ON DELETE SET NULL
            ON UPDATE CASCADE;

-- 작성자 ID → employee
ALTER TABLE `eval_response`
    ADD CONSTRAINT `fk_response_eval`
        FOREIGN KEY (`eval_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 피 평가자 ID → employee
ALTER TABLE `eval_response`
    ADD CONSTRAINT `fk_response_target`
        FOREIGN KEY (`target_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 요인별 점수 테이블 외래키 제약 조건 생성
-- 평가 요인 ID → eval_property
ALTER TABLE `eval_score`
    ADD CONSTRAINT `fk_eval_score_property`
        FOREIGN KEY (`property_id`)
            REFERENCES `eval_property`(`property_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 평가 결과 ID → eval_response
ALTER TABLE `eval_score`
    ADD CONSTRAINT `fk_eval_score_result`
        FOREIGN KEY (`result_id`)
            REFERENCES `eval_response`(`result_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 6. 성과 테이블 외래키 제약 조건 추가

-- 성과 테이블 외래키 제약 조건 생성
-- 사원 ID → employee
ALTER TABLE `kpi`
    ADD CONSTRAINT `fk_kpi_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 상태 ID → status
ALTER TABLE `kpi`
    ADD CONSTRAINT `fk_kpi_status`
        FOREIGN KEY (`status_id`)
            REFERENCES `status`(`status_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 7. 인사 분석 테이블 외래키 제약 조건 추가

-- 인사 가중치 테이블 외래키 제약 조건 생성
-- 회차 ID → eval_round
ALTER TABLE `hr_weight`
    ADD CONSTRAINT `fk_hr_weight_round`
        FOREIGN KEY (`round_id`)
            REFERENCES `eval_round`(`round_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 인사 등급 비율 테이블 외래키 제약 조건 생성
-- 회차 ID → eval_round
ALTER TABLE `hr_rate`
    ADD CONSTRAINT `fk_hr_rate_round`
        FOREIGN KEY (`round_id`)
            REFERENCES `eval_round`(`round_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 인사 평가 이의제기 테이블 외래키 제약 조건 생성
-- 평가 결과 ID → eval_response
ALTER TABLE `hr_objection`
    ADD CONSTRAINT `fk_hr_objection_result`
        FOREIGN KEY (`result_id`)
            REFERENCES `eval_response`(`result_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 요청자 ID → employee(emp_id)
ALTER TABLE `hr_objection`
    ADD CONSTRAINT `fk_hr_objection_writer`
        FOREIGN KEY (`writer_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 상태 ID → status
ALTER TABLE `hr_objection`
    ADD CONSTRAINT `fk_hr_objection_status`
        FOREIGN KEY (`status_id`)
            REFERENCES `status`(`status_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;



-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 8. 근속 테이블 외래키 제약 조건 추가

-- 근속 지원 테이블 외래키 제약 조건 생성
-- 사원 ID → employee(emp_id)
ALTER TABLE `retention_support`
    ADD CONSTRAINT `fk_retention_support_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 직위 ID → position
ALTER TABLE `retention_insight`
    ADD CONSTRAINT `fk_retention_insight_position`
        FOREIGN KEY (`position_id`)
            REFERENCES `position`(`position_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 회차 ID → retention_round(round_id)
ALTER TABLE `retention_support`
    ADD CONSTRAINT `fk_retention_support_round`
        FOREIGN KEY (`round_id`)
            REFERENCES `retention_round`(`round_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 근속 전망 테이블 외래키 제약 조건 생성
-- 부서 ID → department
ALTER TABLE `retention_insight`
    ADD CONSTRAINT `fk_retention_insight_dept`
        FOREIGN KEY (`dept_id`)
            REFERENCES `department`(`dept_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 회차 ID → retention_round
ALTER TABLE `retention_insight`
    ADD CONSTRAINT `fk_retention_insight_round`
        FOREIGN KEY (`round_id`)
            REFERENCES `retention_round`(`round_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 면담 기록 테이블 외래키 제약 조건 생성
-- 사원 ID (대상자) → employee
ALTER TABLE `retention_contact`
    ADD CONSTRAINT `fk_retention_contact_target`
        FOREIGN KEY (`target_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 상급자 ID → employee
ALTER TABLE `retention_contact`
    ADD CONSTRAINT `fk_retention_contact_manager`
        FOREIGN KEY (`manager_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 요청자 ID → employee.emp_id
ALTER TABLE `retention_contact`
    ADD CONSTRAINT `fk_retention_contact_writer`
        FOREIGN KEY (`writer_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------



-- 9. 알림, 공지사항 테이블 외래키 제약 조건 추가

-- 알림 테이블 외래키 제약 조건 생성
-- 알림 수신 사원 → employee
ALTER TABLE `notification`
    ADD CONSTRAINT `fk_notification_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 결재 ID → approve
ALTER TABLE `notification`
    ADD CONSTRAINT `fk_notification_approve`
        FOREIGN KEY (`approve_id`)
            REFERENCES `approve`(`approve_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;

-- 면담 기록 ID → retention_contact
ALTER TABLE `notification`
    ADD CONSTRAINT `fk_notification_contact`
        FOREIGN KEY (`contact_id`)
            REFERENCES `retention_contact`(`retention_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;


-- 공지사항 테이블 외래키 제약 조건 생성
-- 작성자 ID → employee
ALTER TABLE `announcement`
    ADD CONSTRAINT `fk_announcement_emp`
        FOREIGN KEY (`emp_id`)
            REFERENCES `employee`(`emp_id`)
            ON DELETE RESTRICT
            ON UPDATE CASCADE;