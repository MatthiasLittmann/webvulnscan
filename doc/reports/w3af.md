# w3af

URL: http://w3af.org/  
License: GPL v2  
Tested version: 1.6.0.2  
Language: Python  
Command line tool / Graphic user interface

## Installation (Debian):  
git clone
./w3af_gui

## Test:  
started in gui
preconfigured profile 'full_audit'


### Found issues on vulnsrv (selection):
* Cross Site Request Forgery
* Cross Site Scripting vulnerability
* SQL injection
* Local File Inclusion
* path disclosure vulnerability


### Found issues on webvulnscan tests (selection):
* None (X-Frame-Options header Click-Jacking)  

(debug) information about:

  * uncommon use of HTTP header
  * still missing some 'Content-Type' headers


## Features

several plugins:
* Audit
* Crawl
* Bruteforce
* Evasion
* Grep
* Infrastructure
* Output

