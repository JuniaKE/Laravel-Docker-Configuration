## Laravel-Docker-Configuration
This repository provides configuration for docker to run laravel application

## Setting Up the project
To clone the project run:

```javascript
git clone https://github.com/JuniaKE/Laravel-Docker-Configuration.git
```


## Configuring nginx.conf
With the PHP service configured, you can modify the Nginx service to use PHP-FPM as the FastCGI server to serve dynamic content. The FastCGI server is based on a binary protocol for interfacing interactive programs with a web server. For more information, please refer to this article on Understanding and [Implementing FastCGI Proxying in Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose).

```javascript 
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
```
## Set up the containers
You will need to be inside that project file to enter all of the rest of the commands in this tutorial. So remember to type `cd Laravel-Docker-Configuration` to move your terminal working location to the project file we just barely created.

```javascript
docker-compose build && docker-compose up -d
```
## Install Laravel 
To install laravel in the container, run the following command;

```javascript
cd ./src && composer create-project laravel/laravel .
```

Reach out to me on [Personal Email](mailto:briankoech650@gmail.com) or [Work Email](mailto:se.bkiprono@gmail.com)  

Happy Coding Champez :metal: :octocat: