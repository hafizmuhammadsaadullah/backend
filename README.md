# Task API (backend)

Rails 8.1 API backend for a simple Task list app. It pairs with the [frontend](https://github.com/hafizmuhammadsaadullah/frontend), a React + Vite UI.

## Stack

- Ruby on Rails 8.1 (API)
- MySQL
- Solid Queue, Solid Cache and Solid Cable
- Docker (`Dockerfile` and `Dockerfile.dev`)
- Brakeman, bundler-audit and RuboCop for security and style checks
- GitHub Actions workflow that auto-deploys the backend to AWS EC2 on push

## Getting started

Requirements: the Ruby version in `.ruby-version` and a running MySQL server.

```sh
bundle install
bin/rails db:prepare
bin/rails server
```

The Docker setup is defined in `Dockerfile` and `Dockerfile.dev`.
