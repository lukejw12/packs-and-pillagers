$execute if data storage pnp:found p$(t).stone_pickaxe run return run scoreboard players set @s pnp.tut 99
scoreboard players set @s pnp.tut 1
scoreboard players set @s pnp.tutp 0
scoreboard players enable @s pnp.skip
tellraw @s [{text:"",extra:[{translate:"pnp.tutorial.new_here_follow_the_steps_at",fallback:"New here? Follow the steps at the top of your screen."}," "],color:"gray"},{translate:"pnp.tutorial.skip_intro",fallback:"[Skip intro]",color:"yellow",click_event:{action:"run_command",command:"/trigger pnp.skip"},hover_event:{action:"show_text",value:"Skip the intro"}}]
