#!/bin/bash
set -x

if [ ! -e SEED ]; then
    touch SEED
fi

date +%s > SEED

git add SEED
git commit -m "trigger user: $GO_TRIGGER_USER, \npipeline name: $GO_PIPELINE_NAME \npipeline label: $GO_PIPELINE_LABEL"
git push

exit 0
