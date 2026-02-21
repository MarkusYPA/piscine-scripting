from collections import Counter
from string_processing import tokenize


def tokenizer_counter(words: str) -> dict[str, int]:
    return {
        k: v
        for k, v in sorted(Counter(tokenize(words)).items(), key=lambda item: item[0])
    }
