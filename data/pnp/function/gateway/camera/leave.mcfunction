scoreboard players reset @s pnp.gwj
execute if score @s pnp.blind matches 2.. run scoreboard players set @s pnp.blind 1
$execute if entity @s[tag=pnp.in_board] on vehicle in pnp:board run tp @s $(cx) $(cy) $(cz)
execute if entity @s[tag=pnp.in_board] run rotate @s 180 50
execute if score #gres pnp.tmp matches 1 run title @s title {translate:"pnp.gateway.victory",fallback:"Victory!",color:"gold"}
execute if score #gres pnp.tmp matches 0 run tellraw @s {translate:"pnp.gateway.the_party_fell_their_gear_made",fallback:"Your party fell. Their gear made it back to the table.",color:"red"}
execute if score #gres pnp.tmp matches 2 run tellraw @s {translate:"pnp.gateway.the_party_was_pulled_back_to",fallback:"Your party was pulled back to the table.",color:"yellow"}
