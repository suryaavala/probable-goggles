#/bin/sh
# Build docker container - resolve all dependencies in a (fairly) deterministic and reproducible way


AWS_ACCESS_KEY_ID="$(aws configure get default.aws_access_key_id)" \
AWS_SECRET_ACCESS_KEY="$(aws configure get default.aws_secret_access_key)" \
AWS_SESSION_TOKEN="$(aws configure get default.aws_session_token)" \
AWS_DEFAULT_REGION="ap-southeast-2" \
PORT=8888 \
docker-compose up --build
