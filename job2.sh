#!/bin/sh
now=`date "+%Y-%m-%d"`
gsutil cp -r /home gs://transfer-bucket-cc/Docker/$now/
