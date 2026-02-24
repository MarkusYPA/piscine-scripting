import json

def merge_two(person_ages: dict[str, int]) -> str:
    while True:
        print("Add a new entry:")
        name = input("key: ")
        if name == "exit":
            break
        age = input("value: ")
        try:
            age_int = int(age)
        except ValueError:
            print("bad age")
            continue
        
        person_ages[name.strip()] = age_int

    return json.dumps(person_ages)
