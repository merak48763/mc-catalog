$data modify storage catalog:zzz temp.single_insertion.raw_result \
  set from storage catalog:zzz temp.single_insertion.lookup.values[$(index)]
