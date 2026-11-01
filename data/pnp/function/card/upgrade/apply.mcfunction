$tag @s add pnp.k.$(kind)
$execute unless score @s pnp.hp matches -2147483648.. run scoreboard players set @s pnp.hp $(hp)
$execute unless score @s pnp.atk matches -2147483648.. run scoreboard players set @s pnp.atk $(atk)
execute unless score @s pnp.target matches -2147483648.. run scoreboard players set @s pnp.target 0
execute if score @s pnp.hp matches 1.. run function pnp:card/label/add
