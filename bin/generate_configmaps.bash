#!/bin/bash

yq ".devices = load(\"config/devices.yaml\")" config/configuration.yaml | \
yq ".groups = load(\"config/groups.yaml\")" > config/tmp.yaml
yq ".data.\"configuration.yaml\" = load_str(\"config/tmp.yaml\")" config/header.yaml > resources/configmaps.yaml
rm config/tmp.yaml
