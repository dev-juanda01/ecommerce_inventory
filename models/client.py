from models.base_model import BaseModel

class Client(BaseModel):
    def __init__(self):
        schema = """
            client_id INT PRIMARY KEY,
            name VARCHAR(100),
            location VARCHAR(100),
            email VARCHAR(100),
            phone VARCHAR(100),
            address TEXT,
            registration_date TIMESTAMP
        """
        table_name = "clients"
        super().__init__(schema, table_name)
