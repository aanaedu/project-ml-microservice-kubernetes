[![CircleCI](https://circleci.com/gh/aanaedu/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/aanaedu/project-ml-microservice-kubernetes/tree/main)

## Project Overview

This project operationalizes a Machine Learning Microservice API powered by Python flask app-in file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

The data is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More information about the data, which was initially taken from Kaggle, can be found on [the data source site](https://www.kaggle.com/c/boston-housing).

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Export environment variables for shell scripts

    `export DOCKER_ID=<enter_your_your_docker_hub_id>`

3. Run in Docker:  `./run_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
