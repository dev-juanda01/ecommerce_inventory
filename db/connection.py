import os
import mysql.connector
from mysql.connector import Error

def create_connection():
    """Establishes a connection to the MySQL database."""
    try:
        db_config = {
            "host": os.getenv("DB_HOST"),
            "port": os.getenv("DB_PORT"),
            "user": os.getenv("DB_USER"),
            "password": os.getenv("DB_PASSWORD"),
            "database": os.getenv("DB_NAME")
        }
        connection = mysql.connector.connect(**db_config)

        if connection.is_connected():
            print("Connected to MySQL database.")
        return connection
    except Error as e:
        print(f"Error: '{e}'")
        return None
