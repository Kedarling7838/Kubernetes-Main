#!/bin/bash

echo "Generating CPU load on nginx..."

kubectl run -i --tty load-generator \
  --rm \
  --image=busybox \
  --restart=Never \
  -- /bin/sh -c "while true; do wget -q -O- http://nginx-service; done"
