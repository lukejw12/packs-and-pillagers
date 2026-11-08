$execute if data storage pnp:nether ruin.p$(p) run return 0
$data modify storage pnp:nether ruin.p$(p) set value 1b
function pnp:world/deliver {card:"ruined_portal"}
title @s times 10 60 20
title @s subtitle {translate:"pnp.nether.ruin_found_sub",fallback:"is on your table",color:"gray"}
title @s title {translate:"pnp.card.ruined_portal.name",fallback:"Ruined Portal",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.3 1.2
tellraw @s {translate:"pnp.nether.ruin_hint",fallback:"Put a villager on it to salvage Obsidian, or repair it into a Nether Portal.",color:"light_purple"}
