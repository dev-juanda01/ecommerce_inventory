from dotenv import load_dotenv
from services.database_setup import create_all_tables, load_data_from_excel

def main():
    # load environment variables
    load_dotenv()

    # initialize tables
    create_all_tables()
    load_data_from_excel(file_path="data/updated_data.xlsx")

if __name__ == "__main__":
    main()
