import sys


def main():
    # Check number of arguments
    if len(sys.argv) != 2:
        exit(1)

    try:
        with open(sys.argv[1]) as file:
            file_rows = file.readlines()
    except Exception as e:
        exit(1)

    with open("out.txt", "w") as f:
        for row in file_rows:
            if not "pineapple" in row.lower():
                f.write(row)


if __name__ == "__main__":
    main()
