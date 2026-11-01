scoreboard players add #stack pnp.ids 1
scoreboard players operation #tsid pnp.tmp = #stack pnp.ids
scoreboard players set #tsize pnp.tmp 0
execute as @e[type=item_display,tag=pnp.cg_carry] if score @s pnp.cgo = #gu pnp.tmp run function pnp:copper_golem/merge_one
scoreboard players operation #csid pnp.tmp = #tsid pnp.tmp
execute positioned ~ 65.01 ~0.9 run function pnp:board/stack/compact
function pnp:copper_golem/done
