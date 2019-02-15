SET SERVEROUTPUT ON;

DECLARE
    l_right_now VARCHAR(1);
    BEGIN
        l_right_now := SYSDATE;
        DBMS_OUTPUT.PUT_LINE(l_right_now);
    EXCEPTION
        WHEN VALUE_ERROR
        THEN
            DBMS_OUTPUT.PUT_LINE('The l_right_now is too small or too big for the default date format');
END;