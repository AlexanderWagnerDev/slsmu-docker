#!/bin/sh
crond -f -l 2 &
exec node /run.js
