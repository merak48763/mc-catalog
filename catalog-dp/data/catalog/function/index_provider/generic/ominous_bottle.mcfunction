data modify storage catalog:index value \
  append value {id: "effect/bad_omen", context: 0, linked: [{id: "effect/raid_omen", context: 0}, "effect/trial_omen"]}
data modify storage catalog:index value[-1].context \
  set from storage catalog:inspecting_item value.components."minecraft:ominous_bottle_amplifier"
data modify storage catalog:index value[-1].linked[0].context \
  set from storage catalog:inspecting_item value.components."minecraft:ominous_bottle_amplifier"
