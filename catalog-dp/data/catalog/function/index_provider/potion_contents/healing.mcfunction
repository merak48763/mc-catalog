# polyfills: 107.1

data modify storage catalog:index value \
  append value {id: "effect/instant_health", context: 0}
execute if items entity @s contents *[potion_contents~{potions: "strong_healing"}] \
  run data modify storage catalog:index value[-1].context set value 1

execute if items entity @s contents lingering_potion \
  run data modify storage catalog:index value[-1] \
  merge value {id: "effect/instant_health/lingering", linked: ["keyword/lingering_potion"]}
