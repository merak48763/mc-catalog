# polyfills: 107.1

data modify storage catalog:index value \
  append value {id: "effect/slowness", context: 3}
data modify storage catalog:index value \
  append value {id: "effect/resistance", context: 2}

execute unless items entity @s contents *[potion_contents~{potions: "strong_turtle_master"}] \
  run return 1
data modify storage catalog:index value[-2].context set value 5
data modify storage catalog:index value[-1].context set value 3
