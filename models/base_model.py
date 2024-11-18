import pandas as pd
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
        """
        Inserts data into the table.
        Supports pandas DataFrame, list of dictionaries, or list of tuples.
        """
        connection = create_connection()
        cursor = connection.cursor()

        if isinstance(data, pd.DataFrame):  # Pandas DataFrame
            columns = ', '.join(data.columns)
            values_placeholder = ', '.join(['%s'] * len(data.columns))
            rows = [tuple(row) for _, row in data.iterrows()]
            
        elif isinstance(data, list):  # List of dicts or tuples

            if all(isinstance(item, dict) for item in data):  # List of dictionaries
                columns = ', '.join(data[0].keys())
                values_placeholder = ', '.join(['%s'] * len(data[0]))
                rows = [tuple(item.values()) for item in data]

            elif all(isinstance(item, tuple) for item in data):  # List of tuples
                # Define columns and placeholders manually for tuples
                raise ValueError("Column names must be provided for tuple data.")
            
            else:
                raise TypeError("List items must be dictionaries or tuples.")
        else:
            raise TypeError("Data must be a pandas DataFrame or a list of dictionaries/tuples.")

        try:
            for row in rows:
                cursor.execute(
                    f"INSERT INTO {self.table_name} ({columns}) VALUES ({values_placeholder})",
                    row
                )
            connection.commit()
            print(f"Data inserted into table '{self.table_name}' successfully.")
        except Exception as e:
            print(f"Error inserting data: {e}")
        finally:
            cursor.close()
            connection.close()
