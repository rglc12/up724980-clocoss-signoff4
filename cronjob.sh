#!/usr/bin/env bash

# With the help of a Cronjob schedule (see README.md), this script will be ran at whatever time the user specifies in the Cronjob Manager
gcloud beta datastore export --namespaces='up724980s4' gs://up724980-bucket