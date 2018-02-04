#!/usr/bin/env bash

# Create a bucket with your user name in the London based datastore (europe-west2)
gsutil mb -l europe-west2 gs://up724980-bucket

# Initiate the backup of up724980s4 to your bucket
gcloud beta datastore export --namespaces='up724980s4' gs://up724980-bucket