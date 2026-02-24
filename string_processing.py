import string

translator = str.maketrans(string.punctuation, "                                ")

def tokenize(sentence: str) -> list[str]:
    return sentence.strip().lower().translate(translator).split()
