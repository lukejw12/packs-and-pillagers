data modify storage pnp:pvp sv set value {}
execute store result storage pnp:pvp sv.i int 1 run scoreboard players get @s pnp.pvi
execute store result storage pnp:pvp sv.hp int 1 run scoreboard players get @s pnp.hp
$data modify storage pnp:pvp a$(p).surv append from storage pnp:pvp sv
scoreboard players set #stole pnp.tmp 0
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.emerald_block,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"emerald_block"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.diamond,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"diamond"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.emerald,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"emerald"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.gold_ingot,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"gold_ingot"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.iron_ingot,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"iron_ingot"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.copper_ingot,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"copper_ingot"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.cake,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"cake"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.bread,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"bread"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.steak,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"steak"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.cooked_porkchop,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"cooked_porkchop"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.baked_potato,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"baked_potato"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.oak_log,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"oak_log"}
$execute if score #stole pnp.tmp matches 0 in pnp:board positioned $(x) 65 16 as @e[type=item_display,tag=pnp.c.cobblestone,tag=!pnp.held,tag=!pnp.infight,distance=..23,limit=1,sort=random] run function pnp:pvp/steal {p:$(p),c:"cobblestone"}
particle minecraft:poof ~ ~0.3 ~ 0.25 0.1 0.25 0.02 10
function pnp:card/remove
