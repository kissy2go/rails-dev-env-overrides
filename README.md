# Setup/Override Rails development environment


## Requirements

- direnv
- docker
- docker-machine
- docker-compose


## Installation

Create new docker machine:

```
docker-machine create --driver virtualbox rails
eval "$(docker-machine env rails)"
```

Install development files:

```
cd your/rails/repository/path
./bin/rake rails:template LOCATION=https://raw.githubusercontent.com/kissy2go/rails-dev-env-overrides/master/setup.rb
```

Run middlewares on docker:

```
docker-compose up -d
```

Source `.envrc`:

```
direnv allow
```

Awesome!
