import json


class User:
    username = "user"
    email = "something@mail.com"


def create_new_user(details) -> User | None:
    try:
        data = json.loads(details)
    except json.JSONDecodeError:
        return None

    username = data.get("username")
    email = data.get("email")

    new_user = User()

    if username != None:
        new_user.username = username

    if email != None:
        new_user.email = email

    return new_user


def user_to_json(usr) -> dict:
    return usr.__dict__
