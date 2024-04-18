default:
    @just --list

build-workbench:
    docker build --platform 'linux/amd64' --tag samedwardes/posit-workbench-server:rhel8 -f posit-workbench/server/Dockerfile.rhel8 posit-workbench/server
    docker build --platform 'linux/amd64' --tag samedwardes/posit-workbench-session:rhel8 -f posit-workbench/session/Dockerfile.rhel8 posit-workbench/session

publish-workbench:
    docker push samedwardes/posit-workbench-server:rhel8
    docker push samedwardes/posit-workbench-session:rhel8

build:
    just build-workbench

publish:
    just publish-workbench