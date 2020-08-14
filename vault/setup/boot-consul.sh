#!/bin/sh

## we need consul for the backend so start it in dev mode
consul agent -dev &

echo "--> Consul Started in Dev Mode"
echo " UI Available at http://localhost:8500/ui"