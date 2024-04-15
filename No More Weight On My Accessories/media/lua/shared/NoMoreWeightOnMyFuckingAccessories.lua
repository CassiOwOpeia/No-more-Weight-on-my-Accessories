local function noMoreWeightOnMyFuckingAccessories()
	local itemList = getAllItems()
	local itemListSize = itemList:size()
	for i = itemListSize-1,0,-1 do
		local item = itemList:get(i)
		if item:isCosmetic() then
			item:DoParam("Weight = 0")
		end
	end
end

Events.OnPreMapLoad.Add(noMoreWeightOnMyFuckingAccessories)