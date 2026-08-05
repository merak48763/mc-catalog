# common & unenchanted
# -> white
execute if items entity @s contents *[rarity="common" | !rarity, !enchantments | !enchantments~[{levels: {min: 1}}]] \
  run return run data modify storage catalog:zzz io.get_item_name.out.with[0].color set value "white"
# uncommon & enchanted
# -> yellow
execute if items entity @s contents *[rarity="uncommon", !enchantments | !enchantments~[{levels: {min: 1}}]] \
  run return run data modify storage catalog:zzz io.get_item_name.out.with[0].color set value "yellow"
# rare & enchanted
# -> purple
execute if items entity @s contents *[rarity="rare", enchantments~[{levels: {min: 1}}]] \
  run return run data modify storage catalog:zzz io.get_item_name.out.with[0].color set value "light_purple"
# epic
# -> purple
execute if items entity @s contents *[rarity="epic"] \
  run return run data modify storage catalog:zzz io.get_item_name.out.with[0].color set value "light_purple"
# common & enchanted
# uncommon & enchanted
# rare & unenchanted
# -> aqua
data modify storage catalog:zzz io.get_item_name.out.with[0].color set value "aqua"
