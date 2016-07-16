#!/bin/bash

MCTR="$TTCN3_DIR/bin/mctr"
PORT=6666
if [ ! -f $MCTR ]; then
  echo "can't find mctr binary"
  exit 1
fi

echo "staring ttcn3_debugger server on port $PORT"
ncat -l $PORT --keep-open -c "script --return -c $MCTR"
