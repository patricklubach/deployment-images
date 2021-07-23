FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

RUN apk add --no-cache jq && \
    curl https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip -o terraform_0.14.7_linux_amd64.zip && \
    unzip terraform_0.14.7_linux_amd64.zip -d /usr/local/bin/ && \
    terraform_0.14.7_linux_amd64.zip