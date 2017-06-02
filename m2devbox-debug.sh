#!/bin/bash

ssh_port=$(docker port magento2devbox_web_7219094998550e7af83df4cb767bfc6d 22)
ssh_port=${ssh_port#*:}

ssh -N -p $ssh_port -R 9000:localhost:9000 magento2@127.0.0.1