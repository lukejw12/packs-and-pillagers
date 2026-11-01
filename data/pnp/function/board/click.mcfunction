execute if score @s pnp.sanim matches 1.. run return 0
execute if score #click pnp.tmp matches 2 if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{speed:1b}}] run return run function pnp:speed/cycle
execute if score #click pnp.tmp matches 1 if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{speed:1b}}] run return run function pnp:speed/toggle_pause
execute if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pnp:{selector:1b}}] unless score @s pnp.book matches 0.. unless score @s pnp.holding matches 1.. if function pnp:selection/click run return 1
execute if score #click pnp.tmp matches 2 if score @s pnp.holding matches ..0 unless score @s pnp.book matches 0.. if items entity @s weapon.mainhand minecraft:book[minecraft:custom_data~{pnp:{controls:1b}}] run return run function pnp:controls/toggle
execute if score @s pnp.kbo matches 1 run return run function pnp:controls/click
execute if score #click pnp.tmp matches 2 if score @s pnp.holding matches ..0 unless score @s pnp.book matches 0.. if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{wrench:1b}}] unless score @s pnp.ph matches 1.. run return run function pnp:wrench/toggle
execute if score #click pnp.tmp matches 2 if score @s pnp.holding matches ..0 unless score @s pnp.book matches 0.. if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pnp:{grid:1b}}] run return run function pnp:grid/align
execute if score @s pnp.book matches 0.. run return run function pnp:book/click
execute if score @s pnp.holding matches ..0 if entity @e[type=item_display,tag=pnp.book_base,distance=..40] if function pnp:book/click_other run return 1
execute if score @s pnp.memo matches 1.. run return run function pnp:revive_menu/click
execute if score @s pnp.tool matches 1 if score @s pnp.holding matches ..0 run return run function pnp:wrench/click
execute if score @s pnp.paint matches 1.. if score @s pnp.holding matches ..0 run return run function pnp:paint/click
execute if score @s pnp.sslot matches 1.. if score @s pnp.holding matches ..0 run return run function pnp:villager/slots/click
execute if score @s pnp.holding matches 1.. run return run function pnp:board/drop/click
execute if score #click pnp.tmp matches 2 if score @s pnp.hover matches 1.. if function pnp:board/use_card run return 0
execute if score @s pnp.hover matches 1.. run return run function pnp:board/pick_up
execute if score #rayhit pnp.tmp matches 1 run function pnp:board/glide/start
