
local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}


ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


local randomarac = {
    {x = 676.9,y = -1077.22,z = 21.9}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(randomarac) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, randomarac[k].x, randomarac[k].y, randomarac[k].z)
            if IsPedInAnyVehicle(GetPlayerPed(-1), true) then

            if dist <= 2 then
              --  DrawMarker(20, randomarac[k].x, randomarac[k].y, randomarac[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 222, 222, 222, 0, 0, 0, 0)
            DrawText3Ds(676.9, -1077.22, 21.9, "[E] - Aracı rastgele boyat")
            if IsControlPressed(0, Keys['E']) then
                local finished = exports["frkn-taskbar"]:taskBar(3000,"Aracın boyanıyor")
                TriggerEvent("notification","Aracın boyandı", 1)


        
            local luck = math.random(1,100)
            local ped = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(ped, false)
            
            if luck >= 0 and luck <= 5 then
                SetVehicleColours(vehicle, luck)
             elseif luck > 5 and luck <= 10 then
                SetVehicleColours(vehicle, luck)
             elseif luck > 10 and luck <= 20 then
             SetVehicleColours(vehicle, luck)
                elseif luck > 20 and luck <= 30 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 30 and luck <= 40 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 40 and luck <= 50 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 50 and luck <= 60 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 60 and luck <= 70 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 70 and luck <= 80 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 80 and luck <= 90 then
                SetVehicleColours(vehicle, luck)
            elseif luck > 90 and luck <= 100 then
                SetVehicleColours(vehicle, luck)
            end
            TriggerServerEvent('paraal', source)
        end
    end
end
end
end
end)


function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
  
  end
  


  Citizen.CreateThread(function()
	RequestModel(Config.NPCHash)
		while not HasModelLoaded(Config.NPCHash) do
			Wait(1)
		end

		meth_dealer_seller = CreatePed(1, Config.NPCHash, Config.NPCShop.x, Config.NPCShop.y, Config.NPCShop.z, Config.NPCShop.h, false, true)
		SetBlockingOfNonTemporaryEvents(meth_dealer_seller, true)
		SetPedDiesWhenInjured(meth_dealer_seller, false)
		SetPedCanPlayAmbientAnims(meth_dealer_seller, true)
		SetPedCanRagdollFromPlayerImpact(meth_dealer_seller, false)
		SetEntityInvincible(meth_dealer_seller, true)
		FreezeEntityPosition(meth_dealer_seller, true)
		TaskStartScenarioInPlace(meth_dealer_seller, "WORLD_HUMAN_SMOKING", 0, true);
end)
