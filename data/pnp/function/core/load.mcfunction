scoreboard objectives add pnp.suppers dummy
scoreboard objectives add pnp.vord dummy
scoreboard objectives add pnp.vown dummy
scoreboard objectives add pnp.mord dummy
scoreboard objectives add pnp.mtgt dummy
scoreboard objectives add pnp.mown dummy
scoreboard objectives add pnp.mval dummy
scoreboard objectives add pnp.sanim dummy
scoreboard objectives add pnp.svk dummy
scoreboard objectives add pnp.sph dummy
scoreboard objectives add pnp.stm dummy
scoreboard objectives add pnp.sfly dummy
scoreboard objectives add pnp.scx dummy
scoreboard objectives add pnp.scy dummy
scoreboard objectives add pnp.scz dummy
scoreboard objectives add pnp.syaw dummy
scoreboard objectives add pnp.spit dummy
scoreboard objectives add pnp.su_unfed dummy
scoreboard objectives add pnp.su_part dummy
scoreboard objectives add pnp.su_wf dummy
scoreboard objectives add pnp.su_need dummy
scoreboard players set #psup pnp.ids 0
scoreboard players set @a pnp.sanim 0
tag @e[type=item_display,tag=pnp.meal] remove pnp.meal
tag @e[type=item_display,tag=pnp.mfly] remove pnp.mfly
scoreboard objectives add pnp.bxtra dummy
scoreboard objectives add pnp.pid dummy
scoreboard objectives add pnp.uid dummy
scoreboard objectives add pnp.stack dummy
scoreboard objectives add pnp.idx dummy
scoreboard objectives add pnp.recipe dummy
scoreboard objectives add pnp.timer dummy
scoreboard objectives add pnp.rtime dummy
scoreboard objectives add pnp.pop dummy
scoreboard objectives add pnp.hover dummy
scoreboard objectives add pnp.holding dummy
scoreboard objectives add pnp.plot dummy
scoreboard objectives add pnp.info dummy
scoreboard objectives add pnp.ids dummy
scoreboard objectives add pnp.tmp dummy
scoreboard objectives add pnp.hp dummy
scoreboard objectives add pnp.atk dummy
scoreboard objectives add pnp.target dummy
scoreboard objectives add pnp.cd dummy
scoreboard objectives add pnp.hb dummy
scoreboard objectives add pnp.life dummy
scoreboard objectives add pnp.vf dummy
scoreboard objectives add pnp.vs dummy
scoreboard objectives add pnp.gift dummy
scoreboard objectives add pnp.price dummy
scoreboard objectives add pnp.paid dummy
scoreboard objectives add pnp.book dummy
scoreboard objectives add pnp.tipc dummy
scoreboard objectives add pnp.tipt dummy
scoreboard objectives add pnp.tips dummy
scoreboard objectives add pnp.raid dummy
scoreboard objectives add pnp.spell dummy
scoreboard objectives add pnp.memo dummy
scoreboard objectives add pnp.tool dummy
scoreboard objectives add pnp.puid dummy
scoreboard objectives add pnp.pnum dummy
scoreboard objectives add pnp.portid dummy
scoreboard objectives add pnp.ph dummy
scoreboard objectives add pnp.lsrc dummy
scoreboard objectives add pnp.lsp dummy
scoreboard objectives add pnp.ldst dummy
scoreboard objectives add pnp.ldp dummy
scoreboard objectives add pnp.llen dummy
scoreboard objectives add pnp.tdst dummy
scoreboard objectives add pnp.ttime dummy
scoreboard objectives add pnp.tx dummy
scoreboard objectives add pnp.tz dummy
scoreboard objectives add pnp.rr dummy
scoreboard objectives add pnp.bcount dummy
scoreboard objectives add pnp.ffuel dummy
scoreboard objectives add pnp.acprog dummy
scoreboard objectives add pnp.fprog dummy
scoreboard objectives add pnp.stuck dummy
scoreboard players set #10 pnp.tmp 10
scoreboard players set #4 pnp.tmp 4
scoreboard players set #200 pnp.tmp 200
scoreboard players set #-1 pnp.tmp -1
function pnp:villager/defs
scoreboard objectives add pnp.bset dummy
scoreboard objectives add pnp.bdet dummy
scoreboard objectives add pnp.bsize dummy
scoreboard objectives add pnp.visit dummy
scoreboard objectives add pnp.gwo dummy
scoreboard objectives add pnp.gwj dummy
scoreboard objectives add pnp.pold dummy
scoreboard objectives add pnp.here dummy
scoreboard objectives add pnp.tpid dummy
scoreboard objectives add pnp.skip trigger
scoreboard objectives add pnp.tutp dummy
scoreboard objectives add pnp.tut dummy
scoreboard objectives add pnp.fhw dummy
scoreboard players set #60 pnp.tmp 60
scoreboard objectives add pnp.qprog dummy
scoreboard objectives add pnp.qneed dummy
scoreboard objectives add pnp.grow dummy
scoreboard objectives add pnp.fid dummy
scoreboard objectives add pnp.fside dummy
scoreboard objectives add pnp.fslot dummy
scoreboard objectives add pnp.fbusy dummy
scoreboard objectives add pnp.fdirty dummy
scoreboard objectives add pnp.fcount dummy
scoreboard objectives add pnp.fn dummy
scoreboard players set #40 pnp.tmp 40
scoreboard players set #20 pnp.tmp 20
scoreboard objectives add pnp.epoi dummy
scoreboard objectives add pnp.eslo dummy
scoreboard objectives add pnp.ewea dummy
scoreboard objectives add pnp.efat dummy
scoreboard objectives add pnp.hpb dummy
scoreboard objectives add pnp.atkb dummy
scoreboard players set #25 pnp.tmp 25
scoreboard objectives add pnp.gwr dummy
scoreboard objectives add pnp.blind dummy
scoreboard objectives add pnp.blindt dummy
scoreboard objectives add pnp.fuse dummy
scoreboard objectives add pnp.gws dummy
scoreboard objectives add pnp.gwp dummy
scoreboard objectives add pnp.gwv dummy
scoreboard objectives add pnp.gwt dummy
scoreboard players set #3 pnp.tmp 3
scoreboard players set #16 pnp.tmp 16
scoreboard players set #18 pnp.tmp 18
scoreboard players set #22 pnp.tmp 22
scoreboard objectives add pnp.bank dummy
scoreboard objectives add pnp.vxp dummy
scoreboard objectives add pnp.vlvl dummy
scoreboard objectives add pnp.acd dummy
scoreboard objectives add pnp.bsv dummy
scoreboard objectives add pnp.study dummy
scoreboard objectives add pnp.slotn dummy
scoreboard objectives add pnp.slinger dummy
scoreboard objectives add pnp.sslot dummy
scoreboard objectives add pnp.svil dummy
scoreboard objectives add pnp.rspd dummy
scoreboard objectives add pnp.hpmax dummy
scoreboard objectives add pnp.blast dummy
scoreboard objectives add pnp.found dummy
scoreboard objectives add pnp.vfish minecraft.custom:minecraft.fish_caught
scoreboard objectives add pnp.vtrade minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add pnp.vench minecraft.custom:minecraft.enchant_item
scoreboard objectives add pnp.vsleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add pnp.vbred minecraft.custom:minecraft.animals_bred
scoreboard objectives add pnp.vkill minecraft.custom:minecraft.mob_kills
function pnp:idea/defs
tag @e[type=block_display,tag=pnp.link] remove pnp.board_ent
scoreboard players set #1000 pnp.tmp 1000
scoreboard objectives add pnp.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pnp.left minecraft.custom:minecraft.leave_game
scoreboard objectives add pnp.hv.oak_log minecraft.mined:minecraft.oak_log
scoreboard objectives add pnp.hv.birch_log minecraft.mined:minecraft.birch_log
scoreboard objectives add pnp.hv.spruce_log minecraft.mined:minecraft.spruce_log
scoreboard objectives add pnp.hv.jungle_log minecraft.mined:minecraft.jungle_log
scoreboard objectives add pnp.hv.acacia_log minecraft.mined:minecraft.acacia_log
scoreboard objectives add pnp.hv.dark_oak_log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add pnp.hv.mangrove_log minecraft.mined:minecraft.mangrove_log
scoreboard objectives add pnp.hv.cherry_log minecraft.mined:minecraft.cherry_log
scoreboard objectives add pnp.hv.pale_oak_log minecraft.mined:minecraft.pale_oak_log
scoreboard objectives add pnp.hv.stone minecraft.mined:minecraft.stone
scoreboard objectives add pnp.hv.deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add pnp.hv.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add pnp.hv.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add pnp.hv.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add pnp.hv.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add pnp.hv.wheat minecraft.mined:minecraft.wheat
scoreboard objectives add pnp.hv.gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add pnp.hv.deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add pnp.hv.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add pnp.hv.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add pnp.hv.pumpkin minecraft.mined:minecraft.pumpkin
scoreboard objectives add pnp.acc.oak_log dummy
scoreboard objectives add pnp.acc.cobblestone dummy
scoreboard objectives add pnp.acc.coal dummy
scoreboard objectives add pnp.acc.iron_ore dummy
scoreboard objectives add pnp.acc.wheat dummy
scoreboard objectives add pnp.acc.gold_ore dummy
scoreboard objectives add pnp.acc.diamond dummy
scoreboard objectives add pnp.acc.pumpkin dummy
scoreboard players set #2 pnp.tmp 2
scoreboard players set #5 pnp.tmp 5
scoreboard players set #8 pnp.tmp 8
scoreboard players set #1024 pnp.tmp 1024
scoreboard players set #875 pnp.tmp 875
scoreboard players set #24000 pnp.tmp 24000
function pnp:card/defs
team remove pnp.tip.0
team remove pnp.tip.1
team remove pnp.tip.2
team remove pnp.tip.3
team remove pnp.tip.4
team remove pnp.tip.5
team remove pnp.tip.6
team remove pnp.tip.7
team remove pnp.tip.8
team remove pnp.tip.9
team remove pnp.tip.10
team remove pnp.tip.11
team remove pnp.tip.12
team remove pnp.tip.13
team remove pnp.tip.14
team remove pnp.tip.15
scoreboard objectives remove pnp.tip.0
scoreboard objectives remove pnp.tip.1
scoreboard objectives remove pnp.tip.2
scoreboard objectives remove pnp.tip.3
scoreboard objectives remove pnp.tip.4
scoreboard objectives remove pnp.tip.5
scoreboard objectives remove pnp.tip.6
scoreboard objectives remove pnp.tip.7
scoreboard objectives remove pnp.tip.8
scoreboard objectives remove pnp.tip.9
scoreboard objectives remove pnp.tip.10
scoreboard objectives remove pnp.tip.11
scoreboard objectives remove pnp.tip.12
scoreboard objectives remove pnp.tip.13
scoreboard objectives remove pnp.tip.14
scoreboard objectives remove pnp.tip.15
scoreboard objectives remove pnp.tipslot

scoreboard objectives add pnp.selection_steps dummy
scoreboard objectives add pnp.selection_success dummy
scoreboard objectives add pnp.selection_id dummy
scoreboard objectives add pnp.function_block dummy
execute unless score $pnp.orangutang pnp.function_block matches 1.. run function pnp:core/otf
scoreboard objectives add pnp.decay_timer dummy
scoreboard objectives add pnp.brick_timer dummy
scoreboard objectives add pnp.brick_production_rate dummy
scoreboard objectives add pnp.temp dummy
scoreboard objectives add pnp.card_type dummy
scoreboard objectives add pnp.stack_id dummy
scoreboard objectives add pnp.next_stack_id dummy
scoreboard objectives add pnp.temp_y dummy
scoreboard objectives add pnp.temp_z dummy
scoreboard objectives add pnp.stack_count dummy
scoreboard objectives add pnp.stack_size dummy
scoreboard players set #-1 pnp.temp -1
scoreboard players set #2 pnp.temp 2
scoreboard players set #3 pnp.temp 3
execute in minecraft:overworld run kill @e[type=item_display,tag=pnp.card_part,distance=0..]
function pnp:quest/defs
function pnp:idea/unlock_defs
function pnp:tutorial/defs
execute as @e[type=item_display,tag=pnp.k.shop] at @s run function pnp:shop/reprice
scoreboard objectives add pnp.bsp dummy
function pnp:paint/defs
scoreboard objectives add pnp.paint dummy
scoreboard objectives add pnp.pax dummy
scoreboard objectives add pnp.paz dummy
scoreboard objectives add pnp.pcs dummy
scoreboard objectives add pnp.hv.copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add pnp.hv.deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add pnp.acc.copper_ore dummy
scoreboard objectives add pnp.cgt dummy
scoreboard objectives add pnp.mhv dummy
function pnp:wrench/machine_info_defs
scoreboard objectives add pnp.cgs dummy
scoreboard objectives add pnp.cgu dummy
scoreboard objectives add pnp.cgb dummy
scoreboard objectives add pnp.cgn dummy
scoreboard objectives add pnp.cgo dummy
scoreboard objectives add pnp.cgi dummy
scoreboard objectives add pnp.deaths deathCount
function pnp:enchanted_book/defs
scoreboard objectives add pnp.qfish minecraft.custom:minecraft.fish_caught
scoreboard objectives add pnp.qkill minecraft.custom:minecraft.mob_kills
scoreboard objectives add pnp.qmine dummy
scoreboard objectives add pnp.invil dummy
scoreboard objectives add pnp.omen dummy
scoreboard objectives add pnp.craid dummy
function pnp:villager/release/trade_defs
scoreboard objectives add pnp.wid dummy
scoreboard objectives add pnp.invs dummy
scoreboard objectives add pnp.ctlseen dummy
scoreboard objectives add pnp.pslk dummy
scoreboard objectives add pnp.rnu dummy
scoreboard objectives add pnp.rnt dummy
scoreboard objectives add pnp.rnx trigger
scoreboard objectives add pnp.wd dummy
scoreboard objectives add pnp.wt dummy
scoreboard objectives add pnp.ws dummy
scoreboard objectives add pnp.sess dummy
execute as @a[tag=pnp.in_board] unless score @s pnp.sess matches 1.. run function pnp:board/adopt_session
scoreboard objectives add pnp.cgm dummy
scoreboard objectives add pnp.cgh dummy
scoreboard objectives add pnp.cgr dummy
scoreboard objectives add pnp.wpan dummy
scoreboard objectives add pnp.kbo dummy
scoreboard objectives add pnp.kbt trigger
scoreboard objectives add pnp.ow dummy
scoreboard objectives add pnp.born dummy
scoreboard objectives add pnp.rlvl dummy
scoreboard objectives add pnp.lraid dummy
scoreboard objectives add pnp.rkind dummy
scoreboard objectives add pnp.msz dummy
scoreboard objectives add pnp.sbsz dummy
scoreboard objectives add pnp.sbw dummy
data modify storage pnp:cards tipk set value {enemy:"Monsters fight your villagers. Swords, armor, and full bellies keep them alive.",node:"Trees, rocks, and bushes give resources while a villager works on them.",struct:"Buildings work when a villager is stacked on them. Hover one to see what it needs.",idea:"Right-click an idea to learn its recipe. The card stays, and can be sold.",food:"Villagers eat every morning. Keep enough food on the table or they go hungry.",animal:"Animals make things on their own. Stack the same kind for more, and put them on a Pen to double the speed.",weapon:"Drop a weapon on a villager to equip it.",armor:"Drop armor on a villager to wear it.",trinket:"Trinkets go in a villager's third slot and give a special power.",quest:"Quests ask for cards. Drop them on the quest card for the reward.",gate:"Gateways lead to expeditions. Bring armed villagers."}
scoreboard objectives add pnp.notips trigger
scoreboard objectives add pnp.stf dummy
scoreboard objectives add pnp.sblk dummy
scoreboard objectives add pnp.sbm dummy
scoreboard objectives add pnp.sbv dummy
function pnp:book/pack_pages
scoreboard objectives add pnp.tipr dummy
scoreboard objectives add pnp.sls dummy
scoreboard objectives add pnp.sax dummy
scoreboard objectives add pnp.saz dummy
scoreboard objectives add pnp.selp dummy
scoreboard objectives add pnp.sox dummy
scoreboard objectives add pnp.soz dummy
scoreboard objectives add pnp.sdx dummy
scoreboard objectives add pnp.sdz dummy
scoreboard objectives add pnp.srx1 dummy
scoreboard objectives add pnp.srx2 dummy
scoreboard objectives add pnp.srz1 dummy
scoreboard objectives add pnp.srz2 dummy
scoreboard objectives add pnp.scx dummy
scoreboard objectives add pnp.scz dummy
scoreboard players set #100 pnp.tmp 100
scoreboard objectives add pnp.wsn dummy
scoreboard objectives add pnp.rnw dummy
scoreboard objectives add pnp.rnwid dummy
scoreboard objectives add pnp.gwn dummy
scoreboard objectives add pnp.slife dummy
scoreboard players set #c3 pnp.tmp 3
scoreboard players set #c0 pnp.tmp 0
scoreboard players set #c1 pnp.tmp 1
function pnp:quest_board/defs
scoreboard objectives add pnp.mcat dummy
scoreboard objectives add pnp.mtk dummy
scoreboard objectives add pnp.mt dummy
scoreboard objectives add pnp.mgap dummy
scoreboard objectives add pnp.mlv minecraft.custom:minecraft.leave_game
function pnp:music/defs
scoreboard objectives add pnp.menu trigger
scoreboard objectives add pnp.pvpt trigger
scoreboard objectives add pnp.mlv2 minecraft.custom:minecraft.leave_game
scoreboard objectives add pnp.patk dummy
scoreboard objectives add pnp.pvst dummy
scoreboard objectives add pnp.pvpm dummy
scoreboard objectives add pnp.pvs dummy
scoreboard objectives add pnp.pvpcd dummy
scoreboard objectives add pnp.pvh dummy
scoreboard objectives add pnp.pvi dummy
scoreboard objectives add pnp.paid dummy
scoreboard players set #c16 pnp.tmp 16
scoreboard objectives add pnp.pown dummy
scoreboard objectives add pnp.ptp dummy
scoreboard players set #c26 pnp.tmp 26
scoreboard players set #c6 pnp.tmp 6
scoreboard players set #c22 pnp.tmp 22
bossbar remove pnp:monstrosity
execute store result score #cob pnp.tmp run scoreboard players get #pid pnp.ids
execute if score #cob pnp.tmp matches 1.. store result storage pnp:board cob.p int 1 run scoreboard players get #cob pnp.tmp
execute if score #cob pnp.tmp matches 1.. run function pnp:core/clear_old_bars with storage pnp:board cob
scoreboard objectives add pnp.pcat dummy
scoreboard objectives add pnp.phov dummy
scoreboard objectives add pnp.pslot dummy
function pnp:cardopedia/data
scoreboard objectives add pnp.pts dummy
scoreboard objectives add pnp.hudt dummy
function pnp:hud/defs
scoreboard objectives add pnp.ovm dummy
scoreboard players set #pman pnp.ids 0
scoreboard players set #pover pnp.ids 0
scoreboard players set #pstate pnp.ids -1
tag @e[type=item_display,tag=pnp.card] remove pnp.slbl
tag @e[type=item_display,tag=pnp.card] remove pnp.hlbl
execute as @e[type=item_display,tag=pnp.wpn_icon] run data merge entity @s {transformation:{translation:[-0.27f,0.02f,0.375f]}}
data modify storage pnp:cards tipk.food_close set value "Supper is every morning. Each villager eats 2 food and each baby eats 1. Anyone who can't eat starves, so get more food on the table before dawn."
data modify storage pnp:cards tipk.cards_close set value "You're almost out of card slots. If you have more cards than slots when morning comes, the day won't go on until you sell some. Shelves and Vaults give you more slots and a bigger table."
scoreboard objectives add pnp.tipfood dummy
scoreboard objectives add pnp.tipcards dummy
data modify storage pnp:api kinds set value {res:"Resource",food:"Food",unit:"Worker",enemy:"Monster",struct:"Structure",tool:"Tool",weapon:"Weapon",armor:"Armor",animal:"Animal",node:"Renewable source",trinket:"Talisman",book:"Book",idea:"Idea",quest:"Quest",shop:"Shop",pack:"Card Pack",trophy:"Trophy",portal:"Portal",gate:"Gateway",baby:"Baby",sell:"Sell box"}
data modify storage pnp:api registered set value {}
function #pnp:load
schedule function pnp:card/machine_sync 2t
