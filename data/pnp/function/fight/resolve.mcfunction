execute if entity @s[tag=pnp.ranged] facing entity @e[type=item_display,tag=pnp.tgt,limit=1] feet run function pnp:fight/shot
execute if entity @s[tag=pnp.illusion] run return run function pnp:gateway/illusioner/fake
execute if entity @s[tag=pnp.c.evoker] run return 0
execute if entity @s[tag=pnp.blinded] store result score #br pnp.tmp run random value 1..2
execute if entity @s[tag=pnp.blinded] if score #br pnp.tmp matches 1 as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run return run function pnp:fight/miss
execute store result score #roll pnp.tmp run random value 1..100
execute if score #roll pnp.tmp matches 61..85 as @e[type=item_display,tag=pnp.tgt,tag=pnp.tal.rabbit_foot,limit=1] at @s run return run function pnp:fight/miss
execute if score #roll pnp.tmp matches 86.. as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run return run function pnp:fight/miss
execute store result score #blk pnp.tmp run random value 1..100
execute if score #blk pnp.tmp matches ..40 as @e[type=item_display,tag=pnp.tgt,tag=pnp.guard,limit=1] at @s run return run function pnp:fight/block
function pnp:fight/cause_self
execute if entity @s[tag=pnp.tal.bone] if entity @e[type=item_display,tag=pnp.tgt,tag=pnp.c.zombie,limit=1] run scoreboard players add #atk pnp.tmp 1
execute if entity @s[tag=pnp.tal.bone] if entity @e[type=item_display,tag=pnp.tgt,tag=pnp.c.skeleton,limit=1] run scoreboard players add #atk pnp.tmp 1
execute if entity @s[tag=pnp.tal.bone] if entity @e[type=item_display,tag=pnp.tgt,tag=pnp.c.stray,limit=1] run scoreboard players add #atk pnp.tmp 1
execute if entity @s[tag=pnp.tal.bone] if entity @e[type=item_display,tag=pnp.tgt,tag=pnp.c.bogged,limit=1] run scoreboard players add #atk pnp.tmp 1
scoreboard players set #killed pnp.tmp 0
tag @s add pnp.atkr
execute as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/hit
execute if entity @s[tag=pnp.mace] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/mace_area
execute if entity @s[tag=pnp.staff] run function pnp:fight/staff/tick
execute if entity @s[tag=pnp.fist] run function pnp:redstone_caves/fist/tick
execute if entity @e[type=item_display,tag=pnp.tgt,tag=pnp.helm_rm,limit=1] run function pnp:redstone_caves/thorns
execute if entity @s[tag=pnp.pierce] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/pierce
execute if entity @s[tag=pnp.knock] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/knockback
execute if entity @s[tag=pnp.c.bogged] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/effects/apply {e:"poison",s:"epoi",t:100}
execute if entity @s[tag=pnp.c.stray] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/effects/apply {e:"slowness",s:"eslo",t:100}
execute if entity @s[tag=pnp.c.guardian] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/effects/apply {e:"mining_fatigue",s:"efat",t:80}
execute if entity @s[tag=pnp.c.elder_guardian] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/effects/apply {e:"mining_fatigue",s:"efat",t:160}
execute if entity @s[tag=pnp.c.vex] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:fight/effects/apply {e:"weakness",s:"ewea",t:80}
execute if entity @s[tag=pnp.c.warden] as @e[type=item_display,tag=pnp.tgt,limit=1] at @s run function pnp:gateway/blind/unit
tag @s remove pnp.atkr
execute if score #killed pnp.tmp matches 1.. if entity @s[tag=pnp.c.villager] run function pnp:villager/gain_xp {x:3}
execute if entity @s[tag=pnp.tal.echo_shard] run function pnp:fight/echo
execute if entity @e[type=item_display,tag=pnp.tgt,tag=pnp.tal.prismarine_shard,limit=1] run function pnp:fight/thorns
