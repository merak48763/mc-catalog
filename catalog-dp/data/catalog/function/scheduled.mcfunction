execute as @a[gamemode=!creative, tag=catalog.update_book] \
  run function catalog:scheduled/update_player
tag @a remove catalog.update_book
