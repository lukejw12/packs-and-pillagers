$execute store result score #heal pnp.tmp run data get storage pnp:cards defs.$(food).heal
$execute store result score #maxhp pnp.tmp run data get storage pnp:cards defs.$(unit).hp
execute if score #heal pnp.tmp matches 1.. as @e[type=item_display,tag=pnp.dt,limit=1] if score @s pnp.hp < #maxhp pnp.tmp at @s run function pnp:board/drop/apply_heal
