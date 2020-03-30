import os
from pipreqs import pipreqs


def main():
    p=os.environ.get("INPUT_PROJECT_PATH")
    pipreqs.init({'<path>':p, '--savepath': None, '--print': True,'--use-local': None, '--force': True, '--proxy':None, '--pypi-server':None,'--diff': None, '--clean': None})

if __name__ == "__main__":
    main()