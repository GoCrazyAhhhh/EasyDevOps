#!/usr/bin/env bash

winget install Microsoft.DotNet.SDK.8 -e
winget install Git.Git -e

git clone https://github.com/GoCrazyAhhhh/EasyDevOps.git
cd EasyDevOps/frontend/MyConsoleApp
dotnet run

#Je krijgt dan een link naar "http://localhost:5238" te zien
