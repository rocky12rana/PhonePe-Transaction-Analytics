--All_user_data
CREATE TABLE All_Users_data (
    user_id VARCHAR(20),
    name VARCHAR(100),
    age INT,
    join_date DATE
);


--All Transaction_data
DROP TABLE IF EXISTS All_Transactions_data;

CREATE TABLE All_transactions_data
(
    transaction_id VARCHAR(30),
    amount DOUBLE PRECISION,
    user_id VARCHAR(20),
    service VARCHAR(100),
    service_type VARCHAR(100),
    payment_status VARCHAR(30),
    reason VARCHAR(100),
    transaction_date DATE
);
