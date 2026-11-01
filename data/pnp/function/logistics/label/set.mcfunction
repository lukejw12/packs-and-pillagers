$execute on passengers if entity @s[tag=pnp.lstat] run data merge entity @s {text:{text:"×$(n)",color:"black",bold:true},shadow:0b,transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0145f,0.4f],scale:[0.42f,0.42f,0.42f]}}
execute on passengers if entity @s[tag=pnp.licon] run data merge entity @s {item_display:"none",transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.22f,0.03f,0.1f],scale:[0.4f,0.4f,0.4f]}}
$function pnp:logistics/label/icon {c:"$(c)"}
