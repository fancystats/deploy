# FancyStats Deployment

Deployment and configuration scripts for FancyStats.

## Development Environment

Initially using Vagrant, although this could easily be done with Docker
containers directly. Salt can manage either or both. This is really just to
quickly get some Salt states in place, migrating to Docker containers should
be trivial.

## Stack

Currently considering the following stack, although it's open to modification:

* Nginx + Proxy Pass to uWSGI (tcp or unix domain sockets)
* uWSGI + Python Extension
* PostgresSQL 9.3

For Celery I'm thinking a RabbitMQ backend. For caching I'm thinking Redis or
Memcache. But again, open to suggestion here.
