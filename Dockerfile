FROM node:12-alpine
RUN apk add --no-cache \
        curl \
        git \
        zip \
        jq \
        python3 \
        bash \
    &&  apk --update add --virtual build-dependencies python3-dev \
    &&  curl -O https://bootstrap.pypa.io/get-pip.py \
    &&  python3 get-pip.py \
    &&  rm get-pip.py \
    &&  pip install  --no-cache-dir awscli \
    &&  npm i -g fm-assume-role serverless@2.37.1 \
    &&  apk del build-dependencies

RUN node --version
RUN aws --version
CMD /bin/bash

# RUN apt update
# RUN apt install build-essential checkinstall libssl-dev
# RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash