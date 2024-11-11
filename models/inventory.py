from models.base_model import BaseModel

class Inventory(BaseModel):
    def __init__(self):
        schema = """
            inventory_id INT PRIMARY KEY,
            product_id INT,
            date DATE,
            stock_available INT,
            last_updated TIMESTAMP,
            FOREIGN KEY (product_id) REFERENCES products(product_id)
        """
        table_name = "inventories"
        super().__init__(schema, table_name)
