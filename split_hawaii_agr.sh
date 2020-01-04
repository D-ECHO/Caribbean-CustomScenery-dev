mkdir haw_grassland haw_mixedcrop haw_orchard haw_lake haw_wetland
ogr2ogr -f "ESRI Shapefile" -select 'OBJECTID, COMMODITY' -where "COMMODITY LIKE 'A%'" haw_grassland/alum_animal.shp Agricultural_Land_Use_Maps_ALUM/Agricultural_Land_Use_Maps_ALUM.shp
ogr2ogr -f "ESRI Shapefile" -select 'OBJECTID, COMMODITY' -where "COMMODITY LIKE 'F%' OR COMMODITY LIKE 'S%'" haw_mixedcrop/alum_fieldcrop.shp Agricultural_Land_Use_Maps_ALUM/Agricultural_Land_Use_Maps_ALUM.shp
ogr2ogr -f "ESRI Shapefile" -select 'OBJECTID, COMMODITY' -where "COMMODITY LIKE 'O%' OR COMMODITY LIKE 'P%'" haw_orchard/alum_orchard.shp Agricultural_Land_Use_Maps_ALUM/Agricultural_Land_Use_Maps_ALUM.shp
ogr2ogr -f "ESRI Shapefile" -select 'OBJECTID, COMMODITY' -where "COMMODITY LIKE 'Q%'" haw_lake/alum_aquaculture.shp Agricultural_Land_Use_Maps_ALUM/Agricultural_Land_Use_Maps_ALUM.shp
ogr2ogr -f "ESRI Shapefile" -select 'OBJECTID, COMMODITY' -where "COMMODITY LIKE 'W%'" haw_wetland/alum_wetland.shp Agricultural_Land_Use_Maps_ALUM/Agricultural_Land_Use_Maps_ALUM.shp
