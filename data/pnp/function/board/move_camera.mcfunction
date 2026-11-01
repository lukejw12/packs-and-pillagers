$execute rotated ~ 0 on vehicle positioned as @s positioned ^$(s) ^$(y) ^$(f) if block ~ 64 ~ #pnp:table run return run tp @s ~ ~ ~
$execute on vehicle at @s run tp @s ~ ~$(y) ~
scoreboard players set @s pnp.vf 0
scoreboard players set @s pnp.vs 0
