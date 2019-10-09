parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
oc delete templates/rhmi-lab-internal-fuse-api -n openshift || true
oc create -f "$parent_path/template.yml" -n openshift