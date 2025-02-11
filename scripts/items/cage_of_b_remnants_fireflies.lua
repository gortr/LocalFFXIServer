-----------------------------------
-- ID: 5400
-- B. Rem. Fireflies
-- Transports the user out of Bhaflau Remnants
-----------------------------------
---@type TItem
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    if target:getZoneID() == xi.zone.BHAFLAU_REMNANTS then
        return 0
    end

    return xi.msg.basic.ITEM_UNABLE_TO_USE_2
end

itemObject.onItemUse = function(target)
    target:addStatusEffectEx(xi.effect.TELEPORT, 0, xi.teleport.id.B_REM, 0, 1)
end

itemObject.onItemDrop = function(target, item)
    target:addTempItem(xi.item.CAGE_OF_B_REMNANTS_FIREFLIES)
end

return itemObject
