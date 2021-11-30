## Laravel-Docker-Configuration
This repository provides configuration for docker to run laravel application

## Setting Up the project
To clone the project run:

`git clone https://github.com/JuniaKE/Laravel-Docker-Configuration.git`
## Set up the containers
You will need to be inside that project file to enter all of the rest of the commands in this tutorial. So remember to type `cd Laravel-Docker-Configuration` to move your terminal working location to the project file we just barely created.

`docker-compose build && docker-compose up -d`

## Install Laravel 
To install laravel in the container, run the following command;

`cd ./src && composer create-project laravel/laravel`

> Happy Coding.