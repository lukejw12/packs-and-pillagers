$execute if data storage pnp:found p$(p).charged_redstone_core run return run function pnp:redstone_caves/rare_drop {c:"charged_redstone_core",p:20,msg:"The Redstone Golem dropped a Charged Redstone Core!"}
$execute store result score #pgk pnp.tmp run data get storage pnp:pity p$(p).golem
scoreboard players add #pgk pnp.tmp 1
$execute store result storage pnp:pity p$(p).golem int 1 run scoreboard players get #pgk pnp.tmp
execute if score #pgk pnp.tmp matches 4.. run return run function pnp:redstone_caves/rare_drop {c:"charged_redstone_core",p:100,msg:"The Redstone Golem dropped a Charged Redstone Core!"}
function pnp:redstone_caves/rare_drop {c:"charged_redstone_core",p:20,msg:"The Redstone Golem dropped a Charged Redstone Core!"}
