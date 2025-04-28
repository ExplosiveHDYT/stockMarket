-- installer.lua
local url = {
  storageInterface = "https://raw.githubusercontent.com/ExplosiveHDYT/stockMarket/refs/heads/main/storageInterface.lua",
  tickers = "https://raw.githubusercontent.com/ExplosiveHDYT/stockMarket/refs/heads/main/ticker.lua",
  transmitter = "https://raw.githubusercontent.com/ExplosiveHDYT/stockMarket/refs/heads/main/transmitter.lua",
}

for name, link in pairs(url) do
  print(name)
end

print("insert package name")
local name = read()

print("Install " .. name .. " as startup.lua? (y/n)")
if read() == "y" then
  if fs.exists("startup.lua") then
    fs.delete("startup.lua")
  end
  shell.run("pastebin", "get", "E3VPCMnz", "mirror.lua")
  shell.run("wget", url[name], "startup.lua")
  print("Done.")
else
  print("Cancelled.")
end
