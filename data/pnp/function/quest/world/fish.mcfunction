scoreboard players operation #qn pnp.tmp = @s pnp.qfish
execute if score #qn pnp.tmp matches 20.. run scoreboard players set #qn pnp.tmp 20
scoreboard players set @s pnp.qfish 0
function pnp:quest/world/loop {qk:"fish"}
