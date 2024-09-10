#!/bin/sh

echo "
name: ${CI_PROJECT_NAME}
namespace: wimcon1-test-01-custom-services
replica: 1
imagePullSecret: docker-global-cred
image: $DOCKER_IMAGE
port: 3000
runtimeId: wimcon1-test-01
tenantKey: cidaas-connect-prod
cpu:
  min: 100m
  max: 500m
memory:
  min: 128Mi
  max: 512Mi
healthCheckPath: /ping
env:
  CONTEXT_PATH: $CONTEXT_PATH
ingress:
  - hostname: connect-prod.cidaas.eu
    secretName: connect-prod.cidaas.eu
    paths: 
      - /custom-hp/login

" > values.yml
