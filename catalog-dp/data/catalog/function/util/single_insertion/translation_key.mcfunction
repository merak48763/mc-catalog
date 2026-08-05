# $(type): either effect_amplifier or enchantment_level

# Spyglass type check workaround
data modify storage catalog:zzz temp.single_insertion.formattable \
  set from storage catalog:zzz io.single_insertion.in

# no context
execute if score #context/exist catalog.var matches 0 \
  run return run data modify storage catalog:zzz io.single_insertion.out \
  set value ""

# raw text
execute store result storage catalog:zzz macro.translate_lvl.value int 1 \
  run scoreboard players get #context/value catalog.var
$function catalog:util/single_insertion/translation_key/$(type) with storage catalog:zzz macro.translate_lvl

# no format
execute unless data storage catalog:zzz temp.single_insertion.formattable.base_style \
  run return run data modify storage catalog:zzz io.single_insertion.out \
  set from storage catalog:zzz temp.single_insertion.raw_result
# format
  # base text
  data modify storage catalog:zzz io.single_insertion.out \
    set value {translate: "catalog.fmt.wrap", fallback: "%s", with: [""]}
  # merge style
  data modify storage catalog:zzz io.single_insertion.out \
    merge from storage catalog:zzz temp.single_insertion.formattable.base_style
  # content
  data modify storage catalog:zzz io.single_insertion.out.with[0] \
    set from storage catalog:zzz temp.single_insertion.raw_result
