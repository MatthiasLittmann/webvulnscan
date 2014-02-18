# Skipfish

URL: http://code.google.com/p/skipfish/  
License: Apache License 2.0  
Tested version: 2.10b from Dec 2012  
Language: C  
Command line tool

## Installation (Debian):  
install packages `libidn11-dev`, `libpcre3-dev`, `libssl-dev`  
run `make`

## Test:  
command line: `./skipfish -Y -o testlauf http://localhost:8666/`

### Found issues (selection):
* File inclusion (`etc/passwd`)
* XSS
* HTML form with no apparent XSRF protection (`csrf/send`)


## Implemented tests

*    High risk flaws (potentially leading to system compromise):

 *        Server-side SQL / PHP injection (including blind vectors, numerical parameters).
 *        Explicit SQL-like syntax in GET or POST parameters.
 *        Server-side shell command injection (including blind vectors).
 *        Server-side XML / XPath injection (including blind vectors).
 *        Format string vulnerabilities.
 *        Integer overflow vulnerabilities.
 *        Locations accepting HTTP PUT. 

*    Medium risk flaws (potentially leading to data compromise):

 *        Stored and reflected XSS vectors in document body (minimal JS XSS support present).
 *        Stored and reflected XSS vectors via HTTP redirects.
 *        Stored and reflected XSS vectors via HTTP header splitting.
 *        Directory traversal / file inclusion (including constrained vectors).
 *        Assorted file POIs (server-side sources, configs, etc).
 *        Attacker-supplied script and CSS inclusion vectors (stored and reflected).
 *        External untrusted script and CSS inclusion vectors.
 *        Mixed content problems on script and CSS resources (optional).
 *        Password forms submitting from or to non-SSL pages (optional).
 *        Incorrect or missing MIME types on renderables.
 *        Generic MIME types on renderables.
 *        Incorrect or missing charsets on renderables.
 *        Conflicting MIME / charset info on renderables.
 *        Bad caching directives on cookie setting responses. 

*    Low risk issues (limited impact or low specificity):

 *        Directory listing bypass vectors.
 *        Redirection to attacker-supplied URLs (stored and reflected).
 *        Attacker-supplied embedded content (stored and reflected).
 *        External untrusted embedded content.
 *        Mixed content on non-scriptable subresources (optional).
 *        HTTPS -> HTTP submission of HTML forms (optional).
 *        HTTP credentials in URLs.
 *        Expired or not-yet-valid SSL certificates.
 *        HTML forms with no XSRF protection.
 *        Self-signed SSL certificates.
 *        SSL certificate host name mismatches.
 *        Bad caching directives on less sensitive content. 

*    Internal warnings:

 *        Failed resource fetch attempts.
 *        Exceeded crawl limits.
 *        Failed 404 behavior checks.
 *        IPS filtering detected.
 *        Unexpected response variations.
 *        Seemingly misclassified crawl nodes. 

*    Non-specific informational entries:

 *        General SSL certificate information.
 *        Significantly changing HTTP cookies.
 *        Changing Server, Via, or X-... headers.
 *        New 404 signatures.
 *        Resources that cannot be accessed.
 *        Resources requiring HTTP authentication.
 *        Broken links.
 *        Server errors.
 *        All external links not classified otherwise (optional).
 *        All external e-mails (optional).
 *        All external URL redirectors (optional).
 *        Links to unknown protocols.
 *        Form fields that could not be autocompleted.
 *        Password entry forms (for external brute-force).
 *        File upload forms.
 *        Other HTML forms (not classified otherwise).
 *        Numerical file names (for external brute-force).
 *        User-supplied links otherwise rendered on a page.
 *        Incorrect or missing MIME type on less significant content.
 *        Generic MIME type on less significant content.
 *        Incorrect or missing charset on less significant content.
 *        Conflicting MIME / charset information on less significant content.
 *        OGNL-like parameter passing conventions. 

