scoreboard players operation #qn pnp.tmp = @s pnp.qkill
execute if score #qn pnp.tmp matches 20.. run scoreboard players set #qn pnp.tmp 20
scoreboard players set @s pnp.qkill 0
function pnp:quest/world/loop {qk:"wkill"}
