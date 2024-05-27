CREATE TABLE IF NOT EXISTS Taco_Order (
    id INT AUTO_INCREMENT PRIMARY KEY,
    delivery_Name VARCHAR(50) NOT NULL,
    delivery_Street VARCHAR(50) NOT NULL,
    delivery_City VARCHAR(50) NOT NULL,
    delivery_State VARCHAR(50) NOT NULL,
    delivery_Zip VARCHAR(50) NOT NULL,
    cc_number VARCHAR(16) NOT NULL,
    cc_expiration VARCHAR(5) NOT NULL,
    cc_cvv VARCHAR(3) NOT NULL,
    placed_at TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS Taco(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    taco_order BIGINT NOT NULL,
    taco_order_key BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    CONSTRAINT fk_taco_order FOREIGN KEY (taco_order) REFERENCES Taco_Order(id)
);

CREATE TABLE IF NOT EXISTS Ingredient (
    id VARCHAR(4) PRIMARY KEY NOT NULL,
    name VARCHAR(25) NOT NULL,
    type VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ingredient_Ref (
        ingredient VARCHAR(4) NOT NULL ,
        taco BIGINT NOT NULL,
        taco_key BIGINT NOT NULL,
        CONSTRAINT fk_ingredient_ref FOREIGN KEY (ingredient) REFERENCES Ingredient(id)
); 