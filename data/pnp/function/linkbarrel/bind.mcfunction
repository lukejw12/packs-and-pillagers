execute if dimension pnp:board run return fail
execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {translate:"pnp.common.open_your_card_board_once_first",fallback:"Open your Card Board once first.",color:"gray"}
scoreboard players set #lbr pnp.tmp 0
execute anchored eyes positioned ^ ^ ^ run function pnp:linkbarrel/ray
