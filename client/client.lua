ESX = nil
local PlayerData = { }
local nicsache = false

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports["es_extended"]:getSharedObject()
        Citizen.Wait(0)
    end
end)

--NICOTIN SACHES

RegisterNetEvent('Hel1best_Velo')
AddEventHandler('Hel1best_Velo',function(playerId, source)
if lib.progressBar({
    duration = 4500,
    label = Strings['poping'],
    useWhileDead = false,
    canCancel = false,
    disable = {
        car = true,
        move = true,
        combat = true,
    },
    anim = {
        dict = 'missminuteman_1ig_2',
        clip = 'tasered_2'
    },
}) then   ShakeGameplayCam("DRUNK_SHAKE", 0.5)
    lib.notify({title =Strings['informcoomand'],  description = Config.spitpouch ,type = 'inform'})    
  nicsache = true
    Citizen.Wait(0)
    lib.notify({icon ='	fa fa-remove', description = Strings['removesache'],type = 'succes'})    
    end
end)


RegisterCommand(Config.spitpouch, function()
    if nicsache then

    nicsache = false
    if lib.progressBar({
        duration = 4500,
        label = Strings['spit'],
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            combat = true,
        },
        anim = {
            dict = 'timetable@gardener@smoking_joint',
            clip = 'idle_cough'
        },
    }) then  

    ShakeGameplayCam("DRUNK_SHAKE", 0)
    lib.notify({icon ='	fa fa-remove', description = Strings['removedsache'],type = 'error'})    
      end
    end
end)
