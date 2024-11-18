import sys
import os
import requests
from bs4 import BeautifulSoup
from datetime import datetime

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from models.product import Product


class WebScraper:
    def __init__(self, url):
        self.url = url

    def fetch_html(self):
        """
        Descarga el HTML de la página web.
        """
        try:
            headers = {
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
            }
            response = requests.get(self.url, headers=headers)
            response.raise_for_status()
            return response.text
        except requests.exceptions.RequestException as e:
            print(f"Error fetching HTML: {e}")
            return None

    def parse_html(self, html):
        """
        Parsea el HTML para extraer datos relevantes.
        """
        soup = BeautifulSoup(html, "html.parser")
        products = []

        # Encuentra los contenedores de productos
        product_containers = soup.find_all("div", class_="s-result-item")

        for container in product_containers:
            try:
                name = container.h2.text.strip()
                price = container.find("span", class_="a-price-whole")
                price = float(price.text.replace(
                    ",", "").strip()) if price else None
                rating = container.find("span", class_="a-icon-alt")
                rating = float(rating.text.split(" ")[0]) if rating else None

                if price:
                    product_object = {
                        "name": name,
                        "unit_price": price,
                        "brand": "N/A",
                        "description": "N/A",
                        "created_at": datetime.now(),
                    }

                    products.append(product_object)
            except AttributeError:
                continue

        return products


if __name__ == "__main__":

    def amazon_scraper_laptops():
        url = "https://www.amazon.com/s?k=laptops"  # URL pública de Amazon
        scraper = WebScraper(url)

        # Extrae el HTML y parsea los datos
        html = scraper.fetch_html()
        if html:
            data = scraper.parse_html(html)

            # Inserta los datos en la base de datos
            Product().insert_data(data)

            print(f"Inserted {len(data)} products into the database.")
        else:
            print("Failed to fetch or parse the data.")
            amazon_scraper_laptops()

    amazon_scraper_laptops()