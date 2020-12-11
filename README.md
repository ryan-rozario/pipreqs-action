# Automatic requirement.txt for Python Projects on Github

[pipreqs](https://github.com/bndr/pipreqs) - Generates pip requirements.txt file based on imports of any project.

This action will automatically create the requirements.txt file for a python project using the pipreqs tool.

You can specify the location of your project folder that contains all the python files within your repository.
You can specify the path to which your requirement.txt has to be saved.

## Usage

### Example workflow

```yaml
name: Integration Test
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Self test
        id: selftest

        uses: ryan-rozario/pipreqs-action-cpy@master

        # Put an example of mandatory inputs here
        with:
          PROJECT_PATH: project_folder   #default is the root of the repository
          REQUIREMENT_PATH: project_folder/requirements.txt  #default is requirement.txt in the root of your repository 
```

### Inputs

| Input                                             | Description                                        |Default                                        |
|------------------------------------------------------|-----------------------------------------------|-----------------------------------------------|
| `PROJECT_PATH`  | Gives the path to the project folder that contains the python files    |  .
| `REQUIREMENT_PATH`  | Gives the path to the location where requirements.txt has to be saved, including the requirements.txt file name    | requirements.txt|
| `PROJECT_NAME`  | Includes the project name in the commit  | project_name |
