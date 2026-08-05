# base text
data modify storage catalog:zzz io.bake_page.out.lore[-1].with[0] set value ["", " ", ""]
# title
data modify storage catalog:zzz io.bake_page.out.lore[-1].with[0][0] \
  set from storage catalog:zzz temp.bake_page.page_definition.title
# level
$data modify storage catalog:zzz io.bake_page.out.lore[-1].with[0][2] \
  set value {translate: "enchantment.level.$(value)"}
