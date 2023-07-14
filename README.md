# medusa-docker
Ceate a dockerized medusa (e-commerce) environment.

## Introduction

This will create images for

- Postgres DB
- medusa-svc (a created e-commerce app based on medusajs)

## Create container

Create the multi container application **medusa-aut** by running the command

      docker compose up

It creates the containers 

- medusa-postgres
- medusa-app

The medusa store will contain seeded data.
