# AutoProof
The AutoProof action verifies your Eiffel code.
It requires that your repository contains an .ecf file describing the configuration of your project.

# Implementation
The code of the action is inside the action.yml file.
It pulls a pre-packaged Docker image (specified in the Dockerfile) with Ubuntu that includes a ready-to-use AutoProof bundle.
The Docker image may be pulled and used independently (https://hub.docker.com/repository/docker/anaumchev/autoproof).

# Example
The .github/workflows/main.yml file contains an example of a workflow that applies the AutoProof action.
The action is applied to a simple Eiffel project (specified in the ap_project.ecf file) that consists of a single class (file account.e).
