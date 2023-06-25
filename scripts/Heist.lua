local myTab = gui.get_tab("GUI_TAB_LUA_SCRIPTS")

PlayerIndex = STAT_GET_INT("MPPLY_LAST_MP_CHAR") mpx = PlayerIndex if PlayerIndex == 0 then mpx = "MP0_" else mpx = "MP1_" end

----Cayo----start
local Cayo1 = myTab:add_button("完成佩岛前置", function()
    STAT_SET_INT("H4_MISSIONS", -1)
    STAT_SET_INT("H4CNF_APPROACH", -1)
    STAT_SET_INT("H4CNF_TARGET", 5)
    STAT_SET_INT("H4CNF_BS_ENTR", 63)
    STAT_SET_INT("H4CNF_BS_GEN", 63)
end)

local Cayo2 = myTab:add_button("呼叫虎鲸", function()
    globals.set_int(2794162 + 960, 1)
end)

-- local Cayo3 = myTab:add_button("tp Kosatka board", function()
--     -- TELEPORT(1561.2369, 385.8771, -49.689915)
--     -- TELEPORT(-619.987, 282.960, 81.639)
--     -- if STAT_GET_INT("IH_SUB_OWNED") == 0 then
--     -- else
--     --     TELEPORT(1561.2369, 385.8771, -49.689915)
--     --     SET_HEADING(175)
--     --     STAT_SET_INT("H4_PROGRESS", 131055)
--     -- end
-- end)

-- 使用标签页对象的add_button函数创建一个按钮
local Cayo4 = myTab:add_button("佩岛全员135分红", function()
    globals.set_int(1978495 + 825 + 56 + 1, 135)
    globals.set_int(1978495 + 825 + 56 + 2, 135)
    globals.set_int(1978495 + 825 + 56 + 3, 135)
    globals.set_int(1978495 + 825 + 56 + 4, 135)
end)

-- local Cayo5 = myTab:add_button("传到大门", function()
--     TELEPORT(4974.189, -5703.279, 19.898539)
-- end)

-- local Cayo6 = myTab:add_button("传到主目标", function()
--     TELEPORT(5006.7, -5756.2, 14.8)
--     SET_HEADING(145)
-- end)

local Cayo7 = myTab:add_button("快速切割", function()
    SET_FLOAT_LOCAL("fm_mission_controller_2020", 29685 + 3, 100)
end, function()
    SET_FLOAT_LOCAL("fm_mission_controller_2020", 29685 + 3, 0)
end)

-- local Cayo8 = myTab:add_button("传到大门出口", function()
--     TELEPORT(4990.0386, -5717.6895, 19.880217)
--     SET_HEADING(50)
-- end)

-- local Cayo9 = myTab:add_button("传到海里", function()
--     TELEPORT(4771.479, -6165.737, -39.079613)
-- end)

----Cayo----end

----casino----start
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
    STAT_SET_INT("H3OPT_CREWWEAP", 4)
    STAT_SET_INT("H3OPT_CREWDRIVER", 3)
    STAT_SET_INT("H3OPT_CREWHACKER", 4)
    STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
    STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
    STAT_SET_INT("H3OPT_KEYLEVELS", 2)
    STAT_SET_INT("H3OPT_BITSET1", 799)
    STAT_SET_INT("H3OPT_BITSET0", 3670102)
end)

local casino2 = myTab:add_button("全员480%分红", function()
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 1, 480)
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 2, 480)
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 3, 480)
    SET_INT_GLOBAL(1971696 + 1497 + 736 + 92 + 4, 480)
end)

local casino3 = myTab:add_checkbox("循环移除NPC武器")
local casino30 = myTab:add_button("开始移除", function()
    while casino3:is_enabled() do
        for k, ent in pairs(ENTITY.get_all_peds_as_handles()) do
            if not IS_PED_PLAYER(ent) then
                -- if HostilePed then
                if PED.IS_PED_IN_COMBAT(ent, PLAYER.PLAYER_ID()) then
                    WEAPON.REMOVE_ALL_PED_WEAPONS(ent, true)
                end
                -- else
                --     WEAPON.REMOVE_ALL_PED_WEAPONS(ent, true)
                -- end
            end
        end
        script.sleep(1000)
    end
end)

local casino4 = myTab:add_button("跳指纹/密码锁", function()
    if GET_INT_LOCAL("fm_mission_controller", 52964) ~= 1 then
        SET_INT_LOCAL("fm_mission_controller", 52964, 5)
    end
    if GET_INT_LOCAL("fm_mission_controller", 54026) ~= 1 then
        SET_INT_LOCAL("fm_mission_controller", 54026, 5)
    end
end)

local casino5 = myTab:add_button("跳切割金库", function()
    SET_INT_LOCAL("fm_mission_controller", 10101 + 7, GET_INT_LOCAL("fm_mission_controller", 10101 + 37))
end)
----casino----end



function STAT_SET_INT(statName, value)
    STATS.STAT_SET_INT(MISC.GET_HASH_KEY(mpx .. statName),value,true)
end

function STAT_GET_INT(statName)
    local IntPTR = memory.allocate()
    STATS.STAT_GET_INT(MISC.GET_HASH_KEY(mpx .. statName), IntPTR, -1)
    return memory.get_address(IntPTR)
end

function SET_INT_LOCAL(script, script_local, value)
    locals.set_int(script, script_local, value)
end

function GET_INT_LOCAL(script, script_local)
    locals.get_int(script, script_local)
end

function SET_HEADING(heading)
    native.invoke_void("ENTITY.SET_ENTITY_HEADING", GET_PLAYER_PED_ID(),heading)
end

function TELEPORT(x, y, z)
    -- PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), x, y, z)
    native.invoke_void("PED.SET_PED_COORDS_KEEP_VEHICLE", GET_PLAYER_PED_ID(), x, y, z)
end

function SET_FLOAT_LOCAL(script, script_local, value)
    locals.set_float(script, script_local, value)
end

function GET_PLAYER_PED_ID()
    return native.invoke_int("PLAYER.PLAYER_PED_ID");
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


