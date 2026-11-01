scoreboard players operation #mp pnp.tmp = @s pnp.menu
scoreboard players reset @s pnp.menu
execute if score #mp pnp.tmp matches 9 run return run function pnp:menu/open
execute if score #mp pnp.tmp matches 1 run function pnp:menu/set {m:1,t:"Single Player",d:"Open your Card Board to begin."}
execute if score #mp pnp.tmp matches 2 run function pnp:menu/set {m:2,t:"Shared Board",d:"Everyone plays on one card table together."}
execute if score #mp pnp.tmp matches 3 run function pnp:menu/set {m:3,t:"Individual Boards",d:"Everyone builds their own card table."}
execute if score #mp pnp.tmp matches 4 run function pnp:menu/set {m:4,t:"PvP",d:"Raid each other with your War Horn."}
