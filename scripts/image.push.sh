QUAY_USER=${QUAY_USER:-integreatly}
TAG=${TAG:-latest}
docker tag rhmi-lab-internal-fuse-api quay.io/$QUAY_USER/rhmi-lab-internal-fuse-api:$TAG
docker push quay.io/$QUAY_USER/rhmi-lab-internal-fuse-api:$TAG
