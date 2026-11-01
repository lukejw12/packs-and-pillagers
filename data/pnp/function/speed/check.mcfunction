execute unless score #speed pnp.ids matches 1.. run scoreboard players set #speed pnp.ids 1
scoreboard players set #paused pnp.ids 0
execute if score #pman pnp.ids matches 1.. run scoreboard players set #paused pnp.ids 1
execute if score #ptool pnp.ids matches 1.. run scoreboard players set #paused pnp.ids 1
execute if score #pover pnp.ids matches 1.. run scoreboard players set #paused pnp.ids 1
scoreboard players operation #pnew pnp.tmp = #speed pnp.ids
execute if score #paused pnp.ids matches 1 run scoreboard players set #pnew pnp.tmp 0
execute unless score #pnew pnp.tmp = #pstate pnp.ids run function pnp:speed/apply
