-----------------------------------
-- LocalFFXIServer
-- New Player Starter Items
-----------------------------------

require('modules/module_utils')
require('scripts/globals/player')

-----------------------------------

local m = Module:new('localffxi_new_player_starter_items')

local starterItems =
{
    xi.item.SPROUT_BERET,
    xi.item.ECHAD_RING,
}

m:addOverride('xi.player.charCreate', function(player)
    -- Preserve all normal LandSandBoat character-creation behavior.
    super(player)

    -- LocalFFXIServer starter rewards.
    --
    -- hasItem() makes this safe if charCreate is ever called
    -- more than once for the same character.
    for _, itemId in ipairs(starterItems) do
        if not player:hasItem(itemId) then
            player:addItem(itemId)
        end
    end
end)

return m
