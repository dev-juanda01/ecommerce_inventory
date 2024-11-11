from models.base_model import BaseModel

class Category(BaseModel):
    def __init__(self):
        schema = """
            category_id INT PRIMARY KEY,
            name VARCHAR(100),
            description TEXT,
            created_at TIMESTAMP
        """
        table_name = "categories"
        super().__init__(schema, table_name)
