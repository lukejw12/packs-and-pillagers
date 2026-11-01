execute anchored eyes positioned ^ ^ ^ summon marker run function pnp:book/eye_position
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp run function pnp:book/hit
execute as @e[type=item_display,tag=pnp.memo_base,distance=..40] if score @s pnp.pid = #me pnp.tmp run function pnp:book/center
scoreboard players operation #f pnp.tmp = #ey pnp.tmp
scoreboard players remove #f pnp.tmp 65450
scoreboard players operation #f pnp.tmp *= #1000 pnp.tmp
scoreboard players operation #den pnp.tmp = #ey pnp.tmp
scoreboard players remove #den pnp.tmp 65000
scoreboard players operation #f pnp.tmp /= #den pnp.tmp
scoreboard players operation #px pnp.tmp = #hx pnp.tmp
scoreboard players operation #px pnp.tmp -= #ex pnp.tmp
scoreboard players operation #px pnp.tmp *= #f pnp.tmp
scoreboard players operation #px pnp.tmp /= #1000 pnp.tmp
scoreboard players operation #px pnp.tmp += #ex pnp.tmp
scoreboard players operation #px pnp.tmp -= #bx pnp.tmp
scoreboard players operation #pz pnp.tmp = #hz pnp.tmp
scoreboard players operation #pz pnp.tmp -= #ez pnp.tmp
scoreboard players operation #pz pnp.tmp *= #f pnp.tmp
scoreboard players operation #pz pnp.tmp /= #1000 pnp.tmp
scoreboard players operation #pz pnp.tmp += #ez pnp.tmp
scoreboard players operation #pz pnp.tmp -= #bz pnp.tmp
execute unless score #px pnp.tmp matches -2700..2700 run return run function pnp:revive_menu/close
execute unless score #pz pnp.tmp matches -2475..2475 run return run function pnp:revive_menu/close
execute if score #px pnp.tmp matches 1850..2550 if score #pz pnp.tmp matches -2350..-1600 run return run function pnp:revive_menu/close
execute if score #px pnp.tmp matches 1350..2450 if score #pz pnp.tmp matches -1185..-457 run return run function pnp:revive_menu/revive {k:0}
execute if score #px pnp.tmp matches 1350..2450 if score #pz pnp.tmp matches -465..263 run return run function pnp:revive_menu/revive {k:1}
execute if score #px pnp.tmp matches 1350..2450 if score #pz pnp.tmp matches 255..983 run return run function pnp:revive_menu/revive {k:2}
execute if score #px pnp.tmp matches 1350..2450 if score #pz pnp.tmp matches 975..1703 run return run function pnp:revive_menu/revive {k:3}
execute if score #px pnp.tmp matches 1350..2450 if score #pz pnp.tmp matches 1695..2423 run return run function pnp:revive_menu/revive {k:4}
