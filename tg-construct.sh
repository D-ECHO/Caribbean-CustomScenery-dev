case $1 in
	1) geo='--min-lon=-63.2 --max-lon=-62.9 --min-lat=18.0 --max-lat=18.15';; #Sint Maarten only
	
	2) geo='--min-lon=-63.3 --max-lon=-62.9 --min-lat=18.15 --max-lat=18.3';; #Anguila
	
	3) geo='--min-lon=-63.0 --max-lon=-62.7 --min-lat=17.8 --max-lat=18.0';; #St Barthelemy
	
	4) geo='--min-lon=-63.4 --max-lon=-63.1 --min-lat=17.4 --max-lat=17.7';; #Saba
	
	5) geo='--min-lon=-63.1 --max-lon=-62.9 --min-lat=17.4 --max-lat=17.6';; #Aruba
	
	6) geo='--min-lon=-62.9 --max-lon=-62.5 --min-lat=17.0 --max-lat=17.5';; #St Kitts and Nevis
	
	7) geo='--min-lon=-62.4 --max-lon=-62.0 --min-lat=16.6 --max-lat=17.0';; #Montserrat and Redonda
	
	8) geo='--min-lon=-62.0 --max-lon=-61.6 --min-lat=16.8 --max-lat=17.8';; #Antigua and Barbuda
	
	9) geo='--min-lon=-61.9 --max-lon=-60.9 --min-lat=15.8 --max-lat=16.6';; #Guadeloupe
	
	10) geo='--min-lon=-61.6 --max-lon=-61.2 --min-lat=15.1 --max-lat=15.7';; #Dominica
	
	11) geo='--min-lon=-61.3 --max-lon=-60.7 --min-lat=14.3 --max-lat=14.9';; #Martinique
	
	12) geo='--min-lon=-61.5 --max-lon=-60.5 --min-lat=13.5 --max-lat=14.2';; #Saint Lucia
	
	13) geo='--min-lon=-61.9 --max-lon=-61.0 --min-lat=11.9 --max-lat=13.4';; #Saint Vincent and the Grenadines, Grenada
	
	14) geo='--min-lon=-59.7 --max-lon=-59.4 --min-lat=13.0 --max-lat=13.4';; #Barbados
	
	15) geo='--min-lon=-65.1 --max-lon=-64.1 --min-lat=17.6 --max-lat=18.8';; #Virgin Islands
	
	16) geo='--min-lon=-61.7 --max-lon=-61.5 --min-lat=15.8 --max-lat=15.9';; #Guadeloupe: southern islands
esac
echo $1
echo $geo
if [ ! -z "$2" ]  && [ $2 = "light" ]
then
	echo "Light built: Not building Asphalt, Railroad, Strem";
	arg="";
else
	arg="Asphalt Railroad Stream";
fi
tg-construct --work-dir=./work --output-dir=./output/Terrain `echo $geo` --threads=3 --priorities=priorities.txt AirportArea SRTM-1 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Airport Pond Lake DryLake Reservoir IntermittentLake IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown River $arg
