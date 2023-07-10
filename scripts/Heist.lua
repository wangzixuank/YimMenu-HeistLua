-- v1.73 -- 感谢Alice和sch的指导
local tabName = "Heist by wang"
local myTab = gui.add_tab(tabName)
-- local myTab = gui.get_tab(tabName)

-- package.path = os.getenv("UserProfile").."/AppData/Roaming/YimMenu/scripts/?.lua"
require("Alice-lib/lib")
Alice = {}
--""不能用就改为"MP0_"或者改为"MP1_"试一下
local mpx = ""
myTab:add_separator()

-- myTab:add_button("test", function()
--     getPlayerId()
--     log.info(mpx)
-- end)
----Cayo----start
myTab:add_text("佩岛") 
local Cayo1 = myTab:add_button("完成佩岛前置", function()
    STAT_SET_INT("H4_PROGRESS", 131055)
    STAT_SET_INT("H4CNF_TARGET", 5)
    STAT_SET_INT("H4_MISSIONS", -1)
    STAT_SET_INT("H4CNF_APPROACH", -1)
    STAT_SET_INT("H4CNF_BS_ENTR", 63)
    -- STAT_SET_INT("H4CNF_BS_GEN", 63)
    gui.show_message("写入完成", "远离计划面板并重新接近以刷新面板")
end)

myTab:add_sameline()

local Cayo2 = myTab:add_button("呼叫虎鲸", function()
    globals.set_int(2794162 + 960, 1)
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

myTab:add_sameline()

-- 使用标签页对象的add_button函数创建一个按钮
local Cayo4 = myTab:add_button("佩岛全员135分红", function()
    globals.set_int(1978495 + 825 + 56 + 1, 135)
    globals.set_int(1978495 + 825 + 56 + 2, 135)
    globals.set_int(1978495 + 825 + 56 + 3, 135)
    globals.set_int(1978495 + 825 + 56 + 4, 135)
end)

myTab:add_sameline()

local Cayo5 = myTab:add_button("传到大门", function()
    TELEPORT(4974.189, -5703.279, 19.898539)
end)

myTab:add_sameline()

local Cayo6 = myTab:add_button("传到主目标", function()
    TELEPORT(5006.7, -5756.2, 14.8)
    SET_HEADING(145)
end)

myTab:add_sameline()

local Cayo7 = myTab:add_button("快速切割", function()
    SET_FLOAT_LOCAL("fm_mission_controller_2020", 29685 + 3, 100)
end, function()
    SET_FLOAT_LOCAL("fm_mission_controller_2020", 29685 + 3, 0)
end)

myTab:add_sameline()

local Cayo8 = myTab:add_button("传到大门出口", function()
    TELEPORT(4990.0386, -5717.6895, 19.880217)
    SET_HEADING(50)
end)

myTab:add_sameline()

local Cayo80 = myTab:add_button("生成图拉尔多", function()
    spawn("TOREADOR")
end)

myTab:add_sameline()

local Cayo9 = myTab:add_button("传到海里", function()
    TELEPORT(4771.479, -6165.737, -39.079613)
end)

----Cayo----end--------------------------------------------------------
myTab:add_separator()

----casino----start
myTab:add_text("赌场") 

local casino10 = myTab:add_button("游戏厅前门口", function()
    TELEPORT(-619.987, 282.960, 81.639)
end)

myTab:add_sameline()

local casino1 = myTab:add_button("完成气势汹汹前置", function()
    STAT_SET_INT("H3_COMPLETEDPOSIX", -1)
    STAT_SET_INT("H3OPT_MASKS", 4)
    STAT_SET_INT("H3OPT_WEAPS", 1)
    STAT_SET_INT("H3OPT_VEHS", 3)
    STAT_SET_INT("CAS_HEIST_FLOW", -1)
    STAT_SET_INT("H3_LAST_APPROACH", 0)
    STAT_SET_INT("H3OPT_APPROACH", 3)
    STAT_SET_INT("H3_HARD_APPROACH", 0)
    STAT_SET_INT("H3OPT_TARGET", 3)
    STAT_SET_INT("H3OPT_POI", 1023)
    STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
    STAT_SET_INT("H3OPT_CREWWEAP", 4)--枪手10%
    STAT_SET_INT("H3OPT_CREWDRIVER", 5)--车手10%
    STAT_SET_INT("H3OPT_CREWHACKER", 4)--黑客10%
    STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
    STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
    STAT_SET_INT("H3OPT_KEYLEVELS", 2)
    STAT_SET_INT("H3OPT_BITSET1", 799)
    STAT_SET_INT("H3OPT_BITSET0", 3670102)
    gui.show_message("写入完成")
end)

myTab:add_sameline()

local casino2 = myTab:add_button("全员480%分红", function()
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 1, 480)
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 2, 480)
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 3, 480)
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 4, 480)
    --设置面板
    -- setBuyer(3)
    -- setEntrance(11)
    -- setExit(2)
    --设置面板--end
end)

myTab:add_sameline()

local Cayo6 = myTab:add_button("传送到下水道", function()
    TELEPORT(1034.9442, -271.90024, 50.37195)
end)
myTab:add_sameline()

myTab:add_button("一键拿取115w", function()
    chk_script_host("fm_mission_controller")
    SET_INT_LOCAL("fm_mission_controller", 19710 + 2686, 1150000)
end)
myTab:add_sameline()

local casino40 = myTab:add_button("生成骷髅马", function()
    spawn("KURUMA2")
end)
myTab:add_sameline()

local casino4 = myTab:add_button("跳指纹/密码锁", function()
    if GET_INT_LOCAL("fm_mission_controller", 52964) ~= 1 then
        SET_INT_LOCAL("fm_mission_controller", 52964, 5)
    end
    if GET_INT_LOCAL("fm_mission_controller", 54026) ~= 1 then
        SET_INT_LOCAL("fm_mission_controller", 54026, 5)
    end
end)

myTab:add_sameline()

local casino5 = myTab:add_button("跳切割金库", function()
    SET_INT_LOCAL("fm_mission_controller", 10101 + 7, GET_INT_LOCAL("fm_mission_controller", 10101 + 37))
end)
----casino----end--------------------------------

myTab:add_separator()

----domms----start
myTab:add_text("末日") 

myTab:add_button("完成末日一前置", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 503)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229383)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
myTab:add_sameline()

myTab:add_button("完成末日二前置", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 240)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229378)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
myTab:add_sameline()

myTab:add_button("完成末日三前置", function()
    STAT_SET_INT("GANGOPS_FLOW_MISSION_PROG", 16368)
    STAT_SET_INT("GANGOPS_HEIST_STATUS", -229380)
    STAT_SET_INT("GANGOPS_FLOW_NOTIFICATIONS", 1557)
end)
myTab:add_sameline()


----从 sch 抄的 https://github.com/sch-lda/SCH-LUA-YIMMENU/blob/main/sch.lua
myTab:add_button("设施计划屏幕", function()
    local PlayerPos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), 0.0, 0.52, 0.0)
    local intr = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)
    if intr == 269313 then 
        if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(428)) then
            TELEPORT(350.69284, 4872.308, -60.794243)
            SET_HEADING(-50)
        end
    else
        gui.show_message("确保自己在设施内","请先进入设施再传送到计划屏幕")
        tpfac()
    end
    
end)
myTab:add_sameline()

local domms = myTab:add_input_int("分红")
myTab:add_sameline()

myTab:add_button("设置全员分红", function()
    SET_INT_GLOBAL(1967630 + 812 + 50 + 1, domms:get_value())
    SET_INT_GLOBAL(1967630 + 812 + 50 + 2, domms:get_value())
    SET_INT_GLOBAL(1967630 + 812 + 50 + 3, domms:get_value())
    SET_INT_GLOBAL(1967630 + 812 + 50 + 4, domms:get_value())
end)
myTab:add_sameline()

myTab:add_button("破解末日里的小游戏", function()
    SET_INT_LOCAL("fm_mission_controller", 1509, 3)
    SET_INT_LOCAL("fm_mission_controller", 1540, 2)
    SET_INT_LOCAL("fm_mission_controller", 1266 + 135, 3)
end)
----domms----end-------------------------------------

myTab:add_separator()
-----qita
myTab:add_text("末日/赌场/公寓") 

myTab:add_button("设置团队生命数100", function()
    menu.instant_heist_team_life("fm_mission_controller", 100)
    -- chk_script_host("fm_mission_controller")
    -- SET_INT_LOCAL("fm_mission_controller", 26136 + 1325 + 1, 100)
end)
myTab:add_sameline()
-----qita----end---

function STAT_SET_INT(statName, value)
    getPlayerId()
    STATS.STAT_SET_INT(get_hash(mpx .. statName),value,true)
end

function STAT_GET_INT(statName)
    getPlayerId()
    -- local IntPTR = memory.allocate()
    -- STATS.STAT_GET_INT(get_hash(mpx .. statName), IntPTR, -1)
    -- return memory.ptr_to_handle(IntPTR)
    return stats.stat_get_int(mpx .. statName)
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
    command.call("spawn", {get_hash(name)})
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
        mpx = stats.stat_get_int("MPx_SCRIPT_INCREASE_STAM")
        -- local playerid = globals.get_int(1574918)
        mpx = "MP0_"
        if not playerid == 0 then 
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
    if NETWORK.NETWORK_GET_HOST_OF_SCRIPT(scriptname, 0, 0) == PLAYER.PLAYER_ID() then return end
    network.force_script_host(scriptname)
    repeat myYield() until NETWORK.NETWORK_GET_HOST_OF_SCRIPT(scriptname, 0, 0) == PLAYER.PLAYER_ID()
    gui.show_message("已成为".. scriptname .. "脚本主机")
end

function SET_INT_GLOBAL(int,value)
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


