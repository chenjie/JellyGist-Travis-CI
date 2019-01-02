#!/usr/bin/env bash
set -e # halt script on error
root_dir=`pwd`

for filename in *; do
	cd $root_dir
    if [ -d "$filename" -a ! "$filename" = script ]; then
    	cd "$filename"
        rsync -rqz --delete-after --rsync-path="mkdir -p ${DEPLOY_DIRECTORY}/${filename} && rsync" _book/ $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_DIRECTORY/${filename}
    fi
done