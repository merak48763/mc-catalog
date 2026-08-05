# load registry entry
  # compound key
  execute if data storage catalog:zzz io.bake_page.in.id \
    run data modify storage catalog:zzz macro.page_registry.key \
    set from storage catalog:zzz io.bake_page.in.id
  # string key
  execute unless data storage catalog:zzz io.bake_page.in{} \
    run data modify storage catalog:zzz macro.page_registry.key \
    set from storage catalog:zzz io.bake_page.in
  # read
  function catalog:util/bake_page/read_page_definition with storage catalog:zzz macro.page_registry

# load context
  # existence flag & value
  execute store success score #context/exist catalog.var \
    store result score #context/value catalog.var \
    store result score #context/index catalog.var \
    run data get storage catalog:zzz io.bake_page.in.context
  # adjust existence flag
    # explicit "none" type
    execute if data storage catalog:zzz temp.bake_page.page_definition{context_type: "none"} \
      run scoreboard players set #context/exist catalog.var 0
    # implicit "none" type
    execute unless data storage catalog:zzz temp.bake_page.page_definition.context_type \
      run scoreboard players set #context/exist catalog.var 0
  # adjust index
    # enchantment types
    # 1-indexed -> 0 indexed
    execute if data storage catalog:zzz temp.bake_page.page_definition{context_type: "enchantment"} \
      run scoreboard players remove #context/index catalog.var 1
    execute if data storage catalog:zzz temp.bake_page.page_definition{context_type: "enchantment_lv1"} \
      run scoreboard players remove #context/index catalog.var 1

# title text
function catalog:util/bake_page/generate_title

# is main entry
# -> set button item data
execute if score #is_main_entry catalog.var matches 1 \
  run function catalog:util/bake_page/set_button_data

# description lines
execute if data storage catalog:zzz temp.bake_page.page_definition.lines[0] \
  run function catalog:util/bake_page/generate_line

# no related keywords -> return
execute unless data storage catalog:zzz io.bake_page.in.linked[0] run return 1
# append related keywords
  # push current related keywords list
  # the loop reads from top of the stack
  data modify storage catalog:zzz stack \
    append from storage catalog:zzz io.bake_page.in.linked
  # clear flag
  scoreboard players set #is_main_entry catalog.var 0
  # start loop
  function catalog:util/bake_page/linked_entry_loop
  # pop (drop) used related keywords list
  data remove storage catalog:zzz stack[-1]
