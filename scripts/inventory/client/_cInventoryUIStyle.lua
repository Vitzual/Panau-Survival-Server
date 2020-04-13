class 'cInventoryUIStyle'

function cInventoryUIStyle:__init()

    self.background_alpha = 140
    self.default_inv_size = 1000 -- 800 px wide for the entire inventory
    self.colors = 
    {
        default = 
        {
            background = Color(0, 0, 0, self.background_alpha),
            border = Color(255, 0, 0, 0),
            text = Color(220, 220, 220, 255),
            text_hover = Color(255, 255, 255, 255)
        },
        dropping = 
        {
            background = Color(100, 0, 0, self.background_alpha),
            border = Color(255, 0, 0, 255),
            text = Color(220, 0, 0, 255),
            text_hover = Color(255, 0, 0, 255)
        },
        hover = 
        {
            background = Color(50, 50, 50, self.background_alpha),
            border = Color(255, 255, 255, 200),
            text = Color(220, 220, 220, 255),
            text_hover = Color(255, 255, 255, 255)
        }
    }

    self.category_title_colors = {Normal = Color.White, Full = Color.Red}
    self.border_size = 2

    self.item_colors = 
    {
        blue = Color(17, 84, 135, self.background_alpha), -- armor, grapples, para, grenades, radio
        red = Color(137, 29, 19, self.background_alpha), -- cruis missile, nuke, area bombing
        pink = Color(140, 63, 140, self.background_alpha), -- backpacks, scuba gear, explosive detector
        yellow = Color(155, 145, 29, self.background_alpha), -- landclaim, ping, bping, evac, vehicle repair, backtrak, stashhacker, woet
        darkgreen = Color(24, 99, 24, self.background_alpha), -- food/drink items
        green = Color(20, 155, 22, self.background_alpha), -- healing items
        lightblue = Color(11, 118, 137, self.background_alpha) -- build items
    }

    self.item_color_map = 
    {
        ["Combat Backpack"] = self.item_colors.yellow,
        ["Explorer Backpack"] = self.item_colors.yellow,
        ["Helmet"] = self.item_colors.blue,
        ["Police Helmet"] = self.item_colors.blue,
        ["Military Helmet"] = self.item_colors.blue,
        ["Military Vest"] = self.item_colors.blue,
        ["Kevlar Vest"] = self.item_colors.blue,
        ["Scuba Gear"] = self.item_colors.yellow,
        ["Area Bombing"] = self.item_colors.red,
        ["BackTrack"] = self.item_colors.yellow,
        ["Bandages"] = self.item_colors.green,
        ["Burst Ping"] = self.item_colors.yellow,
        ["Cruise Missile"] = self.item_colors.red,
        ["EVAC"] = self.item_colors.yellow,
        ["Healthpack"] = self.item_colors.green,
        ["Ping"] = self.item_colors.yellow,
        ["Stash Hacker"] = self.item_colors.yellow,
        ["Barrel Stash"] = self.item_colors.lightblue,
        ["Garbage Stash"] = self.item_colors.lightblue,
        ["Locked Stash"] = self.item_colors.lightblue,
        ["Tactical Nuke"] = self.item_colors.red,
        ["Vehicle Repair"] = self.item_colors.yellow,
        ["Woet"] = self.item_colors.yellow,
        ["HE Grenade"] = self.item_colors.blue,
        ["Laser Grenade"] = self.item_colors.blue,
        ["Molotov"] = self.item_colors.blue,
        ["Smoke Grenade"] = self.item_colors.blue,
        ["Toxic Grenade"] = self.item_colors.blue,
        ["Flashbang"] = self.item_colors.blue,
        ["Apple Juice"] = self.item_colors.darkgreen,
        ["Can of Beans"] = self.item_colors.darkgreen,
        ["Can of Ham"] = self.item_colors.darkgreen,
        ["Can of Peaches"] = self.item_colors.darkgreen,
        ["Chips"] = self.item_colors.darkgreen,
        ["Chocolate"] = self.item_colors.darkgreen,
        ["Coffee"] = self.item_colors.darkgreen,
        ["Cookies"] = self.item_colors.darkgreen,
        ["Energy Drink"] = self.item_colors.darkgreen,
        ["Iced Tea"] = self.item_colors.darkgreen,
        ["Macadamia Nuts"] = self.item_colors.darkgreen,
        ["Peanuts"] = self.item_colors.darkgreen,
        ["Pretzel"] = self.item_colors.darkgreen,
        ["Water"] = self.item_colors.darkgreen,
        ["Grapplehook"] = self.item_colors.blue,
        ["RocketGrapple"] = self.item_colors.blue,
        ["Explosives Detector"] = self.item_colors.yellow,
        ["Parachute"] = self.item_colors.blue,
        ["Radio"] = self.item_colors.blue,
        ["SMRT-GRP"] = self.item_colors.blue,
        ["Wingsuit"] = self.item_colors.blue,
        ["CamelBak"] = self.item_colors.darkgreen
    }


end

-- Updates an item's color based on whether or not is it being dropped or has a specific item color
function cInventoryUIStyle:UpdateItemColor(itemwindow)

end

InventoryUIStyle = cInventoryUIStyle()