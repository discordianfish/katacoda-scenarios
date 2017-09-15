set -x
2>&1 | tee /tmp/init.log


cat <<EOF | ssh -o StrictHostKeyChecking=no root@docker sh
docker run -d -e REDIRECT="https://latency.at" -p 8000:80 cusspvz/redirect
docker pull latencyat/dashboard
EOF
