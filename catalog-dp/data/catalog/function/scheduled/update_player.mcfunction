item replace entity 5d6855d2-0-0-0-3 contents from entity @s player.cursor
function catalog:scheduled/update_player/iterate_slots
clear @s *[custom_data~{"catalog/button": {}}]
