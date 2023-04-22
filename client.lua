--玩家使用命令ISLAE1时显示航图
-- RegisterCommand('islae1', function()
--     SendNUIMessage({
--         image  = "ISLAE1"
--     })
--     SetNuiFocus(true)
-- 	SetNuiFocusKeepInput(false)
-- end
-- , false)

--创建menuv菜单，让玩家选择想要显示的航图
local imagemenu = MenuV:CreateMenu('查看航图', '按退格键关闭', 'topleft', 155, 0, 0, 'size-110', 'default', 'menuv', 'default')
local lsia = MenuV:CreateMenu('洛圣都国际机场', '按退格键关闭', 'topleft', 155, 0, 0)
local perico = MenuV:CreateMenu('Menuv', 'Perico', 'topleft', 155, 0, 0)
local perryport = MenuV:CreateMenu('佩里托湾', '按退格键关闭', 'topleft', 155, 0, 0)
local TIA = MenuV:CreateMenu('Menuv', 'TIA', 'topleft', 155, 0, 0)
local sandyshores = MenuV:CreateMenu('沙滩海岸', '按退格键关闭', 'topleft', 155, 0, 0)
local sankudo = MenuV:CreateMenu('桑库多', '按退格键关闭', 'topleft', 155, 0, 0)
local sanandreas = MenuV:CreateMenu('旧金山', '按退格键关闭', 'topleft', 155, 0, 0)
local losangles = MenuV:CreateMenu('Menuv', 'Los Angles', 'topleft', 155, 0, 0)
local lasvegas = MenuV:CreateMenu('拉斯维加斯', '按退格键关闭', 'topleft', 155, 0, 0)

--创建各个机场的子菜单按钮
local lsiabutton = imagemenu:AddButton({ icon = '😃', label = '洛圣都国际机场', value = lsia, description = 'Los Santos International Airport' })
local pericobutton = imagemenu:AddButton({ icon = '😃', label = '佩里科岛暂不开放', value = perico, description = 'Cayo Perico' ,disabled = true})
local perryportbutton = imagemenu:AddButton({ icon = '😃', label = '佩里托湾', value = perryport, description = 'Pelito Bay airport' })
local TIAbutton = imagemenu:AddButton({ icon = '😃', label = 'TIA', value = TIA, description = '发电厂机场' })
local sandyshoresbutton = imagemenu:AddButton({ icon = '😃', label = '沙滩海岸', value = sandyshores, description = '沙滩海岸' })
local sankudobutton = imagemenu:AddButton({ icon = '😃', label = '桑库多', value = sankudo, description = '桑库多' })
local sanandreasbutton = imagemenu:AddButton({ icon = '😃', label = '旧金山', value = sanandreas, description = '圣安地列斯机场' })
local losanglesbutton = imagemenu:AddButton({ icon = '😃', label = 'Los Angles', value = losangles, description = '洛杉矶机场' })
local lasvegasbutton = imagemenu:AddButton({ icon = '😃', label = '拉斯维加斯', value = lasvegas, description = '拉斯维加斯机场' })

local function opening(image,airport)
    --在航图显示时，按下退格键关闭航图
    Citizen.CreateThread(function()
        Citizen.Wait(0)
        SetNuiFocus(false)
        --调用chat，提示玩家按下退格键关闭航图
        TriggerEvent('chat:addMessage', {
            color = { 255, 255, 255},
            multiline = true,
            args = {"按下退格键关闭航图，按一下关不上就多按几次"}
        })
        
        while true do
            if IsControlJustPressed(0, 194) then
                SetNuiFocus(false)
                SendNUIMessage({
                    show = false;
                    image = image;
                    airport = airport;
                })
                -- print("in" .. airport)
                print("close" .. image)
                --关闭菜单
                MenuV:CloseMenu(imagemenu)
            end
            
            Citizen.Wait(10)
        end
    end)
end
--在各个机场的子菜单中添加航图按钮
--lsia
    local ISLAE1 = lsia:AddButton({ icon = '😃', label = 'ISLAE1', value = 'ISLAE1', description = 'LSIA' })
    ISLAE1:On('select', function()
        SendNUIMessage({
            image  = "ISLAE1";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("ISLAE1","LSIA")
    end)
    local starrwy30rz = lsia:AddButton({ icon = '😃', label = 'STAR RWY30RZ', value = 'STARRWY30RZ', description = 'LSIA' })
    starrwy30rz:On('select', function()
        SendNUIMessage({
            image  = "STARRWY30RZ";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY30RZ","LSIA")
    end)
    local starrwy21z = lsia:AddButton({ icon = '😃', label = 'STAR RWY21Z', value = 'STARRWY21Z', description = 'LSIA' })
    starrwy21z:On('select', function()
        SendNUIMessage({
            image  = "STARRWY21Z";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY21Z","LSIA")
    end)
    local starrwy21y = lsia:AddButton({ icon = '😃', label = 'STAR RWY21Y', value = 'STARRWY21Y', description = 'LSIA' })
    starrwy21y:On('select', function()
        SendNUIMessage({
            image  = "STARRWY21Y";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY21Y","LSIA")
    end)
    local lsiaground = lsia:AddButton({ icon = '😃', label = 'LSIA GROUND', value = 'LSIAGROUND', description = 'LSIA' })
    lsiaground:On('select', function()
        SendNUIMessage({
            image  = "LSIAGROUND";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("LSIAGROUND","LSIA")
    end)
    local GLEN1 = lsia:AddButton({ icon = '😃', label = 'GLEN1', value = 'GLEN1', description = 'LSIA' })
    GLEN1:On('select', function()
        SendNUIMessage({
            image  = "GLEN1";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("GLEN1","LSIA")
    end)
    local starrwy12rz = lsia:AddButton({ icon = '😃', label = 'STAR RWY12RZ', value = 'STARRWY12RZ', description = 'LSIA' })
    starrwy12rz:On('select', function()
        SendNUIMessage({
            image  = "STARRWY12RZ";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY12RZ","LSIA")
    end)
    local starrwy03z = lsia:AddButton({ icon = '😃', label = 'STAR RWY03Z', value = 'STARRWY03Z', description = 'LSIA' })
    starrwy03z:On('select', function()
        SendNUIMessage({
            image  = "STARRWY03Z";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY03Z","LSIA")
    end)
    local starrwy30lz = lsia:AddButton({ icon = '😃', label = 'STAR RWY30LZ', value = 'STARRWY30LZ', description = 'LSIA' })
    starrwy30lz:On('select', function()
        SendNUIMessage({
            image  = "STARRWY30LZ";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY30LZ","LSIA")
    end)
    local dc302 = lsia:AddButton({ icon = '😃', label = 'DC302', value = 'DC302', description = 'LSIA' })
    dc302:On('select', function()
        SendNUIMessage({
            image  = "DC302";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("DC302","LSIA")
    end)
    local starrwy12lz = lsia:AddButton({ icon = '😃', label = 'STAR RWY12LZ', value = 'STARRWY12LZ', description = 'LSIA' })
    starrwy12lz:On('select', function()
        SendNUIMessage({
            image  = "STARRWY12LZ";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("STARRWY12LZ","LSIA")
    end)

    local islae2 = lsia:AddButton({ icon = '😃', label = 'ISLAE2', value = 'ISLAE2', description = 'LSIA' })
    islae2:On('select', function()
        SendNUIMessage({
            image  = "ISLAE2";
            show = true;
        })
        SetNuiFocus(true)
        SetNuiFocusKeepInput(false)
        opening("ISLAE2","LSIA")
    end)

--佩里托湾航图，使用对象数组储存各个元素
local perryportitem = {};
perryportitem[1] = {button = perryport:AddButton({ icon = '😃', label = '地面', value = 'PERRYPORTGROUND', description = 'PERRYPORTGROUND' }), image = 'PERRYPORTGROUND',jslable = '#PERRYPORTGROUND', url ="http://server.hjdczy.top:2333/fivem_image/PERRYPORTGROUND.jpg" }
perryportitem[2] = {button = perryport:AddButton({ icon = '😃', label = 'SID ELECT', value = 'SIDELECT', description = 'SIDELECT' }), image = 'SIDELECT',jslable = '#SIDELECT', url ="http://server.hjdczy.top:2333/fivem_image/SIDELECT.jpg" }
perryportitem[3] = {button = perryport:AddButton({ icon = '😃', label = 'SID DISNI', value = 'SIDDISNI', description = 'SIDDISNI' }), image = 'SIDDISNI',jslable = '#SIDDISNI', url ="http://server.hjdczy.top:2333/fivem_image/SIDDISNI.jpg" }
perryportitem[4] = {button = perryport:AddButton({ icon = '😃', label = 'STAR 24RZ', value = 'STAR24RZ', description = 'STAR24RZ' }), image = 'STAR24RZ',jslable = '#STAR24RZ', url ="http://server.hjdczy.top:2333/fivem_image/STAR24RZ.jpg" }
perryportitem[5] = {button = perryport:AddButton({ icon = '😃', label = 'STAR 06LZ', value = 'STAR06LZ', description = 'STAR06LZ' }), image = 'STAR06LZ',jslable = '#STAR06LZ', url ="http://server.hjdczy.top:2333/fivem_image/STAR06LZ.jpg" }
--循环遍历对象数组，为每个元素添加事件
Citizen.CreateThread(function()
    for i = 1, #perryportitem do
        perryportitem[i].button:On('select', function()
            SendNUIMessage({
                airport = "PERRYPORT";
                image  = perryportitem[i].image;
                show = true;
                jslable = perryportitem[i].jslable;
                url = perryportitem[i].url;
            })
            SetNuiFocus(true)
            SetNuiFocusKeepInput(false)
            opening(perryportitem[i].image,"PERRYPORT")
        end)
    end
end)

--沙滩海岸航图，使用对象数组储存各个元素
local sandyshoresitem = {};
sandyshoresitem[1] = {button = sandyshores:AddButton({ icon = '😃', label = '地面', value = 'SANDYSHORESGROUND', description = 'SANDYSHORESGROUND' }), image = 'SANDYSHORESGROUND',jslable = '#SANDYSHORESGROUND', url ="http://server.hjdczy.top:2333/fivem_image/SANDYSHORESGROUND.jpg" }
--RACER1
sandyshoresitem[2] = {button = sandyshores:AddButton({ icon = '😃', label = 'RACER1', value = 'RACER1', description = 'RACER1' }), image = 'RACER1',jslable = '#RACER1', url ="http://server.hjdczy.top:2333/fivem_image/RACER1.jpg" }
--STARRWY01LZ
sandyshoresitem[3] = {button = sandyshores:AddButton({ icon = '😃', label = 'STAR RWY01LZ', value = 'STARRWY01LZ', description = 'STARRWY01LZ' }), image = 'STARRWY01LZ',jslable = '#STARRWY01LZ', url ="http://server.hjdczy.top:2333/fivem_image/STARRWY01LZ.jpg" }
--STARRWY19RCIR
sandyshoresitem[4] = {button = sandyshores:AddButton({ icon = '😃', label = 'STAR RWY19RCIR', value = 'STARRWY19RCIR', description = 'STARRWY19RCIR' }), image = 'STARRWY19RCIR',jslable = '#STARRWY19RCIR', url ="http://server.hjdczy.top:2333/fivem_image/STARRWY19RCIR.jpg" }
--MALBU1
sandyshoresitem[5] = {button = sandyshores:AddButton({ icon = '😃', label = 'MALBU1', value = 'MALBU1', description = 'MALBU1' }), image = 'MALBU1',jslable = '#MALBU1', url ="http://server.hjdczy.top:2333/fivem_image/MALBU1.jpg" }
--循环遍历对象数组，为每个元素添加事件
Citizen.CreateThread(function()
    for i = 1, #sandyshoresitem do
        sandyshoresitem[i].button:On('select', function()
            SendNUIMessage({
                airport = "SANDYSHORES";
                image  = sandyshoresitem[i].image;
                show = true;
                jslable = sandyshoresitem[i].jslable;
                url = sandyshoresitem[i].url;
            })
            SetNuiFocus(true)
            SetNuiFocusKeepInput(false)
            opening(sandyshoresitem[i].image,"SANDYSHORES")
        end)
    end
end)

--桑库多航图，使用对象数组储存各个元素
local sankudoitem = {};
sankudoitem[1] = {button = sankudo:AddButton({ icon = '😃', label = '地面', value = 'SANKUDOGROUND', description = 'SANKUDOGROUND' }), image = 'SANKUDOGROUND',jslable = '#SANKUDOGROUND', url ="http://server.hjdczy.top:2333/fivem_image/SANKUDOGROUND.jpg" }
--STARRWY30WZ
sankudoitem[2] = {button = sankudo:AddButton({ icon = '😃', label = 'STAR RWY30WZ', value = 'STARRWY30WZ', description = 'STARRWY30WZ' }), image = 'STARRWY30WZ',jslable = '#STARRWY30WZ', url ="http://server.hjdczy.top:2333/fivem_image/STARRWY30WZ.jpg" }
--ELECT1
sankudoitem[3] = {button = sankudo:AddButton({ icon = '😃', label = 'ELECT1', value = 'ELECT1', description = 'ELECT1' }), image = 'ELECT1',jslable = '#ELECT1', url ="http://server.hjdczy.top:2333/fivem_image/ELECT1.jpg" }
--STARRWY30EZ
sankudoitem[4] = {button = sankudo:AddButton({ icon = '😃', label = 'STAR RWY30EZ', value = 'STARRWY30EZ', description = 'STARRWY30EZ' }), image = 'STARRWY30EZ',jslable = '#STARRWY30EZ', url ="http://server.hjdczy.top:2333/fivem_image/STARRWY30EZ.jpg" }
--ELECT2
sankudoitem[5] = {button = sankudo:AddButton({ icon = '😃', label = 'ELECT2', value = 'ELECT2', description = 'ELECT2' }), image = 'ELECT2',jslable = '#ELECT2', url ="http://server.hjdczy.top:2333/fivem_image/ELECT2.jpg" }
--循环遍历对象数组，为每个元素添加事件
Citizen.CreateThread(function()
    for i = 1, #sankudoitem do
        sankudoitem[i].button:On('select', function()
            SendNUIMessage({
                airport = "SANKUDO";
                image  = sankudoitem[i].image;
                show = true;
                jslable = sankudoitem[i].jslable;
                url = sankudoitem[i].url;
            })
            SetNuiFocus(true)
            SetNuiFocusKeepInput(false)
            opening(sankudoitem[i].image,"SANKUDO")
        end)
    end
end)

--对于LASVAEGAS航图，使用对象数组储存各个元素
local lasvegasitem = {};
lasvegasitem[1] = {button = lasvegas:AddButton({ icon = '😃', label = '地面', value = 'LASVEGASGROUND', description = 'LASVEGASGROUND' }), image = 'LASVEGASGROUND',jslable = '#LASVEGASGROUND', url ="http://server.hjdczy.top:2333/fivem_image/LASVEGASGROUND.jpg" }
--PANGO
lasvegasitem[2] = {button = lasvegas:AddButton({ icon = '😃', label = 'PANGO', value = 'PANGO', description = 'PANGO' }), image = 'PANGO',jslable = '#PANGO', url ="http://server.hjdczy.top:2333/fivem_image/PANGO.jpg" }
--STARRWY18Z
lasvegasitem[3] = {button = lasvegas:AddButton({ icon = '😃', label = 'STAR RWY18Z', value = 'STARRWY18Z', description = 'STARRWY18Z' }), image = 'STARRWY18Z',jslable = '#STARRWY18Z', url ="http://server.hjdczy.top:2333/fivem_image/STARRWY18Z.jpg" }
--循环遍历对象数组，为每个元素添加事件
Citizen.CreateThread(function()
    for i = 1, #lasvegasitem do
        lasvegasitem[i].button:On('select', function()
            SendNUIMessage({
                airport = "LASVEGAS";
                image  = lasvegasitem[i].image;
                show = true;
                jslable = lasvegasitem[i].jslable;
                url = lasvegasitem[i].url;
            })
            SetNuiFocus(true)
            SetNuiFocusKeepInput(false)
            opening(lasvegasitem[i].image,"LASVEGAS")
        end)
    end
end)
--对于san andreas航图，使用对象数组储存各个元素
local sanandreasitem = {};
sanandreasitem[1] = {button = sanandreas:AddButton({ icon = '😃', label = '地面', value = 'SANANDREASGROUND', description = 'SANANDREASGROUND' }), image = 'SANANDREASGROUND',jslable = '#SANANDREASGROUND', url ="http://server.hjdczy.top:2333/fivem_image/SANANDREASGROUND.jpg" }
--循环遍历对象数组，为每个元素添加事件
Citizen.CreateThread(function()
    for i = 1, #sanandreasitem do
        sanandreasitem[i].button:On('select', function()
            SendNUIMessage({
                airport = "SANANDREAS";
                image  = sanandreasitem[i].image;
                show = true;
                jslable = sanandreasitem[i].jslable;
                url = sanandreasitem[i].url;
            })
            SetNuiFocus(true)
            SetNuiFocusKeepInput(false)
            opening(sanandreasitem[i].image,"SANANDREAS")
        end)
    end
end)


--当输入命令/image时打开菜单
RegisterCommand('image', function()
    MenuV:OpenMenu(imagemenu)

end, false)
--绑定一个按键“6”打开菜单
RegisterKeyMapping('image', '打开航图菜单', 'keyboard', '6')