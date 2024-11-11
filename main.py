from dotenv import load_dotenv
from services.database_setup import create_all_tables, load_data_from_excel

def main():
    load_dotenv()

    create_all_tables()
    load_data_from_excel()

if __name__ == "__main__":
    main()
