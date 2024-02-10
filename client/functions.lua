
function CreateBlip(coords, sprite, color, alpha, scale, message)
    local blip = AddBlipForCoord(coords)
    
    SetBlipSprite(blip, sprite)
    SetBlipHighDetail(blip, true)
    SetBlipColour(blip, color)
    SetBlipAlpha(blip, alpha)
    SetBlipScale(blip, scale)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(message)
    EndTextCommandSetBlipName(blip)
    SetBlipAsShortRange(blip, true)
    
    return blip
end

function PlayAnim(dict, anim, flag, ped)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    TaskPlayAnim(ped or PlayerPedId(), dict, anim, 8.0, 8.0, 5.0, flag or 1, 0, true, true, false)
    RemoveAnimDict(dict)
end

function Draw3DText(x, y, z, textInput, fontId, scaleX, scaleY)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, true)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov
    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end


function ShowTooltip(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 0, -1)
end

function RemoveHandWeapons()
    SetCurrentPedWeapon(PlayerPedId(), -1569615261, true)
end

function DoRequestModel(model)
    local hash = GetHashKey(model)
    if HasModelLoaded(hash) then
        return
    end

    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Citizen.Wait(100)
    end
end


function Contains(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function Debug(message)
    if Config.debug then
        print(message)
    end
end


function L(text)
    if Locale and Locale[text] then
        return Locale[text]
    end

    return text
end
