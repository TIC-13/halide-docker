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

_Into the folder of this repository:_

- To run the docker compose FOR THE FIRST TIME use these commands

```bash
docker compose up --build
```

- To run the docker compose AFTER THE FIRST TIME use these commands

```bash
docker compose run halide
```

> If your user is not on _docker_ group, the super user permission (_sudo_) is necessary to run the above commands.

---

**Using:**

- Volume / Shered folder:
  
  The `container_volume` folder from the `halide-docker` repository is loaded into the Docker container. Therefore, place your code/project in this folder to use it with Docker.

  In the container, this folder is mounted to the `/volume` directory and its files can be accessed through it.


- Environment Variables:

  On this container, the Halide folder is set on `$HALIDE_ROOT` environment variable.

  The `$LD_LIBRARY_PATH` environment variable is already set too.
