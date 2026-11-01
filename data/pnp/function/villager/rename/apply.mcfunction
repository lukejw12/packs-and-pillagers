execute store result score #len pnp.tmp run data get storage pnp:board rn.raw
execute if score #len pnp.tmp matches 17.. run data modify storage pnp:board rn.n set string storage pnp:board rn.raw 0 16
execute if score #len pnp.tmp matches ..16 run data modify storage pnp:board rn.n set string storage pnp:board rn.raw
execute unless data storage pnp:board rn.n run return run function pnp:villager/rename/retry {m:"Write a name on the first page, then press Done."}
execute if data storage pnp:board rn{n:""} run return run function pnp:villager/rename/retry {m:"Write a name on the first page, then press Done."}
execute store success score #rnok pnp.tmp run function pnp:villager/rename/check_name with storage pnp:board rn
execute if score #rnok pnp.tmp matches 0 run return run function pnp:villager/rename/retry {m:"Names can't use quotes or backslashes. Try another one."}
scoreboard players operation #ru pnp.tmp = @s pnp.rnu
execute if score @s pnp.rnw matches 1 run return run function pnp:waystone/name_apply
execute unless entity @e[type=item_display,tag=pnp.c.villager,scores={pnp.uid=1..},distance=..64] run return run function pnp:villager/rename/end {m:"That villager is gone."}
scoreboard players set #rnf pnp.tmp 0
execute as @e[type=item_display,tag=pnp.c.villager,distance=..64] if score @s pnp.uid = #ru pnp.tmp run function pnp:villager/rename/set
execute if score #rnf pnp.tmp matches 0 run return run function pnp:villager/rename/end {m:"That villager is gone."}
tellraw @s [{text:"Renamed to ",color:"green"},{storage:"pnp:board",nbt:"rn.n",interpret:true,color:"white"},{text:".",color:"green"}]
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 0.8 1.1
function pnp:villager/rename/end {m:""}
