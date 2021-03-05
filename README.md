# heap-training

## build
```
$ git clone https://github.com/cpuu/heap-training.git
$ cd heap-training/
$ docker build -t heap-training .
```

## run without aslr
```
$ docker run -v /home/cpuu/heap-training/hets:/home/nonroot/workdir --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it heap-training
```
