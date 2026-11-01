scoreboard players operation #uid pnp.tmp = @s pnp.hover
scoreboard players set #special pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:board/use_card_kind
execute if score #special pnp.tmp matches 1 run function pnp:board/pack/open_from_pick
execute if score #special pnp.tmp matches 2 run function pnp:book/open
execute if score #special pnp.tmp matches 3 run function pnp:revive_menu/open
execute if score #special pnp.tmp matches 4 run function pnp:wrench/toggle
execute if score #special pnp.tmp matches 5 run function pnp:logistics/barrel/take
execute if score #special pnp.tmp matches 6 run function pnp:logistics/hopper/clear
execute if score #special pnp.tmp matches 24 as @e[type=item_display,tag=pnp.cm,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:machine/call {f:"on_use"}
execute if score #special pnp.tmp matches 7 run function pnp:idea/learn
execute if score #special pnp.tmp matches 8 run function pnp:book/open_cardopedia
execute if score #special pnp.tmp matches 9 run function pnp:board/size/add_trophy
execute if score #special pnp.tmp matches 20 run function pnp:gateway/use
execute if score #special pnp.tmp matches 21 run function pnp:book/open_admin
execute if score #special pnp.tmp matches 22 run function pnp:paint/next
execute if score #special pnp.tmp matches 23 run function pnp:waystone/travel
execute if score #special pnp.tmp matches 24 run function pnp:grave/use
execute if score #special pnp.tmp matches 25 run function pnp:book/open_guide
execute if score #special pnp.tmp matches 26 run function pnp:villager/rename/start
execute if score #special pnp.tmp matches 27 run function pnp:shop/preview
execute if score #special pnp.tmp matches 28 run function pnp:board/side_board/use
execute if score #special pnp.tmp matches 1.. run return 1
return fail
