set -u # or set -o nounset
: "$1"
: "$CONTAINER_REGISTRY"
: "$VERSION"

export DIR=$1
docker build -t $CONTAINER_REGISTRY/$DIR:$VERSION --file ./$DIR/Dockerfile ./$DIR
