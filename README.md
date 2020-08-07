[![Pushing to quay.io](https://github.com/ELIXIR-Belgium/covid-19-galaxy-container/workflows/Pushing%20to%20quay.io/badge.svg?branch=master&event=push)](https://github.com/ELIXIR-Belgium/covid-19-galaxy-container/actions?query=workflow%3A%22Pushing+to+quay.io%22)

# Covid-19 Galaxy container
This repo is used to build the Covid-19 Galaxy container supporting all the genomics an cheminformatics workflows from https://github.com/galaxyproject/SARS-CoV-2


```
docker build -t quay.io/galaxy/covid-19-training -f Dockerfile .
docker run --privileged -p "8080:80" -t quay.io/galaxy/covid-19-training
docker login quay.io
docker push quay.io/galaxy/covid-19-training
```
