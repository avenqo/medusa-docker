# medusa-docker

## Purpose of this project

The open source project [Medusa](https://medusajs.com) provides several components to create e-commerce applications within few steps.
We are using a simple E-commerce app based Medusa running in Docker as tutorial's AUT (application under test) for demo and training purposes.

## Introduction
This project will ceate a basic dockerized medusa (e-commerce) environment.

In detail, the following images are created

- Postgres DB
- Medusa App  including backend service, admin- and frontend-module)

## Create and run the docker containers

Create the multi container application by running the command

     docker compose up

It creates the containers 

- medusa-postgres
- medusa-svc-admin-fe

The medusa store will contain seeded data (example products).

The admin module is available at: http://localhost:9000/app/login .

The store is available at http://localhost:8000/ .

## Restrictions

The ports (8000, 9000) are fixed and can not be changed. This is ok because of the demo purpose for this project.

Currently, there is no file upload possible.
