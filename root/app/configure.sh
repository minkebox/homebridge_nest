#! /bin/sh

ISSUE_TOKEN=$(echo "${ISSUE_TOKEN}" | sed -e 's/[\/&]/\\&/g')
COOKIES=$(echo "${COOKIES}" | sed -e 's/[\/&]/\\&/g')

cat /app/config.json | sed \
  -e "s/{{BRIDGE_USERNAME}}/${BRIDGE_USERNAME}/g" \
  -e "s/{{BRIDGE_PIN}}/${BRIDGE_PIN}/g" \
  -e "s/{{BRIDGE_SETUPID}}/${BRIDGE_SETUPID}/g" \
  -e "s/{{ISSUE_TOKEN}}/${ISSUE_TOKEN}/g" \
  -e "s/{{COOKIES}}/${COOKIES}/g" \
  -e "s/{{API_KEY}}/${API_KEY}/g" \
  > /app/homebridge/config.json
