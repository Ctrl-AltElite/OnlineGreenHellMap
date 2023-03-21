import json
from dotenv import load_dotenv

load_dotenv()

db:dict = json.load(open("db.json"))