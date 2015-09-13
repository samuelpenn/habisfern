#!/bin/bash
#
# Script to download images for each area in the world of Eorthe.
# Requires a Cartexography server running locally.

function getmap() {
    area=$1
    wget --output-document $area.png "http://localhost:8080/cartexography/image/area/eorthe?areaId=$area&s=0&border=2&areas=1&hex=1&style=hires"
}

mkdir -p weidany
cd weidany
for i in aidan angsly cadwold cenicsdyke emrend estwed hain halecester harholt langly lanuch merkia merrik midlaen northmarch northwood ornwold scarondy strathby talmoth westland
do
echo    getmap $i
done
cd ..

mkdir -p bryteland
cd bryteland
for i in bjornstathr erding harholt jarneyland nethvollr oforley sonodalr
do
    getmap $i
done
cd ..


mkdir -p forest
cd forest
for i in cancha danuch niemstarg scarondy taneith tanwall
do
    getmap $i
done
cd ..

mkdir -p north
cd north
for i in herzon niemstarg salov urazen
do
    getmap $i
done
cd ..
