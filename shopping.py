def remember_the_apple(shopping_list: list) -> list:
    if not "apple" in shopping_list and len(shopping_list) != 0:
        shopping_list.append("apple")

    return shopping_list
