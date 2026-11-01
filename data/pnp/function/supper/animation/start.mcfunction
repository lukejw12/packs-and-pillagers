scoreboard players set @s pnp.sanim 1
scoreboard players set @s pnp.svk 1
scoreboard players set @s pnp.sph 0
scoreboard players set @s pnp.stm 0
scoreboard players set @s pnp.sfly 0
execute on vehicle store result score #t pnp.tmp run data get entity @s Pos[0] 100
scoreboard players operation @s pnp.scx = #t pnp.tmp
execute on vehicle store result score #t pnp.tmp run data get entity @s Pos[1] 100
scoreboard players operation @s pnp.scy = #t pnp.tmp
execute on vehicle store result score #t pnp.tmp run data get entity @s Pos[2] 100
scoreboard players operation @s pnp.scz = #t pnp.tmp
execute store result score @s pnp.syaw run data get entity @s Rotation[0] 100
execute store result score @s pnp.spit run data get entity @s Rotation[1] 100
scoreboard players add #psup pnp.ids 1
gamerule advance_time false
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1
