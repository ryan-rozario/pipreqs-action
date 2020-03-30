import os
from pipreqs import pipreqs


def main():
    p=os.environ.get("PROJECT_PATH")
    out = str(os.environ.get("REQUIREMENT_PATH"))
    pipreqs.init({'<path>':p, '--savepath': None, '--print': True,'--use-local': None, '--force': True, '--proxy':None, '--pypi-server':None,'--diff': None, '--clean': None})
    with open("/github/workspace/" + str(os.environ.get("REQUIREMENT_PATH")), "w") as text_file:
        text_file.write("Test output")


if __name__ == "__main__":
    main()