import pandas as pd
import random
import faker
from datetime import datetime, timedelta

# Initialize Faker instance to generate fake data
fake = faker.Faker()

# Generate categories
categories = []
for i in range(1, 21):
    categories.append({
        'category_id': i,
        'name': fake.word().capitalize(),
        'description': fake.sentence(),
        'created_at': fake.date_this_decade()
    })

# Generate clients
clients = []
for i in range(1, 21):
    clients.append({
        'client_id': i,
        'name': fake.name(),
        'location': fake.city(),
        'email': fake.email(),
        'phone': fake.phone_number(),
        'address': fake.address(),
        'registration_date': fake.date_this_decade()
    })

# Generate products
products = []
for i in range(1, 21):
    category_id = random.randint(1, 5)
    products.append({
        'product_id': i,
        'name': fake.word().capitalize() + " " + fake.word().capitalize(),
        'category_id': category_id,
        'unit_price': round(random.uniform(10, 1000), 2),
        'brand': fake.company(),
        'stock': random.randint(50, 200),
        'description': fake.sentence(),
        'created_at': fake.date_this_decade()
    })

# Generate sales
sales = []
for i in range(1, 21):
    product_id = random.randint(1, 5)
    client_id = random.randint(1, 5)
    sale_date = fake.date_this_year()
    sales.append({
        'sale_id': i,
        'product_id': product_id,
        'client_id': client_id,
        'sale_date': sale_date,
        'quantity': random.randint(1, 5),
        'price': round(random.uniform(10, 1000), 2),
        'payment_method': random.choice(['Credit Card', 'PayPal', 'Debit Card']),
        'sale_status': random.choice(['Completed', 'Pending', 'Canceled'])
    })

# Generate inventory data
inventory = []
for i in range(1, 21):
    product_id = random.randint(1, 5)
    date = fake.date_this_year()
    inventory.append({
        'inventory_id': i,
        'product_id': product_id,
        'date': date,
        'stock_available': random.randint(50, 200),
        'last_updated': fake.date_this_year()
    })

# Create DataFrame for each table
df_categories = pd.DataFrame(categories)
df_clients = pd.DataFrame(clients)
df_products = pd.DataFrame(products)
df_sales = pd.DataFrame(sales)
df_inventory = pd.DataFrame(inventory)

# Create an Excel file with multiple sheets
with pd.ExcelWriter('../data/sample_data.xlsx', engine='xlsxwriter') as writer:
    df_categories.to_excel(writer, sheet_name='Categories', index=False)
    df_clients.to_excel(writer, sheet_name='Clients', index=False)
    df_products.to_excel(writer, sheet_name='Products', index=False)
    df_sales.to_excel(writer, sheet_name='Sales', index=False)
    df_inventory.to_excel(writer, sheet_name='Inventory', index=False)

print("sample_data.xlsx file generated successfully.")
