QUAY_USER=${QUAY_USER:-evanshortiss}
docker tag rhmi-lab-internal-fuse-api quay.io/$QUAY_USER/rhmi-lab-internal-fuse-api:latest
docker push quay.io/$QUAY_USER/rhmi-lab-internal-fuse-api:latest