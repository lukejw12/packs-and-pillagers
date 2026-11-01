scoreboard players set @s pnp.spell 0
scoreboard players operation #eh pnp.tmp = @s pnp.hpmax
scoreboard players operation #eh pnp.tmp /= #2 pnp.tmp
execute unless entity @s[tag=pnp.vexed] if score @s pnp.hp <= #eh pnp.tmp run return run function pnp:fight/evoker/vex_once
function pnp:fight/evoker/fangs_3
