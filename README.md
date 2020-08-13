[![Pushing to quay.io](https://github.com/ELIXIR-Belgium/covid-19-galaxy-container/workflows/Pushing%20to%20quay.io/badge.svg?branch=master&event=push)](https://github.com/ELIXIR-Belgium/covid-19-galaxy-container/actions?query=workflow%3A%22Pushing+to+quay.io%22) 
[![Image build test](https://github.com/ELIXIR-Belgium/covid-19-galaxy-container/workflows/Image%20build%20test/badge.svg)](https://github.com/ELIXIR-Belgium/covid-19-galaxy-container/actions?query=workflow%3A%22Image+build+test%22)
[![Galaxy version](https://img.shields.io/badge/Galaxy%20version-20.05-blue)](https://github.com/bgruening/docker-galaxy-stable/tree/20.05)

# Covid-19 Galaxy container
This repo is used to build the Covid-19 Galaxy container supporting all the genomics an cheminformatics workflows from https://github.com/galaxyproject/SARS-CoV-2


## Usage

### Building the container

Build command:

```
docker build -t covid-19-training -f Dockerfile .    
```

### Running the container

Run your container :

```
docker run --privileged -p 8080:80 covid-19-training
```

Or run the container from Quay.io:

```
docker run --privileged -p 8080:80 quay.io/galaxy/covid-19-training
```

**The run command explained**:
- `-p "8080:80"` will let the container host Galaxy on port 8080
- `--privileged` will allow the conatiner to load a reference genome through CVMFS when needed

### Using the container

When the container is running, open a webbrowser and go to [http://localhost:8080/](http://localhost:8080/) to open the Galaxy interface.

