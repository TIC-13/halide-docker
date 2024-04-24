# Halide Docker
Docker files to use Halide using C++ and Python, with OpenCV and other libraries.

---

**Requirements:**

Install docker and docker-compose on your OS. Follow the official docker instructions:

- Link to install docker
  - [Linux Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
  - [Windows](https://docs.docker.com/desktop/install/windows-install/)

- Install docker-compose: if `docker compose` is not a recognized command, install docker-compose:
    ```bash
    $ apt install docker-compose
    ```

---

**Execution:**

- To run the docker compose FOR THE FIRST TIME use these commands

```bash
$ docker compose up --build
# or
$ docker-compose up --build
```

- To run the docker compose AFTER THE FIRST TIME use these commands

```bash
$ docker compose run halide
# or
$ docker-compose run halide
```
