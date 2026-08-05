# @s: player
# $(slot): slot name

# 0: empty
# 1: put item
# 2: take item
# 3: press button
# 4: error
scoreboard players set #sound catalog.var 0

$item replace entity 5d6855d2-0-0-0-1 contents from entity @s $(slot)
execute as 5d6855d2-0-0-0-1 run function catalog:modify_book/main
$item replace entity @s $(slot) from entity 5d6855d2-0-0-0-1 contents

# no sound
execute if score #sound catalog.var matches 0 run return 1

# mute vanilla sound
  # put item
  execute if score #sound catalog.var matches 1 run stopsound @s * item.bundle.insert
  # take item
  execute if score #sound catalog.var matches 2.. run stopsound @s * item.bundle.remove_one

execute if score #sound catalog.var matches 1 at @s \
  run return run function catalog:sound/put
execute if score #sound catalog.var matches 2 at @s \
  run return run function catalog:sound/take
execute if score #sound catalog.var matches 3 at @s \
  run return run function catalog:sound/button
function catalog:sound/error
