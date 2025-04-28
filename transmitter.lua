--modem for storage
rednet.open("bottom")

--modem wireless ender modem for broadcast
rednet.open("right")

while true do
    local senderId, itemBroadcast = rednet.receive("itemBroadcast")
    local senderId, quantityBroadcast = rednet.receive("quantityBroadcast")
    local senderId, changeBroadcast = rednet.receive("changeBroadcast")

    stockMarketBroadcast = senderId.."\n"..itemBroadcast.."\n"..quantityBroadcast.."\n"..changeBroadcast

    rednet.broadcast(stockMarketBroadcast, "stockMarket")
end


