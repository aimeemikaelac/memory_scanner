#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /Xilinx/memory_scanner/solution1/.autopilot/db/a.g.bc ${1+"$@"}
