import datetime as dt

def to_do(tasks: list[tuple[dt.date, str]]):
    with open("output.txt", "w") as f:
        for d, t in tasks:
            formatted_date = d.strftime("%A %d %B %Y")
            f.write(f"{formatted_date}: {t}\n")
        
    