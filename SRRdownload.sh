#!/bin/bash

declare -a SRRid

@SRRid = ($(cat SRRid.txt))

for ((i=0; i<$@SRRid; i++)) do
        prefetch ${SRRid[$i]}
done
