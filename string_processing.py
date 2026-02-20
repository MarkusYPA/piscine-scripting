import string

translator = str.maketrans(string.punctuation, "                                ")

def tokenize(sentence: str):
    return sentence.strip().lower().translate(translator).split()
