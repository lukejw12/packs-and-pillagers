scoreboard players add #stack pnp.ids 1
scoreboard players operation #rst pnp.tmp = #stack pnp.ids
scoreboard players set #ridx pnp.tmp 0
execute as @e[type=item_display,tag=pnp.ret,tag=!pnp.k.unit,limit=1] run tag @s add pnp.ret_base
execute unless entity @e[type=item_display,tag=pnp.ret_base] as @e[type=item_display,tag=pnp.ret,limit=1] run tag @s add pnp.ret_base
$execute as @e[type=item_display,tag=pnp.ret_base,limit=1] in pnp:board run tp @s $(gx).5 65.01 $(gz).5
execute as @e[type=item_display,tag=pnp.ret_base,limit=1] run function pnp:gateway/return/assign
