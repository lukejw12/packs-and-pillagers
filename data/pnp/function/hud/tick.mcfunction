scoreboard players add @s pnp.hudt 1
execute if score @s pnp.hudt matches ..9 run return 0
scoreboard players set @s pnp.hudt 0
function pnp:hud/update
