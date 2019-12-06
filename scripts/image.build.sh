parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path/.."
s2i build . registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift rhmi-lab-internal-fuse-api