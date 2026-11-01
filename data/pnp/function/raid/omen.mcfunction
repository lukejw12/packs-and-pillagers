scoreboard players set @s pnp.omen 1
scoreboard players set @s pnp.craid 1
tellraw @s {translate:"pnp.raid.a_raid_captain_s_curse_follows",fallback:"A raid captain's curse follows you home. A Captain's Raid will hit your card table at nightfall.",color:"dark_red"}
playsound minecraft:event.raid.horn master @s ~ ~ ~ 0.4 0.8
