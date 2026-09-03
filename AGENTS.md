# LocalFFXIServer Agent Guide

## Project Purpose

This repository is a customized private-home-server fork of LandSandBoat for Final Fantasy XI.

The server should remain based on current upstream LandSandBoat while allowing private-server features, balance changes, quality-of-life improvements, custom content, Trust improvements, and other experiments.

The goal is to keep custom work isolated so upstream LandSandBoat updates remain straightforward.

## Repository Model

* `upstream` = official `LandSandBoat/server`
* `origin` = `gortr/LocalFFXIServer`
* `upstream/base` is the authoritative upstream baseline.
* `Main-LocalFFXIServer` is the stable custom-server branch.
* Significant work should normally happen on a dedicated feature, balance, content, fix, or experimental branch before merging into `Main-LocalFFXIServer`.

Do not rewrite or discard upstream history.

## Customization Rule

Prefer this order:

1. Lua module
2. SQL module
3. C++ module
4. Direct upstream-file modification only when the module system cannot reasonably support the required behavior

Do not modify `src/`, `scripts/`, or `sql/` merely because doing so is easier.

If an upstream-file modification appears necessary, first explain:

* why a Lua module cannot implement it;
* why a SQL module cannot implement it;
* why a C++ module cannot implement it;
* which upstream files would have to change;
* what merge/update risk the change creates.

## Custom Module Locations

Active custom code belongs under:

* `modules/custom/lua/`
* `modules/custom/sql/`
* `modules/custom/cpp/`

Experimental work belongs under:

* `modules/custom/experimental/`

Do not enable experimental modules in `modules/init.txt` without explicit approval.

## Customization Categories

Use these locations where practical:

* Trust behavior: `modules/custom/lua/trusts/`
* Custom or overridden quests: `modules/custom/lua/quests/`
* Quality-of-life features: `modules/custom/lua/qol/`
* Custom commands: `modules/custom/lua/commands/`
* Lua job balance: `modules/custom/lua/balance/jobs/`
* Lua mob balance: `modules/custom/lua/balance/mobs/`
* SQL job balance: `modules/custom/sql/balance/jobs/`
* SQL mob balance: `modules/custom/sql/balance/mobs/`
* Drop changes: `modules/custom/sql/balance/drops/`
* Progression/database balance: `modules/custom/sql/balance/progression/`
* Persistent fixes/overrides: `modules/custom/*/fixes/`
* New C++ capabilities: `modules/custom/cpp/features/`
* New Lua/native bindings: `modules/custom/cpp/bindings/`

## Machine-Local Configuration

Never commit:

* database passwords;
* account passwords;
* `.env` secrets;
* SQL/database backups;
* private keys;
* real authentication tokens;
* machine-specific `settings/*.lua`;
* the live `modules/custom/sql/network/lan_zone_ip.sql`.

Machine-specific configuration should remain ignored or in `.git/info/exclude`.

Templates containing placeholders are acceptable.

## SQL Module Rules

SQL modules must be safe to run repeatedly because dbtool may execute them after future database updates.

Prefer deterministic and idempotent statements.

Avoid destructive schema or data operations unless explicitly required and reviewed.

Do not make persistent manual database edits when the desired behavior should survive an upstream database update. Encode such changes in a SQL module instead.

## Lua Module Rules

Before overriding behavior:

1. inspect the current upstream implementation;
2. inspect nearby/current examples;
3. identify the exact function or hook being replaced or wrapped;
4. prefer the smallest override necessary;
5. preserve upstream behavior with `super(...)` when appropriate.

Do not copy large upstream scripts into a module when a focused override will work.

## C++ Module Rules

C++ is reserved for capabilities that cannot reasonably be expressed using existing Lua or SQL hooks.

Prefer exposing a narrowly scoped capability or Lua binding rather than replacing a large core subsystem.

C++ module changes require rebuilding LandSandBoat.

## Retail Fixes vs Custom Behavior

Keep a clear distinction between:

* retail-correct LandSandBoat fixes;
* intentional LocalFFXIServer customization.

Retail-correct fixes should be written so they could reasonably be proposed upstream when appropriate.

Intentional non-retail behavior belongs in LocalFFXIServer modules.

Never disguise custom balance or behavior as a retail-correct bug fix.

## FFXI Knowledge and Verification

Do not assume Final Fantasy XI behavior from model memory.

Before implementing retail-dependent behavior:

1. inspect current LandSandBoat code;
2. inspect current LandSandBoat documentation;
3. inspect relevant nearby implementations;
4. use authoritative retail documentation, captures, event data, or verified references when needed;
5. clearly identify assumptions that cannot be verified.

Existing LandSandBoat code is not automatically proof of retail behavior.

## Quests and Missions

For quest or mission work, inspect the current LandSandBoat Interaction Framework before implementing new logic.

Prefer current `Quest`, `Mission`, and `HiddenQuest` patterns over legacy giant `onTrigger` condition chains where applicable.

Do not invent event IDs, NPC IDs, quest IDs, dialogue, packet behavior, or retail progression requirements.

## Testing

Every meaningful change should have an explicit test plan.

Use, as applicable:

* `xi_test`;
* targeted automated tests;
* GM-character testing;
* real FFXI client testing;
* database verification;
* server journal/log inspection.

Do not declare gameplay behavior complete solely because it compiles.

### LocalFFXIServer Tests

Custom automated tests belong under:

`scripts/tests/localffxi/`

This is an intentional exception to the normal rule of avoiding changes under
`scripts/`, because LandSandBoat requires xi_test suites to live under
`scripts/tests`.

Do not place LocalFFXIServer gameplay implementation code there. Actual custom
behavior remains under `modules/custom/`.

## Build Environment

The supported local build helper is:

`~/lsb-tools/build-lsb.sh`

It configures:

* GCC 15
* G++ 15
* Ninja
* the LandSandBoat Python virtual environment

Prefer it over manually invoking an alternate CMake generator.

## Database Tooling

The LandSandBoat Python environment is:

`~/.venvs/lsb`

Typical database update:

`source ~/.venvs/lsb/bin/activate && cd ~/server && python ./tools/dbtool.py update`

Back up important player/server data before major database migrations.

## Service Management

LandSandBoat runs through systemd.

Useful commands:

* `sudo systemctl start xi`
* `sudo systemctl stop xi`
* `sudo systemctl restart xi`
* `systemctl status xi`
* `journalctl -u xi_map`
* `journalctl -u xi_connect`
* `journalctl -u xi_world`
* `journalctl -u xi_search`

Do not start a second copy through dbtool while systemd services are running.

## Git Workflow

Before changing code:

1. fetch current branch state;
2. confirm the working tree;
3. create/use an appropriate branch for substantial work.

Suggested prefixes:

* `feat/`
* `content/`
* `balance/`
* `fix/`
* `qol/`
* `experimental/`

Keep commits focused and understandable.

Before committing:

1. inspect `git diff`;
2. confirm no secrets or machine-local settings are staged;
3. run relevant tests;
4. document how the change was validated.

## Change Documentation

For meaningful custom features, document:

* purpose;
* files/modules involved;
* upstream behavior being changed;
* intended custom behavior;
* configuration;
* testing procedure;
* rollback/disable procedure;
* known limitations.

See `documentation/local_server/` and `modules/custom/README.md` for deeper project documentation.
