data modify storage catalog:index value \
  append value {id: "effect/poison", context: 0}
execute if items entity @s contents *[potion_contents~"strong_poison"] \
  run data modify storage catalog:index value[-1].context set value 1
