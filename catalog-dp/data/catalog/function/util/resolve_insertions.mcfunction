# in: insertion definition list
# out: "with" list
# extra input: score #context/*

# init output
data modify storage catalog:zzz io.resolve_insertions.out set value []

# start loop
execute if data storage catalog:zzz io.resolve_insertions.in[0] \
  run function catalog:util/resolve_insertions/loop
