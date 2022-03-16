## Wordpress
WordPress is one of the most versatile open source content management systems on the market. WordPress is built for high performance and is scalable to many servers, has easy integration via REST, JSON, SOAP and other formats, and features a whopping 15,000+ plugins to extend and customise the application for just about any type of website.

https://www.wordpress.org/

## Install
#### Using DECK
Install Wordpress from the DECK marketplace and follow the instructions on the GUI

#### From terminal with Docker
The main folder of this repository contains a functional `docker-compose.yml` file. Run
the application using it as shown below:
``` consol
$ git clone https://github.com/deck-app/WordPress.git
$ docker-compose up -d
```
#### Modifying project settings
From the DECK app, go to stack list and click on project's `More > configure > Advanced configuration` Follow the instructions below and restart your stack from the GUI

#### Rebuilding from terminal
You have to rebuild the docker image after you make any changes to the project configuration, use the snippet below to rebuild and restart the stack
`docker-compose stop && docker-compose up --build -d`