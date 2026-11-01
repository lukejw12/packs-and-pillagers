scoreboard players operation #lastdawn pnp.ids = #day pnp.tmp
scoreboard players operation #dayn pnp.tmp = #day pnp.tmp
scoreboard players add #dayn pnp.tmp 1
execute as @a[scores={pnp.plot=2}] run function pnp:supper/dawn
execute as @e[type=item_display,tag=pnp.undead,tag=!pnp.arena] at @s run function pnp:night/burn
execute as @e[type=item_display,tag=pnp.k.gate,tag=!pnp.held] at @s run function pnp:gateway/age_card
function pnp:quest/on_event {qk:"night",o:-1}
