# Docker_Container_For_Flask_App

-  Copy docker-compose.yml, Dockerfile, schedulefyi.sql and requirements.txt underneath the my_schedulefyi directory.

## Execute the following commands in terminal:
- docker-compose up --> It creates flask_project and mysql containers

To refresh schedulefyi schema after recreating schedulefyi.sql:
- docker cp schedulefyi.sql mysql:/bitnami/mysql/data (where mysql is <container_name>)
- cd /bitnami/mysql/data
- docker exec -it mysql /bin/bash
- mysql -u root -p
- source schedulefyi.sql

mysql> show tables;

| Tables_in_schedulefyi |
|-----------------------|
| company               |
| country               |
| location              |
| project               |
| projectnote           |
| subtask               |
| subtasknote           |
| task                  |
| tasknote              |
| user                  |
| user_company          |

11 rows in set (0.02 sec)


To execute only the Flask app:
- docker build --tag <schedulefyi flask app> --no-cache .
- docker run -p 5002:5000 <schedulefyi flask app>

## Go to http://0.0.0.0:5002/ in browser

