def merge_two(person_ages: dict) -> dict:
    while True:
        print("Add a new entry:")
        name = input("key: ")
        if name == "exit":
            break
        age = input("value: ")
        person_ages[name.strip()] = age

    return person_ages
