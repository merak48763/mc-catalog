# generate insertion text
data modify storage catalog:zzz io.single_insertion.in \
  set from storage catalog:zzz io.resolve_insertions.in[0]
function catalog:util/single_insertion
data modify storage catalog:zzz io.resolve_insertions.out \
  append from storage catalog:zzz io.single_insertion.out

# remove current insertion definition
data remove storage catalog:zzz io.resolve_insertions.in[0]

# loop if there is remaining insertion definition
execute if data storage catalog:zzz io.resolve_insertions.in[0] \
  run function catalog:util/resolve_insertions/loop
