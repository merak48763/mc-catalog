# fallback exist
execute if data storage catalog:zzz temp.single_insertion.lookup.fallback \
  run return run data modify storage catalog:zzz temp.single_insertion.raw_result \
  set from storage catalog:zzz temp.single_insertion.lookup.fallback
# fallback doesn't exist
# -> use generic instead
data modify storage catalog:zzz temp.single_insertion.raw_result \
  set from storage catalog:zzz temp.single_insertion.lookup.generic
