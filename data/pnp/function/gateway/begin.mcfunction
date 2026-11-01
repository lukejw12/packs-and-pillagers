scoreboard players operation #gh pnp.tmp = @s pnp.here
scoreboard players operation #gr pnp.tmp = @s pnp.pid
execute as @a[tag=pnp.in_board] unless score @s pnp.pid = #gr pnp.tmp if score @s pnp.here = #gh pnp.tmp unless score @s pnp.gws matches 1.. unless score @s pnp.gwj matches 1.. run scoreboard players operation @s pnp.gwj = #gr pnp.tmp
scoreboard players set @s pnp.gws 1
scoreboard players set @s pnp.gwp 1
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..64] if score @s pnp.stack = #gst pnp.tmp run tag @s add pnp.party_new
tag @e[type=item_display,tag=pnp.gwc,limit=1] add pnp.gw_used
scoreboard players operation @e[type=item_display,tag=pnp.gwc,limit=1] pnp.gwo = #gr pnp.tmp
execute store result storage pnp:board gb.p int 1 run scoreboard players get @s pnp.pid
$data modify storage pnp:board gb.s set value "$(s)"
$data modify storage pnp:board gb.st set value $(st)
$data modify storage pnp:board gb.name set value "$(name)"
execute store result storage pnp:board gb.gst int 1 run scoreboard players get #gst pnp.tmp
execute as @e[type=item_display,tag=pnp.gwc,limit=1] store result storage pnp:board gb.gx int 1 run data get entity @s Pos[0]
execute as @e[type=item_display,tag=pnp.gwc,limit=1] store result storage pnp:board gb.gz int 1 run data get entity @s Pos[2]
execute on vehicle store result storage pnp:board gb.cx double 1 run data get entity @s Pos[0]
execute on vehicle store result storage pnp:board gb.cy double 1 run data get entity @s Pos[1]
execute on vehicle store result storage pnp:board gb.cz double 1 run data get entity @s Pos[2]
scoreboard players operation #ax pnp.tmp = @s pnp.pid
scoreboard players operation #ax pnp.tmp *= #1024 pnp.tmp
scoreboard players add #ax pnp.tmp 512
execute store result storage pnp:board gb.ax int 1 run scoreboard players get #ax pnp.tmp
scoreboard players add #ax pnp.tmp 7
execute store result storage pnp:board gb.r1 int 1 run scoreboard players get #ax pnp.tmp
scoreboard players add #ax pnp.tmp 1
execute store result storage pnp:board gb.f1 int 1 run scoreboard players get #ax pnp.tmp
scoreboard players add #ax pnp.tmp 8
execute store result storage pnp:board gb.axc int 1 run scoreboard players get #ax pnp.tmp
scoreboard players add #ax pnp.tmp 7
execute store result storage pnp:board gb.f2 int 1 run scoreboard players get #ax pnp.tmp
scoreboard players add #ax pnp.tmp 1
execute store result storage pnp:board gb.r2 int 1 run scoreboard players get #ax pnp.tmp
scoreboard players add #ax pnp.tmp 7
execute store result storage pnp:board gb.ax2 int 1 run scoreboard players get #ax pnp.tmp
function pnp:gateway/begin_fight with storage pnp:board gb
particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0.5 30
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.3 1.8
