--- STEAMODDED HEADER
--- MOD_NAME: BU Glasses - malverk
--- MOD_ID: BUGlasses
--- PREFIX: BUGlasses
--- MOD_AUTHOR: [Zaales]
--- MOD_DESCRIPTION: A silly mod to Docify all jokers.
--- VERSION: 1.0.0
--- DEPENDENCIES: [malverk]

-- default texture pack
AltTexture({
    key = 'jokers',
    set = 'Joker',
    path = 'Jokers.png',
    loc_txt = {
        name = 'BU glasses'
    }
})
TexturePack{      
    key = 'buglasses_jokers_pack',
    textures = {
        'BUGlasses_jokers'
    },
    loc_txt = {
        name = 'BU glasses',
        text = {
            'Give Doc\'s glasses to all jokers'
        }
    }
}

-- light texture pack
AltTexture({
    key = 'jokers_light',
    set = 'Joker',
    path = 'Jokers_light_edges.png',
    loc_txt = {
        name = 'BU glasses - light'
    }
})
TexturePack{
    key = 'buglasses_jokers_pack_light',
    textures = {
        'BUGlasses_jokers_light'
    },
    loc_txt = {
        name = 'BU glasses - light',
        text = {
            'Give Doc\'s glasses to all jokers.\nThis version has less black edges'
        }
    }
}

-- BU jokers
AltTexture({
    key = 'jokers_bu',
    set = 'Joker',
    path = 'Jokers_BU.png',
    loc_txt = {
        name = 'BU glasses - BU'
    },
    display_pos = 'j_scholar'
})
TexturePack{
    key = 'buglasses_jokers_pack_bu',
    textures = {
        'BUGlasses_jokers_bu'
    },
    loc_txt = {
        name = 'BU glasses - BU',
        text = {
            'Give Doc\'s glasses to all jokers.\nThis version uses jokers from BUMod'
        }
    }
}