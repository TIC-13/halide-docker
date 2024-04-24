# Halide Docker
Docker files to use Halide using C++ and Python, with OpenCV and other libraries.

---

**Requirements:**

Install docker and docker-compose on your OS. Follow the official docker instructions:

- Link to install docker
  - [Linux Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
  - [Windows](https://docs.docker.com/desktop/install/windows-install/)

---

**Execution:**

- To run the docker compose FOR THE FIRST TIME use these commands

```bash
$ docker compose up --build
```

- To run the docker compose AFTER THE FIRST TIME use these commands

```bash
$ docker compose run halide
```

---

**Using**

The `container_volume` folder is loaded into the Docker container. Therefore, place your code/project in this folder to use it with Docker.

This folder in the container is mounted to the `/volume` directory.
