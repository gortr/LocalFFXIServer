# LocalFFXIServer Architecture

## Purpose

LocalFFXIServer is a private home Final Fantasy XI server based on LandSandBoat.

The server tracks current upstream LandSandBoat while maintaining intentional private-server customizations separately.

## Core Philosophy

The project uses retail LandSandBoat as its foundation, then layers optional custom behavior on top.

Current intended customization areas include:

* improved small-party play;
* Trust improvements;
* job balance changes;
* mob balance changes;
* adjusted drop and progression rates;
* quality-of-life improvements;
* custom quests and encounters;
* custom NPC behavior;
* server-specific fixes;
* experimental gameplay systems.

These goals may evolve as the server develops.

## Upstream Relationship

Official repository:

`LandSandBoat/server`

Official branch:

`upstream/base`

Custom repository:

`gortr/LocalFFXIServer`

Stable custom branch:

`Main-LocalFFXIServer`

Upstream changes are merged into the custom branch rather than replacing custom history.

## Customization Layers

Preferred implementation order:

### Layer 1: Configuration

Use normal LandSandBoat settings when an existing supported setting already provides the desired behavior.

### Layer 2: Lua Modules

Use Lua for gameplay behavior, scripts, Trust behavior, NPC logic, commands, and overrides supported by the existing Lua API.

### Layer 3: SQL Modules

Use SQL for persistent database-backed changes such as drops, mob data, progression values, and other database overrides.

### Layer 4: C++ Modules

Use C++ when the desired capability is unavailable through existing Lua/SQL hooks.

Whenever practical, C++ should expose a narrow capability that higher-level Lua modules can consume.

### Layer 5: Core Fork Changes

Direct modifications to upstream core files are the last resort.

Such changes must document why the module system was insufficient and what upstream merge risk the modification creates.

## Stable vs Experimental

Stable custom code lives in:

`modules/custom/lua/`

`modules/custom/sql/`

`modules/custom/cpp/`

Experimental work lives in:

`modules/custom/experimental/`

Experimental modules are not loaded on the normal server by default.

## Machine-Specific Configuration

The following remain outside public Git history:

* database credentials;
* launcher/account credentials;
* network-specific live configuration;
* private keys;
* database backups;
* environment secrets.

Public repositories may include `.example` templates using placeholders.

## Validation Philosophy

Compilation is not sufficient proof that gameplay works.

Changes should be verified using the strongest available combination of:

* source inspection;
* LandSandBoat documentation;
* automated testing;
* `xi_test`;
* database inspection;
* server logs;
* GM-character testing;
* real-client testing;
* retail references/captures when retail accuracy matters.

## Retail Accuracy

LandSandBoat is fundamentally a retail emulator.

When a behavior is intended to reproduce retail Final Fantasy XI, implementation decisions should be based on verified evidence rather than memory or assumptions.

Intentional non-retail behavior should be labeled clearly as LocalFFXIServer customization.

## Recovery

Recovery layers include:

1. Git history for source/custom modules.
2. LandSandBoat database backups.
3. configuration archives.
4. Proxmox VM backups.
5. temporary Proxmox snapshots when performing high-risk changes.

## Server Runtime

The server runs through systemd using the parent `xi` service and child services:

* `xi_connect`
* `xi_search`
* `xi_world`
* `xi_map`

Do not run a second manual copy through dbtool while systemd is managing the server.

## Build Runtime

The supported local build command is:

`~/lsb-tools/build-lsb.sh`

The build helper supplies GCC 15, G++ 15, Ninja, and the dedicated LandSandBoat Python environment.

## Future Architecture Topics

Future documentation should cover:

* Trust customization architecture;
* job balancing philosophy;
* drop/progression philosophy;
* custom quest architecture;
* module testing conventions;
* update/merge procedure;
* release/versioning conventions;
* client-side modification policy;
* C++ extension policy.
