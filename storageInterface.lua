local success, errorMessage = pcall(function()
    fs.copy("disk/startup.lua", "startup.lua")
end)

if success then
end

-- Wrap the chest and modem peripherals
local chest = peripheral.wrap("back")
local modem = rednet.open("top")


while true do
    local item = chest.list()[2]
    local oldCount = item.count

    sleep(10)

    local item = chest.list()[2]
    local newCount = item.count

    change = newCount - oldCount

    itemBroadcast = item.name
    quantityBroadcast = "quantity:".. newCount
    changeBroadcast = "change:".. change


    if item then
        rednet.broadcast(itemBroadcast, "itemBroadcast")
        rednet.broadcast(quantityBroadcast, "quantityBroadcast")
        rednet.broadcast(changeBroadcast, "changeBroadcast")
    end
end
