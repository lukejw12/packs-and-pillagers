function pnp:inventory/stash
execute if score @s pnp.gws matches 1.. run function pnp:gateway/finish {r:2}
scoreboard players add @s pnp.sess 1
summon item_display ~ ~ ~ {Tags:["pnp.board_ent","pnp.camera","pnp.be_new"],teleport_duration:3}
summon interaction ~ ~ ~ {width:1.2f,height:1.2f,response:1b,Tags:["pnp.board_ent","pnp.click","pnp.be_new"]}
summon marker ~ 65 ~ {Tags:["pnp.board_ent","pnp.cursor","pnp.be_new"]}
scoreboard players operation @e[tag=pnp.be_new] pnp.pid = @s pnp.pid
summon text_display ~ 65.5 ~ {Tags:["pnp.board_ent","pnp.tooltip","pnp.be_new"],billboard:"center",see_through:1b,alignment:"left",line_width:220,background:-1072689136,brightness:{sky:15,block:15},teleport_duration:2,interpolation_duration:3,text:"",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
scoreboard players operation @e[tag=pnp.be_new] pnp.pid = @s pnp.pid
scoreboard players operation @e[tag=pnp.be_new] pnp.sess = @s pnp.sess
tag @e[tag=pnp.be_new] remove pnp.be_new
tp @s ~ ~ ~ 180 50
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players operation #ms pnp.tmp = @s pnp.sess
execute as @e[type=item_display,tag=pnp.camera] if score @s pnp.pid = #me pnp.tmp if score @s pnp.sess = #ms pnp.tmp run tag @s add pnp.mycam
ride @s mount @e[type=item_display,tag=pnp.mycam,limit=1]
tag @e[type=item_display,tag=pnp.mycam] remove pnp.mycam
tag @s add pnp.in_board
scoreboard players set @s pnp.book -1
scoreboard players set @s pnp.memo -1
scoreboard players set @s pnp.tool 0
scoreboard players set @s pnp.ph 0
function pnp:idea/ensure
function pnp:idea/sync
execute unless score @s pnp.bsv matches 2.. run function pnp:board/size/migrate
function pnp:cardopedia/ensure
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.holding 0
scoreboard players set @s pnp.info 0
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1
execute if score @s pnp.plot matches 2..3 run function pnp:board/check_shop
function pnp:quest/defs
execute if score @s pnp.plot matches 2..3 run function pnp:quest/ensure
execute store result storage pnp:board cu.p int 1 run scoreboard players get @s pnp.tpid
function pnp:idea/catch_up with storage pnp:board cu
scoreboard players set @s pnp.tutp 0
execute as @e[type=item_display,tag=pnp.k.shop,distance=..48] at @s run function pnp:shop/reprice
execute as @e[type=item_display,tag=pnp.card,distance=..48] if entity @s[tag=pnp.c.barrel] at @s run function pnp:logistics/label/update
execute as @e[type=item_display,tag=pnp.card,distance=..48] if entity @s[tag=pnp.c.hopper] at @s run function pnp:logistics/label/update
scoreboard players reset @s pnp.gwj
execute if score @s pnp.plot matches 2..3 run function pnp:paint/ensure
scoreboard players set @s pnp.paint 0
scoreboard players set @s pnp.pcs 0
execute if score @s pnp.plot matches 2..3 run function pnp:guide_book/ensure
execute unless score @s pnp.ctlseen matches 1 run function pnp:menu/first_controls
execute if score @s pnp.plot matches 2 run function pnp:board/side_board/ensure
function pnp:music/reset
