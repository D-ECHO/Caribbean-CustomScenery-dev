mkdir haw_town haw_urban
ogr2ogr -f "ESRI Shapefile" -select 'LUDCODE' -where "LUDCODE = 'R'" haw_town/slud_town.shp slud.shp/slud.shp
ogr2ogr -f "ESRI Shapefile" -select 'LUDCODE' -where "LUDCODE = 'U'" haw_urban/slud_urban.shp slud.shp/slud.shp
