echo "== INSTALL AWS CDK =="

echo "=== CHECK AND CONFIGURE PODMAN ==="
podman --version

BIN_DOCKER_PATH = "/usr/local/bin/docker"
cat << EOF > $BIN_DOCKER_PATH
#!/usr/bin/env bash

podman "\$@"

if [ \$? == 125 ]; then
  echo "WARNING: Podman returned code 125, exit with code 1"
  echo "         When this happens during cdk deploy,"
  echo "         this is probably fine. Otherwise inspect"
  echo "         the output above."
  exit 1;
fi
EOF

chmod ug+x $BIN_DOCKER_PATH

echo "=== INSTALL AWS CDK ==="
npm install --global aws-cdk

echo "== SUCCESS =="
