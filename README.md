# php-introspector

This package is a thin wrapper which retrieves suggestions from introspective:

https://github.com/yelirekim/introspective

![Yay it working](https://i.imgur.com/F7pdH6s.png)


## Installing

Use the Atom package manager, which can be found in the Settings view or run
`apm install php-introspector` from the command line.  You will also need to
have the [autocomplete+](https://github.com/atom/autocomplete-plus) package
installed.

## Usage

Currently, autocompletion relies on obtaining suggestions from a remote (or local)
server.  It reads the location of this server from a [dotenv](https://github.com/vlucas/phpdotenv)
file.  For each project you would like to enable autocompletion for, you will need
to have an autocomplete server running, and a `.env` file in the root of your project
specifying where that server is.  For example:

```shell
INTROSPECTIVE_URI=http://localhost:8080/
```
