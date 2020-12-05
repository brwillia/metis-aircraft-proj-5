#!/bin/bash
conda init bash
conda activate base
cd /home/barrett
IP=`ip -4 route get 8.8.8.8 | awk {'print $7'} | tr -d '\n'`
jupyter lab --no-browser --ip=$IP
