# New Player Starter Items

## Purpose

LocalFFXIServer gives newly created characters a small starter assistance
package appropriate for the server's low-population design.

## Starter Items

New characters receive:

- Sprout Beret
- Echad Ring

## Implementation

Lua module:

modules/custom/lua/qol/new_player_starter_items.lua

The module overrides:

xi.player.charCreate

and calls the upstream implementation through `super(player)` before applying
LocalFFXIServer starter rewards.

## Duplicate Protection

Each item is checked with `player:hasItem()` before being granted.

The module therefore does not intentionally create duplicate starter items if
character initialization is invoked more than once.

## Existing Characters

Existing characters are not automatically migrated.

Administrators may grant the items manually when appropriate.

## Testing

Automated tests:

scripts/tests/localffxi/qol/new_player_starter_items.lua

Validation includes:

- Sprout Beret granted
- Echad Ring granted
- repeated charCreate does not duplicate either item
- real-client new-character creation

## Rollback

Disable or remove:

modules/custom/lua/qol/new_player_starter_items.lua

No database migration is required.
