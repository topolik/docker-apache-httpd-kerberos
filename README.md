# Apache HTTPD with Kerberos inside Docker with connectivity into Tomcat AJP/1.3

Uncomplete at the moment, only AJP working.

Start it:
 * Start tomcat with AJP/1.3 on 8009 (default config)
 * Use `./run.sh` to start the docker container in the host network (attached to localhost)
 * Go to http://localhost:10080/
