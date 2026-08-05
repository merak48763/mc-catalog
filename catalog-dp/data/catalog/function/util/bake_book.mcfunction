# @s: 5d6855d2-0-0-0-1 (book item holder)
# in: indexes
# out: baked book

# init output
data modify storage catalog:zzz io.bake_book.out \
  set value {active_tab: [], hidden_tabs: []}

# count keywords
execute store result score #keyword_count catalog.var \
  run data get storage catalog:zzz io.bake_book.in

# no keywords
# -> special button with no action
execute if score #keyword_count catalog.var matches 0 \
  run return run data modify storage catalog:zzz io.bake_book.out.active_tab \
  append value { \
    button: { \
      id: "filled_map", \
      components: { \
        custom_data: {"catalog/button": {}}, item_model: "barrier", \
        item_name: { \
          translate: "catalog.fmt.title", fallback: "[%s]", \
          with: [{translate: "catalog.book.no_page", fallback: "No Information", color: "red"}] \
        }, \
        bundle_contents: [{id: "bow"}] \
      } \
    } \
  }

# generate tabs (written into hidden tabs)
scoreboard players set #tab_loop catalog.var 0
function catalog:util/bake_book/loop

# activate the first tab
data modify storage catalog:zzz io.bake_book.out.active_tab \
  set from storage catalog:zzz io.bake_book.out.hidden_tabs[0]
data remove storage catalog:zzz io.bake_book.out.hidden_tabs[0]
