$execute if score @s pnp.recipe matches $(r) run return 0
$scoreboard players set @s pnp.recipe $(r)
$scoreboard players set @s pnp.rtime $(time)
scoreboard players operation @s pnp.rtime *= #4 pnp.tmp
$function pnp:villager/speed {r:$(r)}
scoreboard players set @s pnp.timer 0
function pnp:board/recipe/bar
execute if score @s pnp.recipe matches 157 at @s run function pnp:redstone_caves/awakening
