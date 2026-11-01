tag @s add pnp.fx_on
execute on passengers if entity @s[tag=pnp.eff_icon] run kill @s
$summon item_display ~ ~ ~ {Tags:["pnp.card_part","pnp.eff_icon","pnp.ei_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/effect_$(e)"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0.03f,-0.33f],scale:[0.22f,0.22f,0.22f]}}
ride @e[type=item_display,tag=pnp.ei_new,limit=1] mount @s
tag @e[type=item_display,tag=pnp.ei_new] remove pnp.ei_new
