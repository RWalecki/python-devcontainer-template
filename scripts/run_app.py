from dotenv import dotenv_values
from src.some_code import some_function

config = dotenv_values(".env")
print(config["API_KEY"])

some_function()