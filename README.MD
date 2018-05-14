Compiling SOX for AWS

```sh
docker run --name make_sox -it lambci/lambda:build bash 
```
Then start a new terminal on host:

```
docker cp build_sox make_sox:/var/task/build_sox
```

In docker:
```sh
chmod +x build_sox/*
mv build_sox/* ./
./static_mpeg.sh
./static_lame.sh
./static_sox.sh
```

In host:
```sh
docker cp make_sox:/usr/sox-14.4.2/bin/sox sox
```

now you have a sox binary in your current directory that you can run in a lambda.
