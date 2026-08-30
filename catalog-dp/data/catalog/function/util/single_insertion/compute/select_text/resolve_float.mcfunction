$data modify storage catalog:zzz temp.single_insertion.raw_result \
  set compute default $(number_provider)

# truncate trailing ".0"
data modify storage catalog:zzz cmp \
  set string storage catalog:zzz temp.single_insertion.raw_result -3
execute if data storage catalog:zzz {cmp: ".0f"} \
  store result storage catalog:zzz temp.single_insertion.raw_result int 1 \
  run data get storage catalog:zzz temp.single_insertion.raw_result
