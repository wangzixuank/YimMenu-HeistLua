-- v1.90 -- 感谢crazyzhang、Alice和sch的指导； 更新佩岛和dc，修正末日，公寓
local tabName = "RS Heist by wang--------------"
local myMainTab = gui.add_tab(tabName)
-- local myTab = gui.get_tab(tabName)

-- package.path = os.getenv("UserProfile").."/AppData/Roaming/YimMenu/scripts/?.lua"
-- require("Alice-lib/lib")
-- Alice = {}
--""不能用就改为"MP0_"或者改为"MP1_"试一下
local mpx = ""

g_fmfirst = 19781
local cayoCut = 1972414 + 831 + 56
local casinoCut = 1965614 + 1497 + 736 + 92
local cahHacking1 = 53087
local cahHacking2 = 54153
local dommsCut = 1961513 + 812 + 50
local fm_life = g_fmfirst + 1765 + 1
local apartmentMyCut = 1931285 + 3008
local apartmentCut = 1929317 + 1
g_peidaoBoli = 31049 + 3
casinoTakeInt = g_fmfirst + 2686
g_zuankong = 10143
dczuankong = g_zuankong + 7
dczuankongget = g_zuankong + 37
doomsdayHack1=1271 + 135    --- ac3
doomsdayAC1Server=1514
doomsdayHack2=1545
g_callkoh=2739811 + 991

local now_tab = '快速上岛'
myMainTab:add_tab(now_tab)
local myTab = gui.get_tab(now_tab)
-- myTab:add_separator()

-- myTab:add_button("test", function()
--     getPlayerId()
--     log.info(mpx)
-- end)
----Cayo----start
myTab:add_text("佩岛")
local Cayo1 = myTab:add_button("完成佩岛前置", function()
    STAT_SET_INT("H4_MISSIONS", -1)
    STAT_SET_INT("H4CNF_APPROACH", -1)
    STAT_SET_INT("H4CNF_TARGET", 5)
    STAT_SET_INT("H4CNF_BS_ENTR", 63)
    STAT_SET_INT("H4CNF_BS_GEN", 63)
    STAT_SET_INT("H4CNF_WEAPONS", 1)
    STAT_SET_INT("H4_PROGRESS", 131055)
    --次要目标
    STAT_SET_INT("H4LOOT_CASH_C", 0)
    STAT_SET_INT("H4LOOT_CASH_V", 0)
    STAT_SET_INT("H4LOOT_WEED_C", 0)
    STAT_SET_INT("H4LOOT_WEED_V", 0)
    STAT_SET_INT("H4LOOT_COKE_C", 0)
    STAT_SET_INT("H4LOOT_COKE_V", 0)

    STAT_SET_INT("H4LOOT_GOLD_I", -1)
    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", -1)
    STAT_SET_INT("H4LOOT_GOLD_C", -1)
    STAT_SET_INT("H4LOOT_GOLD_V", 320000)
    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", -1)

    STAT_SET_INT("H4LOOT_PAINT", -1)
    STAT_SET_INT("H4LOOT_PAINT_SCOPED", -1)
    STAT_SET_INT("H4LOOT_PAINT_V", 180000)
    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
    --次要目标---endold 1526+18
    SET_INT_LOCAL("heist_island_planning", 1544, 2)
    -- STAT_SET_INT("H4CNF_BS_GEN", 63)
    gui.show_message("写入完成", "远离计划面板并重新接近以刷新面板")
end)

myTab:add_sameline()

local Cayo2 = myTab:add_button("呼叫虎鲸", function()
    globals.set_int(g_callkoh, 1)
end)

myTab:add_sameline()

local Cayo3 = myTab:add_button("传到虎鲸内", function()
    -- TELEPORT(1561.2369, 385.8771, -49.689915)
    -- TELEPORT(-619.987, 282.960, 81.639)
    -- if STAT_GET_INT("IH_SUB_OWNED") == 0 then
    -- else
    TELEPORT(1561.2369, 385.8771, -49.689915)
    SET_HEADING(175)
    -- STAT_SET_INT("H4_PROGRESS", 131055)
    -- end
end)
myTab:add_text("呼叫虎鲸之后大约2秒才能看到虎鲸，直接传送会进入虚空")
myTab:add_text("建议先打开地图传送到虎鲸顶上，虎鲸浮上来之后再传送进虎鲸内")
-- myTab:add_sameline()

-- 使用标签页对象的add_button函数创建一个按钮
local Cayo4Int = myTab:add_input_int("分红")
Cayo4Int:set_value(138)
local Cayo4 = myTab:add_button("写入全员分红", function()
    globals.set_int(cayoCut + 1, Cayo4Int:get_value())
    globals.set_int(cayoCut + 2, Cayo4Int:get_value())
    globals.set_int(cayoCut + 3, Cayo4Int:get_value())
    globals.set_int(cayoCut + 4, Cayo4Int:get_value())
end)

myTab:add_separator()

local Cayo5 = myTab:add_button("传到大门外入口", function()
    TELEPORT(4980.89843, -5709.42724, 20.00694)
	SET_HEADING(220)
end)

myTab:add_sameline()

local Cayo6 = myTab:add_button("传到排水口切栅栏", function()
    TELEPORT(5043.79882, -5815.15039, -11.01647)
	SET_HEADING(45)
end)

myTab:add_sameline()

local Cayo7 = myTab:add_button("传到排水口入侵点", function()
    TELEPORT(5053.44384, -5772.10791, -4.80793)
	SET_HEADING(45)
end)

local Cayo8 = myTab:add_button("传到金发办公室", function()
    TELEPORT(5011.18359, -5757.16113, 29.00798)
end)

myTab:add_sameline()

local Cayo9 = myTab:add_button("传到主目标", function()
    TELEPORT(5006.7, -5756.2, 15.49)
    SET_HEADING(145)
end)

myTab:add_sameline()

local Cayo10 = myTab:add_button("快速切割", function()
    SET_FLOAT_LOCAL("fm_mission_controller_2020", g_peidaoBoli, 100)
end, function()
    SET_FLOAT_LOCAL("fm_mission_controller_2020", g_peidaoBoli, 0)
end)

myTab:add_sameline()

local Cayo11 = myTab:add_button("传到排水口起始位", function()
    TELEPORT(5065.49511, -5780.29248, 12.00318)
end)

myTab:add_separator()

local Cayo12 = myTab:add_button("传到大门出口", function()
    TELEPORT(4990.0386, -5717.6895, 19.8802)
    SET_HEADING(50)
end)

myTab:add_sameline()

local Cayo13 = myTab:add_button("生成图拉尔多", function()
    spawn("TOREADOR")
end)

myTab:add_sameline()

local Cayo14 = myTab:add_button("传到海里", function()
    TELEPORT(4789.7724, -6196.4208, -41.6791)
	SET_HEADING(180)
end)

----Cayo----end--------------------------------------------------------


----casino----start
now_tab = '快速赌场'
myMainTab:add_tab(now_tab)
myTab = gui.get_tab(now_tab)
-- myTab:add_separator()
myTab:add_text("赌场")

local casino1 = myTab:add_button("完成气势汹汹前置", function()
    STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
    STAT_SET_INT("H3OPT_MASKS", 4)
    STAT_SET_INT("H3OPT_WEAPS", 1)
    STAT_SET_INT("H3OPT_VEHS", 3)
    -- STAT_SET_INT("CAS_HEIST_FLOW", -1)
    STAT_SET_INT("H3_LAST_APPROACH", 0)
    STAT_SET_INT("H3OPT_APPROACH", 3)
    STAT_SET_INT("H3_HARD_APPROACH", 0)
    STAT_SET_INT("H3OPT_TARGET", 3)
    STAT_SET_INT("H3OPT_POI", 1023)
    STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
    STAT_SET_INT("H3OPT_CREWWEAP", 4)   --枪手10%
    STAT_SET_INT("H3OPT_CREWDRIVER", 3) --车手9%
    STAT_SET_INT("H3OPT_CREWHACKER", 4) --黑客10%
    STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
    STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
    STAT_SET_INT("H3OPT_KEYLEVELS", 2)
    STAT_SET_INT("H3OPT_BITSET1", 799)
    STAT_SET_INT("H3OPT_BITSET0", 3670102)
    gui.show_message("写入完成")
end)

myTab:add_text("赌场-游戏厅按照价格排序分为1-6，进入游戏厅后才能传送到分红黑板前")

local casino10 = myTab:add_button("游戏厅后门1-日蚀", function()
    TELEPORT(-617.82421, 285.82482, 81.98642)
end)

myTab:add_sameline()

local casino11 = myTab:add_button("游戏厅后门2-服装厂", function()
    TELEPORT(726.66656, -822.47216, 25.15634)
end)

myTab:add_sameline()

local casino12 = myTab:add_button("游戏厅后门3-高尔夫球场", function()
    TELEPORT(-1287.04098, -277.90896, 38.95561)
end)

local casino13 = myTab:add_button("游戏厅后门4-竞技场", function()
    TELEPORT(-105.43507, -1778.11653, 30.12231)
end)

myTab:add_sameline()

local casino14 = myTab:add_button("游戏厅后门5-崔佛机场", function()
    TELEPORT(1710.76477, 4760.21923, 42.34999)
end)

myTab:add_sameline()

local casino15 = myTab:add_button("游戏厅后门6-佩立托湾", function()
    TELEPORT(-237.14082, 6228.43115, 31.80187)
end)

-- myTab:add_sameline()

myTab:add_button("传送到保险箱", function()
    TELEPORT(2728.47583, -374.31631, -47.39296)
    SET_HEADING(280)
end)

myTab:add_sameline()

myTab:add_button("传送到分红黑板", function()
    TELEPORT(2712.83618, -372.31698, -54.78091)
    SET_HEADING(160)
end)
-- SET_HEADING(0) 这个是控制视角方向的，0为地图正北方向,90为正西方向,180正南,270正东,按P打开地图，上北下南左西右东

myTab:add_separator()

local casino2Int = myTab:add_input_int("分红")
casino2Int:set_value(165)
-- myTab:add_sameline()
local casino2 = myTab:add_button("写入全员分红", function()
    SET_INT_GLOBAL(casinoCut + 1, casino2Int:get_value())
    SET_INT_GLOBAL(casinoCut + 2, casino2Int:get_value())
    SET_INT_GLOBAL(casinoCut + 3, casino2Int:get_value())
    SET_INT_GLOBAL(casinoCut + 4, casino2Int:get_value())
    --设置面板
    -- setBuyer(3)
    -- setEntrance(11)
    -- setExit(2)
    --设置面板--end
end)

myTab:add_separator()

myTab:add_button("传送到赌场大门口", function()
    TELEPORT(923.47003, 46.83284, 81.10634)
end)

myTab:add_sameline()

myTab:add_button("传送到赌场后门", function()
    TELEPORT(966.12872, -8.27024, 80.76541)
end)

myTab:add_sameline()

myTab:add_button("传送到赌场后门桥洞", function()
    TELEPORT(975.97314, -70.82895, 74.95919)
end)

myTab:add_button("传送到下水道口", function()
    TELEPORT(1032.64884, -270.79614, 50.88062)
	SET_HEADING(20)
end)

myTab:add_sameline()

local casino4 = myTab:add_button("跳指纹/密码锁", function()
    if GET_INT_LOCAL("fm_mission_controller", cahHacking1) ~= 1 then
        SET_INT_LOCAL("fm_mission_controller", cahHacking1, 5)
    end
    if GET_INT_LOCAL("fm_mission_controller", cahHacking2) ~= 1 then
        SET_INT_LOCAL("fm_mission_controller", cahHacking2, 5)
    end
end)

myTab:add_sameline()

local casino5 = myTab:add_button("跳切割金库", function()
    SET_INT_LOCAL("fm_mission_controller", dczuankong, GET_INT_LOCAL("fm_mission_controller", dczuankongget))
end)

myTab:add_separator()

myTab:add_button("一键拿取329w", function()
    chk_script_host("fm_mission_controller")
    SET_INT_LOCAL("fm_mission_controller", casinoTakeInt, 3290000)
end)

-- myTab:add_sameline()

local casino_take = myTab:add_input_int("拿取金额")

-- myTab:add_sameline()

myTab:add_button("写入背包内的金额", function()
    chk_script_host("fm_mission_controller")
    SET_INT_LOCAL("fm_mission_controller", casinoTakeInt, casino_take:get_value())
end)

myTab:add_separator()

local casino40 = myTab:add_button("生成骷髅马", function()
    spawn("KURUMA2")
end)


----casino----end--------------------------------

----domms----start
now_tab = '快速末日'
myMainTab:add_tab(now_tab)
myTab = gui.get_tab(now_tab)
-- myTab:add_separator()
myTab:add_text("末日")

myTab:add_button("完成末日一前置-209", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 503)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229383)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)

myTab:add_sameline()

myTab:add_button("完成末日二前置-140", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 240)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229378)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)

myTab:add_sameline()

myTab:add_button("完成末日三前置-113", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 16368)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229380)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)

myTab:add_text("末日设施按照价格排序分为1-9，进入设施后才能传送到计划屏幕前")

myTab:add_button("设施1-水库", function()
    TELEPORT(1864.76831, 269.28372, 164.26144)
end)

myTab:add_sameline()

myTab:add_button("设施2-奥尼尔农场", function()
    TELEPORT(2755.82055, 3907.36230, 45.75238)
end)

myTab:add_sameline()

myTab:add_button("设施3-监狱", function()
    TELEPORT(1273.20910, 2835.07885, 49.352531)
end)

myTab:add_sameline()

myTab:add_button("传送到设施4", function()
    TELEPORT(34.42562, 2620.85376, 85.93717)
end)

myTab:add_sameline()

myTab:add_button("传送到设施5", function()
    TELEPORT(-3.16610, 3344.40698, 41.53642)
end)

myTab:add_button("设施6-风电厂", function()
    TELEPORT(2086.11669, 1761.24853, 104.38518)
end)

myTab:add_sameline()

myTab:add_button("设施7-军事基地", function()
    TELEPORT(-2229.24902, 2399.28198, 12.25624)
end)

myTab:add_sameline()

myTab:add_button("设施8-戈多山", function()
    TELEPORT(3389.53955, 5508.91601, 26.18332)
end)

myTab:add_sameline()

myTab:add_button("设施9-佩立托湾", function()
    TELEPORT(19.41532, 6825.33447, 15.76134)
end)

myTab:add_sameline()

----从 sch 抄的 https://github.com/sch-lda/SCH-LUA-YIMMENU/blob/main/sch.lua
myTab:add_button("设施计划屏幕", function()
    local PlayerPos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), 0.0, 0.52, 0.0)
    local intr = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)
    if intr == 269313 then
        if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(428)) then
            TELEPORT(350.69284, 4872.308, -60.794243)
            SET_HEADING(310)
        end
    else
        gui.show_message("确保自己在设施内", "请先进入设施再传送到计划屏幕")
        tpfac()
    end
end)

-- myTab:add_sameline()

local domms = myTab:add_input_int("分红")

myTab:add_button("写入全员分红", function()
    SET_INT_GLOBAL(dommsCut + 1, domms:get_value())
    SET_INT_GLOBAL(dommsCut + 2, domms:get_value())
    SET_INT_GLOBAL(dommsCut + 3, domms:get_value())
    SET_INT_GLOBAL(dommsCut + 4, domms:get_value())
end)

myTab:add_separator()

local domms1 = myTab:add_button("生成骷髅马", function()
    spawn("KURUMA2")
end)

myTab:add_sameline()

local domms2 = myTab:add_button("生成图拉尔多", function()
    spawn("TOREADOR")
end)

myTab:add_sameline()

local domms3 = myTab:add_button("生成德罗索", function()
    spawn("DELUXO")
end)

myTab:add_sameline()

local domms4 = myTab:add_button("生成MK2", function()
    spawn("OPPRESSOR2")
end)

myTab:add_button("到末日一门口", function()
    TELEPORT(2062.11792, 2954.55639, 49.37017)
end)

myTab:add_sameline()

myTab:add_button("到末日二飞机", function()
    TELEPORT(-304.73529, 6099.96972, 31.70377)
end)

myTab:add_sameline()

myTab:add_button("到末日三载具", function()
    TELEPORT(2559.99292, 4677.60156, 34.27680)
end)

myTab:add_sameline()

myTab:add_button("到末日三隧道", function()
    TELEPORT(-132.34474, 4613.67529, 125.31480)
end)

myTab:add_button("末日三破解小游戏", function()
    SET_INT_LOCAL("fm_mission_controller", doomsdayAC1Server, 3)
    SET_INT_LOCAL("fm_mission_controller", doomsdayHack2, 2)
    SET_INT_LOCAL("fm_mission_controller", doomsdayHack1, 3) ---==2
end)

-- local domms_loop = myTab:add_checkbox("循环状态(用于关闭循环)")
-- myTab:add_sameline()
-- myTab:add_button("循环破解小游戏", function()
--     domms_loop:set_enabled(true)
--     script.run_in_fiber(function (script)
--         while domms_loop:is_enabled() do
--             SET_INT_LOCAL("fm_mission_controller", 1509, 3)
--             SET_INT_LOCAL("fm_mission_controller", 1540, 2)
--             SET_INT_LOCAL("fm_mission_controller", 1266 + 135, 3)
--             -- log.info("bbbb")
--             script:yield()
--             -- script:sleep(1000)
--         end
--         log.info("已停止破解末日小游戏")
--         gui.show_message("已停止","已停止破解末日小游戏")
--    end)

-- end)
----domms----end-------------------------------------

-- myTab:add_separator()
-----apartment
now_tab = '快速公寓'
myMainTab:add_tab(now_tab)
myTab = gui.get_tab(now_tab)
myTab:add_text("公寓")
myTab:add_button("传到公寓", function()
    TELEPORT(-775.6636, 309.19543, 85.69813)
    SET_HEADING(11)
end)

myTab:add_sameline()

myTab:add_button("完成前置", function()
    STAT_SET_INT("HEIST_PLANNING_STAGE", -1)
end)

myTab:add_separator()

local apartment = myTab:add_input_int("分红")

myTab:add_sameline()

myTab:add_button("设置全员分红", function()
    network.force_script_host("freemode")
    local ren = 3
    local apartment_HOST_CUT1 = apartment:get_value()
    local fushu = (-1 * ren * apartment_HOST_CUT1) + 100
    SET_INT_GLOBAL(apartmentCut + 1, fushu)
    SET_INT_GLOBAL(apartmentCut + 2, apartment_HOST_CUT1)
    SET_INT_GLOBAL(apartmentCut + 3, apartment_HOST_CUT1)
    SET_INT_GLOBAL(apartmentCut + 4, apartment_HOST_CUT1)
    myYield(500)
    SET_INT_GLOBAL(apartmentMyCut + 1, apartment_HOST_CUT1)
end)

-- myTab:add_button("破解小游戏", function()
--     menu.instant_mission_minigame_passed()
-- end)

-----apartment------------------end

myMainTab:add_text("末日/赌场/公寓")

myMainTab:add_button("设置团队生命数100", function()
    -- menu.instant_heist_team_life("fm_mission_controller", 100)
    chk_script_host("fm_mission_controller")
    SET_INT_LOCAL("fm_mission_controller", fm_life, 100)
end)

-- local other_loop = myMainTab:add_checkbox("循环状态(用于关闭循环)")
-- myMainTab:add_sameline()
-- myMainTab:add_button("循环破解任务小游戏", function()
--     other_loop:set_enabled(true)
--     script.run_in_fiber(function (script)
--         while other_loop:is_enabled() do
--             menu.instant_mission_minigame_passed()
--             -- log.info("bbbb")
--             script:yield()
--             -- script:sleep(1000)
--         end
--         -- log.info("已停止破解小游戏")
--         gui.show_message("已停止破解小游戏")
--    end)

-- end)
-----qita----end---

function STAT_SET_INT(statName, value)
    -- getPlayerId()
    -- stats.set_int(get_hash(mpx .. statName),value)
    stats.set_int("MPX_" .. statName, value)
    -- STATS.STAT_SET_INT(get_hash(mpx .. statName),value,true)
end

function STAT_GET_INT(statName)
    -- getPlayerId()
    -- local IntPTR = memory.allocate()
    -- STATS.STAT_GET_INT(get_hash(mpx .. statName), IntPTR, -1)
    -- return memory.ptr_to_handle(IntPTR)
    return stats.get_int("MPX_" .. statName)
end

function SET_INT_LOCAL(script, script_local, value)
    locals.set_int(script, script_local, value)
end

function GET_INT_LOCAL(script, script_local)
    locals.get_int(script, script_local)
end

function SET_HEADING(heading)
    ENTITY.SET_ENTITY_HEADING(GET_PLAYER_PED_ID(), heading)
end

function GET_HEADING()
    return ENTITY.GET_ENTITY_HEADING(GET_PLAYER_PED_ID())
end

function TELEPORT(x, y, z)
    PED.SET_PED_COORDS_KEEP_VEHICLE(GET_PLAYER_PED_ID(), x, y, z)
    -- natives.invoke_void("PED.SET_PED_COORDS_KEEP_VEHICLE", PLAYER.PLAYER_PED_ID(), x, y, z)
end

function SET_FLOAT_LOCAL(script, script_local, value)
    locals.set_float(script, script_local, value)
end

function GET_PLAYER_PED_ID()
    return PLAYER.PLAYER_PED_ID()
end

function spawn(name)
    command.call("spawn", { get_hash(name) })
    -- pc = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(GET_PLAYER_PED_ID(), 0, 5.0, 0);
    -- v = vehicle.create_vehicle(name, {pc.x, pc.y, pc.z}, true)
    -- gui.show_message("刷车中")
    -- STREAMING.REQUEST_MODEL(get_hash(name))
    -- while not STREAMING.HAS_MODEL_LOADED(get_hash(name)) do myYield() end
    -- -- pc = ENTITY.GET_ENTITY_COORDS(GET_PLAYER_PED_ID());
    -- pc = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(GET_PLAYER_PED_ID(), 0, 5.0, 0);
    -- local v = VEHICLE.CREATE_VEHICLE(get_hash(name),  pc.x, pc.y, pc.z , GET_HEADING(), true, false, false)
    -- STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(get_hash(name))
    -- myYield()
    -- MISC.GET_HASH_KEY("oppressor2")
    -- gui.show_message(GET_HEADING() .. "123456")
    -- gui.show_message("刷车成功")
end

function get_hash(name)
    -- return MISC.GET_HASH_KEY(name)
    return joaat(name)
end

---通过alice的lib获取
function getPlayerId()
    if mpx == "" then
        -- playerid = stats.stat_get_int("MPx_SCRIPT_INCREASE_STAM")
        -- local playerid = menu.current_character_slot()
        local playerid = STATS.STAT_GET_INT("MPPLY_LAST_MP_CHAR")
        -- local playerid = stats.get_int("MPPLY_LAST_MP_CHAR")
        -- local playerid = stats.get_character_index()
        -- local playerid = globals.get_int(1574918)
        mpx = "MP0_"
        if playerid == 1 then
            mpx = "MP1_"
        end
    end
    -- PlayerIndex = menu.current_character_slot()
    -- if PlayerIndex == 0 then
    --     mpx = "MP0_"
    -- else
    --     mpx = "MP1_"
    -- end
end

-- fm_mission_controller_2020=Cayo/Tuners/ULP/Agency;fm_mission_controller=Casino/Doomsday/Classic
function chk_script_host(scriptname)
    network.force_script_host(scriptname)
    -- if NETWORK.NETWORK_GET_HOST_OF_SCRIPT(scriptname, 0, 0) == PLAYER.PLAYER_ID() then return end
    -- network.force_script_host(scriptname)
    -- repeat script_util:yield() until NETWORK.NETWORK_GET_HOST_OF_SCRIPT(scriptname, 0, 0) == PLAYER.PLAYER_ID()
    -- gui.show_message("已成为".. scriptname .. "脚本主机")
end

function SET_INT_GLOBAL(int, value)
    globals.set_int(int, value)
end

----dc
function setEntrance(index)
    if not NETWORK.NETWORK_IS_SESSION_STARTED() then return end
    SET_INT_GLOBAL(1971696 + 1497 + 1017, index - 1)
end

function setExit(index)
    if not NETWORK.NETWORK_IS_SESSION_STARTED() then return end
    SET_INT_GLOBAL(1971696 + 1497 + 1018, index - 1)
end

function setBuyer(index)
    if not NETWORK.NETWORK_IS_SESSION_STARTED() then return end
    SET_INT_GLOBAL(1971696 + 1497 + 1019, (index * 3) - 3)
end

----dc--end

function myYield(ms)
    if ms > 0 then
        script_util:sleep(ms)
    else
        script_util:yield()
    end
end

---判断是否为玩家
---@param Ped Ped
---@return boolean
function IS_PED_PLAYER(Ped)
    if PED.GET_PED_TYPE(Ped) >= 4 then
        return false
    else
        return true
    end
end