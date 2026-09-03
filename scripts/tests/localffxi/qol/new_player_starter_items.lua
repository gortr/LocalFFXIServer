describe('LocalFFXIServer new player starter items', function()
    local player

    before_each(function()
        player = xi.test.world:spawnPlayer({ new = true })
    end)

    it('gives a new character a Sprout Beret', function()
        assert(
            player:hasItem(xi.item.SPROUT_BERET),
            'Expected new character to receive a Sprout Beret'
        )
    end)

    it('gives a new character an Echad Ring', function()
        assert(
            player:hasItem(xi.item.ECHAD_RING),
            'Expected new character to receive an Echad Ring'
        )
    end)

    it('does not duplicate starter items if charCreate runs again', function()
        xi.player.charCreate(player)

        assert(
            player:getItemCount(xi.item.SPROUT_BERET) == 1,
            'Expected exactly one Sprout Beret'
        )

        assert(
            player:getItemCount(xi.item.ECHAD_RING) == 1,
            'Expected exactly one Echad Ring'
        )
    end)
end)
