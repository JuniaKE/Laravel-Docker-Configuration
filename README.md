## Laravel-Docker-Configuration
This repository provides configuration for docker to run laravel application

## Setting Up the project
To clone the project run:

`git clone https://github.com/JuniaKE/Laravel-Docker-Configuration.git`


## Configuring nginx.conf

...javascript 
server {
    listen 80;
    index index.php index.html;
    server_name localhost;
    error_log /var/log/nginx/error.log;
    access_log /var/log/nginx/access.log;
    root /var/www/html/public;

    location / {
        try_files $uri $uri/ / index.php?$query_string;
    }

    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass php:9000;
        fastcgi_index index.php;
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PATH_INFO $fastcgi_path_info;
    }
}
...
## Set up the containers
You will need to be inside that project file to enter all of the rest of the commands in this tutorial. So remember to type `cd Laravel-Docker-Configuration` to move your terminal working location to the project file we just barely created.

`docker-compose build && docker-compose up -d`

## Install Laravel 
To install laravel in the container, run the following command;

`cd ./src && composer create-project laravel/laravel .`

Happy Coding.