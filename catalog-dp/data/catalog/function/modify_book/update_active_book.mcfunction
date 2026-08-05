# load data
# book item is shadowed to command storage
function catalog:modify_book/book_data/read

# glitch case
execute if items entity @s contents *[bundle_contents~{items: {size: 0}}] \
  run return run function catalog:modify_book/update_active_book/reset_book
# item taken out
# (bundle_contents[0] is button)
execute if items entity 5d6855d2-0-0-0-2 contents *[custom_data~{"catalog/button": {}}] \
  run return run function catalog:modify_book/update_active_book/reset_book

# check item count
  # button count in bundle
    # query bundle contents
    execute store result score #button_count catalog.var \
      run data get storage catalog:zzz book.item.components."minecraft:bundle_contents"
    # -1 due to inspecting item
    scoreboard players remove #button_count catalog.var 1
  # page count in baked book
  execute store result score #page_count catalog.var \
    run data get storage catalog:zzz book.baked_contents.active_tab
  # count match
  # -> this book is not touched
  execute unless score #button_count catalog.var < #page_count catalog.var run return 1

# button click sound
scoreboard players set #sound catalog.var 3

# perform action defined in the cursor item
  # switch tab
  execute if items entity 5d6855d2-0-0-0-3 contents *[custom_data~{"catalog/button": {next_tab: {}}}] \
    if data storage catalog:zzz book.baked_contents.hidden_tabs[0] \
    run function catalog:modify_book/update_active_book/next_tab
  # select page
  execute if items entity 5d6855d2-0-0-0-3 contents *[custom_data~{"catalog/button": {select_page: {}}}] \
    run function catalog:modify_book/update_active_book/select_page

# save data
function catalog:modify_book/book_data/write
