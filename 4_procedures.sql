CREATE OR REPLACE PROCEDURE get_customer_orders(p_customer_id NUMBER)
AS
BEGIN
    FOR rec IN (
        SELECT * FROM orders
        WHERE customer_id = p_customer_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Order ID: ' || rec.order_id || 
                             ' Amount: ' || rec.total_amount);
    END LOOP;
END;
/