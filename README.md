# CMake-Any-Version-Docker

This is a DockerFile that can builds any version of cmake from source.

## Usage

### Generate docker images

Create an image with latest cmake stable release version and number of jobs equal to your processor core count to run make.

```DockerFile
docker build -t yourtag/yourtag .
```

Create an image with version 3.24.2

```DockerFile
docker build -t yourtag/yourtag --build-arg CMAKE_VERSION=3.24.2 .
```

Create an image with version 3.24.2 with 8 parallel jobs for running make

```DockerFile
docker build -t yourtag/yourtag --build-arg CMAKE_VERSION=3.24.2 JOBS=8 .
```
