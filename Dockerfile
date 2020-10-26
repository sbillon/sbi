FROM google/cloud-sdk:alpine
RUN apk add --no-cache wget python3
RUN wget https://github.com/vmware-tanzu/velero/releases/download/v1.4.2/velero-v1.4.2-linux-amd64.tar.gz
RUN tar -xzf velero-v1.4.2-linux-amd64.tar.gz velero-v1.4.2-linux-amd64/velero && rm velero-v1.4.2-linux-amd64.tar.gz
RUN mv velero-v1.4.2-linux-amd64/velero /usr/local/bin/
