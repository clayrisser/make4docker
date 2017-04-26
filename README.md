# make4docker
Use Make to simplify your Docker builds

## Usage
### Commands
| Command                   | Description                                         |
| ------------------------- | --------------------------------------------------- |
| `make`                    | Fetches dependencies, cleans repo, and builds image |
| `make fetch_dependencies` | Fetches dependencies                                |
| `make pull`               | Pulls image from dockerhub                          |
| `make build`              | Builds image                                        |
| `make push`               | Pushes image to dockerhub                           |
| `make run`                | Runs the image as a container                       |
