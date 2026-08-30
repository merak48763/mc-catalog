# no context
execute if score #context/exist catalog.var matches 0 \
  run return run data modify storage catalog:zzz temp.single_insertion.raw_result \
  set from storage catalog:zzz temp.single_insertion.compute.generic

# resolve number provider
  # prepare input
  data modify storage catalog:zzz macro.resolve_number.number_provider \
    set from storage catalog:zzz temp.single_insertion.compute.formula
  # default output
  data modify storage catalog:zzz temp.single_insertion.raw_result set value "0"
  # float mode
  execute if predicate catalog:zzz/use_float_mode \
    run return run function catalog:util/single_insertion/compute/select_text/resolve_float with storage catalog:zzz macro.resolve_number
  # int mode
  function catalog:util/single_insertion/compute/select_text/resolve_int with storage catalog:zzz macro.resolve_number
