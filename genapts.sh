#!/bin/sh
build_airport() {
	echo $1;
	case $1 in
		TFFJ) 	slope=0.05;
			perimeter=5.0;;
		TNCS)	slope=0.03;
			perimeter=25.0;;
		TNCE)	slope=0.03;
			perimeter=0.5;;
		TKPK)	slope=0.02;
			perimeter=0.5;;
		TRPG)	slope=0.005;
			perimeter=12;;
		*)	slope=0.025;
			perimeter=5.0;;
	esac
	genapts850 --threads --input=data/airports/$1.dat --work=./work --dem-path=SRTM-1 --max-slope=$slope --perimeter=$perimeter
}
if [ "$2" != "soft" ]
then
	echo "Hard rebuilt: Removing old work files";
	rm -r work/AirportArea work/AirportObj;
fi
if [ -z "$1" ]
then
	for i in data/airports/*.dat
	do 
		build_airport `echo $i| cut -c 15-18`;
	done
else
	build_airport $1;
fi
