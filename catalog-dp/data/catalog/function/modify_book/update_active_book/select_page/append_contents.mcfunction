data modify storage catalog:zzz book.item.components."minecraft:lore" append value ""
$data modify storage catalog:zzz book.item.components."minecraft:lore" \
  append from storage catalog:zzz book.baked_contents.active_tab[$(index)].lore[]
