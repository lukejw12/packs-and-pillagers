scoreboard players add #fidc pnp.ids 1
summon marker ~ 65 ~ {Tags:["pnp.fight","pnp.fight_new"]}
summon item_display ~ 65.003 ~ {Tags:["pnp.fbox","pnp.fight_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/fight_box"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,1f,3.3f]},interpolation_duration:3}
scoreboard players operation @e[tag=pnp.fight_new] pnp.fid = #fidc pnp.ids
scoreboard players set @e[type=marker,tag=pnp.fight_new] pnp.fbusy 6
scoreboard players set @e[type=marker,tag=pnp.fight_new] pnp.fdirty 1
scoreboard players set @e[type=marker,tag=pnp.fight_new] pnp.fcount 0
execute as @e[type=marker,tag=pnp.fight_new] at @s run function pnp:fight_box/fit
tag @e[tag=pnp.fight_new] remove pnp.fight_new
scoreboard players operation #fid pnp.tmp = #fidc pnp.ids
playsound minecraft:item.armor.equip_iron master @a[distance=..24] ~ ~ ~ 0.6 0.8
