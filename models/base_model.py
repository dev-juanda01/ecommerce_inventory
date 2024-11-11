from db.connection import create_connection


class BaseModel:
    def __init__(self, schema, table_name):
        self.schema = schema
        self.table_name = table_name

    def create_table(self):
        """Creates the table in the database using the defined schema."""
        connection = create_connection()
        cursor = connection.cursor()
        cursor.execute(f"CREATE TABLE IF NOT EXISTS {self.table_name} ({self.schema});")
        connection.commit()
        cursor.close()
        connection.close()
        print(f"Table '{self.table_name}' created successfully.")

    def insert_data(self, data):
        """Inserts data into the table."""
        connection = create_connection()
        cursor = connection.cursor()

        columns = ', '.join(data.columns)
        values_placeholder = ', '.join(['%s'] * len(data.columns))

        for _, row in data.iterrows():
            cursor.execute(
                f"INSERT INTO {self.table_name} ({columns}) VALUES ({values_placeholder})",
                tuple(row)
            )

        connection.commit()
        cursor.close()
        connection.close()
        print(f"Data inserted into table '{self.table_name}' successfully.")