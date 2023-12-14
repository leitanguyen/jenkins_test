FROM jenkins/jenkins:2.414.2-jdk11
USER root
RUN apt-get update && apt-get install -y lsb-release python3-pip
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.3 docker-workflow:1.28"

# FROM 141212562619.dkr.ecr.us-west-2.amazonaws.com/fulfillment-base:git-67f43cd1d5

# ENV PROJECT_DIR /opt/nike/fulfillment

# # Copy repo and install packages
# COPY poetry.lock $PROJECT_DIR/poetry.lock
# COPY pyproject.toml $PROJECT_DIR/pyproject.toml

# WORKDIR $PROJECT_DIR

# # Install fulfillment dependencies
# RUN poetry config virtualenvs.create false \
#     && poetry install --no-interaction --no-root

# # Copy repo and install packages
# COPY . $PROJECT_DIR

# # Install fulfillment dependencies
# RUN poetry config virtualenvs.create false \
#     && poetry install --no-interaction
