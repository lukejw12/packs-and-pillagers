scoreboard players set #inv pnp.tmp 0
execute as @e[type=item_display,tag=pnp.inv] if score @s pnp.paid = #pa pnp.tmp run scoreboard players add #inv pnp.tmp 1
$execute if score #inv pnp.tmp matches 0 run return run function pnp:pvp/failed {p:$(p),t:$(t)}
$execute in pnp:board positioned $(x) 65 16 store result score #def pnp.tmp if entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..23]
$execute if score #def pnp.tmp matches 0 run return run function pnp:pvp/plunder {p:$(p),t:$(t),x:$(x)}
$execute if score @s pnp.pvpm matches ..0 run return run function pnp:pvp/plunder {p:$(p),t:$(t),x:$(x)}
