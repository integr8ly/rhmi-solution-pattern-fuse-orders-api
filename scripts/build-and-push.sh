FOO=${QUAY_USER:-evanshortiss}
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path/.."
docker build . -t rhmi-lab-internal-fuse-api
docker tag rhmi-lab-internal-fuse-api quay.io/evanshortiss/rhmi-lab-internal-fuse-api:latest
docker push quay.io/evanshortiss/rhmi-lab-internal-fuse-api:latest