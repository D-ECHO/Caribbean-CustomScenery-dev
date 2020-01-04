#!/bin/sh
if [ -z "$1" ]
then
	rm -r work/AirportArea work/AirportObj
	for i in data/airports/*.dat; do genapts850 --threads --input=$i --work=./work --dem-path=SRTM-1  --max-slope=0.021; done
else
	#rm -r work/AirportArea work/AirportObj
	genapts850 --threads --input=data/airports/$1.dat --work=./work --dem-path=SRTM-1 --max-slope=0.021
fi
