#!/bin/bash

LOCAL_SETTINGS=/opt/stack/horizon/openstack_dashboard/local/local_settings.py

TOP_DIR=$(cd $(dirname "$0") && pwd)

sed -i -e '/^LANGUAGES = /,$d' $LOCAL_SETTINGS
python $TOP_DIR/update-lang-list.py >> $LOCAL_SETTINGS
