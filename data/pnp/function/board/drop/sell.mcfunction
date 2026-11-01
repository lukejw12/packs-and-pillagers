scoreboard players set #route pnp.tmp 1
scoreboard players set #earn pnp.tmp 0
scoreboard players set #nosell pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/sell_one
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/release
scoreboard players operation #csid pnp.tmp = #hsid pnp.tmp
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s positioned ~1.1 65.01 ~ run function pnp:board/stack/compact
function pnp:economy/deposit
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:board/drop/pay_sale
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 0.8 1
execute if score #nosell pnp.tmp matches 1.. run tellraw @s {text:"Some of those can't be sold, so they stay with you.",color:"gray"}
