def clean_list(stuff: list[str]) -> list[str]:
    # - Remove all spaces at the beginning and at the end of the string (but not between words).
    # - Capitalize only the first letter of the string (all other letters must be lowercase).
    # - Prefix each item with its index number followed by `/ ` (starting from `1`).
    # - If the input list is empty, the function must return an empty list.
    # - If the string `'milk'` is not present in the list, it must be added **at the end** before applying the formatting.

    result = []

    if len(stuff) != 0 and not "milk" in stuff:
        stuff.append("milk")

    for i in range(len(stuff)):
        new = stuff[i].strip().capitalize()
        result.append(str(i + 1) + "/ " + new)

    return result
