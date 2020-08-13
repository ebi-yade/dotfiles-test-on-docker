# dotfiles-test-on-docker

## Usage (How to log in to the container)

First, log in to the container with one of commands showed below, and then install dotfiles according to the way offered by each repo.

### for General

```sh
make default SHELL=<shell>
```

### for 日本人

```sh
make ja-jp SHELL=<shell>
```

### for Other Shells

sh, bash, zsh and fish is installed by default.  When you want to use shells besides these, run:

```sh
make specify-shell SHELL=<shell>
```

### from the Second Time

You can skip unecessary process and save memory with the command below after the first run , if you have no change on the Dockerfile.

```sh
docker run -w /root -it dotfiles-test:latest <shell>
```
