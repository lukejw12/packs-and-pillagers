execute as @e[type=item_display,tag=pnp.gw_used] run function pnp:card/remove
execute store result storage pnp:board gf.p int 1 run scoreboard players get @s pnp.tpid
function pnp:gateway/won/monument_for_player with storage pnp:board gf
title @s times 10 70 20
title @s subtitle {translate:"pnp.gateway.you_can_now_build_an_ocean",fallback:"You can now build an Ocean Portal",color:"gray"}
title @s title {translate:"pnp.gateway.victory",fallback:"Victory!",color:"gold"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1
tellraw @s {translate:"pnp.gateway.new_recipe_ocean_portal_from_a",fallback:"New recipe: Ocean Portal, from a villager, 4 cobblestone, a diamond, and a Prismarine Shard.",color:"gold"}
execute store result storage pnp:board qk.o int 1 run scoreboard players get @s pnp.tpid
data modify storage pnp:board qk.qk set value "delve"
function pnp:quest/on_event with storage pnp:board qk
