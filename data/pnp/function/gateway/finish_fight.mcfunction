$execute if score #gres pnp.tmp matches 1 in pnp:board positioned $(axc).5 65.01 16.5 run function pnp:gateway/loot/$(s)
$execute in pnp:board positioned $(axc).5 65 16 as @e[type=item_display,tag=pnp.k.enemy,distance=..15] run function pnp:card/remove
$execute in pnp:board positioned $(axc).5 65 16 as @e[type=item_display,tag=pnp.card,distance=..15] run tag @s add pnp.ret
$execute if score #gres pnp.tmp matches 1 run function pnp:gateway/won/$(s)_$(st)
$execute in pnp:board positioned $(axc).5 65 16 as @e[type=marker,tag=pnp.fight,distance=..15] at @s run function pnp:gateway/end_fight
$function pnp:gateway/return/stack {gx:$(gx),gz:$(gz)}
$execute if score #gres pnp.tmp matches 0 run tellraw @s {text:"Your party fell in the $(name). Their gear made it back to your table.",color:"red"}
$execute if score #gres pnp.tmp matches 2 run tellraw @s {text:"You pulled your party back from the $(name).",color:"yellow"}
tag @e[type=item_display,tag=pnp.gw_used] remove pnp.gw_used
$execute on vehicle in pnp:board run tp @s $(cx) $(cy) $(cz)
rotate @s 180 50
$execute in pnp:board positioned $(axc).5 65 16 run kill @e[type=marker,tag=pnp.arena_c,distance=..3]
$execute in pnp:board run fill $(ax) 60 0 $(ax2) 72 31 minecraft:air
$execute in pnp:board run forceload remove $(ax) 0 $(ax2) 31
scoreboard players set @s pnp.gws 0
execute if score @s pnp.blind matches 2.. run scoreboard players set @s pnp.blind 1
scoreboard players set @s pnp.gwp 0
$data remove storage pnp:gw p$(p).run
$execute as @a if score @s pnp.gwj matches $(p) run function pnp:gateway/camera/leave {cx:$(cx),cy:$(cy),cz:$(cz)}
