data modify storage catalog:zzz io.resolve_insertions.in \
  set from storage catalog:zzz temp.bake_page.page_definition.lines[0].with_override
function catalog:util/resolve_insertions
data modify storage catalog:zzz io.bake_page.out.lore[-1].with[1].with \
  set from storage catalog:zzz io.resolve_insertions.out
