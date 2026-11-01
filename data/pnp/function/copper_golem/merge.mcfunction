scoreboard players operation #tsid pnp.tmp = @s pnp.cgh
scoreboard players set #tsize pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.cg_carry,distance=..14] if score @s pnp.stack = #tsid pnp.tmp run scoreboard players add #tsize pnp.tmp 1
execute as @e[type=item_display,tag=pnp.cg_carry] if score @s pnp.cgo = #gu pnp.tmp run function pnp:copper_golem/merge_one
scoreboard players operation #csid pnp.tmp = #tsid pnp.tmp
execute as @e[type=item_display,tag=pnp.cg_t,limit=1] at @s run function pnp:board/stack/compact
tag @e[type=item_display,tag=pnp.cg_t] remove pnp.cg_t
playsound minecraft:block.copper.place master @a[distance=..24] ~ ~ ~ 0.6 1.3
function pnp:copper_golem/done
