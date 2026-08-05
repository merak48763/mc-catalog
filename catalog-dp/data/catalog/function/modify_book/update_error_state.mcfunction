execute if items entity @s contents *[bundle_contents~{items: {size: 0}}] \
  run return run item modify entity @s contents catalog:empty_book
execute if items entity @s contents *[bundle_contents~{items: {size: 1}}] \
  run item modify entity @s contents catalog:ready_for_update
