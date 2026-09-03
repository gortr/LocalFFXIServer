# LocalFFXIServer Custom Modules

This directory contains LocalFFXIServer-specific changes layered on top of upstream LandSandBoat.

The intent is to avoid modifying upstream `src/`, `scripts/`, and `sql/` whenever the LandSandBoat module system can provide the required behavior.

## Directory Layout

### Lua

`lua/fixes/`
: Local Lua corrections or compatibility overrides.

`lua/qol/`
: Private-server quality-of-life features.

`lua/trusts/`
: Trust AI, behavior, abilities, engagement, and related customizations.

`lua/quests/`
: Quest-related custom behavior and Interaction Framework integrations.

`lua/commands/`
: Custom GM/player server commands.

`lua/balance/jobs/`
: Job ability, spell, trait, pet, and other job-balancing behavior implemented in Lua.

`lua/balance/mobs/`
: Mob behavior and combat-balancing overrides implemented in Lua.

### SQL

`sql/network/`
: Machine/server network database overrides. Live machine-specific files may be excluded from Git.

`sql/fixes/`
: Persistent database corrections.

`sql/balance/jobs/`
: Job-related database balance changes.

`sql/balance/mobs/`
: Mob statistics, spawn, or other database-backed balance changes.

`sql/balance/drops/`
: Treasure and drop-rate changes.

`sql/balance/progression/`
: Progression, economy, EXP, or other database-backed server balance changes.

### C++

`cpp/features/`
: New native capabilities that cannot reasonably be implemented through Lua or SQL.

`cpp/bindings/`
: Narrow Lua/native bindings required by custom modules.

C++ modules are disabled by default and require a rebuild when enabled.

### Experimental

`experimental/`
: Incomplete, dangerous, exploratory, or proof-of-concept work.

Nothing under this directory should be enabled on the normal server without explicit testing and approval.

## Module Activation

The live server uses `modules/init.txt` to determine which custom directories are active.

Stable Lua and SQL directories are normally enabled.

C++ and experimental directories are disabled by default.

## Design Rules

Prefer the smallest possible customization.

Do not copy entire upstream files merely to change a few lines when an override can accomplish the same result.

Before writing a module, inspect the current upstream implementation and relevant current module examples.

Keep retail-correct fixes separate from intentional private-server behavior.

## SQL Safety

SQL modules may be applied repeatedly by LandSandBoat's dbtool.

SQL changes should therefore be deterministic and safe to re-run whenever practical.

Persistent balance changes should live here instead of being manually edited directly into MariaDB.

## Development Lifecycle

Normal flow:

1. Create a feature/balance/content branch.
2. Inspect upstream behavior.
3. Implement the smallest appropriate module.
4. Build if required.
5. Apply database updates if required.
6. Run automated or targeted tests.
7. Test with the GM development character.
8. Test with a real FFXI client when gameplay-facing.
9. Review logs and database state.
10. Commit only after validation.
11. Merge into `Main-LocalFFXIServer` when considered stable.

## Disabling a Module

Whenever possible, a custom feature should be removable by disabling its entry or parent directory in `modules/init.txt`.

SQL modules may require an explicit rollback SQL script if they permanently change stored database values.

Modules that require rollback logic should document it alongside the module.

## Documentation

Substantial features should be documented under:

`documentation/local_server/`

Documentation should identify:

* the feature's purpose;
* retail/upstream behavior;
* custom behavior;
* affected modules;
* configuration;
* test procedure;
* rollback procedure;
* known limitations.
