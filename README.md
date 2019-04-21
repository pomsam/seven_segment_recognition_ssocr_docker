# Docker image for ssocr
* To use [ssocr (Seven Segment Optical Character Recognition)](https://www.unix-ag.uni-kl.de/~auerswal/ssocr/) in docker.
* Ref https://ourcodeworld.com/articles/read/741/how-to-recognize-seven-segment-displays-content-with-ssocr-seven-segment-optical-character-recognition-in-ubuntu-1604

# USAGE

## build

```
docker-compose build
```

## test run

Recoginized sample test image `./images/test_22.jpg` .
```
docker-compose run ssocr
root@xxxxxxxx:/app# ssocr -d-1 ./images/test_22.jpg -D./images/temp.png -t 30
22
```

See `./images/temp.png` . You can check the recognition for this sample image.
