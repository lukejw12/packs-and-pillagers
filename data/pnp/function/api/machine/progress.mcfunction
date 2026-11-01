$scoreboard players set #mp pnp.tmp $(p)
execute if score #mp pnp.tmp matches ..0 on passengers if entity @s[tag=pnp.mbar] run kill @s
execute if score #mp pnp.tmp matches ..0 run return 0
execute if score #mp pnp.tmp matches 101.. run scoreboard players set #mp pnp.tmp 100
execute unless function pnp:api/machine/has_bar run function pnp:api/machine/make_bar
scoreboard players operation #mp pnp.tmp *= #875 pnp.tmp
execute on passengers if entity @s[tag=pnp.mbar_fill] store result entity @s transformation.scale[0] float 0.00001 run scoreboard players get #mp pnp.tmp
