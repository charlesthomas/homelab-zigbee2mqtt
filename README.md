# homelab-zigbee2mqtt

This is a mirco-services repo for deploying
[zigbee2mqtt](https://www.zigbee2mqtt.io/)
into [my homelab](https://github.com/charlesthomas/homelab).

receives zigbee messages, translates them to mqtt, sends them to [home-assistant](https://github.com/charlesthomas/homelab-home-assistant/) via mosquitto

it's in the same position home-assistant is: the most up-to-date one i could find is k8s-at-home which is defunct

## network_key

**if you network_key changes you have to re-pair all your devices!**

if you lose the secret

```yaml
data:
    secrets: <output of "python3 zigbee2mqtt/generate_network_key.py | base64" >
```

---
This repo is templated via
[homelab-template](https://github.com/charlesthomas/homelab-template)
and automatically updated via
[🤖 Templatron](https://github.com/charlesthomas/templatron).
