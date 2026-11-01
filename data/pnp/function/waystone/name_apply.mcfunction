execute store result storage pnp:board wna.id int 1 run scoreboard players get @s pnp.rnwid
function pnp:waystone/name_store with storage pnp:board wna
execute as @e[type=marker,tag=pnp.wsm,distance=..48] if score @s pnp.wid = @p[scores={pnp.rnw=1}] pnp.rnwid at @s run function pnp:waystone/label
tellraw @s [{text:"Waystone named ",color:"green"},{storage:"pnp:board",nbt:"rn.n",interpret:true,color:"white"},{text:". Its card on your table shows the new name too.",color:"green"}]
playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ 0.6 1.4
function pnp:villager/rename/clear
