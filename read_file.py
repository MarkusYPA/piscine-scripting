import json


def get_recipes(file_name: str) -> list[dict]:
    with open(file_name) as f:
        data = json.load(f)

    return data
