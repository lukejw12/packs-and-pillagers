$bossbar remove pnp:gw$(p)
$bossbar add pnp:gw$(p) {text:"$(n)",color:"red"}
$bossbar set pnp:gw$(p) color red
$function pnp:gateway/boss/players {p:$(p)}
$execute store result bossbar pnp:gw$(p) max run scoreboard players get @s pnp.hp
$execute store result bossbar pnp:gw$(p) value run scoreboard players get @s pnp.hp
