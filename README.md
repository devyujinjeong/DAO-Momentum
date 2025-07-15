
## 📚 목차

1. [🏆 팀 소개](#1--팀-소개)
2. [📘 프로젝트 기획서](#2--프로젝트-기획서)
3. [🛠️ 기술 스택](#3-%EF%B8%8F-기술-스택)
4. [📁 프로젝트 구조](#4--프로젝트-구조)
5. [🛠 형상 관리](#5--형상-관리)
6. [📊 산출물](#6--산출물)
    - [📊 WBS](#1--wbs-작업-분배-및-일정)
    - [📄 요구사항 정의](#2--요구사항-정의서)
    - [🔄 플로우 차트 & UML](#3--플로우-차트--uml)
    - [📦 DDD](#4--ddd)
    - [📌 ERD & 테이블 정의서](#5--erd--테이블-정의서)
    - [🧩 기능 정의서](#6--기능-정의서)
    - [📐 시스템 아키텍처 구조도](#7--시스템-아키텍처-구조도)
    - [💻 화면 설계서](#8--화면-설계서)
    - [🧾 테스트 케이스 정의서](#9--테스트-케이스-정의서)
    - [📜 단위 테스트 문서](#10--단위-테스트-문서)
    - [📚 SWAGGER 문서](#11--swagger-문서)
    - [🧪 테스트 케이스 상세](#12--테스트-케이스-상세)
    - [🗄️ 빌드 및 배포](#13--빌드-및-배포)
7. [🫂 팀원 회고](#6--팀원-회고)

<br>

---

## 1. 🏆 팀 소개

<div align="center">

<br>

<table>
  <tr>
    <td align="center"><a href="https://github.com/mijuckboon"><b>곽진웅</b></a></td>
    <td align="center"><a href="https://github.com/meowdule"><b>김여진</b></a></td>
    <td align="center"><a href="https://github.com/Taein5415"><b>김태인</b></a></td>
    <td align="center"><a href="https://github.com/splguyjr"><b>김운경</b></a></td>
    <td align="center"><a href="https://github.com/devyujinjeong"><b>정유진</b></a></td>
  </tr>
  <tr>
    <td align="center"><img src="./assets/images/다오.png" height="100" /></td>
    <td align="center"><img src="./assets/images/후우.png" height="100" /></td>
    <td align="center"><img src="./assets/images/케피.png" height="100" /></td>
    <td align="center"><img src="./assets/images/우니.png" height="100" /></td>
    <td align="center"><img src="./assets/images/마리드.png" height="100" /></td>
  </tr>
  <tr>
    <td align="center">근태 및 사원 관리</td>
    <td align="center">평가 관리</td>
    <td align="center">인적 사항 관리</td>
    <td align="center">챗봇, 알림, 공지사항</td>
    <td align="center">결재 관리</td>
  </tr>
</table>

<br>

<table>
  <tr>
    <td align="center"><b>안성민</b></td>
    <td align="center"><b>소용준</b></td>
  </tr>
  <tr>
    <td align="center"><img src="./assets/images/배찌.png" height="100" /></td>
    <td align="center"><img src="./assets/images/모스.png" height="100" /></td>
  </tr>
  <tr>
    <td align="center"><b>멘토님</b></td>
    <td align="center"><b>자문 교수님</b></td>
  </tr>
</table>

</div>


<br>

---

## 2. 📘 프로젝트 기획서

## ❝ 사람을 숫자가 아닌 ‘신호’로 이해하는 HR 플랫폼 ❞

> “머무는 힘은, 이해에서 시작된다.”
>
> *– Momentum, 사람을 이해하는 인사 시스템*

---

<details open>
<summary>📘 프로젝트 개요</summary>

<br>

<details>
<summary> &emsp;1. 🎯 목표</summary>

**Momentum**는 단순한 인사 기록을 넘어,  
**사람의 정서, 신호, 맥락**까지 읽어내는 **차세대 HR 플랫폼**입니다.

이 시스템의 목표는 단 하나입니다.  
**“사람이 스스로 남고 싶은 조직을 만드는 것.”**

그를 위해 우리는 조직 내에 존재하는 다양한 ‘데이터’를  
단순 기록이 아닌 **‘행동과 심리의 지표’**로 전환합니다.

- 출퇴근 시간의 미세한 변화
- KPI 진척률의 멈춤
- 이의 제기의 빈도
- 면담 요청의 맥락
- 평가 점수 뒤의 협업 신호

이 모든 것이 '지표'가 아닌 '신호'로 해석되도록  
Momentum는 정량+정성 데이터의 흐름을 연결하고,  
**이탈 조짐이 ‘문제가 되기 전에’ 감지되는 조직 구조**를 설계합니다.

</details>

<br>


<details>
<summary> &emsp;2. 🔁 Momentum의 의미</summary>

> "사람과 조직이 함께 나아가는 지속 가능한 힘"

**Momentum**는 물리학적으로는 ‘운동량’, 조직 관점에서는 ‘추진력’을 의미합니다.  
하지만 이 프로젝트에서의 Momentum은 단순한 에너지를 넘어서 다음을 의미합니다:

#### ✅ 우리가 말하는 Momentum은...

- **한 사람의 변화가 팀 전체의 흐름으로 확산되는 현상**
- **감지된 작은 ‘신호’가 조직의 ‘방향’을 결정하는 순간**
- **정체된 곳 없이, 사람과 제도가 함께 움직이도록 설계된 구조**

---

### 🔄 그래서, 우리는 이렇게 정의합니다

> “Momentum는 사람과 조직의 흐름을 잇고,  
> 그 움직임이 지속되도록 설계된 인사 시스템입니다.”

기존 HR 시스템이 ‘기록’을 위한 도구였다면,  
Momentum는 **‘이동’을 위한 구조**를 만듭니다.

- 사람이 **남고 싶게 만드는 환경**
- 조직이 **흐름을 잃지 않게 만드는 구조**
- 둘의 관계가 **끊임없이 이어지도록 설계된 인터페이스**

---

### 🧭 핵심 철학

> “흐름이 멈추는 곳이 아니라, 흐름을 만드는 곳”

조직에는 수많은 정지 신호가 존재합니다:

- 지연된 피드백
- 무시된 이의제기
- 방치된 평가

Momentum는 이 지점들을 **정체가 아닌 전환의 순간**으로 바꿉니다:

- 이탈이 아니라 → 이해로
- 정체가 아니라 → 전환으로
- 단절이 아니라 → **연결**로

</details>

<br>

<details>
<summary> &emsp;3. 🧩 배경</summary>

> 지금까지의 HR 시스템은 성과를 쌓기 위한 도구였고,  
> 앞으로의 HR 시스템은 사람을 **붙잡기 위한 도구**여야 합니다.

---

대부분의 기업은 HR 시스템을 운영하면서도
- 이직률을 낮추지 못하고
- 평가에 대한 신뢰를 얻지 못하며
- 구성원의 심리적 거리감은 점점 더 커지고 있습니다.

그 이유는 간단합니다.

> 기존 시스템은 **이탈이 일어난 후에야 반응**할 수 있었기 때문입니다.

---

### 📉 현장의 목소리

- “결과만 보고 평가하니, 동기부여가 사라졌어요.”
- “평가 불만을 낼 창구도, 들어줄 구조도 없어요.”
- “한두 번 반복되다 보니, 그냥 떠나야겠단 생각이 들었죠.”

---

### ❗ 중요한 사실

> 조직은 어느 날 갑자기 무너지지 않습니다.

**데이터 속에 이미 신호가 있었고**,  
우리는 그것을 **해석할 도구가 없었을 뿐입니다.**

---

### ✅ Momentum의 해결 방식

Momentum는 이 단절을 해소합니다.  
**구성원의 경험과 시스템을 연결** 하여,  
조직이 진짜로 ‘사람을 대우하는’ 구조로 나아가게 합니다.

</details>

<br>

<details>
<summary> &emsp;4. 🎯 타겟 사용자</summary>

**Momentum**는  
**‘조직 내에서 관계를 매니징하는 모든 사람’** 을 위한 도구입니다.

---

### 👥 주요 사용자 유형 및 해결책

| 사용자 유형       | 주요 문제                                                  | Momentum이 제공하는 해결책                                       |
|------------------|-----------------------------------------------------------|------------------------------------------------------------------|
| 👨‍💼 일반 사원     | 내가 어떻게 평가받는지 불투명하고, 결과도 받아들이기 어려움      | KPI 피드백, 다면 평가 이력, 이의제기 구조, 내 정보 자동화               |
| 👩‍💼 팀장         | 팀원 평가 및 진척도 확인, 감정적 마찰 우려                     | KPI 승인/반려 구조, 면담 요청/응답, 피드백 루프 구성                   |
| 🧑‍💻 인사 관리자   | 구성원 이탈 관리, 공정한 평가제도 구축 어려움                  | 이탈 징후 분석, 회차별 통계 관리, 근속 예측 지원                      |
| 🧑‍🏫 최고 관리자   | 조직 전반 건강 상태 파악, 인사 제도 운영 부담                  | 전체 인사 흐름 시각화, 등급/가중치 설정, 자동 알림, 챗봇 연동           |

---

> 특히 다음과 같은 조직에 적합합니다:
>
> - 📌 **30 ~ 50인 규모의 중소기업**
> - 📌 **조직문화 혁신을 목표로 하는 디지털 전환 중 기업**

</details>

<br>

<details open>
<summary> &emsp;5. ✨ 차별점</summary>

**Momentum**는 단순한 기능 제공이 아니라  
**"사람-데이터-맥락"을 연결하는 구조 설계**가 핵심입니다.

---

### 1. 행동 기반 데이터 수집

- 출퇴근, 초과근무, 휴가, 재택 등 **근무 행태 전반 자동 기록**
- **회사 지정 IP 제한**, 실시간 근태 상태 확인, 근태 이력 조회 가능

---

### 2. 정성 기반 성과 평가 체계

- KPI 등록 → 승인/취소/진척률 수정까지 **상시 업데이트 가능**
- 동료/상향/하향 평가, 조직 몰입도 조사 등 **다면 평가 완비**
- **회차별 통계 + 요인별 가중치 적용**

---

### 3. 이탈 징후 감지 및 대응 시스템

- KPI 정체, 평가 하락, 이의제기 급증 → **리스크 자동 분석**
- ‘주의형’, ‘불안정형’ 사원 자동 분류
- 관리자에게 **면담 요청 자동 발송 → 상급자 기록 → 관리자 피드백 루프 완성**

---

### 4. 피드백 기반 평가 개선 구조

- 사원의 이의제기 기능 → **단순 수치 보정이 아닌 사유 기반 점수 재조정**
- **몰입 회복 선순환 구조** 형성:  
  `불만 → 이의제기 → 피드백 → 신뢰 → 몰입`

---

### 5. 전사 흐름을 연결하는 통합 인터페이스

- 사원/팀장/관리자 **역할별 사이드바 맞춤 구성**
- 계약서, 공지사항, 알림, 챗봇까지 **워크플로우 자동 연계**
- **SPA 기반 UX**로 진입 장벽 낮고, 유지관리 용이

</details>

<br>

<details>
<summary> &emsp;6. 📈 경쟁력 및 기대 효과</summary>

### 🆚 기존 HR 시스템 vs Momentum

| 기존 HR 시스템                     | Momentum                                              |
|----------------------------------|--------------------------------------------------------|
| ✔ 단순한 근태/급여/계약 관리 중심 | ✅ 몰입, 불안, 이탈 등 **정서적 신호까지 탐지**        |
| ✔ 사후 중심 대응                  | ✅ **조기 감지 → 사전 개입 → 피드백 저장** 구조         |
| ✔ 평가 점수만 저장                | ✅ **이력 + 이의 제기 + 보완 기록**까지 보존             |
| ✔ 정량 성과 위주                  | ✅ 정성 평가 및 감정 흐름 **연동**                      |
| ✔ 기능 단위 분산 운영             | ✅ 하나의 흐름으로 **모듈형 통합 구조** 구성            |

---

### 🎯 도입 시 기대 효과

- 📉 **이직률 감소**
- 🎯 **KPI 달성률 증가**
- 💬 **이의제기/피드백 활성화** → 조직 내 **신뢰도 상승**
- 🔄 **관리자 피로도 감소** → 반복 업무 자동화 및 경보 시스템 내재화

</details>

<br>

<details>
<summary> &emsp;7. 🧰 주요 기능</summary>

Momentum의 주요 기능은 다음과 같이 6개 카테고리로 구성됩니다.  
각 기능은 모듈화되어 있으며, 전사 흐름과 연결된 UX를 기반으로 동작합니다.

---

### 📂 기능 카테고리 요약

1. **인사 관리 (HR Management)**  
   → 사원 정보, 조직도, 권한, 계약 등 인사 전반 관리 기능

2. **근태 관리 (Attendance)**  
   → 출퇴근, 휴가, 재택/출장 신청, 통계 등 근무시간 기반 기능

3. **결재 기능 (Approval)**  
   → 정정/신청/승인 문서 작성 및 결재선 지정, 히스토리 관리

4. **성과 평가 (Performance Evaluation)**  
   → KPI, 다면 평가, 가중치 기반 인사 등급 및 이의 제기 처리

5. **근속 지원 (Retention Support)**  
   → 회차별 분석, 근속 유형 분류, 면담 기록 흐름 설계

6. **기타 관리 기능 (Notification, Chatbot, Notice)**  
   → 공지사항, 알림 자동화, 챗봇 기반 기능 가이드 및 상담 기능

---

각 기능은 아래 개별 상세 섹션에서 기술됩니다.

<details>
<summary> &emsp;1. 인사 관리 기능 (HR Management)</summary>

### 1.1 관리자 및 조직 정보

- **회사 정보 관리**
    - 마스터 관리자는 다음 항목을 포함한 회사 정보를 등록/수정할 수 있다:
        - **필수 항목**: 회사명, 대표자 이름, 설립일, 회사 주소, 회사 연락처, 회사 이메일, 월급일, 출근시간, 퇴근시간, 접속 허용 IP 주소
        - **선택 항목**: 사업자등록번호, 법인등록번호
    - IP 주소는 여러 개 등록 가능하며, 식별용 이름을 붙여 관리할 수 있다.
    - 등록된 회사 정보는 전체 사원이 열람할 수 있으며, 수정은 마스터 관리자만 가능하다.
- **조직도 관리**
    - 모든 사원은 조직도를 조회할 수 있다.
    - 조직도는 부서별 계층 구조로 시각화되며, 상하위 관계를 직관적으로 파악할 수 있다.
    - 부서, 직위, 직책 기준으로 사용자 목록이 트리 형태로 구성된다.
    - 특정 부서 클릭 시 해당 부서 소속 사원의 이름, 직위, 이메일, 연락처 정보가 나타난다.
- **부서 / 직위 / 직책 관리**
    - 마스터 관리자는 다음 정보를 등록/수정/삭제할 수 있다:
        - 부서 정보: 부서명, 부서 주요 업무, 부서 연락처
        - 직위 정보: 직위명, 직위 단계 (단계는 숫자 or 정렬 기준)
        - 직책 정보: 직책명, 직책 설명
    - **직위는 단계 기반(예: 사원 < 대리 < 과장 등)**, **직책은 역할 기반(예: 팀장, 인사관리자 등)**으로 정의되며 별도로 관리된다.
    - 직위 또는 직책 삭제 시 해당 항목이 부여된 사원이 존재하면 삭제할 수 없다.

---

### 1.2 사원 정보 및 발령

- **사원 정보 등록**
    - 마스터 관리자 및 인사 관리자는 사원을 **단건 등록** 또는 **CSV 업로드 방식**으로 등록할 수 있다.
    - 시스템은 CSV 양식을 제공하며, 양식 미준수 시 업로드가 제한된다.
    - 등록 항목:
        - 기본 정보: 사번, 이름, 성별, 생년월일, 연락처, 주소, 이메일, 입사일, 재직 상태
        - 인사 정보: 소속 부서, 직위, 직책
        - 계약 정보: 고용 형태, 계약일, 계약서 파일 업로드
        - 학력, 자격증, 수상 이력, 경력 정보 포함
- **사원 정보 상세 조회 및 수정**
    - 마스터 관리자 및 인사 관리자는 전체 사원의 정보를 상세 조회 및 수정할 수 있다.
    - 조회 정보: 기본 정보, 인사 정보, 계약 정보, 경력 및 학력 정보
    - 수정 항목: 이메일, 재직상태, 연락처, 주소 등
    - 수정 시 유효성 검증 로직이 동작하며, 잘못된 형식은 저장되지 않는다.
- **인사 발령 관리**
    - 인사 관리자는 사원의 발령 이력을 등록/조회할 수 있다.
    - 발령 유형: 소속 이동, 승진 등
    - 발령 시 기존 직위/부서와 변경 직위/부서를 함께 기록한다.
    - 발령 내역은 조직도 및 결재선에 자동 반영된다.

---

### 1.3 프로필 및 개인정보

- **사원 프로필 조회**
    - 모든 사원은 본인의 프로필을 조회할 수 있다.
- **개인정보 수정**
    - 사원은 프로필에서 자신의 개인정보를 수정할 수 있다.
    - 수정 가능 항목:
        - 연락처, 주소, 성별, 생년월일
        - 비밀번호: 기존 비밀번호 인증 후 변경 가능
    - 이메일 변경은 관리자 권한을 가진 사원만이 수정할 수 있다.
    - 학력, 경력, 자격증, 수상 이력 등의 인사 정보는 인사 관리자가 등록 및 수정한다.
- **캘린더 통합 조회**
    - 대시보드에서 다음 항목의 일정을 확인할 수 있다:
        - 출근/퇴근 기록
        - 연차/반차/휴가 일정
        - 출장 일정
        - 성과 평가 일정
        - 결재 일정
- **비밀번호 초기화 및 설정**
    - 사원은 로그인 화면에서 비밀번호 재설정 이메일을 요청할 수 있다.
        - 인증 토큰은 24시간 유효하며, 이메일을 통해 링크 제공
    - 비밀번호 변경 화면에서는 새 비밀번호와 재입력 항목을 확인하며 변경 가능

---

### 1.4 권한 및 계약 관리

- **권한 관리**
    - **마스터 관리자**는 사원 권한을 등록/수정할 수 있다.
    - 권한 유형:
        - 마스터 관리자: 전체 기능 접근 및 설정 가능
        - 인사 관리자: 인사/근태/계약/평가 기능 접근
        - 경리 관리자: 영수증 결재 처리 기능
        - 일반 사원: 본인 정보 및 제한 기능만 접근 가능
    - **직책 권한**:
        - 직책(예: 팀장)은 조직도 내 위치에 따라 별도의 접근 권한을 가진다.
        - 예시: 팀장은 하위 팀원들의 근태 내역, 결재 문서, KPI, 평가 결과를 열람/처리할 수 있음
- **권한 부여 UI**
    - 권한은 조직도 기반 좌측 트리 UI에서 특정 사원을 선택하여 수정할 수 있다.
    - 체크박스를 통해 권한 항목을 선택하고 [권한변경] 버튼으로 저장한다.
- **계약 관리**
    - 마스터 관리자 및 인사 관리자는 **사원별 계약서**를 업로드하고 내역을 관리할 수 있다.
    - 계약서 정보:
        - 계약서 유형, 등록일자, 연봉 등
        - PDF 계약서 파일 첨부 및 미리보기 기능 제공

</details>

<br>


<details>
<summary> &emsp;2. 근태 관리 기능 (Attendance)</summary>


### 2.1 출퇴근 관리

- **출퇴근 처리 (IP 기반 제한)**
    - 사원은 **회사에서 지정한 IP 대역** 내에서만 출근/퇴근 버튼을 클릭할 수 있다.
    - 외부 IP에서 접근 시, 오류 모달이 출력되며 출근 기록이 차단된다.
    - 출근 버튼 클릭 시:
        - 시스템은 **현재 시각과 회사 지정 출근 시간 중 더 늦은 시각**을 출근 시각으로 기록한다.
    - 퇴근 버튼 클릭 시:
        - 시스템은 **현재 시각과 회사 지정 퇴근 시간 중 더 이른 시각**을 퇴근 시각으로 기록한다.
    - 출근/퇴근 시간 외에 **등록 시각(start_pushed_at, end_pushed_at)** 및 **휴게 시간**도 함께 기록된다.
- **출퇴근 내역 조회**
    - 사원은 본인의 출퇴근 내역을 일별, 월별로 확인할 수 있다.
    - 관리자 및 인사팀은 전체 사원의 출퇴근 이력을 조회할 수 있으며, 다음 필터를 제공한다:
        - 사번, 이름, 부서, 직위, 날짜 범위, 근무 유형, 정상 근무 여부
    - 조회 항목: 시작 시각, 종료 시각, 근무 시간, 근무 유형(정상/초과/휴가), 휴게 시간
    - 상세보기 모달에서는 실제 등록 시각 및 상세 로그 확인 가능
    - 정렬은 기본적으로 시작 시각 오름차순이며 변경 가능
- **출퇴근 정정 신청**
    - 사원은 다음 사유로 정정 신청을 할 수 있다:
        - 출근 누락, 조퇴, 지각, 퇴근 누락, 초과 근무 시간 수정 등
    - 신청 항목: 기존 시각, 수정 시각, 정정 사유
    - 승인 시 해당 출퇴근 기록에 반영되며, 반려 시 사유가 표시된다.

---

### 2.2 재택 근무 신청

- **재택 근무 신청**
    - 사원은 재택 근무 시작일, 종료일, 사유(선택)을 입력하여 신청할 수 있다.
    - 팀장은 승인 또는 반려 처리할 수 있으며, 반려 시 사유는 필수로 입력해야 한다.
    - 상태별(대기/승인/반려) 필터 제공
    - 관리자는 전체 재택 신청 내역을 확인할 수 있다.
- **외근 신청** *(향후 발전 과제)*
    - 사원은 외근 신청 시 다음 정보를 입력한다:
        - 외근 일자, 시간대, 장소, 사유
    - 팀장이 승인하며, 승인/반려 내역은 사원이 확인 가능
    - 외근 내역은 출퇴근 기록에서 **근무 유형: 외근**으로 구분되어 집계된다.

---

### 2.3 출장 관리

- **출장 신청 및 승인**
    - 사원은 출장 신청 시 다음 정보를 입력한다:
        - 출장 일자, 출장 기간, 장소, 출장 목적, 예상 비용
    - 출장 유형은 국내/해외 중 선택
    - 팀장이 승인/반려할 수 있으며, 승인된 출장 기록은 근태 내역에 자동 반영된다
    - 반려 사유 입력은 필수이며, 상태별 조회 가능

---

### 2.4 연차 / 반차 / 병가 등 휴가 신청

- **휴가 신청 유형**
    - 사원은 다음 유형의 휴가를 신청할 수 있다:

        1. 연차
        2. 반차 (오전/오후)
        3. 리프레시 휴가
        4. 군소집훈련
        5. 경조사
        6. 기타 유급휴가
        7. 기타 무급휴가

- **휴가 신청 및 승인 흐름**
    - 신청 시: 휴가 유형, 시작일, 종료일, 사유, 필요 시 증빙서류 첨부
    - 팀장이 승인/반려 처리하며, 승인은 근태 일정 및 연차일수에 자동 반영됨
    - 캘린더 통합 보기에서 휴가 일정을 시각적으로 확인 가능

---

### 2.5 근태 통계 및 집계 조회

- **사원 개인 근태 요약**
    - 월간 근태 요약 정보:
        - 총 근무일수, 근무 시간, 초과 근무 시간, 야근/휴일 근무, 외근, 출장 횟수
        - 연차/반차 사용 현황, 잔여 연차
    - 마이페이지 또는 대시보드에서 확인 가능
    - 일간 캘린더와 연계된 시각화 제공
- **부서 근태 통합 조회**
    - 관리자 및 팀장은 부서 단위로 사원들의 근무 데이터를 통합 조회할 수 있다.
    - 필터: 부서, 기간, 근무 유형, 정상 근무 여부 등

</details>

<br>

<details>
<summary> &emsp;3. 결재 기능 (Approval)</summary>

### 3.1 결재 문서 작성

- **결재 문서 유형**
    - 사원은 다음 결재 문서를 작성할 수 있다:
        1. 출퇴근 정정 신청서
        2. 초과 근무 신청서
        3. 재택 근무 신청서
        4. 출장 신청서
        5. 휴가 신청서
        6. 품의서
        7. 영수증 처리서
        8. 취소 신청서
- **문서 작성 항목**
    - 모든 문서는 기본적으로 제목, 첨부파일 입력란이 있다.
    - 문서 유형별로 고유 입력 항목을 제공한다.
        - 출퇴근 정정: 기존 시각, 수정 시각, 정정 사유
        - 초과 근무: 시작일시, 종료일시, 초과 사유, 휴게시간
        - 영수증: 구분, 매장명, 거래 일시, 총 금액
        - 재택 근무 신청서 : 시작일, 종료일, 사유(선택)
        - 출장 신청서 : 출장 유형 (국내/해외) , 장소, 시작일, 종료일, 출장 사유, 예상 경비
        - 휴가 신청서 : 휴가 유형, 시작일, 종료일, 휴가 사유
        - 품의서 : 내용
        - 취소 : 취소 문서, 취소 사유

- **결재선 지정**
    - 작성자는 반드시 1명 이상의 결재자를 지정해야 한다.
    - 결재선은 순차 또는 병렬 방식으로 설정 가능하며, 기본적으로 1단계 결재자 = 팀장 (영수증 결재 제외)
    - 영수증 결재의 경우 지정된 영수증 결재 담당자가 존재한다.
    - '+' 버튼으로 결재자 또는 참조자 추가 가능 (참조자는 열람만 가능)
    - 결재선 구성 시 '필수/선택' 여부 설정 가능
- **작성 완료 후 제출**
    - ‘보내기’ 버튼 클릭 시 결재가 요청된다.
    - ‘취소’ 클릭 시 작성 중인 결재는 삭제되며 목록으로 복귀한다.
    - 결재 요청 시 확인 팝업이 표시되며, 결재선에 알림이 전송된다.

---

### 3.2 결재 처리

- **결재 수신 및 승인/반려**
    - 사원은 본인의 수신 문서(결재 요청 문서)를 받은 문서함에서 확인할 수 있다.
    - 문서별로 ‘결재하기’ 또는 ‘반려하기’ 버튼을 통해 처리할 수 있다.
    - 반려 시에는 반드시 반려 사유를 입력해야 한다.
    - 처리된 문서는 처리일, 상태(승인/반려)가 문서 내 이력에 기록된다.

---

### 3.3 결재 문서 조회

- **관리자 전체 조회**
    - 관리자/인사팀은 전체 사원의 결재 내역을 통합 조회할 수 있다.
    - 필터 조건:
        - 상태: 전체, 대기, 승인, 반려
        - 문서 유형: 근태, 품의, 영수증, 취소
        - 작성자, 제목, 부서, 작성일, 처리일
    - 문서 유형별로 세부 필터 제공 (예: 근태 → 정정/초과/재택/출장/휴가)
- **사원 수신함 (받은 문서)**
    - 수신 문서 목록은 다음 정보를 포함한다:
        - 제목, 작성자, 부서, 작성일, 상태, 결재하기 버튼
    - 상단 탭으로 유형별(근태, 품의, 영수증) 필터 가능
    - 정렬: 처리일 기준 오름차순/내림차순
- **사원 발신함 (보낸 문서)**
    - 발신 문서 목록은 다음 정보를 포함한다:
        - 제목, 작성일, 처리일, 상태, 결재내역, 결재 취소 버튼
    - 문서 유형 필터 및 상태별 검색 가능

---

### 3.4 결재 문서 상세 조회

- **수신 문서 상세 조회**
    - 수신 문서 클릭 시 상세 페이지 또는 모달로 이동한다.
    - 조회 정보:
        - 문서 유형별 입력 내용
        - 첨부파일
        - 결재선: 결재자, 결재 순서, 처리 상태
        - 참조자: 열람 여부
    - ‘승인’ 또는 ‘반려’ 버튼 제공 (반려 시 사유 필수 입력)
- **발신 문서 상세 조회**
    - 발신 문서 클릭 시 상세 페이지 또는 모달로 이동한다.
    - 조회 정보는 수신 문서와 동일하며,
        - 반려된 경우: 반려자, 반려 사유가 표시된다.

---

### 3.5 결재 양식 관리 *(향후 발전 과제)*

- **결재 양식 등록 및 관리**
    - 마스터 관리자 및 팀장은 양식을 등록할 수 있다.
    - 등록 항목:
        - 양식명, 카테고리(근태, 품의 등), 문서 유형, 설명
        - 첨부파일(양식 문서 템플릿 — PDF, Excel 등)
- **양식 조회 및 다운로드**
    - 사원은 결재 양식 목록을 조회하고 필요한 양식을 다운로드해 작성 시 참조 가능하다.
    - 검색 조건: 제목, 카테고리, 등록자
- **양식 수정/삭제**
    - 등록자는 양식 수정 및 삭제 가능
    - 시스템 기본 양식은 삭제 불가로 설정

</details>

<br>

<details>
<summary> &emsp;4. 성과 평가 기능 (Performance Evaluation)</summary>

### 4.1 KPI 관리

- **KPI 작성 (사원)**
    - 사원은 본인의 KPI를 작성할 수 있으며, 작성 항목은 다음과 같다:
        - KPI 목표, 목표 수치, 진척 기준(%별 기준 설명), 기간
    - 작성 후 ‘제출’ 시 팀장에게 승인 요청이 전송된다. ( 팀장의 KPI는 해당 부서의 조직장에게 승인 요청이 전송 된다.)
    - 승인 전에는 KPI를 수정 또는 삭제할 수 없다.
    - 잘못 작성한 경우 ‘KPI 취소 요청’ 기능을 통해 취소를 요청할 수 있다.
- **KPI 승인 (팀장)**
    - 팀장(조직장)은 하위 사원의 KPI 요청을 목록으로 확인하고 승인/반려할 수 있다.
    - 반려 시에는 반려 사유 입력이 필수다.
- **KPI 진척도 수정 (사원)**
    - 사원은 승인된 KPI의 진척도를 직접 입력하여 수정할 수 있다.
    - 제출 시 관리자와 팀장이 최신 진척도를 확인 가능
- **KPI 조회**
    - KPI 목록은 도넛 차트(달성 현황) + 바 차트(월별 성취율)로 시각화된다.
    - KPI 상태(달성 여부), 기간, 승인 상태(승인/반려/전체)로 필터 가능
- **사원별 KPI 통계 (관리자/팀장)**
    - 관리자는 부서별 KPI 평균 진척도, 완료율 등을 목록과 차트로 확인할 수 있다.
    - 필터 조건: 부서, 기간, 달성 여부
    - 목록 항목: 작성자, 목표, 진척도, 달성 여부, 마감 기한, 승인 상태 등
- **엑셀 다운로드**
    - KPI 목록 및 필터 조건을 기준으로 Excel 다운로드 가능

---

### 4.2 다면 평가 (Multi-Rater Evaluation)

- **평가 주기**
    - 설정된 평가 회차(예: 반기별 1회)에 따라 진행된다.
    - 해당 기간에만 평가 항목이 노출되며, 마감 전 알림이 자동 발송된다.
- **평가 유형**
    1. **동료 평가**: 사원이 지정된 동료를 평가
    2. **하향 평가**: 상사가 팀원을 평가
    3. **상향 평가** *(추후 확장 가능)*: 팀원이 상사를 평가
    4. **조직 평가**: 조직 몰입/문화/공정성 등에 대한 평가
    5. **업무 자가 평가**: 스스로 업무에 대한 평가
    6. **스트레스 평가**: 심리 상태 및 스트레스 인식 평가
- **평가 항목 구성**
    - 객관식 (리커트 7점 척도), 주관식 문항 혼합 가능
    - 모든 항목 작성 후 ‘제출’ 버튼 클릭 시 저장되고 재편집 불가
    - 작성 중 ‘취소’ 클릭 시 저장되지 않음
- **작성 목록 및 제출**
    - 사원은 자신이 작성해야 할 다면 평가 목록을 확인하고, 각 항목마다 ‘작성하기’ 버튼을 클릭해 응답할 수 있다.
    - 작성 완료된 항목은 상태로 표시됨.
- **관리자 조회**
    - 전체 평가 결과는 평가 유형별로 탭 분류되어 조회된다.
    - 목록 항목: 평가자, 피평가자, 평가 종류, 회차, 종합 점수
    - 필터 조건: 평가 종류, 회차, 작성자, 대상자
- **엑셀 출력**
    - 현재 조회 상태에서 엑셀 다운로드 기능 제공

---

### 4.3 인사 평가 및 등급 관리

- **평가 점수 기준**
    - 인사 평가는 종합 점수 외에도 성과, 근태, 기타 요소 점수 등으로 나뉘며 가중치를 기반으로 산출된다.
    - 실제 점수는 사용자에게 노출되지 않고 등급(예: 탁월, 우수, 보통 등)으로 변환되어 표시된다.
- **사원 인사 평가 조회**
    - 사원은 본인의 인사 평가 내역을 연도/회차별로 확인할 수 있다.
    - 표기 항목: 종합 등급, 각 요소별 등급, 평가 일시, 등급 기준표
- **인사 평가 상세 보기**
    - 상세 페이지에서는 점수별 가중치, 등급 비율, 항목별 등급 정보를 볼 수 있다.
    - 평가 결과에 대해 이의 제기 기능이 제공된다.
- **가중치 및 등급 비율 설정 (관리자)**
    - 인사 평가 항목의 가중치(성과/근태/기타)를 총합 100%로 설정 가능
    - S~D 등급 비율도 슬라이더로 조정 가능 (총합 100%)

---

### 4.4 인사 평가 이의 제기 관리

- **이의 제기 요청 (사원)**
    - 사원은 인사 평가 상세 페이지에서 이의 제기 버튼을 클릭해 사유를 입력 후 제출할 수 있다.
    - 제출된 이의 제기는 회차/상태(대기/승인/반려) 기준으로 조회 가능
- **이의 제기 검토 (팀장/조직장)**
    - 팀장(조직장)은 이의 제기 목록을 확인하고 상세 내용을 열람할 수 있다.
    - 기존 평가 결과와 함께 이의 제기 사유가 표시되며, 필요시 점수 수정 가능
    - 처리 결과: 승인/반려 중 선택하며, 처리 사유 입력 필수
- **처리 결과 반영**
    - 승인된 이의 제기는 평가 결과가 즉시 반영되며, 반려된 건은 사유와 함께 회신된다.

</details>

<br>

<details>
<summary> &emsp;5. 근속 지원 기능 (Retention Support)</summary>

### 5.1 회차 관리

- **회차 목록 조회 (관리자/인사팀)**
    - 마스터 관리자 및 인사팀은 근속 분석 대상이 되는 **회차 단위의 목록**을 조회할 수 있다.
    - 회차 정보: 회차 번호, 분석 기간(시작일~종료일), 상태(예정/진행 중/완료), 참여자 수
    - 필터 조건: 분석 기간, 상태(예정/진행 중/완료)
    - 각 회차 항목에는 다음 버튼이 제공된다:
        - [기준 수정] [분석 보기]
- **회차 등록**
    - 신규 회차는 ‘회차 등록’ 버튼을 통해 생성 가능
    - 등록 항목:
        - 분석 기간 (월 단위만 가능, 지난 월만 선택 가능)
        - 자동 또는 수동 회차 번호
    - 등록 후 자동으로 해당 회차의 분석 대상 및 지표 기준이 생성된다.

---

### 5.2 근속 분석 결과 조회

- **분석 개요 (관리자/인사팀)**
    - 선택된 회차의 근속 분석 결과는 시각화된 그래프와 표 형태로 제공된다.
    - 주요 분석 항목:
        - 전체 사원의 평균 근속 지수
        - 안정성 유형 분포 (안정형 / 주의형 / 불안정형)
        - 부서별근속 경향
- **사원별 분석 목록**
    - 목록 항목:
        - 사원명, 부서, 직급, 근속 지수, 안정성 유형
        - 최근 인사 등급
        - 최근 평가 현황(성과, 근태, 다면 평가 등)
            - 근태 및 평가 항목은 실제 점수 대신 등급(예: 탁월, 우수 등)으로 표시된다.
- **검색 필터**
    - 부서, 직급, 안정성 유형을 기준으로 필터링 가능

---

### 5.3 면담 기록 관리

- **면담 요청 (관리자/인사팀 → 상급자)**
    - 관리자 또는 인사팀은 특정 사원에 대해 면담 요청을 등록할 수 있다.
    - 요청 항목:
        - 대상자, 면담할 상급자, 면담 요청 사유
    - 요청은 ‘면담 기록 요청’ 사이드 모달을 통해 진행된다.
- **면담 요청 내역 (상급자)**
    - 상급자는 자신에게 전달된 면담 요청 목록을 조회할 수 있다.
    - 목록 항목: 대상 사원, 요청 일시, 요청 사유
    - 요청 항목 클릭 시 세부 요청 정보를 확인할 수 있다.
- **면담 보고 등록 (상급자)**
    - 상급자는 면담 완료 후 ‘대응 보고’ 입력란을 통해 요약 면담 내용을 작성할 수 있다.
    - 보고 등록 시 해당 면담 기록은 완료 상태로 전환된다.
- **면담 기록 상세 조회 (관리자/인사팀)**
    - 관리자는 요청한 면담 기록의 상세 정보를 확인할 수 있다.
    - 면담 내용이 등록되었을 경우, 피드백 저장 가능
    - 면담 보고가 없을 경우 요청 삭제가 가능하다.

</details>

<br>

<details>
<summary> &emsp;6. 기타 관리 기능 (Notification & Chatbot & Notice)</summary>

### 6.1 공지사항 (Notice)

- **공지사항 목록 조회**
    - 사원은 전체 또는 본인 소속 부서의 공지사항을 조회할 수 있다.
    - 목록 항목: 공지 번호, 제목, 작성자, 작성일시
    - 기본 정렬은 최신순이며, 정렬 변경(오름차순/내림차순) 가능
    - 페이지네이션 기본 10개씩 제공
    - 검색 필터링 제공 (제목/작성자/부서)
- **공지사항 상세 조회**
    - 공지 제목 클릭 시 상세 페이지로 이동
    - 상세 항목:
        - 제목, 작성자, 작성일시, 본문 내용, 첨부파일
    - 본인이 작성한 공지 또는 마스터 관리자는 [수정], [삭제] 버튼 사용 가능
    - [목록으로] 버튼 클릭 시 공지사항 목록으로 이동
- **공지사항 작성**
    - 사원은 공지사항을 작성할 수 있다.
    - 작성 항목:
        - 제목 (필수), 본문 (필수), 첨부파일 (선택)
- **공지사항 수정/삭제**
    - 본인이 작성한 공지 사항을 수정/삭제할 수 있다.
    - 수정 시 제목, 본문, 첨부파일 변경 가능
    - 삭제 시 확인 모달 출력 후 목록으로 이동

---

### 6.2 알림 기능 (Notification)

- **알림 목록 조회**
    - 사원은 알림함을 통해 ‘전체’, ‘읽지 않음’, ‘읽음’ 탭으로 구분된 알림 목록을 확인할 수 있다.
    - 알림은 시간 기준 내림차순 정렬 (최신 우선)
    - 알림 유형 예시:
        - 결재 요청/승인/반려
        - 다면 평가 요청
        - 면담 요청
- **알림 상세 처리**
    - 각 알림은 관련 기능 페이지로 직접 이동 가능한 링크로 구성
    - 클릭 시 해당 알림은 자동으로 ‘읽음’ 처리됨
    - 알림 내용은 짧은 요약문 형태로 구성되며, 최대 30일간 유지
- **알림 자동 생성 조건**
    - 시스템은 다음 이벤트 발생 시 알림을 자동 생성한다:
        - 결재 승인 또는 반려 → 기안자에게 알림
        - 결재 요청 수신 → 결재자에게 알림
        - 평가 기간 시작 전, 평가 마감 직전 → 사원에게 알림
        - 근속 지원 면담 요청 → 해당 사원의 상급자에게 알림

---

### 6.3 챗봇 기능 (Chatbot)

> ⚠️ 챗봇 기능은 현재 논의 중인 기능으로, 구현 여부에 따라 옵션 처리 가능
>
- **기본 안내 기능**
    - 챗봇은 고정된 질문 리스트 또는 자유 질문 입력을 통해 기능 가이드를 제공한다.
    - 질문 예시:
        - "출퇴근 정정은 어디서 하나요?"
        - "연차는 몇일 남았나요?"
        - "KPI 등록 방법 알려줘"
    - 응답 방식: 선택형 카드 UI 또는 단문 메시지
- **FAQ 제공**
    - 자주 묻는 질문은 카테고리별로 정리되어 있어 빠르게 접근 가능
    - 예: 결재 관련, 근태 관련, 휴가 관련
- **심층 상담 기능 (기획 중)**
    - 사용자가 ‘상담 요청’을 입력하면 다음 데이터를 기반으로 간단한 사전 진단 리포트를 생성한다:
        - 최근 1~3개월 근태 기록 (지각, 결근 등)
        - KPI 진척도
        - 다면 평가 결과
        - 최근 초과 근무/휴가 사용 이력
    - 분석 후 챗봇이 다음과 같은 액션 플랜을 제시한다:
        - KPI 목표 재설정 제안
        - 1:1 미팅 권유
        - 리프레시 휴가 권장
        - 내부 코칭/교육 제안
    - 상담 결과는 기록되어 관리자 또는 팀장과 공유 가능 (옵션 기능)

</details>

<br>

</details>


<br>

<details>
<summary> &emsp;8. 🌱 향후 발전 방향</summary>

Momentum는 현재의 인사 및 평가 체계에 안주하지 않고,  
**사람 중심 HR의 미래를 위한 기능 확장**을 지속적으로 계획하고 있습니다.

---

### 🔮 향후 기능 발전 과제

####  AI 기반 이탈 예측
- 머신러닝 기반의 이탈 예측 모델을 도입하여  
  구성원의 **이탈 가능성 및 위험 요인**을 조기에 감지할 수 있도록 합니다.
- KPI, 근태, 피드백 패턴 등의 데이터를 바탕으로 **시각화된 경보 대시보드**를 제공합니다.

####  모바일 앱 개발
- 출퇴근 등록, 실시간 알림, 내 정보 확인 등  
  **핵심 기능에 최적화된 모바일 앱**을 제공합니다.
- 재택·현장·외근 등 **다양한 근무 환경에서의 접근성**을 높입니다.

####  온보딩 자동화
- 신입 사원의 입사 이후 교육, 매뉴얼, 체크리스트,  
  챗봇 연동 Q&A 등을 통해 **입사 적응 과정을 자동화**합니다.
- 온보딩 상태는 관리자 대시보드에서 실시간 확인 가능하게 설계됩니다.

####  OCB(조직 시민 행동) 자동 수집
- Slack, Notion, 회의 기록 등 비정형 협업 데이터를 분석하여  
  **자발적 기여 행동**(예: 피드백 제공, 도움 요청 응답 등)을 자동 수집합니다.
- 기존 평가 체계에서 드러나지 않는 **숨은 기여자**를 가시화할 수 있습니다.

---

> 향후 과제는 HR 기능을 넘어서  
> **“사람의 맥락과 감정까지 읽는 시스템”** 으로 나아가기 위한 핵심 단계입니다.

</details>


<br>

---

## 3. 🛠️ 기술 스택

### 💻 Backend
<div>
  <img src="https://img.shields.io/badge/Java-007396?style=flat&logo=Java&logoColor=white" />
  <img src="https://img.shields.io/badge/Gradle-02303A?style=flat&logo=Gradle&logoColor=white" />
  <img src="https://img.shields.io/badge/SpringBoot-6DB33F?style=flat&logo=SpringBoot&logoColor=white" />
  <img src="https://img.shields.io/badge/Spring%20Security-6DB33F?style=flat&logo=springsecurity&logoColor=white" />
  <img src="https://img.shields.io/badge/Spring%20Data%20JPA-6DB33F?style=flat&logo=Hibernate&logoColor=white" />
  <img src="https://img.shields.io/badge/JWT-000000?style=flat&logo=JSON%20web%20tokens&logoColor=white" />
  <img src="https://img.shields.io/badge/Junit5-25A162?style=flat&logo=JUnit5&logoColor=white" />
  <img src="https://img.shields.io/badge/Mockito-25A162?style=flat&logoColor=white" />
  <img src="https://img.shields.io/badge/Swagger-85EA2D?style=flat&logo=swagger&logoColor=black" />
  <img src="https://img.shields.io/badge/Naver%20Clover%20API-03C75A?style=flat&logo=naver&logoColor=white" />
  <img src="https://img.shields.io/badge/FastAPI-009688?style=flat&logo=FastAPI&logoColor=white" />
  <img src="https://img.shields.io/badge/Python-3776AB?style=flat&logo=Python&logoColor=white" />
</div>

### 🎨 Frontend
<div>
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white" />
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white" />
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black" />
  <img src="https://img.shields.io/badge/Vue.js-4FC08D?style=flat&logo=vue.js&logoColor=white" />
  <img src="https://img.shields.io/badge/Axios-5A29E4?style=flat&logo=Axios&logoColor=white" />
  <img src="https://img.shields.io/badge/Bootstrap-7952B3?style=flat&logo=bootstrap&logoColor=white" />
  <img src="https://img.shields.io/badge/Pinia-FFD300?style=flat&logo=pinia&logoColor=black" />
  <img src="https://img.shields.io/badge/chart.js-FF6384?style=flat&logo=chartdotjs&logoColor=white" />
</div>

### 📦 Database
<div>
  <img src="https://img.shields.io/badge/MariaDB-003545?style=flat&logo=MariaDB&logoColor=white" />
  <img src="https://img.shields.io/badge/Redis-DC382D?style=flat&logo=redis&logoColor=white" />
</div>

### 🛠️ Tool
<div>
  <img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6C37?style=flat&logo=Postman&logoColor=white" />
  <img src="https://img.shields.io/badge/Notion-000000?style=flat&logo=Notion&logoColor=white" />
  <img src="https://img.shields.io/badge/Figma-F24E1E?style=flat&logo=Figma&logoColor=white" />
  <img src="https://img.shields.io/badge/Miro-050038?style=flat&logo=Miro&logoColor=white" />
  <img src="https://img.shields.io/badge/Google Sheets-34A853?style=flat&logo=google-sheets&logoColor=white" />
  <img src="https://img.shields.io/badge/Discord-5865F2?style=flat&logo=discord&logoColor=white" />
  <img src="https://img.shields.io/badge/Intellij%20IDEA-000000?style=flat&logo=Intellij%20IDEA&logoColor=white" />
</div>

### ⚙️ DevOps
<div>
  <img src="https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white" />
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=flat&logo=kubernetes&logoColor=white" />
  <img src="https://img.shields.io/badge/ArgoCD-EF7B4D?style=flat&logo=Argo&logoColor=white" />
</div>

### ☁️ AWS
<div>
<img src="https://img.shields.io/badge/Amazon%20EC2-FF9900?style=flat&logo=amazonaws&logoColor=white" alt="Amazon EC2" />
<img src="https://img.shields.io/badge/Amazon%20EKS-0052CC?style=flat&logo=kubernetes&logoColor=white" alt="Amazon EKS" />
<img src="https://img.shields.io/badge/Amazon%20S3-569A31?style=flat&logo=AmazonS3&logoColor=white" />
<img src="https://img.shields.io/badge/Amazon%20CloudFront-527FFF?style=flat&logo=load-balancer&logoColor=white" alt="Amazon CloudFront" />
<img src="https://img.shields.io/badge/Amazon%20RDS-527FFF?style=flat&logo=amazonaws&logoColor=white" alt="Amazon RDS" />
<img src="https://img.shields.io/badge/Amazon%20ElastiCache-DC382D?style=flat&logo=redis&logoColor=white" alt="Amazon ElastiCache" />
<img src="https://img.shields.io/badge/Elastic%20Load%20Balancing-FF9900?style=flat&logo=load-balancer&logoColor=white" alt="Elastic Load Balancing" />
<img src="https://img.shields.io/badge/AWS%20Certificate%20Manager-FF9900?style=flat&logo=load-balancer&logoColor=white" alt="AWS Certificate Manager" />
<img src="https://img.shields.io/badge/Amazon%20Elastic%20Container%20Registry-527FFF?style=flat&logo=load-balancer&logoColor=white" alt="Amazon Front" />
<img src="https://img.shields.io/badge/Amazon%20CloudWatch-FF4F8B?style=flat&logo=amazonaws&logoColor=white" alt="Amazon CloudWatch" />


</div>

<br>

---

## 4. 📁 프로젝트 구조

<details>
<summary> 📁 momentum-dao-be</summary>

```

📦 momentum-dao-be
├── 📄 build.gradle
├── 📄 settings.gradle
├── 📄 .gitignore
├── 📄 gradlew / gradlew.bat

├── 📁 src
│   └── 📁 main
│       ├── 📁 java
│       │   └── 📁 com.dao.momentum
│       │
│       │   ├── 📁 [도메인명]                     # 예: announcement, chatbot, evaluation 등
│       │   │   ├── 📁 command                   # 쓰기 전용 영역
│       │   │   │   ├── 📁 controller            # 등록/수정 요청 API
│       │   │   │   ├── 📁 application           # Service 로직
│       │   │   │   └── 📁 domain.aggregate      # Entity, VO
│       │   │   ├── 📁 query                     # 읽기 전용 영역 (CQRS 분리)
│       │   │   │   ├── 📁 controller
│       │   │   │   ├── 📁 dto (request/response)
│       │   │   │   ├── 📁 service
│       │   │   │   └── 📁 mapper                # MyBatis 인터페이스
│       │
│       │   ├── 📁 common
│       │   │   ├── 📁 auth
│       │   │   │   ├── 📁 controller           # 로그인, 토큰 재발급
│       │   │   │   ├── 📁 dto (request/response)
│       │   │   │   ├── 📁 service
│       │   │   │   └── 📁 domain.aggregate     # 유저, 토큰 등
│       │   │   ├── 📁 config                   # 보안, Redis, 매퍼 설정
│       │   │   ├── 📁 exception                # 전역 에러 코드/핸들러
│       │   │   ├── 📁 dto                      # 공통 응답 객체
│       │   │   └── 📁 jwt                      # 인증 필터, Provider, EntryPoint
│       │
│       │   └── 📁 organization / work 등 기타 도메인 (동일 구조 반복)
│
│       └── 📁 resources
│           ├── 📄 application.yml
│           ├── 📄 logback.xml
│           └── 📁 mappers                     # MyBatis SQL 정의
│               ├── 📁 [도메인명]               # 예: evaluation, work, organization
│               │   └── 📄 XxxMapper.xml


```

</details>

<br>


<details>
<summary> 📁 momentum-dao-fe</summary>

```

📦 momentum-dao-fe
├── 📄 index.html
├── 📄 package.json
├── 📄 vite.config.js
├── 📄 jsconfig.json
├── 📄 README.md

├── 📁 public/
│   └── 📄 favicon.ico

├── 📁 src/
│   ├── 📄 main.js
│   ├── 📄 App.vue

│   ├── 📁 api/
│   │   └── axios.js

│   ├── 📁 assets/
│   │   └── 📁 images/

│   ├── 📁 router/
│   │   └── index.js

│   ├── 📁 stores/
│   │   └── auth.js

│   ├── 📁 components/
│   │   ├── 📁 layout/           # Header, Sidebar
│   │   └── 📁 common/           # Button, Modal, Input 등

│   ├── 📁 features/             # 도메인별 기능 구성
│   │   ├── 📁 announcement/
│   │   ├── 📁 approvals/
│   │   ├── 📁 company/
│   │   ├── 📁 employee/
│   │   ├── 📁 performance/
│   │   ├── 📁 retention/
│   │   ├── 📁 works/
│   │   ├── 📁 mypage/
│   │   └── 📁 settings/

│   └── 📁 views/                # 공통 도메인 뷰 구조
│       ├── ListView.vue        # 목록 화면
│       ├── DetailView.vue      # 상세 조회
│       └── FormView.vue        # 등록/수정 화면


```

</details>

<br>


---

## 5. 🛠 형상 관리

### 1. 🔧 깃 브랜치 전략

- **feature/**: 새로운 기능 개발
  \- 예: `feature/user/login`, `feature/community/post`
    - **`feature/(대분류 기능명)/(중분류 기능명)` (요구사항 명세서 기준으로 대분류, 중분류로 구분)**
- **docs/**: 문서 작성 또는 수정
  \- 예: `docs/update-readme`
- **entity/**: 엔티티 만들기
  \-예 : `entity/work`
- **init** : 프로젝트 초기 셋팅 (config, 기본 구조 등)

<img src="assets/images/git_branch.png" alt="requirements" width="550"/>

<br> 

---

### 2. 🔀 커밋 컨벤션

| **키워드** | **내용** |
| --- | --- |
| init | 기초 작업 |
| feat | 기능 구현 완료 |
| fix | 코드의 버그, 로직 오류 수정 |
| docs | README 파일 수정 |
| style | 코드 작성 스타일, 문법 오류 수정 (누락된 세미콜론 등) |
| refactor | 코드 로직 개선 |
| test | 테스트 케이스 추가, 수정 |
| chore | 설정/빌드작업, 패키지 업데이트 등  |

<br> 

---

### 3. 📌 이슈 관리

- 🧾 이슈 템플릿 구성

  <img src="assets/images/git_issue_template.png" alt="wbs" width="550"/>

  <details> 
  <summary>⭐ 기능 템플릿 (Feature)</summary> 
    <img src="assets/images/feature_template.png" alt="wbs" width="550"/>
  </details>

  <details> 
  <summary>♻️ 리팩토링 템플릿 (Refactor)</summary>
    <img src="assets/images/refactor_template.png" alt="wbs" width="550"/>
  </details>

  <details> 
  <summary>🐛 버그 템플릿 (Feature)</summary>
    <img src="assets/images/bug_template.png" alt="wbs" width="550"/>
  </details>
<br>

- 🖥️ 이슈 예시 화면
  <img src="assets/images/git_issues.png" alt="wbs" width="550"/>

<br>


---

## 6. 📊 산출물

### 1. 📊 WBS (작업 분배 및 일정)

🔗 [WBS 명세서 링크](https://docs.google.com/spreadsheets/d/e/2PACX-1vQfc61YoqvYQCcWXTa7PaCfsNpOZQbJgTumgxzMjpLfi2YFxa05fxpPH0ckR2fGo0XMrx9CuJl5BNNP/pubhtml?gid=1971515931&single=true)

<img src="assets/images/WBS.jpg" alt="wbs" width="550"/>

<br>

---

### 2. 📄 요구사항 정의서

🔗 [요구사항 정의서 링크](https://docs.google.com/spreadsheets/d/e/2PACX-1vQfc61YoqvYQCcWXTa7PaCfsNpOZQbJgTumgxzMjpLfi2YFxa05fxpPH0ckR2fGo0XMrx9CuJl5BNNP/pubhtml?gid=520517258&single=true)

<img src="assets/images/requirements.jpg" alt="requirements" width="550"/>

<br>

---

### 3. 🔄 플로우 차트 & UML

<img src="assets/images/flowchart.png" alt="flowchart" width="450"/>

<br>

<img src="assets/images/UML.png" alt="UML" width="750"/>

<br>

---

### 4. 📦 DDD

🔗 [DDD 링크](https://miro.com/app/board/uXjVIwveahs=/?share_link_id=57339969023)

<img src="assets/images/DDD.jpg" alt="DDD"/>

<br>

---

### 5. 📌 ERD & 테이블 정의서

<img src="assets/images/physical_erd.png" alt="ERD"/>

<br>
<br>


<img src="assets/images/logic_erd.png" alt="ERD" width="550"/>

<br>

🔗 [ERD 링크](https://www.erdcloud.com/d/MSjKNyeqCs4GutZJ9)

<br>

🔗 [테이블 정의서 링크](https://docs.google.com/spreadsheets/d/e/2PACX-1vQfc61YoqvYQCcWXTa7PaCfsNpOZQbJgTumgxzMjpLfi2YFxa05fxpPH0ckR2fGo0XMrx9CuJl5BNNP/pubhtml?gid=941831741&single=true)

<br>

---

### 6. 🧩 기능 정의서

🔗 [기능 정의서 링크](https://docs.google.com/spreadsheets/d/e/2PACX-1vQfc61YoqvYQCcWXTa7PaCfsNpOZQbJgTumgxzMjpLfi2YFxa05fxpPH0ckR2fGo0XMrx9CuJl5BNNP/pubhtml?gid=797049621&single=true)

<img src="assets/images/functionalDefinition.jpg" alt="functionalDefinition" width="400"/>

<br>

---

### 7. 📐 시스템 아키텍처 구조도

<img src="assets/images/architecture.png" alt="architecture"/>

<br>

---

### 8. 💻 화면 설계서

🔗 [화면 설계서 (Figma) 링크](https://www.figma.com/design/8nLpa5nQ5oTnB60b3g1C6z/Momentum?node-id=847-19728&t=U8J9vyi76CrZMpkT-1)

<img src="assets/images/figma.png" alt="figma"/>

<br>

---

### 9. 🧾 테스트 케이스 정의서

🔗 [테스트 케이스 정의서 링크](https://docs.google.com/spreadsheets/d/e/2PACX-1vQfc61YoqvYQCcWXTa7PaCfsNpOZQbJgTumgxzMjpLfi2YFxa05fxpPH0ckR2fGo0XMrx9CuJl5BNNP/pubhtml?gid=830549809&single=true)

<img src="assets/images/testcase.jpg" alt="testcase"/>

<br>

---

### 10. 📜 단위 테스트 문서
- [단위 테스트 결과서.pdf](assets/api-docs/%EB%8B%A8%EC%9C%84%20%ED%85%8C%EC%8A%A4%ED%8A%B8%20%EA%B2%B0%EA%B3%BC%EC%84%9C.pdf)


- [단위 테스트 상세 결과서.pdf](assets/api-docs/%EB%8B%A8%EC%9C%84%20%ED%85%8C%EC%8A%A4%ED%8A%B8%20%EC%83%81%EC%84%B8%20%EA%B2%B0%EA%B3%BC%EC%84%9C.pdf)
---

### 11. 📚 SWAGGER 문서

[swagger_api.pdf](assets/api-docs/SWAGGER-API.pdf)

<img src="assets/images/swagger.jpg" alt="swagger"/>

<br>

---


### 12. 🧪 테스트 케이스 상세


<details>
<summary>🖥️ 대시보드</summary>

- 출퇴근 정정
  <img src="assets/testcases/dashboard/대시보드_출퇴근 정정.gif" alt="출퇴근 정정"/>

- 결재 문서함 이동
  <img src="assets/testcases/dashboard/대시보드_결재 문서함 이동.gif" alt="결재 문서함 이동"/>

- 대시보드 - KPI  
  <img src="assets/testcases/retention/대시보드-KPI.gif" alt="대시보드 - KPI" />

- 대시보드 - 캘린더 KPI  
  <img src="assets/testcases/retention/대시보드-캘린더-KPI.gif" alt="대시보드 - 캘린더 KPI" />

- 대시보드 - 캘린더 평가  
  <img src="assets/testcases/retention/대시보드-캘린더-평가.gif" alt="대시보드 - 캘린더 평가" />

</details>
<br>

<details>
<summary>🖥️ 인증</summary>

- 로그인
  <img src="assets/testcases/common/1_로그인.gif" alt="로그인"/>

- 비밀번호 재설정 요청
  <img src="assets/testcases/common/2_비밀번호 재설정 요청.gif" alt="비밀번호 재설정 요청"/>

- 비밀번호 재설정
  <img src="assets/testcases/common/3_비밀번호 재설정.gif" alt="비밀번호 재설정"/>
</details>

<br>

<details>
<summary>🖥️ 회사 정보</summary>

- 회사 정보 조회
  <img src="assets/testcases/company/4_회사 정보 조회.gif" alt="회사 정보 조회"/>

- 조직도 조회
  <img src="assets/testcases/company/5_조직도 조회.gif" alt="회사 정보 조회"/>

</details>

<br>

<details>
<summary>🖥️ 출퇴근</summary>

- 출근 등록
  <img src="assets/testcases/work/work-create.gif" alt="출근 등록"/>

- 퇴근 등록
  <img src="assets/testcases/work/work-update.gif" alt="퇴근 등록"/>

</details>

<br>

<details>
<summary>🖥️ 사원 관리</summary>

- 사원 목록 조회
  <img src="assets/testcases/employee/emp-list.gif" alt="사원 목록 조회"/>

- 사원 등록
  <img src="assets/testcases/employee/emp-create.gif" alt="사원 등록"/>

- CSV 양식 다운로드
  <img src="assets/testcases/employee/csv-download.gif" alt="CSV 양식 다운로드"/>

- 사원 CSV 일괄 등록
  <img src="assets/testcases/employee/csv-upload.gif" alt="사원 CSV 일괄 등록"/>

- 사원 프로필 조회
  <img src="assets/testcases/employee/admin-emp-details.gif" alt="사원 프로필 조회"/>

- 사원 기본 정보 수정
  <img src="assets/testcases/employee/admin-update-empinfo.gif" alt="사원 기본 정보 수정"/>

- 사원 인사 정보 수정
  <img src="assets/testcases/employee/admin-update-record.gif" alt="사원 인사 정보 수정"/>

- 인사 발령 내역 조회
  <img src="assets/testcases/employee/appoint-list.gif" alt="인사 발령 내역 조회"/>

- 인사 발령 등록
  <img src="assets/testcases/employee/appoint-create.gif" alt="인사 발령 등록"/>

- 계약서 목록 조회
  <img src="assets/testcases/employee/admin-contract-list.gif" alt="계약서 목록 조회"/>

- 계약서 등록
  <img src="assets/testcases/employee/contract-create.gif" alt="계약서 등록"/>

- 계약서 삭제
  <img src="assets/testcases/employee/contract-delete.gif" alt="계약서 삭제"/>
</details>

<br>

<details>
<summary>🖥️ 근태 관리</summary>

- 근태 내역 조회
  <img src="assets/testcases/work/work-list.gif" alt="근태 내역 조회"/>

</details>

<br>

<details>
<summary>🖥️ 내 정보</summary>

- 내 정보 조회

<img src="assets/testcases/mypage/6_내정보%20조회.gif" alt="내 정보 조회"/>

- 내 계약서 조회

<img src="assets/testcases/mypage/my-contracts.gif" alt="내 계약서 조회"/>

</details>

<br>

<details>
<summary>🖥️ 결재 관리</summary>

<details>
<summary> &emsp;결재 목록 조회</summary>

- 전체 목록 조회  
  <img src="assets/testcases/approve/결재_전체 결재 목록 조회.gif" alt="전체 결재 목록 조회" />

- 받은 문서 목록 조회  
  <img src="assets/testcases/approve/결재_받은 결재 문서 목록 조회.gif" alt="받은 결재 문서 목록 조회" />

- 보낸 문서 목록 조회  
  <img src="assets/testcases/approve/결재_보낸 결재 문서 목록 조회.gif" alt="보낸 결재 문서 목록 조회" />

</details>

<br>

<details>
<summary> &emsp;결재 상세 조회</summary>

- 결재 상세 조회
  <img src="assets/testcases/approve/결재_결재 문서 상세 조회.gif" alt="결재 문서 상세 조회" />

</details>

<br>

<details>
<summary> &emsp;결재 문서 작성</summary>

- 출퇴근 정정  
  <img src="assets/testcases/approve/결재_결재 작성_출퇴근 정정.gif" alt="출퇴근 정정" />

- 출장  
  <img src="assets/testcases/approve/결재_결재 작성_출장.gif" alt="출장" />

- 초과 근무  
  <img src="assets/testcases/approve/결재_결재 작성_초과 근무.gif" alt="초과 근무" />

- 재택 근무  
  <img src="assets/testcases/approve/결재_결재 작성_재택 근무.gif" alt="재택 근무" />

- 휴가  
  <img src="assets/testcases/approve/결재_결재 작성_휴가.gif" alt="휴가" />

- 품의서  
  <img src="assets/testcases/approve/결재_결재 작성_품의서.gif" alt="품의서" />

- 영수증  
  <img src="assets/testcases/approve/결재_결재 작성_영수증.gif" alt="영수증" />

- 취소  
  <img src="assets/testcases/approve/결재_결재 작성_취소.gif" alt="취소" />

</details>

<br>

<details>
<summary> &emsp;결재 문서 수정</summary>

- 결재 문서 수정
  <img src="assets/testcases/approve/결재_결재 문서 수정.gif" alt="결재 문서 수정" />

</details>

<br>

<details>
<summary> &emsp;결재 문서 회수</summary>

- 결재 문서 회수 성공  
  <img src="assets/testcases/approve/결재_결재 회수 성공.gif" alt="결재 회수 성공" />

- 결재 문서 회수 실패  
  <img src="assets/testcases/approve/결재_회수 실패.gif" alt="결재 회수 실패" />

</details>

<br>


<details>
<summary> &emsp;결재 문서 승인/반려</summary>

- 결재 문서 승인
  <img src="assets/testcases/approve/결재_결재 승인.gif" alt="결재 승인" />

- 결재 문서 반려
  <img src="assets/testcases/approve/결재_결재 반려.gif" alt="결재 반려" />

</details>

</details>

<br>


<details>
<summary> 🖥️ 평가 관리 </summary>

<br>

<details>
<summary> KPI </summary>

<br>

<details>
<summary> &emsp;KPI 등록 및 승인 흐름</summary>

- KPI 등록  
  <img src="assets/testcases/evaluation/KPI등록.gif" alt="KPI 등록" />

<br>

- KPI 조회  
  <img src="assets/testcases/evaluation/KPI조회.gif" alt="KPI 조회" />

<br>

- KPI 승인  
  <img src="assets/testcases/evaluation/KPI승인.gif" alt="KPI 승인" />

<br>

- KPI 반려  
  <img src="assets/testcases/evaluation/KPI반려.gif" alt="KPI 반려" />

<br>

- KPI 철회  
  <img src="assets/testcases/evaluation/KPI철회.gif" alt="KPI 철회" />

</details>

<br>

<details>
<summary> &emsp;KPI 수정 및 최신화</summary>

- KPI 최신화  
  <img src="assets/testcases/evaluation/KPI최신화.gif" alt="KPI 최신화" />

</details>

<br>

<details>
<summary> &emsp;KPI 취소 처리 흐름</summary>

- KPI 취소 신청  
  <img src="assets/testcases/evaluation/KPI취소신청.gif" alt="KPI 취소 신청" />

<br>

- KPI 취소 승인  
  <img src="assets/testcases/evaluation/KPI취소승인.gif" alt="KPI 취소 승인" />

<br>

- KPI 취소 반려  
  <img src="assets/testcases/evaluation/KPI취소반려.gif" alt="KPI 취소 반려" />

</details>

<br>

<details>
<summary> &emsp;KPI 분석 및 통계</summary>

- KPI 분석 - 대시보드  
  <img src="assets/testcases/evaluation/KPI분석-대시보드.gif" alt="KPI 분석 - 대시보드" />

<br>

- KPI 분석 - 엑셀  
  <img src="assets/testcases/evaluation/KPI분석-엑셀.gif" alt="KPI 분석 - 엑셀" />

</details>

<br>

<details>
<summary> &emsp;사원 KPI 개별 보기</summary>

- 사원별 KPI  
  <img src="assets/testcases/evaluation/사원별KPI.gif" alt="사원별 KPI" />

</details>

<br>

</details>

<br>


<details>
<summary> 다면 평가 </summary>

<br>

<details>
<summary> &emsp;사원 간 평가</summary>

- 사원간 평가  
  <img src="assets/testcases/evaluation/사원간평가.gif" alt="사원간 평가" />

<br>

- 사원간 평가 - 엑셀  
  <img src="assets/testcases/evaluation/사원간평가-엑셀.gif" alt="사원간 평가 - 엑셀" />

</details>

<br>

<details>
<summary> &emsp;조직 평가</summary>

- 조직 평가  
  <img src="assets/testcases/evaluation/조직평가.gif" alt="조직 평가" />

<br>

- 조직 평가 - 엑셀  
  <img src="assets/testcases/evaluation/조직평가-엑셀.gif" alt="조직 평가 - 엑셀" />

</details>

<br>

<details>
<summary> &emsp;자가 진단 평가</summary>

- 자가 진단  
  <img src="assets/testcases/evaluation/자가진단.gif" alt="자가 진단" />

<br>

- 자가 진단 - 엑셀  
  <img src="assets/testcases/evaluation/자가진단-엑셀.gif" alt="자가 진단 - 엑셀" />

</details>

<br>

<details>
<summary> &emsp;평가 제출</summary>

- 평가 제출  
  <img src="assets/testcases/evaluation/평가제출.gif" alt="평가 제출" />

</details>

<br>

<details>
<summary> &emsp; 평가 회차 조회</summary>

- 평가 회차  
  <img src="assets/testcases/evaluation/평가회차.gif" alt="평가 회차" />

<br>

- 평가 회차 등록  
  <img src="assets/testcases/evaluation/평가회차-등록.gif" alt="평가 회차 등록" />

<br>

- 평가 회차 수정  
  <img src="assets/testcases/evaluation/평가회차-수정.gif" alt="평가 회차 수정" />

<br>

- 평가 회차 삭제  
  <img src="assets/testcases/evaluation/평가회차-삭제.gif" alt="평가 회차 삭제" />
</details>

</details>

<br>

<details>
<summary> 인사 평가</summary>

<br>

<details>
<summary> &emsp;인사 평가 내역</summary>

- 인사 평가 내역  
  <img src="assets/testcases/evaluation/인사평가내역.gif" alt="인사 평가 내역" />

</details>

<br>

<details>
<summary> &emsp;인사 평가 이의제기 등록 및 삭제</summary>

- 인사 평가 이의제기 등록  
  <img src="assets/testcases/evaluation/인사평가-이의제기등록.gif" alt="인사 평가 이의제기 등록" />

<br>

- 인사 평가 이의제기 삭제  
  <img src="assets/testcases/evaluation/인사평가-이의제기삭제.gif" alt="인사 평가 이의제기 삭제" />

</details>

<br>

<details>
<summary> &emsp;이의제기 승인 및 반려 처리</summary>

- 이의제기 승인  
  <img src="assets/testcases/evaluation/이의제기-승인.gif" alt="이의제기 승인" />

<br>

- 이의제기 반려  
  <img src="assets/testcases/evaluation/이의제기-반려.gif" alt="이의제기 반려" />

</details>

</details>

<br>

</details>

<br>

<details>
<summary>🖥️ 근속 전망</summary>

<br>

<details>
<summary> 근속 전망</summary>

<br>

<details>
<summary> &emsp;근속 전망 대시보드</summary>

- 근속전망 - 대시보드  
  <img src="assets/testcases/retention/근속전망-대시보드.gif" alt="근속전망 - 대시보드" />

</details>

<br>

<details>
<summary> &emsp;근속 전망 회차 및 지수 관리</summary>

- 근속전망 - 회차 등록  
  <img src="assets/testcases/retention/근속전망-회차등록.gif" alt="근속전망 - 회차 등록" />

<br>

- 근속전망 - 지수  
  <img src="assets/testcases/retention/근속전망-지수.gif" alt="근속전망 - 지수" />

</details>

<br>

<details>
<summary> &emsp;근속 전망 엑셀 다운로드</summary>

- 근속전망 - 엑셀  
  <img src="assets/testcases/retention/근속전망-엑셀.gif" alt="근속전망 - 엑셀" />

</details>

</details>

<br>

<details>
<summary>면담 요청</summary>

- 근속전망 - 면담요청  
  <img src="assets/testcases/retention/근속전망-면담요청.gif" alt="근속전망 - 면담요청" />

<br>

- 면담 요청  
  <img src="assets/testcases/retention/면담요청.gif" alt="면담 요청" />

<br>

- 면담 보고  
  <img src="assets/testcases/retention/면담보고.gif" alt="면담 보고" />

<br>

- 면담 피드백  
  <img src="assets/testcases/retention/면담 피드백.gif" alt="면담 피드백" />

</details>

<br>

</details>

<br>

<details>
<summary>🖥️ 공지사항</summary>

<br>

<details>
<summary> 공지사항 목록 조회</summary>
  <img src="assets/testcases/announcement/공지사항_목록조회.gif" alt="공지사항 목록 조회" />

</details>

<br>

<details>
<summary> 공지사항 상세 조회</summary>
  <img src="assets/testcases/announcement/공지사항_상세조회.gif" alt="공지사항 상세 조회" />

</details>

<br>

<details>
<summary> 공지사항 작성</summary>
  <img src="assets/testcases/announcement/공지사항_작성.gif" alt="공지사항 작성" />

</details>

<br>

<details>
<summary> 공지사항 수정 및 삭제</summary>
  <img src="assets/testcases/announcement/공지사항_수정_및_삭제.gif" alt="공지사항 수정 및 삭제" />

</details>

<br>

</details>

<br>

<details>
<summary>🖥️ 챗봇</summary>

<br>

<details>
<summary> 사내 데이터 기반 Q&A 챗봇</summary>
  <img src="assets/testcases/chatbot/사내_데이터_기반_Q&A_챗봇.gif" alt="사내 데이터 기반 Q&A 챗봇" />
</details>

<br>

<details>
<summary> 사내 시스템 이용 Q&A 챗봇</summary>
  <img src="assets/testcases/chatbot/사내_시스템_이용_Q&A_챗봇.gif" alt="사내 시스템 이용 Q&A 챗봇" />
</details>

</details>

</details>
<br>

<details>
<summary>🖥️ 설정</summary>

<br>

<details> 
<summary> &emsp;회사 설정</summary>

- 회사 설정 페이지
  <img src="assets/testcases/setting/7_회사 설정 페이지.gif" alt="회사 설정 페이지" />

<br>

</details> 

<br> 

<details> 

<summary> &emsp;부서 관리</summary>

- 부서 생성
  <img src="assets/testcases/setting/8_부서관리-부서_생성.gif" alt="부서 생성" />

<br>

- 부서 수정
  <img src="assets/testcases/setting/9_부서관리-부서 수정.gif" alt="부서 수정" />

<br>

- 부서 삭제
  <img src="assets/testcases/setting/10_부서 관리-부서 삭제.gif" alt="부서 삭제" />

<br>

</details> 

<br>

<details> 
<summary> &emsp;직위 관리</summary>

- 직위 생성
  <img src="assets/testcases/setting/11_직위 관리-직위 생성.gif" alt="직위 생성" />

<br>

- 직위 수정
  <img src="assets/testcases/setting/12_직위 관리-직위 수정.gif" alt="직위 수정" />

<br>

- 직위 삭제
  <img src="assets/testcases/setting/13_직위 관리-직위 삭제.gif" alt="직위 삭제" />

<br>

</details> 

<br> 

<details> 
<summary> &emsp;권한 관리</summary>

- 권한 수정
  <img src="assets/testcases/setting/14_권한관리-권한 수정.gif" alt="권한 수정" />

<br>

</details> 

<br> 

<details> 
<summary> &emsp;휴일 관리</summary>

- 휴일 조회
  <img src="assets/testcases/setting/15_휴일관리-휴일 조회.gif" alt="휴일 조회" />

<br>

- 휴일 생성
  <img src="assets/testcases/setting/16_휴일관리-휴일생성.gif" alt="휴일 생성" />

<br>

- 휴일 삭제
  <img src="assets/testcases/setting/17_휴일관리-휴일삭제.gif" alt="휴일 삭제" />

<br>

</details>

</details>

---

### 13. 🗄️ 빌드 및 배포


<br>

<br>

---

## 7. 🫂 팀원 회고



|**곽진웅**|
|------|

> 

<br>



| **김여진** |
|---------|

> 

<br>



| **김태인** |
|---------|

> 

<br>


| **김운경** |
|---------|

> 

<br>


| **정유진** |
|---------|

> 

<br>
