# @s: 5d6855d2-0-0-0-1 (book item holder)

execute if items entity @s contents *[custom_data~{"catalog/book": {state: "error"}}] \
  run function catalog:modify_book/update_error_state

execute if items entity @s contents *[custom_data~{"catalog/book": {state: "idle"}}] \
  run return run function catalog:modify_book/update_empty_book
execute if items entity @s contents *[custom_data~{"catalog/book": {state: "inspecting"}}] \
  run function catalog:modify_book/update_active_book
