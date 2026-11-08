execute store result storage pnp:hud u.p int 1 run scoreboard players get @s pnp.pid
execute in minecraft:overworld store result score #hdt pnp.tmp run time query time
scoreboard players set #h24k pnp.tmp 24000
scoreboard players operation #hday pnp.tmp = #hdt pnp.tmp
scoreboard players operation #hday pnp.tmp /= #h24k pnp.tmp
scoreboard players operation #hdt pnp.tmp %= #h24k pnp.tmp
scoreboard players add #hday pnp.tmp 1
execute if score #hday pnp.tmp matches 1000.. run scoreboard players set #hday pnp.tmp 999
execute store result storage pnp:hud u.d int 1 run scoreboard players get #hday pnp.tmp
data modify storage pnp:hud u.b set value ""
scoreboard players set #hnight pnp.tmp 0
execute if score #hdt pnp.tmp matches 12000.. run scoreboard players set #hnight pnp.tmp 1
execute if score #hdt pnp.tmp matches 12000.. run scoreboard players remove #hdt pnp.tmp 12000
scoreboard players set #hfill pnp.tmp 255
scoreboard players operation #hdt pnp.tmp *= #hfill pnp.tmp
scoreboard players set #h12k pnp.tmp 11999
scoreboard players operation #hdt pnp.tmp /= #h12k pnp.tmp
execute if score #hdt pnp.tmp matches 256.. run scoreboard players set #hdt pnp.tmp 255
execute store result storage pnp:hud u.k int 1 run scoreboard players get #hdt pnp.tmp
data modify storage pnp:hud u.dn set value "F9"
execute if score #hnight pnp.tmp matches 1 run data modify storage pnp:hud u.dn set value "F7"
function pnp:hud/fill_hex with storage pnp:hud u
function pnp:hud/fill_column with storage pnp:hud u
data modify storage pnp:hud u.dr set from storage pnp:hud pads.p0
execute if score #hday pnp.tmp matches ..99 run data modify storage pnp:hud u.dr set from storage pnp:hud pads.p1
execute if score #hday pnp.tmp matches ..9 run data modify storage pnp:hud u.dr set from storage pnp:hud pads.p2
function pnp:board/plot/get_coords
function pnp:nether/hud_food
scoreboard players set #h12 pnp.tmp 2
scoreboard players set #h4 pnp.tmp 1
scoreboard players operation #need pnp.tmp = #vil pnp.tmp
scoreboard players operation #need pnp.tmp *= #h12 pnp.tmp
scoreboard players operation #hbn pnp.tmp = #bab pnp.tmp
scoreboard players operation #hbn pnp.tmp *= #h4 pnp.tmp
scoreboard players operation #need pnp.tmp += #hbn pnp.tmp
function pnp:hud/count_cards with storage pnp:board tmp
execute if score #food pnp.tmp matches 1000.. run scoreboard players set #food pnp.tmp 999
execute if score #need pnp.tmp matches 1000.. run scoreboard players set #need pnp.tmp 999
execute if score #hem pnp.tmp matches 10000.. run scoreboard players set #hem pnp.tmp 9999
execute if score #hcards pnp.tmp matches 1000.. run scoreboard players set #hcards pnp.tmp 999
execute if score #hmax pnp.tmp matches 1000.. run scoreboard players set #hmax pnp.tmp 999
execute store result storage pnp:hud u.fh int 1 run scoreboard players get #food pnp.tmp
execute store result storage pnp:hud u.fn int 1 run scoreboard players get #need pnp.tmp
execute store result storage pnp:hud u.em int 1 run scoreboard players get #hem pnp.tmp
execute store result storage pnp:hud u.cc int 1 run scoreboard players get #hcards pnp.tmp
execute store result storage pnp:hud u.cm int 1 run scoreboard players get #hmax pnp.tmp
data modify storage pnp:hud u.fc set value "#FDF8FD"
execute if score #food pnp.tmp < #need pnp.tmp run data modify storage pnp:hud u.fc set value "#FDF8FE"
data modify storage pnp:hud u.ccol set value "#FDF8FC"
execute if score #hcards pnp.tmp > #hmax pnp.tmp run data modify storage pnp:hud u.ccol set value "#FDF8FE"
data modify storage pnp:hud u.fl set from storage pnp:hud pads.p0
execute if score #food pnp.tmp matches ..99 run data modify storage pnp:hud u.fl set from storage pnp:hud pads.p1
execute if score #food pnp.tmp matches ..9 run data modify storage pnp:hud u.fl set from storage pnp:hud pads.p2
data modify storage pnp:hud u.fr set from storage pnp:hud pads.p0
execute if score #need pnp.tmp matches ..99 run data modify storage pnp:hud u.fr set from storage pnp:hud pads.p1
execute if score #need pnp.tmp matches ..9 run data modify storage pnp:hud u.fr set from storage pnp:hud pads.p2
data modify storage pnp:hud u.el set from storage pnp:hud pads.p0
execute if score #hem pnp.tmp matches ..999 run data modify storage pnp:hud u.el set from storage pnp:hud pads.p1
execute if score #hem pnp.tmp matches ..99 run data modify storage pnp:hud u.el set from storage pnp:hud pads.p2
execute if score #hem pnp.tmp matches ..9 run data modify storage pnp:hud u.el set from storage pnp:hud pads.p3
data modify storage pnp:hud u.cl set from storage pnp:hud pads.p0
execute if score #hcards pnp.tmp matches ..99 run data modify storage pnp:hud u.cl set from storage pnp:hud pads.p1
execute if score #hcards pnp.tmp matches ..9 run data modify storage pnp:hud u.cl set from storage pnp:hud pads.p2
data modify storage pnp:hud u.cr set from storage pnp:hud pads.p0
execute if score #hmax pnp.tmp matches ..99 run data modify storage pnp:hud u.cr set from storage pnp:hud pads.p1
execute if score #hmax pnp.tmp matches ..9 run data modify storage pnp:hud u.cr set from storage pnp:hud pads.p2
execute store result score #hspd pnp.tmp run scoreboard players get #pstate pnp.ids
execute unless score #pstate pnp.ids matches 0.. run scoreboard players set #hspd pnp.tmp 1
data modify storage pnp:hud u.gray set value ""

execute store result storage pnp:hud u.sp int 1 run scoreboard players get #hspd pnp.tmp
function pnp:hud/speed_glyph with storage pnp:hud u
execute unless entity @s[tag=pnp.hud_on] run function pnp:hud/show with storage pnp:hud u
function pnp:hud/name with storage pnp:hud u
function pnp:board/size/sync
execute in minecraft:overworld store result score #hdtime pnp.tmp run time query time
scoreboard players operation #hdtime pnp.tmp %= #24000 pnp.tmp
execute if score @s pnp.plot matches 2 run function pnp:hud/first_tips
