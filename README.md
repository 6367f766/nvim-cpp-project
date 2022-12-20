# An C++ project structure example 

> including a .vimspector configuration for neovim users. 

## Requirements

This projects requires the following:
- clang
- [pipenv](https://pypi.org/project/pipenv/) (optional, it is used for the `conan` CLI tool.)

## Build

First install `conan` via `pipenv` (or your preferred way):

```bash
pipenv install
pipenv shell  # adds conan to PATH
```

Create a new conan profile:  TODO

``` bash
$ conan profile new default --detect
$ conan profile update settings.compiler.libcxx=libstdc++11 default
```

NOTE: If you are using an old compiler, the second command is unnecessary and
probably even counter-productive

Run make from the project root:

```bash
$ make
```

## Run

The resulting `md5` executable will be found in the `build/bin` directory:

```bash
$ ./build/bin/md5
```

## Test

Run the tests:

```bash
$ make test
```

## What's up with the compile_commands.json file?

The `compile_commands.json` file is a symlink to a file with the same name that
is generated in the build tree. It is useful to have it in the project root
when you are using an editor that utilizes a c++ language server such as clangd
to integrate language features into your editor such as auto complete, go to
definition, find all references, etc. The `compile_commands.json` file tells
clang how the whole project is built so that it can provide proper auto
completion and linting.
