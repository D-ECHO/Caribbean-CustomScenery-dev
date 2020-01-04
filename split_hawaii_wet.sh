mkdir haw_lake haw_marsh haw_estuary haw_wetland haw_pond haw_river haw_bog
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Lake'" haw_lake/wet_lake.shp wetlands.shp/wetlands.shp
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Freshwater Emergent Wetland'" haw_marsh/wet_fresh.shp wetlands.shp/wetlands.shp
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Estuarine and Marine Wetland'" haw_estuary/wet_estuarine.shp wetlands.shp/wetlands.shp
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Other'" haw_wetland/wet_other.shp wetlands.shp/wetlands.shp
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Freshwater Pond'" haw_pond/wet_fresh_pond.shp wetlands.shp/wetlands.shp
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Riverine'" haw_river/wet_riverine.shp wetlands.shp/wetlands.shp
ogr2ogr -f "ESRI Shapefile" -select 'WETLAND_TY' -where "WETLAND_TY = 'Freshwater Forested/Shrub Wetland'" haw_bog/wet_forestshrub.shp wetlands.shp/wetlands.shp
