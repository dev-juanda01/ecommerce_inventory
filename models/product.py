from models.base_model import BaseModel

class Product(BaseModel):
    def __init__(self):
        schema = """
            product_id INT PRIMARY KEY,
            name VARCHAR(100),
            category_id INT,
            unit_price DECIMAL(10, 2),
            brand VARCHAR(50),
            stock INT,
            description TEXT,
            created_at TIMESTAMP,
            FOREIGN KEY (category_id) REFERENCES categories(category_id)
        """
        table_name = "products"
        super().__init__(schema, table_name)
