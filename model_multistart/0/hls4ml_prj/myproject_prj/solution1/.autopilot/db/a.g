#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/filipe/MEGA/GitHub/hls4ml-tutorial-master/model_multistart/0/hls4ml_prj/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}