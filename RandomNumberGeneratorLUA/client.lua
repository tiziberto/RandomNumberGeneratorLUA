ESX = nil

Citizen.CreateThread(function() 
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
        Citizen.Wait(0) 
    end 
end)

RegisterCommand("random", function(source)
    TriggerServerEvent("genrandom:generarnumero")
end)

RegisterNetEvent("imprimirnumero")
AddEventHandler("imprimirnumero", function(ping, id, dinero)
	local MIN = 1
	local MAX = 10
	local minutos = GetClockMinutes()
	local genping = ((minutos^ping)-(ping))
    while genping>(MAX^ping) do
      genping = genping/(2^ping)
    end
	while genping>MAX do
		genping = genping/3
    end
	genping=genping*10
	if (ping%2==0) then
		genping = genping/2
	end
	genping=genping/10
	genping=math.floor(genping)
	while genping>MAX do
		genping = genping/2
    end
	genping=math.floor(genping)
	if (genping<MIN) then
		genping = MIN
	end
	print (genping)
end)