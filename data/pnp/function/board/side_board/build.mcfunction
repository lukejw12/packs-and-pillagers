function pnp:board/plot/get_coords
data modify storage pnp:board sb.x0 set from storage pnp:board tmp.x
scoreboard players set @s pnp.sbsz 12
scoreboard players set @s pnp.sbv 2
function pnp:board/side_board/build_load_at_plot with storage pnp:board sb
scoreboard players set @s pnp.sbw 10
function pnp:coop/mates
title @a[tag=pnp.mate] times 5 50 15
title @a[tag=pnp.mate] subtitle {text:"It's to the left of your main table.",color:"gray"}
title @a[tag=pnp.mate] title {text:"Side board built!",color:"green"}
tellraw @a[tag=pnp.mate] {text:"Table Leaves grow your side board up to 36×36.",color:"gray"}
playsound minecraft:block.wood.place master @a[tag=pnp.mate] ~ ~ ~ 1 0.7
