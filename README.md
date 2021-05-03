# Boilerplate for generation of [gitbook](https://github.com/GitbookIO/gitbook-cli) books

This repository uses docker+docker-compose to bring up the development environment for [gitbook](https://github.com/GitbookIO/gitbook-cli).


## Structure

* `source/` - holds all gitbook source files
* `source/README.md` - "main page" (index) of the book 
* `source/SUMMARY.md` - "summary" to be displayed in the vertical bar on the left
* `source/book.json` - gitbook plugins configuration if you need any

## Browsing the result

```
docker-compose up
open http://localhost:4000
```

## Running gitbook commands inside the container

You might want to run some arbitrary commands inside gitbook container for experimentation purposes (mostly for trying the plugins).

You have several options for doing this:

### Use bash command line inside docker container
```
docker-compose run gitbook /bin/bash
```

### Run gitbook commands
```
docker-compose run gitbook gitbook help
```
Notice the "double gitbook" in the command you run. The first one is container name, the second one is the command to run.


## Roadmap

* Add YAML files for configuring Github/Gitlab pages to accept this repo for serving purpose.


## See also

* Gitlab docs on using Gitbook for pages: https://pages.gitlab.io/gitbook/

## License and authors
* Author: Timur Batyrshin
* License: MIT

Contributions are welcome, make sure you add yourself to the "License and authors" section
