execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {text:"Open your Card Board once first.",color:"gray"}
function pnp:world/deliver {card:"admin_codex"}
tellraw @s {text:"An Admin Codex is on your card table. Right-click it to browse every card and spawn any of them.",color:"gold"}
