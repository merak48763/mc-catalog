# no context
execute if score #context/exist catalog.var matches 0 \
  run return run data modify storage catalog:zzz temp.single_insertion.raw_result \
  set from storage catalog:zzz temp.single_insertion.lookup.generic

# get index upper bound
execute store result score #lut_size catalog.var \
  run data get storage catalog:zzz temp.single_insertion.lookup.values
# out of bound (index too low)
execute if score #context/index catalog.var matches ..-1 \
  run return run function catalog:util/single_insertion/lookup/select_text/fallback
# out of bound (index too high)
execute if score #context/index catalog.var >= #lut_size catalog.var \
  run return run function catalog:util/single_insertion/lookup/select_text/fallback
# bounded
execute store result storage catalog:zzz macro.list_access.index int 1 \
  run scoreboard players get #context/index catalog.var
function catalog:util/single_insertion/lookup/select_text/from_lut with storage catalog:zzz macro.list_access
