# FRC Build & Test action
This action was designed to give FRC teams a simple way to automatically run tests on their code with every commit. All inside GitHub, no 3rd party services are required!

## Setup
To get this action running in your project, add the following config to `.github/workflows/frcbuild.yml`:
```yml
name: Team 3171 FRC Build
on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Team 3171 FRC Build
      uses: markebert/FRC-actions@v2.1
      with:
        build_mode: 'build'
```

The `build_mode` property can be any one of:
 - `build` Only builds the robot code
 - `unit_test` Only runs unit tests, does not build
 - `all` Runs both

--- 

This tool is not affiliated with *FIRST* or [@wpilibsuite](https://github.com/wpilibsuite)

That being said, If anyone from [@wpilibsuite](https://github.com/wpilibsuite) thinks this would be a useful project to adopt, let me know via email or an issue.
