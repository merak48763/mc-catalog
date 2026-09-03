# polyfills: 107.1

# @s: 5d6855d2-0-0-0-1 (book item holder)
# in: single index
# out: baked book page

# init output
  # the following properties are set later:
  # 1. item_name
  # 2. custom_model_data.strings[0]
  # 3. custom_model_data.colors[0]
  # 4. page_num in custom data
  # (2 and 4 require canonical component ID here to be valid in Spyglass)
  data modify storage catalog:zzz io.bake_page.out \
    set value { \
      button: { \
        id: "filled_map", \
        components: { \
          "minecraft:custom_data": {"catalog/button": {select_page: {}}}, \
          "minecraft:custom_model_data": {strings: [], colors: []}, \
          bundle_contents: [{id: "bow"}], item_model: "map" \
        } \
      }, \
      lore: [] \
    }

# set flag
scoreboard players set #is_main_entry catalog.var 1

function catalog:util/bake_page/main
