![GitHub last commit](https://img.shields.io/github/last-commit/mattycourtney/dropbear-client)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/mattycourtney/dropbear-client)
![GitHub repo size](https://img.shields.io/github/repo-size/mattycourtney/dropbear-client)
![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/mattycourtney/dropbear-client?label=code%20quality)
![GitHub issues](https://img.shields.io/github/issues-raw/mattycourtney/dropbear-client)
![GitHub](https://img.shields.io/github/license/mattycourtney/dropbear-client)

# VMC Lunch & Learn 2020 Webinar Series - Dropbear Client

This project contains a small ruby script used as a demo during the VMC Lunch & Learn 2020 Webinar Series. It POSTs to the RESTful API exposed from the [Dropbear Server](https://github.com/mattycourtney/dropbear-server).

## Running with Docker

The app is dockerizied to make deploying and running it easy.

Make sure the [Dropbear Server](https://github.com/mattycourtney/dropbear-server) is running first.

    $ docker build -t dropbear-client https://github.com/mattycourtney/dropbear-client.git
    $ docker run --link dropbear-server --name dropbear-client -t dropbear-client

When you've finished with the app, just stop the container.

    $ docker stop dropbear-client
