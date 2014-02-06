URL: http://code.google.com/p/skipfish/  
License: Apache License 2.0  
Tested version: 2.10b from Dec 2012  
Language: C  
Command line tool

# Installation (Debian):  
install packages `libidn11-dev`, `libpcre3-dev`, `libssl-dev`  
run `make`

# Test:  
command line: `./skipfish -Y -o testlauf http://localhost:8666/`

## Found issues (selection):
* File inclusion (`etc/passwd`)
* XSS
* HTML form with no apparent XSRF protection (`csrf/send`)

