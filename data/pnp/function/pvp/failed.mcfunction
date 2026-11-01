tag @a remove pnp.ptgt
$execute as @a if score @s pnp.pid matches $(t) run tag @s add pnp.ptgt
tellraw @s [{text:"",extra:[{translate:"pnp.pvp.your_attack_on",fallback:"Your attack on"}," "],color:"red"},{selector:"@a[tag=pnp.ptgt,limit=1]"},{translate:"pnp.pvp.s_table_failed_your_fighters_fell",fallback:"'s table failed. Your fighters fell.",color:"red"}]
tellraw @a[tag=pnp.ptgt] [{text:"",extra:[{translate:"pnp.pvp.you_beat_back",fallback:"You beat back"}," "],color:"green"},{selector:"@s"},{translate:"pnp.pvp.s_attack",fallback:"'s attack!",color:"green"}]
function pnp:pvp/done
