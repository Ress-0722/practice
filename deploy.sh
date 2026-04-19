#!/bin/bash
git pull origin main
docker build -t myapp .
docker stop myapp || true
docker rm myapp || true
docker run -d -p 3000:3000 --name myapp myapp
