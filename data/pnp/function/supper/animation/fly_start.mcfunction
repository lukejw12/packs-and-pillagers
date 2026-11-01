tag @s add pnp.mfly
scoreboard players set #started pnp.tmp 1
$data modify entity @s teleport_duration set value $(f)
tp @s ~ ~0.32 ~
playsound minecraft:entity.item.pickup master @a[distance=..40] ~ ~ ~ 0.4 1.5
