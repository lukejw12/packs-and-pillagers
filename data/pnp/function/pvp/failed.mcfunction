tag @a remove pnp.ptgt
$execute as @a if score @s pnp.pid matches $(t) run tag @s add pnp.ptgt
tellraw @s [{text:"Your attack on ",color:"red"},{selector:"@a[tag=pnp.ptgt,limit=1]"},{text:"'s table failed. Your fighters fell.",color:"red"}]
tellraw @a[tag=pnp.ptgt] [{text:"You beat back ",color:"green"},{selector:"@s"},{text:"'s attack!",color:"green"}]
function pnp:pvp/done
