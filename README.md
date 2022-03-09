# Docker_Container_For_Flask_App

-  Copy Dockerfile and requirements.txt underneath the schedulefyi directory.

## Execute the following commands in terminal:
- docker-compose up (will launch both Flask and mysql apps)
To execute only the Flask app:
- docker build --tag my_schedulefyi --no-cache .
- docker run -p 5001:5000 my_schedulefyi 

## Go to http://0.0.0.0:5001/ in browser

