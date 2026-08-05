execute if items entity @s contents turtle_helmet[equippable] \
  run return run data modify storage catalog:index value \
  append value {id: "keyword/turtle_helmet", linked: ["effect/water_breathing"]}
execute if items entity @s contents spectral_arrow \
  run return run data modify storage catalog:index value \
  append value {id: "keyword/spectral_arrow", linked: ["effect/glowing"]}
execute if items entity @s contents spectral_arrow \
  run return run data modify storage catalog:index value \
  append value {id: "keyword/spectral_arrow", linked: ["effect/glowing"]}
execute if items entity @s contents #catalog:tipped_arrow_like[potion_contents] \
  run return run data modify storage catalog:index value \
  append value "keyword/tipped_arrow"
execute if items entity @s contents suspicious_stew[consumable, suspicious_stew_effects] \
  run return run data modify storage catalog:index value \
  append value "keyword/suspicious_stew"
