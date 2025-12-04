#!/usr/bin/env bash
set -e

sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0
dotnet --version

git clone https://github.com/GoCrazyAhhhh/EasyDevOps.git
cd EasyDevOps/frontend
dotnet run --urls http://localhost:5000
