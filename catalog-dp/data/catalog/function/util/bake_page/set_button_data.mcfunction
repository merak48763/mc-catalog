# polyfills: 107.1

# (1) item_name
data modify storage catalog:zzz io.bake_page.out.button.components."minecraft:item_name" \
  set from storage catalog:zzz io.bake_page.out.lore[-1]

# (3) custom_model_data.colors[0]
data modify storage catalog:zzz io.bake_page.out.button.components."minecraft:custom_model_data".colors \
  append from storage catalog:zzz temp.bake_page.page_definition.button_color

# (4) page_num in custom data
execute store result storage catalog:zzz io.bake_page.out.button.components."minecraft:custom_data"."catalog/button".select_page.page_num int 1 \
  run scoreboard players get #tab_loop catalog.var

# (2) custom_model_data.strings[0]
  # compound key
  execute if data storage catalog:zzz io.bake_page.in.id \
    run return run data modify storage catalog:zzz io.bake_page.out.button.components."minecraft:custom_model_data".strings \
    append from storage catalog:zzz io.bake_page.in.id
  # string key
  execute unless data storage catalog:zzz io.bake_page.in{} \
    run data modify storage catalog:zzz io.bake_page.out.button.components."minecraft:custom_model_data".strings \
    append from storage catalog:zzz io.bake_page.in
