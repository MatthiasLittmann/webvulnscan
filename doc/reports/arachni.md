# Arachni

URL: http://www.arachni-scanner.com/  
License: Apache License 2.0  
Tested version: 0.4.6-0.4.3 from Jan 2014  
Language: Ruby  
Command line tool / Web user interface

## Installation (Debian):  
Extract archive

## Test:  
command line:

    ./arachni http://localhost:8666/ --report=afr:outfile=test.vulnsrv.afr
    ./arachni --repload=test.vulnsrv.afr --report=html:outfile=vulnsrv.html

### Found issues (selection):
* Cross-Site Scripting (XSS)
* Path Traversal (`etc/passwd`)
* Insecure cookie


## Features

General

    Cookie-jar/cookie-string support.
    Custom header support.
    SSL support.
    User Agent spoofing.
    Proxy support for SOCKS4, SOCKS4A, SOCKS5, HTTP/1.1 and HTTP/1.0.
    Proxy authentication.
    Site authentication (Automated form-based, Cookie-Jar, Basic-Digest, NTLM and others).
    Automatic log-out detection and re-login during the audit (when the initial login was performed via the AutoLogin plugin).
    Custom 404 page detection.
    UI abstraction:
        Command-line Interface.
        Web User Interface.
    Pause/resume functionality.
    High performance asynchronous HTTP requests.
        With adjustable concurrency.

Open distributed architecture

    High-performance/low-bandwidth communication protocol.
        Marshal serialization for performance and efficiency.
            Automatically falls back to YAML for ease of integration with 3rd party systems.
        TCP/IP for general network communications.
        UNIX domain sockets for multi-Instance IPC.
    Remote monitoring and management of Dispatchers and Instances.
    Parallel scans — Each scan is compartmentalized to its own OS process to take advantage of:
        Multi-core/SMP architectures.
        OS-level scheduling/restrictions.
        Sandboxed failure propagation.
    Multi-Instance scans for parallelization of individual scans using multiple Instances to:
        Take advantage of multi-core/SMP architectures.
        Greatly diminish scan-times.
    Dispatcher Grids supporting:
        (Optional) High-Performance mode — Combines the resources of multiple nodes to perform multi-Instance scans.
            Enabled on a per-scan basis.
        (Always-on) Load-balancing — All Instances are automatically provided by the least burdened Grid member.
            With optional per-scan opt-out/override.
    SSL encryption (with optional peer authentication).

 
 Crawler

    Filters for redundant pages like galleries, catalogs, etc based on regular expressions and counters.
        Can optionally detect and ignore redundant pages automatically.
    URL exclusion filter using regular expressions.
    Page exclusion filter based on content, using regular expressions.
    URL inclusion filter using regular expressions.
    Can be forced to only follow HTTPS paths and not downgrade to HTTP.
    Can optionally follow subdomains.
    Adjustable link count limit.
    Adjustable redirect limit.
    Adjustable depth limit.
    Modular path extraction via “Path Extractor” components.
    Can read paths from multiple user supplied files (to both restrict and extend the scope of the crawl).

Platform fingerprinter

In order to make efficient use of the available bandwidth, Arachni performs some basic platform fingerprinting and tailors the audit process to the server-side deployed platforms by only injecting applicable payloads.

Currently, the following platforms can be identified:

    Operating systems
        BSD
        Linux
        Unix
        Windows
        Solaris
    Web servers
        Apache
        IIS
        Nginx
        Tomcat
        Jetty
    Programming languages
        PHP
        ASP
        ASPX
        JSP
        Python
        Ruby
    Frameworks
        Rack

The user also has the option of specifying extra platforms (like a DB server) in order to help the system be as efficient as possible. Alternatively, fingerprinting can be disabled altogether.

Finally, Arachni will always err on the side of caution and send all available payloads when it fails to identify specific platforms.
Auditor

    Can audit:
        Forms
            Can refresh nonce tokens.
        Links
        Cookies
        Headers
    Can ignore binary/non-text pages.
    Can optionally audit forms and links using both GET and POST HTTP methods.
    Can optionally submit all links and forms of the page along with the cookie permutations to provide extensive cookie-audit coverage.
    Can exclude specific input vectors by name.

HTML Parser

Can extract and analyze:

    Forms
    Links
    Cookies
    Headers

Module Management

    Very simple and easy to use module API providing access to multiple levels of complexity.
    Helper audit methods:
        For form, link, cookie and header auditing.
        A wide range of injection strings/input combinations.
        For taint analysis, timing attacks, differential analysis, server-side file/directory detection and more.
        Writing RFI, SQL injection, XSS etc modules is a matter of minutes, if not seconds.

Available modules (security checks)

Modules are system components which perform security checks and log issues.
Audit (Active)

Audit modules actively engage the web application via its inputs.

    SQL injection ( sqli) — Error based vulnerability detection.
        Oracle
        ColdFusion
        InterBase
        PostgreSQL
        MySQL
        MSSQL
        EMC
        SQLite
        DB2
        Informix
        Firebird
        SaP Max DB
        Sybase
        Frontbase
        Ingres
        HSQLDB
        MS Access
    Blind SQL injection using rDiff analysis ( sqli_blind_rdiff).
    Blind SQL injection using timing attacks ( sqli_blind_timing).
        MySQL
        PostgreSQL
        MSSQL
    CSRF detection ( csrf).
    Code injection ( code_injection).
        PHP
        Ruby
        Python
        JSP
        ASP.NET
    Blind code injection using timing attacks ( code_injection_timing).
        PHP
        Ruby
        Python
        JSP
        ASP.NET
    LDAP injection ( ldapi).
    Path traversal ( path_traversal).
        *nix
        Windows
        Tomcat
    File inclusion ( file_inclusion).
        *nix
        Windows
        Tomcat
        PHP
        Perl
    Response splitting ( response_splitting).
    OS command injection ( os_cmd_injection).
        *nix
        Windows
    Blind OS command injection using timing attacks ( os_cmd_injection_timing).
        Linux
        *BSD
        Solaris
        Windows
    Remote file inclusion ( rfi).
    Unvalidated redirects ( unvalidated_redirect).
    XPath injection ( xpath).
        Generic
        PHP
        Java
        dotNET
        libXML2
    XSS ( xss).
    Path XSS ( xss_path).
    XSS in event attributes of HTML elements ( xss_event).
    XSS in HTML tags ( xss_tag).
    XSS in HTML ‘script’ tags ( xss_script_tag).
    Source code disclosure ( source_code_disclosure)

Recon (Passive)

Recon modules look for the existence of files, folders and signatures.

    Allowed HTTP methods ( allowed_methods).
    Back-up files ( backup_files).
    Common directories ( common_directories).
    Common files ( common_files).
    HTTP PUT ( http_put).
    Insufficient Transport Layer Protection for password forms ( unencrypted_password_form).
    WebDAV detection ( webdav).
    HTTP TRACE detection ( xst).
    Credit Card number disclosure ( credit_card).
    CVS/SVN user disclosure ( cvs_svn_users).
    Private IP address disclosure ( private_ip).
    Common backdoors ( backdoors).
    .htaccess LIMIT misconfiguration ( htaccess_limit).
    Interesting responses ( interesting_responses).
    HTML object grepper ( html_objects).
    E-mail address disclosure ( emails).
    US Social Security Number disclosure ( ssn).
    Forceful directory listing ( directory_listing).
    Mixed Resource/Scripting ( mixed_resource).
    Insecure cookies ( insecure_cookies).
    HttpOnly cookies ( http_only_cookies).
    Auto-complete for password form fields ( password_autocomplete).
    X-Forwarded-For Access Restriction Bypass ( x_forwarded_for_access_restriction_bypass)
    Form-based upload ( form_upload)
    localstart.asp ( localstart_asp)

Report Management

    Modular design.

Available reports

    Standard output
    HTML ( html).
    XML ( xml).
    TXT ( text).
    AFR ( afr) — The default Arachni Framework Report format.
    JSON ( json)
    Marshal ( marshal)
    YAML ( yaml)
    Metareport ( metareport) — Providing Metasploit integration to allow for automated and assisted exploitation.

Plug-in Management

    Modular design.
    Plug-ins are framework demi-gods, they have direct access to the framework instance.
    Can be used to add abstract functionality to Arachni.

Available plugins

Plugins add extra functionality to the system in a modular fashion, this way the core remains lean and makes it easy for anyone to arbitrary functionality.

    ReScan ( rescan)– It uses the AFR report of a previous scan to extract the sitemap in order to avoid a redundant crawl.
    Passive Proxy ( proxy) — Analyzes requests and responses between the web app and the browser assisting in AJAX audits, logging-in and/or restricting the scope of the audit.
    Form based AutoLogin ( autologin).
    Dictionary attacker for HTTP Auth ( http_dicattack).
    Dictionary attacker for form based authentication ( form_dicattack).
    Profiler ( profiler) — Performs taint analysis (with benign inputs) and response time analysis.
    Cookie collector ( cookie_collector) — Keeps track of cookies while establishing a timeline of changes.
    WAF (Web Application Firewall) Detector ( waf_detector) — Establishes a baseline of normal behavior and uses rDiff analysis to determine if malicious inputs cause any behavioral changes.
    BeepNotify ( beep_notify) — Beeps when the scan finishes.
    LibNotify ( libnotify) — Uses the libnotify library to send notifications for each discovered issue and a summary at the end of the scan.
    EmailNotify ( email_notify) — Sends a notification (and optionally a report) over SMTP at the end of the scan.
    VectorFeed ( vector_feed) — Reads in vector data from which it creates elements to be audited. Can be used to perform extremely specialized/narrow audits on a per vector/element basis. Useful for unit-testing or a gazillion other things.
    Script ( script) — Loads and runs an external Ruby script under the scope of a plugin, used for debugging and general hackery.
    Uncommon headers ( uncommon_headers) — Logs uncommon headers.

Defaults

Default plugins will run for every scan and are placed under /plugins/defaults/.

    AutoThrottle ( autothrottle) — Dynamically adjusts HTTP throughput during the scan for maximum bandwidth utilization.
    Content-types ( content_types) — Logs content-types of server responses aiding in the identification of interesting (possibly leaked) files.
    Healthmap ( healthmap) — Generates sitemap showing the health of each crawled/audited URL
    Resolver ( resolver) — Resolves vulnerable hostnames to IP addresses.

Meta

Plugins under /plugins/defaults/meta/ perform analysis on the scan results to determine trustworthiness or just add context information or general insights.

    TimingAttacks ( timing_attacks) — Provides a notice for issues uncovered by timing attacks when the affected audited pages returned unusually high response times to begin with. It also points out the danger of DoS attacks against pages that perform heavy-duty processing.
    Discovery ( discovery) — Performs anomaly detection on issues logged by discovery modules and warns of the possibility of false positives where applicable.
    Uniformity ( uniformity) — Reports inputs that are uniformly vulnerable across a number of pages hinting to the lack of a central point of input sanitization.

Trainer subsystem

The Trainer is what enables Arachni to learn from the scan it performs and incorporate that knowledge, on the fly, for the duration of the audit.

Modules have the ability to individually force the Framework to learn from the HTTP responses they are going to induce.

However, this is usually not required since Arachni is aware of which requests are more likely to uncover new elements or attack vectors and will adapt itself accordingly.

Still, this can be an invaluable asset to Fuzzer modules.

