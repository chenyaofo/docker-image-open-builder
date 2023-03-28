# Custom Docker Builder via Github Action

## Step1: Set Secrets

Please set secrets `DOCKER_USER` and `DOCKER_PASS` for the username and password of docker registry, specifically.

## Step2: Modify `.env`

Please modify the `.env` file to assign the build details.

```
DOCKERFILE=https://raw.githubusercontent.com/chenyaofo/docker-image-open-builder/main/Dockerfile
REGISTRY=registry.cn-hongkong.aliyuncs.com
REGISTRY_NS=unvs
TAG_NAME=numpy
TAG_VERSION=py310
```

| Env Variable | Definition |
| --- | --- |
| DOCKERFILE | The `Dockerfile` to be built, which should be a URL |
| REGISTRY | The registry to be pushed |
| REGISTRY_NS | The namespace of the built docker image |
| TAG_NAME | The tag name of the built docker image |
| TAG_VERSION | The tag version of the built docker image |

In sum, the built docker image would be `$REGISTRY/$REGISTRY_NS/$TAG_NAME:$TAG_VERSION`. After build, the docker image `$REGISTRY/$REGISTRY_NS/$TAG_NAME:$TAG_VERSION` would be pushed.

## Step 3: Manually Trigger the Workflows

Please move to `Actions` and manually trigger the workflows.