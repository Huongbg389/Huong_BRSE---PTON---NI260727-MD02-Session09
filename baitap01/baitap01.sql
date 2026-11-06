USE hocdatabase;
CREATE TABLE customers (
   customer_id INT PRIMARY KEY AUTO_INCREMENT,
   customer_name VARCHAR(50) NOT NULL,
   email VARCHAR(100) NOT NULL,
   phone VARCHAR(15) NOT NULL,
   address VARCHAR(255) NOT NULL
   );
   INSERT INTO customers (customer_name, email, phone, address) 
   VALUES
     ('Alice', 'alice@example.com', '1234567890', '123 Main St'),
     ('Bob', 'bob@example.com', '1234567891', '456 Elm St'),
     ('Carol', 'carol@example.com', '1234567892', '789 Oak St'),
     ('David', 'david@example.com', '1234567893', '135 Pine St'),
     ('Eva', 'eva@example.com', '1234567894', '246 Maple St'),
     ('Frank', 'frank@example.com', '1234567895', '369 Cedar St'),
     ('Grace', 'grace@example.com', '1234567896', '159 Birch St'),
     ('Hannah', 'hannah@example.com', '1234567897', '753 Willow St'),
     ('Ian', 'ian@example.com', '1234567898', '852 Ash St'),
     ('Jane', 'jane@example.com', '1234567899', '951 Cherry St')

-- Tạo Unique Index cho cột email
CREATE UNIQUE INDEX idx_email ON customers (email);

-- Tạo Non_Unique Index cho cột phone
CREATE INDEX idx_phone ON customers (phone);

-- Kiểm tra chỉ mục
EXPLAIN SELECT * FROM customers WHERE email = 'ian@example.com';
