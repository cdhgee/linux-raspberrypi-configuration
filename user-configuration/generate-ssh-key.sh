#!/bin/bash

ssh-keygen -t id_ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -N "" -C `whoami`@`hostname`
