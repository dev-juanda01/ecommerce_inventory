import pandas as pd
from models.category import Category
from models.client import Client
from models.product import Product
from models.sale import Sale
from models.inventory import Inventory
from models.base_model import BaseModel


def create_all_tables():
    initializing_models = [
        Category(), Client(), Product(), Sale(), Inventory()]

    """Creates all tables by initializing each model and calling its create_table method."""
    for model in initializing_models:
        model.create_table()
    print("All tables created successfully.")


def load_data_from_excel(file_path="sample_data.xlsx"):
    """Loads data from an Excel file and inserts it into corresponding tables."""
    data = pd.read_excel(file_path, sheet_name=None)

    Category().insert_data(data["Categories"])
    Client().insert_data(data["Clients"])
    Product().insert_data(data["Products"])
    Sale().insert_data(data["Sales"])
    Inventory().insert_data(data["Inventory"])
    print("Data loaded into all tables successfully.")
