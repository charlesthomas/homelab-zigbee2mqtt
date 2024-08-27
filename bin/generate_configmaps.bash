#!/bin/bash

yq ".data.\"configuration.yaml\" = load_str(\"config/configuration.yaml\")" config/header.yaml | \
yq ".data.\"devices.yaml\" = load_str(\"config/devices.yaml\")" | \
yq ".data.\"groups.yaml\" = load_str(\"config/groups.yaml\")" \
> resources/configmaps.yaml
