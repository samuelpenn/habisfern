#!/bin/bash
#
# Script to download images for each area in the world of Eorthe.
# Requires a Cartexography server running locally.

mkdir -p weidany
cd weidany
for i in aidan northmarch northwood lanuch harholt langly estwed cenicsdyke halecester northwood strathby westland scarondy merrik merkia cadwold ornwold talmoth hain emrend midlaen angsly
do
    wget --output-document $i.png "http://localhost:8080/cartexography/image/area/eorthe?areaId=$i&s=0&border=2&areas=1&hex=1"
done
cd ..

