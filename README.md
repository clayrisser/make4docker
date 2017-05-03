# make4docker _Beta_

Use Make to simplify your Docker builds

Please &#9733; this repo if you found it useful &#9733; &#9733; &#9733;


## Features
<!------------------------------------------------------->

* Pull image
* Build image
* Push image
* Run image
* SSH into image
* SSH into running container


## Installation
<!------------------------------------------------------->

```sh
cd /your/special/project
curl -OL https://raw.githubusercontent.com/jamrizzi/make4docker/master/Makefile
```


## Dependencies
<!------------------------------------------------------->

* [Make](https://www.gnu.org/software/make/)
* [Docker](https://www.docker.com/)
* [dockssh](https://github.com/jamrizzi/dockssh)


## Usage
<!------------------------------------------------------->

| Command                   | Description                                                                          |
| ------------------------- | ------------------------------------------------------------------------------------ |
| `make`                    | Fetches dependencies, cleans repo, and builds image                                  |
| `make fetch_dependencies` | Fetches dependencies                                                                 |
| `make pull`               | Pulls image from dockerhub                                                           |
| `make build`              | Builds image                                                                         |
| `make push`               | Pushes image to dockerhub                                                            |
| `make run`                | Runs the image as a container                                                        |
| `make ssh`                | SSH into image (requires [dockssh](https://github.com/jamrizzi/dockssh))             |
| `make essh`               | SSH into running container (requires [dockssh](https://github.com/jamrizzi/dockssh)) |


## Support
<!------------------------------------------------------->

Submit an [issue](https://github.com/jamrizzi/make4docker/issues/new)


## Buy Me Coffee
<!------------------------------------------------------->

A ridiculous amount of coffee was consumed in the process of building this project.

[Add some fuel](https://jamrizzi.com/#!/buy-me-coffee) if you'd like to keep me going!


## Contributing
<!------------------------------------------------------->

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


## License
<!------------------------------------------------------->

[MIT License](https://github.com/jamrizzi/make4docker/blob/master/LICENSE)

[Jam Risser](https://jamrizzi.com) &copy; 2017


## Credits
<!------------------------------------------------------->

* [Jam Risser](https://jamrizzi.com) - Author


## Changelog
<!------------------------------------------------------->

0.1.0 (2017-05-03)
* Beta release
* Added SSH support

0.0.1 (2017-04-26)
* Initial release
