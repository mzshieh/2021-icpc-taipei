#!/bin/bash
curl http://localhost/domjudge/public?static=1 --output index.html
git add .
git commit -m "%(%F_%H%M%S)T"
git push
