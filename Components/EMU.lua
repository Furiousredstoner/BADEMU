EMU = {}
EMU.menu = false
EMU.Terminal = true

function load(filename)
EMU.Require = false 
print("Loading: "..filename)
File = io.open(ROMSList[1].."/"..filename..".ROM","rb")
print(ROMSList[1].."/"..filename..".ROM")
if not File then
  io.write("File Not Found:".."\n")
  EMU.Terminal = true
  GPU.Terminal = 1
  end
  table.insert(ROM.Data,File:read(("*a")))
end

function EMU.tick()   --what EMU Updates
if EMU.Terminal == true then
io.write("ROM Name: ")
ROMFN = io.read()
ROMSList = {"./ROMS"}
EMU.Terminal = false 
EMU.Require = true
end

if EMU.Terminal == false and GPU.Terminal == 1 then
GPU.Terminal = 2
end
if EMU.Require == true then
load(ROMFN)
end
end

