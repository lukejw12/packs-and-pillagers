$execute unless data storage pnp:packs p$(p).v run return 0
$execute store result score #lkc pnp.tmp run data get storage pnp:packs p$(p).$(k)
scoreboard players add #lkc pnp.tmp 1
$execute store result storage pnp:packs p$(p).$(k) int 1 run scoreboard players get #lkc pnp.tmp
$execute if score #lkc pnp.tmp matches 3 unless data storage pnp:board lk{nx:""} run title @a[distance=..40] actionbar {translate:"pnp.shop.unlocked",fallback:"%s unlocked!",with:["$(nx)"],color:"gold"}
execute if score #lkc pnp.tmp matches 3 unless data storage pnp:board lk{nx:""} run playsound minecraft:entity.player.levelup master @a[distance=..40] ~ ~ ~ 0.6 1.3
