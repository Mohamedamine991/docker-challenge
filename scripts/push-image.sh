
set -u # or set -o nounset
: "$1"
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

export DIR=$1
echo $REGISTRY_PW | docker login  --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/$DIR:$VERSION