import string

""" translator = str.maketrans(string.punctuation, "                                ")

def tokenize(sentence: str) -> list[str]:
    return sentence.strip().lower().translate(translator).split() """

import re


def tokenize(sentence: str) -> list[str]:
    # Keep only ASCII letters and whitespace
    cleaned = re.sub(r"[^A-Za-z0-9\s]", " ", sentence.lower())
    return cleaned.strip().split()
