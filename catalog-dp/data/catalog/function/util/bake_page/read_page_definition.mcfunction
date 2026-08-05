# clear old value
data remove storage catalog:zzz temp.bake_page.page_definition

# try to load from registry
$data modify storage catalog:zzz temp.bake_page.page_definition \
  set from storage catalog:registry pages."$(key)"

# success -> return
execute if data storage catalog:zzz temp.bake_page.page_definition run return 1
# fail -> fallback
  # base text
  data modify storage catalog:zzz temp.bake_page.page_definition set value { \
    title: {translate: "catalog.book.page_dne", fallback: "ERROR", color: "red", bold: true}, \
    lines: [ \
      {prefix: "empty", content: {translate: "catalog.book.page_dne.1", fallback: "Page %s doesn't exist.", with: [{text: "", color: "red"}]}}, \
      {prefix: "empty", content: {translate: "catalog.book.page_dne.2", fallback: "If you're map player:"}}, \
      {prefix: "a", content: {translate: "catalog.book.page_dne.3", fallback: "Report this error to the map makers."}}, \
      {prefix: "empty", content: {translate: "catalog.book.page_dne.4", fallback: "If you're map maker:"}}, \
      {prefix: "a", content: {translate: "catalog.book.page_dne.5", fallback: "Check if the page ID has typos."}} \
    ], \
    base_style: {font: "uniform"}, button_color: 16711680 \
  }
  # inject ID
  $data modify storage catalog:zzz temp.bake_page.page_definition.lines[0].content.with[0].text set value "$(key)"
