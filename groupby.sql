CREATE OR REPLACE PROCEDURE MAX_SALARY IS

CURSOR MAX_CUR IS SELECT DEPARTMENT_ID, MAX(SALARY) AS SAL FROM EMPLOYEE GROUP BY DEPARTMENT_ID HAVING DEPARTMENT_ID IN (1,2) ORDER BY DEPARTMENT_ID;

MAX_REC MAX_CUR%ROWTYPE;


BEGIN

FOR MAX_REC IN MAX_CUR
      LOOP      
      
      DBMS_OUTPUT.PUT_LINE ('MAXIMUM SALARY FROM DEPARTMENT ID: ' || MAX_REC.DEPARTMENT_ID || ' IS '  || MAX_REC.SAL ||  CHR(10) );

      END LOOP;
       

END MAX_SALARY;
/
SHOW ERRORS;