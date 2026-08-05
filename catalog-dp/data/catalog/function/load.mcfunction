scoreboard objectives add catalog.var dummy
execute unless score #next_ptr catalog.var = #next_ptr catalog.var \
  run scoreboard players set #next_ptr catalog.var 1

data modify storage catalog:zzz stack set value []

execute positioned -30000000 0 1832230 run function catalog:load/chunk

# builtin data
function catalog:load/registry
# custom data
function #catalog:register_data

# reload log
execute store result score #reg/page catalog.var \
  run data get storage catalog:registry pages
execute store result score #reg/prefix catalog.var \
  run data get storage catalog:registry prefixes
tellraw @a[gamemode=creative] { \
  translate: "catalog.loaded", fallback: "[Catalog]\n▍ Loaded %s page(s)\n▍ Loaded %s prefix type(s)", \
  with: [ \
    {score: {name: "#reg/page", objective: "catalog.var"}}, \
    {score: {name: "#reg/prefix", objective: "catalog.var"}} \
  ] \
}
