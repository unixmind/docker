# Bash Automated Testing System

IMAGE=example

@test "exposed ports conformance" {
  EXPECTED_PORTS="443/tcp 80/tcp 8080/tcp"
  EXPOSED_PORTS=$(docker inspect -f '{{json .ContainerConfig.ExposedPorts}}' $IMAGE | jq '. | to_entries[] | .key' | tr -d "\"" | sort | xargs)
  [[ "${EXPECTED_PORTS}" == "${EXPOSED_PORTS}" ]]
}

@test "volumes expectation" {
  EXPECTED_VOLUMES="/mnt /tmp"
  DEFINED_VOLUMES=$(docker inspect -f '{{json .ContainerConfig.Volumes}}' $IMAGE | jq '. | to_entries[] | .key' | tr -d "\"" | sort | xargs)
  [[ "${EXPECTED_VOLUMES}" == "${DEFINED_VOLUMES}" ]]
}

@test "user account" {
  EXPECTED_ACCOUNT="test:test"
  DEFINED_ACCOUNT=$(docker inspect -f '{{.ContainerConfig.User}}' $IMAGE)
  [[ "${EXPECTED_ACCOUNT}" == "${DEFINED_ACCOUNT}" ]]
}

@test "entrypoint" {
  EXPECTED_ENTRYPOINT="cat /etc/alpine-release"
  DEFINED_ENTRYPOINT=$(docker inspect -f '{{.ContainerConfig.Entrypoint}}' $IMAGE | sed -e 's/\[//;s/\]//')
  [[ "${EXPECTED_ENTRYPOINT}" == "${DEFINED_ENTRYPOINT}" ]]
}
