from collections import Counter
from string_processing import tokenize


def tokenizer_counter(words: str) -> dict[str, int]:
    # Give sorted() a lambda function to sort with (sort using keys i.e. item[0])
    return {
        k: v
        for k, v in sorted(Counter(tokenize(words)).items(), key=lambda item: item[0])
    }
