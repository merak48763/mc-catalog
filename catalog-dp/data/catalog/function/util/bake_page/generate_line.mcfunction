# base text
data modify storage catalog:zzz io.bake_page.out.lore \
  append value {translate: "catalog.fmt.line_base", fallback: " %s%s", with: ["", ""], color: "#f0f0f0", italic: false}

# merge style
data modify storage catalog:zzz io.bake_page.out.lore[-1] \
  merge from storage catalog:zzz temp.bake_page.page_definition.base_style

# prefix
  # default value
  data modify storage catalog:zzz macro.prefix_registry.key set value "empty"
  # explicit definition
  data modify storage catalog:zzz macro.prefix_registry.key \
    set from storage catalog:zzz temp.bake_page.page_definition.lines[0].prefix
  # set %1$s
  function catalog:util/bake_page/generate_line/set_prefix with storage catalog:zzz macro.prefix_registry

# content (%2$s)
data modify storage catalog:zzz io.bake_page.out.lore[-1].with[1] \
  set from storage catalog:zzz temp.bake_page.page_definition.lines[0].content

# insertion override
execute if data storage catalog:zzz temp.bake_page.page_definition.lines[0].with_override[0] \
  run function catalog:util/bake_page/generate_line/override_insertion

# remove current line definition
data remove storage catalog:zzz temp.bake_page.page_definition.lines[0]

# loop if there is remaining line definition
execute if data storage catalog:zzz temp.bake_page.page_definition.lines[0] \
  run function catalog:util/bake_page/generate_line
