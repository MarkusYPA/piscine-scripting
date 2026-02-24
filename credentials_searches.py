import json
from typing import Any


def find_keys(
    obj: dict[str, Any] | list[Any],
    keys_to_find: set[str],
    found: dict[str, Any] | None = None,
) -> dict[str, Any]:
    """Recursively finds keys in nested objects"""

    if found is None:
        found = {}

    if isinstance(obj, dict):
        for key, value in obj.items():
            if key in keys_to_find:
                found[key] = value
            find_keys(value, keys_to_find, found)

    elif isinstance(obj, list):
        for item in obj:
            find_keys(item, keys_to_find, found)

    return found


def credentials_search():
    try:
        with open("logs.json") as file:
            data = json.load(file)
    except Exception as e:
        exit()

    creds = find_keys(data, {"password", "secret"})

    if creds:
        with open("credentials.json", "w") as file:
            json.dump(creds, file, indent=2, sort_keys=True)
            file.write("\n")


if __name__ == "__main__":
    credentials_search()
