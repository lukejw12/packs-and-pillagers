execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{leaf:1b}}] run return run function pnp:board/size/use_leaf
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{waystone:1b}}] run return run function pnp:waystone/place
execute if function pnp:vanilla/import_try run return 1
scoreboard players set @s pnp.use 0
execute if entity @s[tag=pnp.in_board] run return 0
execute unless items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data~{pnp:{board_button:1b}}] run return 0
execute at @s if function pnp:world/try_capture run return 0
execute unless score #coop pnp.ids matches 1.. at @s if function pnp:multiplayer/visit/try run return 0
function pnp:board/open
