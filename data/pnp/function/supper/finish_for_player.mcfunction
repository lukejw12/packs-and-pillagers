function pnp:coop/mates
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players operation #unfed pnp.tmp = @s pnp.su_unfed
scoreboard players operation #hungry pnp.tmp = @s pnp.su_unfed
scoreboard players operation #starved pnp.tmp = @s pnp.su_unfed
scoreboard players set #starvedmg pnp.tmp 999
scoreboard players operation #part pnp.tmp = @s pnp.su_part
scoreboard players operation #wf pnp.tmp = @s pnp.su_wf
scoreboard players operation #need pnp.tmp = @s pnp.su_need
function pnp:board/plot/get_coords
function pnp:supper/finish with storage pnp:board tmp
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp run function pnp:supper/clear_villager
