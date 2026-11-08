scoreboard players operation #lastdawn pnp.ids = #day pnp.tmp
scoreboard players operation #dayn pnp.tmp = #day pnp.tmp
scoreboard players add #dayn pnp.tmp 1
execute as @a[scores={pnp.plot=2}] run function pnp:supper/dawn
execute as @a[scores={pnp.plot=2}] run function pnp:quest_board/rotate_player
execute as @a[scores={pnp.plot=2}] run function pnp:progression/visit_dawn
execute as @a[scores={pnp.plot=2}] run function pnp:orders/dawn
execute as @e[type=item_display,tag=pnp.undead,tag=!pnp.arena] at @s run function pnp:night/burn
execute as @e[type=item_display,tag=pnp.k.gate,tag=!pnp.held] at @s run function pnp:gateway/age_card
execute as @e[type=item_display,tag=pnp.k.food,tag=!pnp.held,tag=!pnp.meal] at @s run function pnp:nether/char_card
execute as @e[type=item_display,tag=pnp.firesafe] run function pnp:nether/fres_day
execute as @e[type=item_display,tag=pnp.potfx] run function pnp:progression/potion_dawn
function pnp:quest/on_event {qk:"night",o:-1}
