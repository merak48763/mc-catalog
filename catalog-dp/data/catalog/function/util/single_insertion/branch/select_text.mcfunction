# get threshold
execute store result score #threshold catalog.var \
  run data get storage catalog:zzz temp.single_insertion.branch.threshold

# select input
  # truthy
  # -> input written
  # falsy 
  # -> use generic value
  # -> early return
  execute unless function catalog:util/single_insertion/branch/select_input \
    run return run data modify storage catalog:zzz temp.single_insertion.raw_result \
    set from storage catalog:zzz temp.single_insertion.branch.generic

# resolve insertion
  # push typed input
  data modify storage catalog:zzz stack \
    append from storage catalog:zzz temp.single_insertion.branch
  # call resolver
  function catalog:util/single_insertion
  data modify storage catalog:zzz temp.single_insertion.raw_result \
    set from storage catalog:zzz io.single_insertion.out
  # pop typed input
  data modify storage catalog:zzz temp.single_insertion.branch \
    set from storage catalog:zzz stack[-1]
  data remove storage catalog:zzz stack[-1]
