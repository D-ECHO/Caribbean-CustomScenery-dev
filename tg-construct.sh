if [ $1 -eq 1 ]	#Sint Maarten only
then
	geo='--min-lon=-63.2 --max-lon=-62.9 --min-lat=18.0 --max-lat=18.15'
elif [ $1 -eq 2 ] #Anguila
then
	geo='--min-lon=-63.3 --max-lon=-62.9 --min-lat=18.15 --max-lat=18.3'
elif [ $1 -eq 3 ] #St Barthelemy
then
	geo='--min-lon=-63.0 --max-lon=-62.7 --min-lat=17.8 --max-lat=18.0'
elif [ $1 -eq 4 ] #Saba
then
	geo='--min-lon=-63.4 --max-lon=-63.1 --min-lat=17.4 --max-lat=17.7'
elif [ $1 -eq 5 ] #Aruba
then
	geo='--min-lon=-63.1 --max-lon=-62.9 --min-lat=17.4 --max-lat=17.6'
elif [ $1 -eq 6 ] #St Kitts and Nevis
then
	geo='--min-lon=-62.9 --max-lon=-62.5 --min-lat=17.0 --max-lat=17.5'
elif [ $1 -eq 7 ] #Montserrat and Redonda
then
	geo='--min-lon=-62.4 --max-lon=-62.0 --min-lat=16.6 --max-lat=17.0'
elif [ $1 -eq 8 ] #Antigua and Barbuda
then
	geo='--min-lon=-62.0 --max-lon=-61.6 --min-lat=16.8 --max-lat=17.8'
elif [ $1 -eq 9 ] #Guadeloupe
then
	geo='--min-lon=-61.9 --max-lon=-60.9 --min-lat=15.8 --max-lat=16.6'
elif [ $1 -eq 10 ] #Dominica
then
	geo='--min-lon=-61.6 --max-lon=-61.2 --min-lat=15.1 --max-lat=15.7'
elif [ $1 -eq 11 ] #Martinique
then
	geo='--min-lon=-61.3 --max-lon=-60.7 --min-lat=14.3 --max-lat=14.9'
elif [ $1 -eq 12 ] #Saint Lucia
then
	geo='--min-lon=-61.5 --max-lon=-60.5 --min-lat=13.5 --max-lat=14.2'
elif [ $1 -eq 13 ] #Saint Vincent and the Grenadines, Grenada
then
	geo='--min-lon=-61.9 --max-lon=-61.0 --min-lat=11.9 --max-lat=13.4'
elif [ $1 -eq 14 ] #Barbados
then
	geo='--min-lon=-59.7 --max-lon=-59.4 --min-lat=13.0 --max-lat=13.4'
elif [ $1 -eq 15 ] #Virgin Islands
then
	geo='--min-lon=-65.1 --max-lon=-64.1 --min-lat=17.6 --max-lat=18.8'
fi
echo $1
echo $geo
tg-construct --work-dir=./work --output-dir=./output/Terrain `echo $geo` --threads=3 --priorities=priorities.txt AirportArea SRTM-1 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Airport Pond Lake DryLake Reservoir IntermittentLake IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown River Asphalt Railroad Stream
