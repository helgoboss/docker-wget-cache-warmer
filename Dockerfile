FROM ubuntu:14.04

# Install wget
RUN apt-get update
RUN apt-get install -y wget

# Run configuration
ENTRYPOINT ["wget", "-r", "-nd", "--delete-after", "--wait=1", "--header=X-Refresh-Cache:true"]