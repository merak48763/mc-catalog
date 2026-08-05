data modify storage catalog:zzz io.get_item_name.out.with[0].with[0] \
  set value {translate: "block.minecraft.player_head.named", with: [""]}
data modify storage catalog:zzz io.get_item_name.out.with[0].with[0].with[0] \
  set from storage catalog:zzz io.get_item_name.in.components."minecraft:profile".name
