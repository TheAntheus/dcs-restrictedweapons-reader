--DCS RestrictedWeapons Reader
--For Lua 5.4
--Made by Antheus

local version = 1.00

--Create Output File
local outputFile = io.open("output.csv","w")
outputFile:write("Weapon,Cost,Category\n")
print("Created Output File: output.csv\n")

--Get Input File
io.write("Enter Input File Path: ")
local inputFilePath = io.read()
dofile(inputFilePath)
print("\nInput File Path: "..inputFilePath)

--Make File With Data
local weaponName = ""
local weaponCost = ""
local weaponCategory = ""
for k,v in pairs(restrictedweapons) do
	weaponName = k
	weaponTable = restrictedweapons[weaponName]
	weaponCost = weaponTable["cost"]
	weaponCategory = weaponTable["category"]
	print("Weapon Name: "..weaponName)
	print("\tWeapon Cost: "..weaponCost)
	print("\tWeapon Category: "..weaponCategory.."\n")
	outputFile:write(weaponName..","..weaponCost..","..weaponCategory.."\n")
end

print("Done!")