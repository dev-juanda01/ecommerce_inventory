import os
import pandas as pd
import random
import faker
from faker.providers import internet, company, phone_number, address
import requests
from datetime import datetime

# Initialize Faker instance
fake = faker.Faker('es_ES')
fake.add_provider(internet)
fake.add_provider(company)
fake.add_provider(phone_number)
fake.add_provider(address)

# Fetch data from APIs
# Fetch users from API for clients data
users_endpoint = "https://api.escuelajs.co/api/v1/users"
users_response = requests.get(users_endpoint)
users_data = users_response.json() if users_response.status_code == 200 else []

# Fetch products from API
products_endpoint = "https://api.escuelajs.co/api/v1/products"
products_response = requests.get(products_endpoint)
products_data = products_response.json() if products_response.status_code == 200 else []

clients = [
    {
        "client_id": user["id"],
        "name": user["name"],
        "location": fake.country(),
        "email": user["email"],
        "phone": fake.phone_number(),
        "address": fake.address().replace("\n", ", "),
        "registration_date": fake.date_this_decade().strftime('%Y-%m-%d')  # Format date for MySQL
    }
    for user in users_data
]

categories = [
    {"category_id": i + 1, "name": cat, "description": fake.text(max_nb_chars=50), 
     "created_at": fake.date_this_decade().strftime('%Y-%m-%d')}  # Format date for MySQL
    for i, cat in enumerate(["Electrónica", "Hogar", "Ropa", "Juguetes", "Deportes"])
]

# Map category names to IDs for consistency
category_name_to_id = {cat['name']: cat['category_id'] for cat in categories}

products = []

# Add products from API
for product in products_data:
    category_name = product.get('category', {}).get('name', "")
    category_id = category_name_to_id.get(category_name, random.choice(categories)['category_id'])
    products.append({
        "product_id": product['id'],
        "name": product['title'] if product['title'] != "New Product" else "Indefinido",
        "category_id": category_id,
        "unit_price": product['price'],
        "brand": fake.company(),
        "stock": random.randint(10, 200),
        "description": product['description'],
        "created_at": product['creationAt'][:10]  # Take only the date part for MySQL
    })

sales = []
for i in range(1, 31):
    product = random.choice(products)
    client = random.choice(clients)
    sales.append({
        "sale_id": i,
        "product_id": product['product_id'],
        "client_id": client['client_id'],
        "sale_date": fake.date_this_year().strftime('%Y-%m-%d'),  # Format date for MySQL
        "quantity": random.randint(1, 5),
        "price": round(product['unit_price'] * random.randint(1, 5), 2),
        "payment_method": random.choice(["Credit Card", "Debit Card", "PayPal"]),
        "sale_status": random.choice(["Completed", "Pending", "Canceled"])
    })

inventory = [
    {
        "inventory_id": i + 1,
        "product_id": product['product_id'],
        "date": fake.date_this_year().strftime('%Y-%m-%d'),  # Format date for MySQL
        "stock_available": product['stock'] - random.randint(0, 10),
        "last_updated": fake.date_this_month().strftime('%Y-%m-%d')  # Format date for MySQL
    }
    for i, product in enumerate(products)
]

# Create DataFrames
categories_df = pd.DataFrame(categories)
products_df = pd.DataFrame(products)
clients_df = pd.DataFrame(clients)
sales_df = pd.DataFrame(sales)
inventory_df = pd.DataFrame(inventory)


# Save to Excel
# Construir la ruta para guardar el archivo en la carpeta data
output_dir = os.path.join(os.path.dirname(__file__), '../data')
os.makedirs(output_dir, exist_ok=True)  # Asegurar que la carpeta existe
output_path = os.path.join(output_dir, 'updated_data.xlsx')

with pd.ExcelWriter(output_path, engine='xlsxwriter') as writer:
    categories_df.to_excel(writer, index=False, sheet_name='Categories')
    products_df.to_excel(writer, index=False, sheet_name='Products')
    clients_df.to_excel(writer, index=False, sheet_name='Clients')
    sales_df.to_excel(writer, index=False, sheet_name='Sales')
    inventory_df.to_excel(writer, index=False, sheet_name='Inventory')

print("updated_data.xlsx file generated successfully.")
