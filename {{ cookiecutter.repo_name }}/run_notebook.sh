#/bin/sh
# Build docker container - resolve all dependencies in a (fairly) deterministic and reproducible way

NOTEBOOKHOME=/root

docker run \
    -e AWS_ACCESS_KEY_ID="$(aws configure get default.aws_access_key_id)" \
    -e AWS_SECRET_ACCESS_KEY="$(aws configure get default.aws_secret_access_key)" \
    -e AWS_SESSION_TOKEN="$(aws configure get default.aws_session_token)" \
    -e AWS_DEFAULT_REGION="ap-southeast-2" \
    -p 8888:8888 \
    -v $PWD/notebooks:$NOTEBOOKHOME/workspace/notebooks \
    -v $PWD/data:$NOTEBOOKHOME/workspace/data \
    suryaavala/"{{ cookiecutter.repo_name }}"
