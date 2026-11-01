execute if score @s pnp.gwr matches 1.. run function pnp:gateway/rotate_tick
scoreboard players operation #gp pnp.tmp = @s pnp.pid
execute store result storage pnp:board gt.p int 1 run scoreboard players get @s pnp.pid
tag @s add pnp.gw_owner
execute if score @s pnp.gwp matches 1 run function pnp:gateway/prepare_for_player with storage pnp:board gt
execute if score @s pnp.gwp matches 2 as @e[type=marker,tag=pnp.arena_c] if score @s pnp.pid = #gp pnp.tmp at @s run function pnp:gateway/arena/tick
tag @s remove pnp.gw_owner
