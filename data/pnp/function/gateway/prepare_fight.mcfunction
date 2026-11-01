$execute in pnp:board unless loaded $(axc) 64 16 run return 0
$execute in pnp:board run fill $(ax) 60 0 $(ax2) 72 31 minecraft:air
$execute in pnp:board run function pnp:gateway/build/$(s) {r1:$(r1),r2:$(r2),f1:$(f1),f2:$(f2)}
$execute in pnp:board run summon marker $(axc).5 65 16 {Tags:["pnp.arena_c","pnp.arena_new"],data:{s:"$(s)"}}
$execute store result score @e[type=marker,tag=pnp.arena_new,limit=1] pnp.gwn run data get storage pnp:cards gates.$(s).waves
scoreboard players operation @e[type=marker,tag=pnp.arena_new] pnp.pid = #gp pnp.tmp
scoreboard players set @e[type=marker,tag=pnp.arena_new] pnp.gwv 0
scoreboard players set @e[type=marker,tag=pnp.arena_new] pnp.gwt 50
tag @e[type=marker,tag=pnp.arena_new] remove pnp.arena_new
$scoreboard players set #pax pnp.tmp $(axc)
scoreboard players operation #pax pnp.tmp *= #10 pnp.tmp
scoreboard players remove #pax pnp.tmp 27
scoreboard players set #pi pnp.tmp 0
function pnp:gateway/place_party
$scoreboard players set #csid pnp.tmp $(gst)
execute as @e[type=item_display,tag=pnp.gw_used,limit=1] at @s positioned ~ 65.01 ~ run function pnp:board/stack/compact
$execute on vehicle in pnp:board run tp @s $(axc).5 ~ 23.5
scoreboard players set @s pnp.gwr 40
$execute as @a[tag=pnp.in_board] if score @s pnp.gwj matches $(p) run function pnp:gateway/camera/join {axc:$(axc),name:"$(name)"}
scoreboard players set @s pnp.gwp 2
playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.25 1.6
title @s times 10 50 15
title @s subtitle {translate:"pnp.gateway.survive_three_waves_and_the_boss",fallback:"Survive three waves and the boss",color:"gray"}
$title @s title {text:"$(name)",color:"light_purple"}
