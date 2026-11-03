execute if entity @s[tag=pnp.k.enemy] if data entity @s item.components."minecraft:custom_data".gear run function pnp:fight/gear/drop with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=pnp.rider_p] run function pnp:card/spawn {card:"pillager"}
execute if entity @s[tag=pnp.rider_v] run function pnp:card/spawn {card:"vindicator"}
execute if entity @s[tag=pnp.k.enemy] run function pnp:quest/on_kill
execute if entity @s[tag=pnp.c.illusioner,tag=!pnp.illusion] at @s as @e[type=item_display,tag=pnp.illusion,distance=..20] at @s run function pnp:gateway/illusioner/vanish
execute if entity @s[tag=pnp.k.enemy] run scoreboard players set #killed pnp.tmp 1
execute if entity @s[tag=pnp.c.villager] if data entity @s item.components."minecraft:custom_data".eq{s:"totem"} run return run function pnp:villager/totem_save
execute if entity @s[tag=pnp.c.evoker] run playsound minecraft:entity.evoker.death hostile @a[distance=..48] ~ ~ ~ 1 1
execute if entity @s[tag=pnp.c.evoker] run title @a[distance=..48] actionbar {translate:"pnp.fight.the_evoker_is_defeated",fallback:"The Evoker is down!",color:"gold"}
execute if entity @s[tag=pnp.c.villager] run function pnp:villager/grave
particle minecraft:poof ~ ~0.2 ~ 0.25 0.1 0.25 0.02 12
execute if entity @s[tag=pnp.k.enemy] run playsound minecraft:entity.pillager.death master @a[distance=..24] ~ ~ ~ 0.8 1
execute if entity @s[tag=pnp.k.unit] run playsound minecraft:entity.villager.death master @a[distance=..24] ~ ~ ~ 0.8 1
scoreboard players operation #dead pnp.tmp = @s pnp.uid
execute as @e[type=item_display,tag=pnp.card,scores={pnp.target=1..},distance=..4] if score @s pnp.target = #dead pnp.tmp run scoreboard players set @s pnp.target 0
execute if entity @s[tag=pnp.c.redstone_golem] run function pnp:redstone_caves/rare_drop {c:"charged_redstone_core",p:20,msg:"The Redstone Golem dropped a Charged Redstone Core!"}
execute if entity @s[tag=pnp.c.evoker] run function pnp:redstone_caves/rare_drop {c:"summoning_orb",p:10,msg:"The Evoker dropped a Summoning Orb!"}
execute if entity @s[tag=pnp.c.redstone_monstrosity] run function pnp:redstone_caves/boss_dead
data modify storage pnp:board die.card set from entity @s item.components."minecraft:custom_data".card
function pnp:fight/loot with storage pnp:board die
execute if data entity @s item.components."minecraft:custom_data".weapon run function pnp:fight/drop_weapon
execute if entity @s[tag=pnp.c.villager] if data entity @s item.components."minecraft:custom_data".eq run function pnp:villager/drop_all
scoreboard players operation #csid pnp.tmp = @s pnp.stack
data modify storage pnp:board cause set value "Lost"
tag @s add pnp.dying
execute if score @s pnp.idx matches 0 run return run function pnp:fight/die_here
execute as @e[type=item_display,tag=pnp.card,distance=..8] if score @s pnp.stack = #csid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:fight/die_here
