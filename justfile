build:
    docker build \
        --platform 'linux/amd64' \
        --tag samedwardes/workbench-session-complete:latest \
        -f workbench-session-complete/Dockerfile.ubuntu2204 \
        workbench-session-complete/