# polyfills: 107.1

data modify storage catalog:index value \
  append value {id: "effect/strength", context: 0}
execute if items entity @s contents *[potion_contents~{potions: "strong_strength"}] \
  run data modify storage catalog:index value[-1].context set value 1
