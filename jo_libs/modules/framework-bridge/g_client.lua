--Apply skin
RegisterNetEvent("rsg-appearance:client:ApplyClothes")
AddEventHandler("rsg-appearance:client:ApplyClothes", function(clothes, ped, skin)
  ped = ped or PlayerPedId()
  TriggerServerEvent("jo_libs:server:applySkinAndClothes", ped, skin, clothes)
end)

RegisterNetEvent('rdr_clothes_store:ApplyClothes')
AddEventHandler('rdr_clothes_store:ApplyClothes', function(clothes, ped, skin)
  ped = ped or PlayerPedId()
  TriggerServerEvent("jo_libs:server:applySkinAndClothes", ped, skin, clothes)
end)

RegisterNetEvent("rsg-clothes:ApplyClothes")
AddEventHandler("rsg-clothes:ApplyClothes", function(clothes, ped, skin)
  ped = ped or PlayerPedId()
  TriggerServerEvent("jo_libs:server:applySkinAndClothes'", ped, skin, clothes)
end)

RegisterNetEvent("qr-clothes:ApplyClothes")
AddEventHandler("qr-clothes:ApplyClothes", function(clothes, ped, skin)
  ped = ped or PlayerPedId()
  TriggerServerEvent("jo_libs:server:applySkinAndClothes", ped, skin, clothes)
end)

RegisterNetEvent('redemrp_clothing:load')
AddEventHandler('redemrp_clothing:load', function(clothes, ped, skin)
  ped = ped or PlayerPedId()
  TriggerServerEvent("jo_libs:server:applySkinAndClothes", ped, skin, clothes)
end)

RegisterNetEvent("rdr_creator:SkinLoaded")
AddEventHandler("rdr_creator:SkinLoaded", function(skin,ped,clothes)
  ped = ped or PlayerPedId()
  TriggerServerEvent("jo_libs:server:applySkinAndClothes", ped, skin, clothes)

end)
