# no context
execute if score #context/exist catalog.var matches 0 \
  run return run data modify storage catalog:zzz temp.single_insertion.raw_result \
  set from storage catalog:zzz temp.single_insertion.compute.generic

# resolve number provider
  # prepare input
  data modify storage catalog:zzz macro.resolve_number.number_provider \
    set from storage catalog:zzz temp.single_insertion.compute.formula
  # default output
  data modify storage catalog:zzz temp.single_insertion.raw_result set value 0
  # set mode
  data modify storage catalog:zzz macro.resolve_number.mode set value "float"
  data modify storage catalog:zzz macro.resolve_number.mode \
    set from storage catalog:zzz temp.single_insertion.compute.mode
  # resolve number
  function catalog:util/single_insertion/compute/select_text/resolve_number with storage catalog:zzz macro.resolve_number
  # truncate trailing ".0"
    # int mode -> return
    execute if data storage catalog:zzz temp.single_insertion.compute{mode: "integer"} run return 1
    # truncate
    data modify storage catalog:zzz cmp \
      set string storage catalog:zzz temp.single_insertion.raw_result -3
    execute if data storage catalog:zzz {cmp: ".0f"} \
      store result storage catalog:zzz temp.single_insertion.raw_result int 1 \
      run data get storage catalog:zzz temp.single_insertion.raw_result
