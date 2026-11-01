scoreboard players set #hv pnp.tmp 0
$execute in pnp:board positioned $(x) 60 -4 as @e[type=item_display,tag=pnp.c.villager,dx=96,dy=12,dz=44] if score @s pnp.hp >= @s pnp.hpmax run scoreboard players add #hv pnp.tmp 1
scoreboard players set #ts pnp.tmp 12
execute if score #hv pnp.tmp matches 3.. run scoreboard players set #ts pnp.tmp 16
execute if score #hv pnp.tmp matches 5.. run scoreboard players set #ts pnp.tmp 20
execute if score #hv pnp.tmp matches 8.. run scoreboard players set #ts pnp.tmp 24
execute if score #hv pnp.tmp matches 12.. run scoreboard players set #ts pnp.tmp 28
execute if score #hv pnp.tmp matches 16.. run scoreboard players set #ts pnp.tmp 30
execute if score #ts pnp.tmp <= @s pnp.msz run return 0
scoreboard players operation @s pnp.msz = #ts pnp.tmp
function pnp:board/size/grow_main
