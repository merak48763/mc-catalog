# base text
data modify storage catalog:zzz io.bake_page.out.lore \
  append value {translate: "catalog.fmt.title", fallback: "[%s]", with: [""], color: "white", italic: false}
# with[0]
  # no context
  execute if score #context/exist catalog.var matches 0 \
    run return run data modify storage catalog:zzz io.bake_page.out.lore[-1].with[0] \
    set from storage catalog:zzz temp.bake_page.page_definition.title
  # potion amplifier 0
  execute if score #context/value catalog.var matches 0 \
    if data storage catalog:zzz temp.bake_page.page_definition{context_type: "effect"} \
    run return run data modify storage catalog:zzz io.bake_page.out.lore[-1].with[0] \
    set from storage catalog:zzz temp.bake_page.page_definition.title
  # enchantment level 1/1
  execute if score #context/value catalog.var matches 1 \
    if data storage catalog:zzz temp.bake_page.page_definition{context_type: "enchantment_lv1"} \
    run return run data modify storage catalog:zzz io.bake_page.out.lore[-1].with[0] \
    set from storage catalog:zzz temp.bake_page.page_definition.title
  # title with level
    # load macro param
    execute store result storage catalog:zzz macro.translate_lvl.value int 1 \
      run scoreboard players get #context/value catalog.var
    # effect
    execute if data storage catalog:zzz temp.bake_page.page_definition{context_type: "effect"} \
      run return run function catalog:util/bake_page/generate_title/translate_effect with storage catalog:zzz macro.translate_lvl
    # enchantment
    function catalog:util/bake_page/generate_title/translate_enchantment with storage catalog:zzz macro.translate_lvl
