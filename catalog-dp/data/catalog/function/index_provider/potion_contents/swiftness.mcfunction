data modify storage catalog:index value \
  append value {id: "effect/speed", context: 0}
execute if items entity @s contents *[potion_contents~"strong_swiftness"] \
  run data modify storage catalog:index value[-1].context set value 1
