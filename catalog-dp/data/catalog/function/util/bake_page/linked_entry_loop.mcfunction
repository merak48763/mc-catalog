# load input
data modify storage catalog:zzz io.bake_page.in \
  set from storage catalog:zzz stack[-1][0]
data remove storage catalog:zzz stack[-1][0]

# start
function catalog:util/bake_page/main

# loop if there is remaining keyword
execute if data storage catalog:zzz stack[-1][0] \
  run function catalog:util/bake_page/linked_entry_loop
