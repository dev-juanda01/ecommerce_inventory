from models.base_model import BaseModel

class Product(BaseModel):
    def __init__(self):
        schema = """
            product_id INT PRIMARY KEY AUTO_INCREMENT,
            name VARCHAR(1000),
            category_id INT NULL,
            unit_price DECIMAL(10, 2),
            brand VARCHAR(50) DEFAULT 'N/A',
            stock INT DEFAULT 0,
            description TEXT NULL,
            created_at TIMESTAMP,
            FOREIGN KEY (category_id) REFERENCES categories(category_id)
        """
        table_name = "products"
        super().__init__(schema, table_name)
