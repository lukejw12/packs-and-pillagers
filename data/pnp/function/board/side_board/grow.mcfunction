execute unless score @s pnp.sbsz matches 12.. run return run title @a[tag=pnp.leafpay] actionbar {translate:"pnp.board.side_board.unlock_the_side_table_to_the",fallback:"Unlock the side table to the left of your table first: 10 Emerald Blocks.",color:"gray"}
execute if score @s pnp.sbsz matches 36.. run return run title @a[tag=pnp.leafpay] actionbar {translate:"pnp.board.side_board.your_side_board_is_as_big",fallback:"Your side board is as big as it gets.",color:"gold"}
scoreboard players set #lc pnp.tmp 1
execute if score @s pnp.sbsz matches 20..27 run scoreboard players set #lc pnp.tmp 2
execute if score @s pnp.sbsz matches 28.. run scoreboard players set #lc pnp.tmp 3
execute store result score #lh pnp.tmp run clear @a[tag=pnp.leafpay,limit=1] minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{leaf:1b}}] 0
execute if score #lh pnp.tmp < #lc pnp.tmp run return run function pnp:board/side_board/need
execute store result storage pnp:board sb.n int 1 run scoreboard players get #lc pnp.tmp
function pnp:board/side_board/pay with storage pnp:board sb
scoreboard players add @s pnp.sbsz 4
function pnp:board/side_board/fill
execute store result storage pnp:board sb.s int 1 run scoreboard players get @s pnp.sbsz
function pnp:board/side_board/grow_message with storage pnp:board sb
