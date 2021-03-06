class 'sLoader'

function sLoader:__init()


    Events:Subscribe("PlayerJoin", self, self.PlayerJoin)
    Events:Subscribe("PlayerDeath", self, self.PlayerDeath)
    Events:Subscribe("PlayerSpawn", self, self.PlayerSpawn)

    Network:Subscribe("LoadStatus", self, self.LoadStatus)
end

function sLoader:PlayerJoin(args)
    self:TogglePlayerEnabled(args.player, false)
end

function sLoader:PlayerDeath(args)
    args.player:SetValue("dead", true)
    Timer.SetTimeout(5000, function()
        self:TogglePlayerEnabled(args.player, false)
    end)
end

function sLoader:PlayerSpawn(args)
    self:TogglePlayerEnabled(args.player, false)
end

function sLoader:LoadStatus(args, player)
    if not IsValid(player) then return end

    if args and args.status == "done" then

        player:SetValue("dead", nil)
        self:TogglePlayerEnabled(player, true)

        Events:Fire("LoadStatus", {player = player, status = not (args and args.status == "done")})
    else
        self:TogglePlayerEnabled(player, false)
    end
    
end

function sLoader:TogglePlayerEnabled(player, enabled)
    if not IsValid(player) then return end
    if not enabled and not player:GetValue("Loading") then

        player:SetValue("load/StreamDistance", player:GetStreamDistance())
        player:SetValue("Loading", true)
        player:SetStreamDistance(0)
        player:SetEnabled(false)

    elseif enabled and player:GetValue("Loading") then

        player:SetStreamDistance(player:GetValue("load/StreamDistance"))
        player:SetValue("Loading", false)
        player:SetEnabled(true)

    end
end

sLoader = sLoader()