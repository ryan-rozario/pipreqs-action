import os
from pipreqs import pipreqs


def main():
    p=os.environ.get("PROJECT_PATH")
    out = "/github/workspace/" + str(os.environ.get("REQUIREMENT_PATH"))
    pipreqs.init({'<path>':p, '--savepath': out, '--print': True,'--use-local': None, '--force': True, '--proxy':None, '--pypi-server':None,'--diff': None, '--clean': None})
    print(os.environ.get("GITHUB_ACTOR"))

if __name__ == "__main__":
    main()