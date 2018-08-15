# monitoring-site
The script is designed to monitor multiple sites

# Working with the script

1)You need to clone the repository

2)Granting the rights to execute the script chmod +x monitoring.sh

3)Add a list of sites to monitor in the file serv.txt

example:

p1ka.com

google.com

ya.ru

4)Make changes to the file /etc/crontab
example:

*/5     *       *       *       *       root    /usr/local/scripts/monitoring/status.sh serv.txt > /dev/null

in the example, the script will run every 5 minutes

5) specify your mail in the script file in the EMAIL

6) Well done, you did it.
