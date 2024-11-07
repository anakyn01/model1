<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>sql</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>sql : Structured Query Language</h1>
<pre>
데이터베이스에서 데이터를 추출하고 조작하는 데에 사용하는 데이터 처리 언어
SQL은 무엇을 할 수 있나요?
SQL은 데이터베이스에 대해 쿼리를 실행할 수 있습니다.
SQL은 데이터베이스에서 데이터를 검색할 수 있습니다
SQL은 데이터베이스에 레코드를 삽입할 수 있습니다
SQL은 데이터베이스의 레코드를 업데이트할 수 있습니다
SQL은 데이터베이스에서 레코드를 삭제할 수 있습니다
SQL은 새로운 데이터베이스를 생성할 수 있습니다 => create database bbs
SQL은 데이터베이스에 새로운 테이블을 생성할 수 있습니다. 데이터를 담아주는 테이블
SQL은 데이터베이스에 저장 프로시저를 생성할 수 있습니다.
프로시저 : DB 에 대한 일련의 작업을 정리한 절차를 관계형 데이터베이스 관리 시스템에 저장한 것이다
SQL은 데이터베이스에 뷰를 생성할 수 있습니다 
SQL은 테이블, 프로시저 및 뷰에 대한 권한을 설정할 수 있습니다.

웹 사이트에서 SQL 사용
RDBMS 데이터베이스 프로그램(예: MS Access, SQL Server, MySQL)
PHP나 ASP와 같은 서버 측 스크립팅 언어를 사용하려면
SQL을 사용하여 원하는 데이터를 얻으려면
HTML / CSS를 사용하여 페이지 스타일을 지정하려면

관계형 데이터베이스

RDBMS는 관계형 데이터베이스 관리 시스템을 의미합니다.

RDBMS는 SQL의 기반이며, MS SQL Server, IBM DB2, Oracle, MySQL, Microsoft Access 
등 모든 최신 데이터베이스 시스템의 기반입니다.

CREATE DATABASE ldh;
ddl Data Definition Language 데이터 정의어

create : 데이터 베이스, 테이블 
alter : 데이블을 수정하는 역활
drop : 데이터베이스 테이블을 삭제 하는 역활
truncate : 테이블을 초기화 시키는 역활

DML (data manipulation language) 데이터 조작어
crud
select : 데이터를 조회하는 역활을 한다
insert : 데이터를 삽입하는 역활을 한다
update : 데이터를 수정하는 역활을 한다
delete : 데이터를 삭제하는 역활을 한다

DCL (data control language): 데이터 제어어
데이터베이스에 접근하거나 객체에 권한을 준는 등의 역활
GRANT : 특정데이터베이스 사용자에게 특정 작업에 대한 수행권한을 부여
REVOKE : 특정데이터베이스 사용자에게 특정 작업에 대한 수행권한을 부여한걸 박탈,회수

트랜잭션 제어어(TCL : Transaction Control Language)
commit : 트랜잭션(데이터베이스의 상태를 변화시키기 위해서 수행하는 작업의 단위) 작업이 정상적으로 완료되었음을 관리자에게 알려준다
rollback : 트랜잭션 작업이 비정상적으로 종료 되었을때 원래의 상태로 복구
SAVEPOINT : rpg게임에서 보스방앞에서 세이브 트랜잭션 전체를 롤백하지 않고도 특정한 지점으로 ROLLBACK
git
commit : git에 저장하는 단계
rollback : 업로드 하면서 원하지 않계 단계에 맞지 않을때 그걸 언느 시점으로 돌리는걸 

SQL 구문
데이터베이스에서 수행해야 하는 대부분의 작업은 SQL 문을 사용하여 수행됩니다.

SELECT * FROM user; 고객 테이블에서 모든 레코드를 선택하세요
SELECT CustomerName, City FROM Customers;
커스터머 테이블에서 도시, 커스텀명 데이터를 모두 추출

SELECT DISTINCT Country FROM Customers; 고객이 속한 나라중에 모든 국가를 열거
DISTINCT없다면 요점이 없이 수량대로 다나옵니다

WHERE => 레코드를 필터링하는 데 사용됩니다.
지정된 조건을 충족하는 레코드만 추출하는 데 사용됩니다.

SELECT * FROM Customers
WHERE Country='Mexico'; //멕시코만 출력

가장 중요한 SQL 명령 중 일부
SELECT- 데이터베이스에서 데이터를 추출합니다
UPDATE- 데이터베이스의 데이터를 업데이트합니다
DELETE- 데이터베이스에서 데이터를 삭제합니다
INSERT INTO- 데이터베이스에 새로운 데이터를 삽입합니다.
CREATE DATABASE- 새로운 데이터베이스를 생성합니다
ALTER DATABASE- 데이터베이스를 수정합니다
CREATE TABLE- 새 테이블을 만듭니다
ALTER TABLE- 테이블을 수정합니다
DROP TABLE- 테이블을 삭제합니다
CREATE INDEX- 인덱스(검색 키)를 생성합니다.
DROP INDEX- 인덱스를 삭제합니다

<h1>ORDER BY</h1>
- ORDER BY키워드는 결과 집합을 오름차순이나 내림차순으로 정렬하는 데 사용됩니다.
SELECT * FROM Products
ORDER BY Price; 가격순으로 제품 정렬(작은 숫자부터[오름차순] )

가장 높은 가격부터 가장 낮은 가격 순으로 제품을 정렬하세요:
SELECT * FROM Products
ORDER BY Price DESC; 역순으로

ASC와 DESC 모두 사용
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
"Country"를 기준으로 오름차순, "CustomerName" 열을 기준으로 내림차순으로 정렬합니다.

AND => 그리고 두가지 조건이 무조건 성립해야지만 된다
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

검색결과가 없을수 있으니 or
SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
(괄호를 치면 둘다 G R[or인데 둘다 포함]) 스페인 있는 G, R고객

Future f = new Future(key:spain, value="g, r")

SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';
스페인에 있거나 없거나

String plus = "문자열" + 3 +4 => 34
String plus = "문자열" + (3 +4) => 7

Future all = new Future(key:spain,other, value="g, r")

OR 연산자
독일 또는 스페인의 모든 고객을 선택하세요:
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';
조건이 하나라도 참이면 출력

!= not 
speak != null
NOT 연산자

SELECT * FROM Customers
WHERE NOT Country = 'Spain'; 스페인이 아닌 고객만

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';

NOT IN() => 안에 표기가 것이 없음
SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');

Insert
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
테이블에 모든 값을 다 넣음

지정된 열에만 데이터 삽입
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

SQL NULL 값
NULL 값을 갖는 필드는 값이 없는 필드입니다.
테이블의 필드가 선택 사항인 경우 이 필드에 값을 추가하지 않고도 새 레코드를 삽입하거나 
레코드를 업데이트할 수 있습니다. 
그런 다음 필드는 NULL 값으로 저장됩니다.
참고: NULL 값은 0 값이나 공백이 포함된 필드와 다릅니다. 
NULL 값이 있는 필드는 레코드 생성 중에 비워둔 필드입니다!

IS NULL 구문
SELECT column_names
FROM table_name
WHERE column_name IS NULL; 레코드가 없다

IS NOT NULL 연산자
이 IS NOT NULL연산자는 비어 있지 않은 값(NULL 값이 아닌 값)을 테스트하는 데 사용됩니다.
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

SQL UPDATE 문
해당 UPDATE명령문은 테이블의 기존 레코드를 수정하는 데 사용됩니다.

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
WHERE절은 업데이트해야 할 레코드를 지정합니다.
절을 생략하면 WHERE테이블의 모든 레코드가 업데이트됩니다!

첫번째 고객(CustomerID = 1)을 새 담당자 와 새 도시로 업데이트합니다.
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

업데이트 경고!
레코드를 업데이트할 때는 조심하세요. 
절을 생략하면 WHERE모든 레코드가 업데이트됩니다!
UPDATE Customers
SET ContactName='Juan';

SQL DELETE 문
해당 DELETE명령문은 테이블의 기존 레코드를 삭제하는 데 사용됩니다.
DELETE FROM table_name WHERE condition;
WHERE절은 삭제할 레코드를 지정합니다. 절을 생략하면 테이블의 모든 레코드가 삭제됩니다!

ddl drop 테이블 삭제
DROP TABLE Customers;

DELETE FROM Customers; 테이블을 비웁니다

SQL TOP, LIMIT, FETCH FIRST 또는 ROWNUM 절
SQL SELECT TOP 절
반환할 레코드 수를 지정하는 데 사용됩니다.
수천 개의 레코드가 있는 대형 테이블에서 유용합니다.

SELECT TOP 3 * FROM Customers; 
Customers 테이블의 처음 3개 레코드만 선택하세요

SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;
CustomerName을 기준으로 
결과를 알파벳 순으로 역순으로 정렬하고 처음 3개 레코드를 반환합니다

SQL 집계 함수
집계 함수는 값 집합에 대한 계산을 수행하고 단일 값을 반환하는 함수입니다.
집계 함수는 종종 문장 GROUP BY의 절 과 함께 사용됩니다

가장 일반적으로 사용되는 SQL 집계 함수는 다음과 같습니다.

MIN()- 선택된 열 내에서 가장 작은 값을 반환합니다.
MAX()- 선택된 열 내에서 가장 큰 값을 반환합니다.
COUNT()- 집합의 행 수를 반환합니다.
SUM()- 숫자 열의 총합을 반환합니다.
AVG()- 숫자 열의 평균 값을 반환합니다.
집계 함수는 Null 값을 무시합니다

MIN() 및 MAX() 함수
가격 열에서 가장 낮은 가격을 찾으세요:
SELECT MIN(Price)
FROM Products;

가격 열에서 가장 높은 가격을 찾으세요:
SELECT MAX(Price)
FROM Products;

COUNT() 함수
지정된 기준과 일치하는 행의 수를 반환합니다.

SELECT COUNT(*) 현재 레코드가 기록된 수가 나옵니다
FROM Products;

SELECT COUNT(ProductName) 열이름을 지정할수 있습니다
FROM Products;

중복 무시
SELECT COUNT(DISTINCT Price)
FROM Products;

SQL SUM() 함수
Quantity테이블 의 모든 필드의 합계를 반환합니다 OrderDetails.
SELECT SUM(Quantity)
FROM OrderDetails;

SQL AVG() 함수
숫자형 열의 평균값을 반환합니다.
모든 제품의 평균 가격을 찾아보세요:
SELECT AVG(Price)
FROM Products;

LIKE 연산자 : 이 연산자는 절에서 열의 지정된 패턴을 검색하는 데 LIKE사용
"a"로 시작하는 모든 고객을 선택하세요:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

IN 연산자 
'독일', '프랑스' 또는 '영국'의 모든 고객을 반환합니다
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

'독일', '프랑스', '영국'이 아닌 모든 고객을 반환합니다.
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

BETWEEN 연산자
연산자 BETWEEN는 주어진 범위 내에서 값을 선택합니다. 
값은 숫자, 텍스트 또는 날짜일 수 있습니다.
연산자 BETWEEN는 포괄적입니다. 시작 값과 끝 값이 포함됩니다. 

제한적인 범위 지정 가격이 10~20 사이인 모든 제품을 선택합니다.
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

반대
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);
10~20 사이인 모든 제품을 선택합니다. 또한 CategoryID는 1, 2 또는 3이어야 합니다.

별칭 as
테이블이나 테이블의 열에 임시 이름을 지정하는 데 사용됩니다.

SELECT CustomerID AS ID
FROM Customers;

SQL 조인 10개에 칸 2개나 3개를 출력하여 보고자 할때
두 개 이상의 테이블의 관련 열을 기준으로 행을 결합하는 데 사용됩니다.

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

다음은 SQL의 다양한 JOIN 유형입니다.
(INNER) JOIN: 두 테이블 모두에서 일치하는 값을 갖는 레코드를 반환합니다.
LEFT (OUTER) JOIN: 왼쪽 테이블의 모든 레코드와 오른쪽 테이블의 일치하는 레코드를 반환합니다.
RIGHT (OUTER) JOIN: 오른쪽 테이블의 모든 레코드와 왼쪽 테이블의 일치하는 레코드를 반환합니다.
FULL (OUTER) JOIN: 왼쪽 또는 오른쪽 테이블에 일치 항목이 있는 경우 모든 레코드를 반환합니다.

INNER JOIN 키워드로 제품과 카테고리를 결합하세요:
SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

SQL GROUP BY 문
각 국가의 고객 수를 구하세요
COUNT(), MAX(), MIN(), SUM(), AVG())

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

EXISTS 연산자 : 하위 쿼리에 레코드가 존재하는지 테스트하는 데 사용됩니다.
위 쿼리가 하나 이상의 레코드를 반환하면 연산자는 TRUE를 반환합니다 .
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

SQL SELECT INTO : 한 테이블의 데이터를 새 테이블로 복사합니다.

SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

INSERT INTO SELECT
한 테이블의 데이터를 복사하여 다른 테이블에 삽입합니다.

한 테이블의 모든 열을 다른 테이블로 복사:
INSERT INTO table2
SELECT * FROM table1
WHERE condition;

case표현식 : 
조건을 거치고 첫 번째 조건이 충족되면 값을 반환합니다(if-then-else 문과 같음).
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

Null함수 : IFNULL()함수를 사용하면 표현식이 NULL인 경우 
대체 값을 반환할 수 있습니다.
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products;

SQL 저장 프로시저 : 저장할 수 있는 준비된 SQL 코드로, 코드를 계속 다시 사용할 수 있습니다.
반복적으로 작성하는 SQL 쿼리가 있는 경우 이를 저장 프로시저로 저장한 후 호출하여 실행하기만 하면 됩니다.
저장 프로시저에 매개변수를 전달하면, 저장 프로시저가 전달된 매개변수 값에 따라 작동할 수 있습니다.

sql개에 함수
CREATE PROCEDURE 얍
AS
sql_statement
GO;

EXEC 얍

sql주석 단일주석 --wntjr
/**/
자바,자바스크립트,리액트,뷰,넥스트js,c // /**/
파이선 단일 # 긴주석 ''''''
<%-- --%>

SQL CREATE DATABASE 문
CREATE DATABASE databasename;

삭제
DROP DATABASE databasename;

BACKUP DATABASE
BACKUP DATABASE databasename
TO DISK = 'filepath';

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

테이블 생성
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

테이블 삭제
DROP TABLE table_name;

테이블 잘라내기
TRUNCATE TABLE table_name;

ALTER TABLE 문
ALTER TABLE table_name
ADD column_name datatype;

ALTER TABLE Customers
ADD Email varchar(255);

ALTER TABLE table_name
RENAME COLUMN old_name to new_name;

sql제약조건
NOT NULL- 열이 NULL 값을 가질 수 없음을 보장합니다.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);


UNIQUE- 열의 모든 값이 서로 다른지 확인합니다.
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);


PRIMARY KEYNOT NULL- a 와 . 의 조합 UNIQUE. 테이블의 각 행을 고유하게 식별합니다.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

FOREIGN KEY - 테이블 간 링크를 파괴하는 작업을 방지합니다.
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);


CHECK- 열의 값이 특정 조건을 만족하는지 확인합니다.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);


DEFAULT- 값이 지정되지 않은 경우 열에 대한 기본값을 설정합니다.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes' 항복이 없는 경우 대체
);

자동 증가 필드
CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);

CREATE INDEX- 데이터베이스에서 매우 빠르게 데이터를 생성하고 검색하는 데 사용됩니다.

sql호스팅
웹사이트에서 데이터베이스의 데이터를 저장하고 검색할 수 있게 하려면 웹 서버가 SQL 언어를 사용하는 데이터베이스 시스템에 접근할 수 있어야 합니다.

웹 서버가 인터넷 서비스 제공업체(ISP)에 의해 호스팅되는 경우 SQL 호스팅 플랜을 찾아야 합니다.

가장 일반적인 SQL 호스팅 데이터베이스는 
MS SQL Server, 
Oracle, 
MySQL, 
MS Access입니다.
</pre>
</div>
</div>
</div>
</body>
</html>