execute in pnp:board as @e[type=!player,distance=0..] run kill @s
clear @a minecraft:carrot_on_a_stick[custom_data~{pnp:{board_button:1b}}]
function pnp:reset/scores_all
advancement revoke @a only pnp:barrel_use
advancement revoke @a only pnp:capture
advancement revoke @a only pnp:leaf_common
advancement revoke @a only pnp:leaf_rare
advancement revoke @a only pnp:leaf_uncommon
advancement revoke @a only pnp:lodestone_place
advancement revoke @a only pnp:nether_entered
data remove storage pnp:board qtk
data remove storage pnp:board rst
time set 0
weather clear
function pnp:core/load
tellraw @a {translate:"pnp.reset.done",fallback:"Packs & Pillagers has been reset. Everything starts fresh from day 1.",color:"green"}
schedule function pnp:reset/reopen 20t
