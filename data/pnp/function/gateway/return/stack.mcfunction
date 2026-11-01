scoreboard players set #rhas pnp.tmp 0
tag @e[type=item_display,tag=pnp.ret_base] remove pnp.ret_base
execute as @e[type=item_display,tag=pnp.gw_used,limit=1] at @s run function pnp:gateway/return/existing
$execute if score #rhas pnp.tmp matches 0 run function pnp:gateway/return/new {gx:$(gx),gz:$(gz)}
execute as @e[type=item_display,tag=pnp.ret,tag=!pnp.k.unit] run function pnp:gateway/return/assign
execute as @e[type=item_display,tag=pnp.ret,tag=pnp.k.unit] run function pnp:gateway/return/assign
scoreboard players operation #csid pnp.tmp = #rst pnp.tmp
execute as @e[type=item_display,tag=pnp.ret_base,limit=1] at @s positioned ~ 65.01 ~ run function pnp:board/stack/compact
tag @e[type=item_display,tag=pnp.ret_base] remove pnp.ret_base
