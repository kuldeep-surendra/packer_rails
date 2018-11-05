#!/bin/bash

set -e

echo "$PASSWORD" | sudo -S apt-get install nginx -y