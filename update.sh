#!/bin/bash
counter=$(( $1 * 2 ))
while [ $counter -gt 0 ]
do
	curl http://localhost/domjudge/public?static=1 --output index.html
	git add .
	git commit -m "$(date)"
	git push
	sleep 30
	counter=$(( $counter - 1 ))
done
