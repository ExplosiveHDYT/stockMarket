rednet.open("top")
while true do
    local senderID, message, protocol = rednet.receive("stockMarket")
    print("ID:", senderID)
    print("ID:", message)
end
