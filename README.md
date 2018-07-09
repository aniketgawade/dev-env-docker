## Developer environment docker creation 

Docker with vim, tmux, few languages installed.
- I have added my customized vimrc file to use my day to day settings.
- Just mount code dir and start working in yur environment.

To build docker 
```shell
docker build . -t dev-env
docker run -it -v ~/Desktop/Code-to-load:/root/Code dev-env bash
``` 
