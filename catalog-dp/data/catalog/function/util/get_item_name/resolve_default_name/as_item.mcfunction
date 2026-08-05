# copy item
item replace entity @s contents \
  from entity 5d6855d2-0-0-0-2 contents

# resolve text
data modify entity 5d6855d2-0-0-1-1 text set value \
  {selector: "@e[tag=catalog.temp, type=item, distance=...1, limit=1]"}
data modify storage catalog:zzz temp.get_item_name.text_component \
  set from entity 5d6855d2-0-0-1-1 text

# cleanup
kill @s
