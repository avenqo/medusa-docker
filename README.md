# medusa-docker
Ceate a dockerized medusa (e-commerce) environment.

## Introduction

This will create images for

- Postgres DB
- Medusa App (a created e-commerce app based on medusajs including backend service, admin- and frontend-module)

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
