## Requirements

### Working on your host

- ruby 3.1.2
  - You can try [rbenv](https://github.com/rbenv/rbenv) to manage ruby installations
- bundler dependency manager
  - `gem install bundler -v '2.3.25'`

### Non-Invasive way: Docker containers

- [Docker](https://www.docker.com/)
- build the environment image
  - `docker build -t ruby3.1.2:sandbox .`

## How to run Tests

You can run test from project path

### From your host

- `bundler exec rspec --format documentation`

### From a Docker container

- `docker run -it ruby3.1.2:sandbox rspec --format documentation`
