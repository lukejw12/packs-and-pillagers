execute if entity @s[tag=pnp.c.player_portal] run return 0
execute if entity @s[tag=pnp.c.war_horn] run return 0
execute if entity @s[tag=pnp.c.redstone_caves] run return 0
execute if entity @s[tag=pnp.c.awakened_core] run return 0
execute if entity @s[tag=pnp.gw_used] run return 0
execute unless score @s pnp.life matches 0.. run scoreboard players set @s pnp.life 3
scoreboard players remove @s pnp.life 1
execute if score @s pnp.life matches 1 run title @a[distance=..64,tag=pnp.in_board] actionbar {text:"A gateway on your table will fade at the next dawn.",color:"light_purple"}
execute if score @s pnp.life matches ..0 if entity @s[tag=pnp.c.gate_trial] run return run function pnp:gateway/fade/trial
execute if score @s pnp.life matches ..0 if entity @s[tag=pnp.c.gate_city] run return run function pnp:gateway/fade/city
execute if score @s pnp.life matches ..0 if entity @s[tag=pnp.c.gate_monument] run return run function pnp:gateway/fade/monument
execute if score @s pnp.life matches ..0 if entity @s[tag=pnp.c.gate_mansion] run return run function pnp:gateway/fade/mansion
