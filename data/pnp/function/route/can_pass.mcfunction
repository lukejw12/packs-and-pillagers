execute if score #depth pnp.tmp matches 6.. run return fail
scoreboard players add #depth pnp.tmp 1
scoreboard players operation #cpu pnp.tmp = @s pnp.uid
execute at @s as @e[type=block_display,tag=pnp.link,distance=..40] if score @s pnp.lsrc = #cpu pnp.tmp if function pnp:route/can_pass_link run return run function pnp:route/can_pass_found
scoreboard players remove #depth pnp.tmp 1
return fail
