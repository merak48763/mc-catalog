# no context
execute if score #context/exist catalog.var matches 0 \
  run return fail

# clear input to prevent false write fail
data remove storage catalog:zzz io.single_insertion.in

# le
execute if score #context/value catalog.var <= #threshold catalog.var \
  run return run data modify storage catalog:zzz io.single_insertion.in \
  set from storage catalog:zzz temp.single_insertion.branch.on_le
# gt
execute if score #context/value catalog.var > #threshold catalog.var \
  run return run data modify storage catalog:zzz io.single_insertion.in \
  set from storage catalog:zzz temp.single_insertion.branch.on_gt

# use generic value
return fail
