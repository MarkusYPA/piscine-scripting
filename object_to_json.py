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

    if username and email:
        new_user.username = username
        new_user.email = email

    return new_user


def user_to_json(usr: User | None) -> str:
    #return usr.__dict__
    if usr:
        json_str = json.dumps(usr.__dict__)
        #print("object converted to json:", json_str)
        return json_str
    else:
        return '{}'
