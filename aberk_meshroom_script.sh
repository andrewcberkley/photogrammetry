#!/bin/bash
if [ ! -f "project.mg" ]; then
    mkdir `pwd`/output
#    /data/Meshroom-2019.1.0/meshroom_photogrammetry --input `pwd`/input --output `pwd`/output --save project.mg
    data/Meshroom-2019.1.0/meshroom_photogrammetry --input `pwd`/data/project/project_name/input --output `pwd`/output --save project.mg
fi
data/Meshroom-2019.1.0/meshroom_compute project.mg --toNode Publish_1 --forceStatus
cd /home
#umount /dev/xvdf
#shutdown -h now