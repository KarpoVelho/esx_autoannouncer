local valittu
local kuinkausein = 15 --minuutteina

local viestit = {
    {teksti = "^4[discord.gg/velhoscripts]"},
    {teksti = "^4[discord.gg/cloudsuomi]"}
}


CreateThread(function()
    while true do
    Wait(kuinkausein*1000*60)
	    for i=1, #viestit do
            valittu = math.random(1,#viestit)
        end
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background: -webkit-linear-gradient(right, transparent 0%, rgba(40, 40, 40, 0.4) 85%); border-radius: 14px;"><i class="fa fa-user"></i> {0}  </div>',
            args = {viestit[valittu].teksti}
        })
    end
end)


