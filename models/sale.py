from models.base_model import BaseModel

class Sale(BaseModel):
    def __init__(self):
        schema = """
            sale_id INT PRIMARY KEY,
            product_id INT,
            client_id INT,
            sale_date DATE,
            quantity INT,
            price DECIMAL(10, 2),
            payment_method VARCHAR(50),
            sale_status VARCHAR(50),
            FOREIGN KEY (product_id) REFERENCES products(product_id),
            FOREIGN KEY (client_id) REFERENCES clients(client_id)
        """
        table_name = "sales"
        super().__init__(schema, table_name)
