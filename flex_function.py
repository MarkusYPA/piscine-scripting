from dataclasses import dataclass, asdict


@dataclass
class Person:
    first_name: str
    last_name: str
    age: int
    gender: str
    size: float
    job: str


def create_person(
    first_name: str,
    last_name: str,
    /,
    age: int,
    gender: str,
    *,
    size: float = 1.83,
    job: str = "taxidermist",
) -> dict:

    # all three approaches work

    """return {
        "first_name": first_name,
        "last_name": last_name,
        "age": age,
        "gender": gender,
        "size": size,
        "job": job,
    }"""

    person = Person(first_name, last_name, age, gender, size, job)
    return asdict(person)

    # return locals()
