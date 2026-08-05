data modify storage catalog:index value \
  append value {id: "effect/slowness", context: 0}
execute if items entity @s contents *[potion_contents~"strong_slowness"] \
  run data modify storage catalog:index value[-1].context set value 3
