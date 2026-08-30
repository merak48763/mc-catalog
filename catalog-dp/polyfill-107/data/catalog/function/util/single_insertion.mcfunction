# in: insertion definition
# out: insertion text
# extra input: score #context/*

# explicit "text" type
execute if data storage catalog:zzz io.single_insertion.in{type: "text"} \
  run return run data modify storage catalog:zzz io.single_insertion.out \
  set from storage catalog:zzz io.single_insertion.in.value
# implicit "text" type
execute unless data storage catalog:zzz io.single_insertion.in.type \
  run return run data modify storage catalog:zzz io.single_insertion.out \
  set from storage catalog:zzz io.single_insertion.in.value
# "lookup" type
execute if data storage catalog:zzz io.single_insertion.in{type: "lookup"} \
  run return run function catalog:util/single_insertion/lookup
# "branch" type
execute if data storage catalog:zzz io.single_insertion.in{type: "branch"} \
  run return run function catalog:util/single_insertion/branch
# "wrapped" type
execute if data storage catalog:zzz io.single_insertion.in{type: "wrapped"} \
  run return run function catalog:util/single_insertion/wrapped
# "effect_amplifier" type
execute if data storage catalog:zzz io.single_insertion.in{type: "effect_amplifier"} \
  run return run function catalog:util/single_insertion/translation_key {type: "effect_amplifier"}
# "enchantment_level" type
execute if data storage catalog:zzz io.single_insertion.in{type: "enchantment_level"} \
  run return run function catalog:util/single_insertion/translation_key {type: "enchantment_level"}

# <never>
data modify storage catalog:zzz io.single_insertion.out set value "<NOT IMPLEMENTED>"
