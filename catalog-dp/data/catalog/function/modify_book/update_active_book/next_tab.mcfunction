# copy current tab
data modify storage catalog:zzz book.baked_contents.hidden_tabs \
  append from storage catalog:zzz book.baked_contents.active_tab
# move new tab
data modify storage catalog:zzz book.baked_contents.active_tab \
  set from storage catalog:zzz book.baked_contents.hidden_tabs[0]
data remove storage catalog:zzz book.baked_contents.hidden_tabs[0]
