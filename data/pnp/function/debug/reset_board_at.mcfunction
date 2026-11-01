$execute as @a[tag=pnp.in_board] at @s in pnp:board if entity @s[x=$(x),y=0,z=-16,dx=48,dy=200,dz=64] run function pnp:board/close
$execute in pnp:board positioned $(x) 55 -8 run kill @e[type=!player,dx=48,dy=45,dz=48]
$execute in pnp:board positioned $(x) 64 0 run fill ~ ~ ~ ~31 ~ ~31 minecraft:spruce_planks replace #pnp:felt
$execute in pnp:board positioned $(x) 63 0 run fill ~32 ~ ~ ~47 ~1 ~31 minecraft:air
$data remove storage pnp:ideas p$(p)
$data remove storage pnp:graves p$(p)
$data remove storage pnp:found p$(p)
$data remove storage pnp:pedia2 all.p$(p)
$data remove storage pnp:pedia2 v.p$(p)
$data remove storage pnp:gw p$(p)
$data remove storage pnp:packs p$(p)
$scoreboard players reset #bank$(p) pnp.bank
$scoreboard players reset #f$(p) pnp.found
$bossbar set pnp:gw$(p) visible false
$execute in pnp:board positioned $(x) 55 -8 positioned ~45 ~ ~ run kill @e[type=!player,dx=44,dy=45,dz=50]
$execute in pnp:board positioned $(x) 63 -2 positioned ~45 ~ ~ run fill ~ ~ ~ ~42 ~1 ~40 minecraft:air
$execute in pnp:board positioned $(x) 55 -8 positioned ~-47 ~ ~ run kill @e[type=!player,dx=46,dy=45,dz=50]
$execute in pnp:board positioned $(x) 63 -2 positioned ~-46 ~ ~ run fill ~ ~ ~ ~45 ~1 ~40 minecraft:air
$execute in pnp:board positioned $(x) 65 -2 run fill ~-46 ~ ~ ~47 ~ ~40 minecraft:air replace minecraft:light
scoreboard players reset @s pnp.sbv
scoreboard players reset @s pnp.sblk
scoreboard players reset @s pnp.sbm
scoreboard players reset @s pnp.sbsz
scoreboard players reset @s pnp.msz
scoreboard players reset @s pnp.bsize
scoreboard players reset @s pnp.bsv
scoreboard players reset @s pnp.gift
scoreboard players reset @s pnp.raid
scoreboard players reset @s pnp.gws
scoreboard players reset @s pnp.gwp
scoreboard players reset @s pnp.gwv
scoreboard players reset @s pnp.blind
scoreboard players reset @s pnp.blindt
scoreboard players reset @s pnp.vfish
scoreboard players reset @s pnp.vtrade
scoreboard players reset @s pnp.vench
scoreboard players reset @s pnp.vsleep
scoreboard players reset @s pnp.vbred
scoreboard players reset @s pnp.vkill
scoreboard players reset @s pnp.hv.oak_log
scoreboard players reset @s pnp.hv.birch_log
scoreboard players reset @s pnp.hv.spruce_log
scoreboard players reset @s pnp.hv.jungle_log
scoreboard players reset @s pnp.hv.acacia_log
scoreboard players reset @s pnp.hv.dark_oak_log
scoreboard players reset @s pnp.hv.mangrove_log
scoreboard players reset @s pnp.hv.cherry_log
scoreboard players reset @s pnp.hv.pale_oak_log
scoreboard players reset @s pnp.hv.stone
scoreboard players reset @s pnp.hv.deepslate
scoreboard players reset @s pnp.hv.coal_ore
scoreboard players reset @s pnp.hv.deepslate_coal_ore
scoreboard players reset @s pnp.hv.iron_ore
scoreboard players reset @s pnp.hv.deepslate_iron_ore
scoreboard players reset @s pnp.hv.wheat
scoreboard players reset @s pnp.hv.gold_ore
scoreboard players reset @s pnp.hv.deepslate_gold_ore
scoreboard players reset @s pnp.hv.diamond_ore
scoreboard players reset @s pnp.hv.deepslate_diamond_ore
scoreboard players reset @s pnp.hv.pumpkin
scoreboard players reset @s pnp.acc.oak_log
scoreboard players reset @s pnp.acc.cobblestone
scoreboard players reset @s pnp.acc.coal
scoreboard players reset @s pnp.acc.iron_ore
scoreboard players reset @s pnp.acc.wheat
scoreboard players reset @s pnp.acc.gold_ore
scoreboard players reset @s pnp.acc.diamond
scoreboard players reset @s pnp.acc.pumpkin
scoreboard players reset @s pnp.tut
scoreboard players reset @s pnp.tutp
scoreboard players reset @s pnp.skip
$bossbar remove pnp:tut$(p)
scoreboard players reset @s pnp.hv.copper_ore
scoreboard players reset @s pnp.hv.deepslate_copper_ore
scoreboard players reset @s pnp.acc.copper_ore
scoreboard players reset @s pnp.craid
scoreboard players reset @s pnp.omen
scoreboard players set @s pnp.tool 0
scoreboard players set @s pnp.visit 0
$execute in pnp:board positioned $(x) 64 0 run function pnp:board/plot/build
tellraw @s {text:"Your card table is back to a fresh start.",color:"yellow"}
