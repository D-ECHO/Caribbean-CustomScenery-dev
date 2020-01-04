mkdir haw_town haw_urban haw_industrial haw_transport haw_pasture haw_orchard haw_mixedcrop haw_herb haw_scrub haw_grassland haw_deciduousforest haw_evergreeenforest haw_mixedforest haw_river haw_lake haw_estuary haw_wetland haw_saline haw_sand haw_rock haw_quarry haw_glacier haw_barrencover
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '11'" haw_town/lulc_residential.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '12'" haw_urban/lulc_commercial.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '13' OR LANDCOVER = '15'" haw_industrial/lulc_industrial.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '14'" haw_transport/lulc_transport.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '16' OR LANDCOVER = '17'" haw_town/lulc_other.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '21'" haw_pasture/lulc_pasture.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '22'" haw_orchard/lulc_orchard.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '23' OR LANDCOVER = '24'" haw_mixedcrop/lulc_otheragr.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '31'" haw_herb/lulc_herbrange.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '32'" haw_scrub/lulc_scrubrange.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '33'" haw_grassland/lulc_mixedrange.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '41'" haw_deciduousforest/lulc_deciduousforest.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '42'" haw_evergreeenforest/lulc_evergreenforest.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '43' OR LANDCOVER = '61'" haw_mixedforest/lulc_mixedforest.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '51'" haw_river/lulc_stream.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '52'" haw_lake/lulc_lake.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '53'" haw_lake/lulc_reservoir.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '54'" haw_estuary/lulc_estuary.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '62'" haw_wetland/lulc_nonfor_wet.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '71'" haw_saline/lulc_saline.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '72' OR LANDCOVER = '73'" haw_sand/lulc_sand.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '74'" haw_rock/lulc_bareexposed.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '75'" haw_quarry/lulc_quarry.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '76' OR LANDCOVER = '77' OR LANDCOVER = '83'" haw_barrencover/lulc_transition.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '81'" haw_scrub/lulc_scrubt.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '82' OR LANDCOVER = '84' OR LANDCOVER = '85'" haw_herb/lulc_herbbt.shp lulc_n83.shp/lulc_n83.shp
ogr2ogr -f "ESRI Shapefile" -select 'LULCN83_ID, LANDCOVER' -where "LANDCOVER = '91' OR LANDCOVER = '92'" haw_glacier/lulc_glacier.shp lulc_n83.shp/lulc_n83.shp
