function pnp:board/plot/get_coords
function pnp:hud/count_cards with storage pnp:board tmp
execute if score #hcards pnp.tmp > #hmax pnp.tmp run tag @s add pnp.over
execute unless score #hcards pnp.tmp > #hmax pnp.tmp run tag @s remove pnp.over
execute if score #hcards pnp.tmp > #hmax pnp.tmp run scoreboard players set #anyover pnp.tmp 1
scoreboard players operation @s pnp.ovm = #hmax pnp.tmp
