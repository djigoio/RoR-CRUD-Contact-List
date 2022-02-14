# RoR-CRUD-Contact-List

This project was generated using this [boilerplate](https://github.com/ohbarye/rails-react-typescript-docker-example)

## TL;DR

**Here is an  application with the following modern web technology stacks.**

- [Ruby](https://www.ruby-lang.org/en/) 3.0.0
- [Rails](https://rubyonrails.org/) 6.1.4
- [React.js](https://reactjs.org/) 17.0.1
- [TypeScript](https://www.typescriptlang.org/) 4.3.5
- [Docker](https://docs.docker.com/)
- [PostgreSQL](https://www.postgresql.org/) 11
- [GitHub Actions](https://github.com/features/actions)

## Usage

```shell
# Setup
$ docker-compose run frontend yarn
$ docker-compose run backend bin/rails db:create db:migrate

# Start
$ docker-compose up -d

# Open frontend
$ open http://localhost:80 # You'll see yaichi page, then click any app

# Check backend API
$ curl -H 'Host: backend.localhost'
```

### Backend

The combination, Rails + PostgreSQL + Docker Compose, is just a result I followed [Docker Compose's official instruction](https://docs.docker.com/compose/rails/).

### Frontend

It consist of very thin webpack settings, TypeScript config, and Jest.
