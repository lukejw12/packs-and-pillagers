execute store result score #nm pnp.tmp run random value 1..100
data modify storage pnp:board ns.card set value "zombie"
execute if score #nm pnp.tmp matches 36..60 run data modify storage pnp:board ns.card set value "skeleton"
execute if score #nm pnp.tmp matches 61..80 run data modify storage pnp:board ns.card set value "spider"
execute if score #nm pnp.tmp matches 81.. run data modify storage pnp:board ns.card set value "creeper"
scoreboard players operation #nx0 pnp.tmp = @s pnp.pid
scoreboard players operation #nx0 pnp.tmp *= #1024 pnp.tmp
scoreboard players set #ntry pnp.tmp 0
scoreboard players set #nok pnp.tmp 0
function pnp:night/try
