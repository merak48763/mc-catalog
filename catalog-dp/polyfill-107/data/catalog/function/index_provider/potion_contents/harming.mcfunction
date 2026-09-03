data modify storage catalog:index value \
  append value {id: "effect/instant_damage", context: 0}
execute if items entity @s contents *[potion_contents~"strong_harming"] \
  run data modify storage catalog:index value[-1].context set value 1

execute if items entity @s contents lingering_potion \
  run data modify storage catalog:index value[-1] \
  merge value {id: "effect/instant_damage/lingering", linked: ["keyword/lingering_potion"]}
