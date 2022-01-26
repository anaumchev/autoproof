# Container image that runs your code
FROM anaumchev/autoproof:0

# Code file to execute when the docker container starts up (`autoproof.sh`)
ENTRYPOINT ["/autoproof.sh"]
