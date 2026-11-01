scoreboard players operation #qn pnp.tmp = @s pnp.qmine
execute if score #qn pnp.tmp matches 20.. run scoreboard players set #qn pnp.tmp 20
scoreboard players set @s pnp.qmine 0
function pnp:quest/world/loop {qk:"wmine"}
