-- PHILIP'S FILER 2.0      © ALLE RETTIGHEDR      KAN KØBES HER: https://discord.gg/cWyYnB2nAB
--[[

	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( 197.48, -886.48, 30.71, GetEntityCoords(GetPlayerPed(-1))) < 15.0 then
			Draw3DText( 197.48, -886.48, 30.71  -1.400, "Script Lige af  ~r~VIVOS FiveM Butik", 4, 0.1, 0.1)
			Draw3DText( 197.48, -886.48, 30.71  -1.600, "© Join da Lige Discorden", 4, 0.1, 0.1)
			Draw3DText( 197.48, -886.48, 30.71  -1.800, "https://discord.gg/vwZ6eMZFme", 4, 0.1, 0.1)		
		end		
				--Hologram No. 2
		if GetDistanceBetweenCoords( 224.66, -788.00, 31.73, GetEntityCoords(GetPlayerPed(-1))) < 27.0 then
			Draw3DText( 224.66, -788.00, 31.73  -1.400, "~g~GREENZONE!", 4, 0.1, 0.1)
			Draw3DText( 224.66, -788.00, 31.73  -1.600, "Ingen våben i denne garage", 4, 0.1, 0.1)
			Draw3DText( 224.66, -788.00, 31.73  -1.800, "Man skader ikke nogen i denne garage", 4, 0.1, 0.1)		------197.48529052734,-886.48272705078,30.713081359863 
		end	
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
