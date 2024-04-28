---@param name string
---@param waiter? boolean need wait
function jo.loadGameData(name,waiter)
	local model = (type(name) == "string") and joaat(name) or name
	if IsModelValid(model) then
		if not HasModelLoaded(model) then
			RequestModel(model)
			while waiter and not HasModelLoaded(model) do
				Wait(0)
			end
		end
		return
	end
	if DoesAnimDictExist(name) then
		if not HasAnimDictLoaded(name) then
			RequestAnimDict(name)
			while waiter and not HasAnimDictLoaded(name) do
				Wait(0)
			end
		end
    return
	end
	if DoesStreamedTextureDictExist(name) then
		if not HasStreamedTextureDictLoaded(name) then
			RequestStreamedTextureDict(name, true)
			while waiter and not HasStreamedTextureDictLoaded(name) do
				Wait(0)
			end
		end
		return
	end
end

---@param name string
function jo.releaseGameData(name)
	local model = (type(name) == "string") and joaat(name) or name
	if IsModelValid(model) then
		if HasModelLoaded(model) then
			SetModelAsNoLongerNeeded(model)
		end
		return
	end
	if DoesStreamedTextureDictExist(name) then
		if HasStreamedTextureDictLoaded(name) then
		end
		return
	end
	if DoesAnimDictExist(name) then
		if not HasAnimDictLoaded(name) then
			if HasAnimDictLoaded(name) then
				RemoveAnimDict(name)
			end
		end
	end
end