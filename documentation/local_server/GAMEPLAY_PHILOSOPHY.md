# LocalFFXIServer Gameplay Philosophy

**Status:** Initial Design Baseline
**Version:** 0.1
**Target:** Modern Level 99 LandSandBoat with small-population redesign

## 1. Vision

LocalFFXIServer is intended to preserve the identity, progression, world, jobs, combat systems, exploration, and accomplishment of Final Fantasy XI while adapting the game for an extremely small private-server population.

The expected population is primarily:

* one human player with Trusts;
* occasionally two to three human players with Trusts;
* potentially larger human groups in the future.

The server should not require a retail-sized population in order for players to experience meaningful portions of Final Fantasy XI.

The guiding principle is:

> Retail when it improves the experience. Modify systems when retail design assumes a population the server does not have. Freely customize where doing so creates a better small-population FFXI experience without destroying the identity of the game.

---

# 2. Primary Population Target

The primary balance target is:

**Solo player + Trusts**

Secondary targets are:

**2–3 human players + Trusts**

and, where appropriate:

**traditional six-person human parties**

Content should not become trivial merely because it supports solo or small-party play.

Instead, systems such as Trust AI and encounter accessibility should compensate for the lack of available human players.

---

# 3. Solo Accessibility

Final Fantasy XI should be extremely solo-friendly with Trusts.

A solo player with appropriate:

* level;
* equipment;
* job preparation;
* Trust composition;
* knowledge;
* strategy;

should eventually be able to complete the overwhelming majority of the game.

This includes content that historically assumed groups.

Solo accessibility does not mean automatic victory.

Difficult encounters should continue to require preparation and competent gameplay.

Some optional content may intentionally exceed normal solo difficulty.

---

# 4. Trust Philosophy

Trusts are one of the most important systems for LocalFFXIServer.

Their purpose is not merely to fill empty party slots.

They should approximate competent average human party members so that limited population does not prevent players from experiencing FFXI.

## Power Target

Trusts should eventually perform approximately as well as an average human player performing the same role.

Exceptional human players should still be capable of outperforming Trust AI.

## Intelligence Target

Trust AI may be substantially smarter than retail Trust AI.

Desired capabilities include:

* coordinated Skillchains;
* coordinated Magic Bursts;
* intelligent curing thresholds;
* MP conservation;
* intelligent dispels;
* intelligent buff selection;
* intelligent debuff priorities;
* party-role awareness;
* positioning awareness;
* AoE avoidance where technically possible;
* tank coordination;
* target prioritization;
* enmity awareness;
* awareness of party health and resources;
* weapon-skill coordination;
* spell timing;
* situational job-ability usage.

Trusts should increasingly behave like party members rather than combat pets.

## Trust Restrictions

Retail-style Trust restrictions should remain the default initially.

Potential future modifications include:

* additional Trust-capable battlefields;
* Trusts in content that historically prohibits them;
* summon-location restrictions;
* Trust count;
* recast restrictions;
* dismissal behavior;
* special content allowances.

These changes should be evaluated individually.

---

# 5. Experience and Leveling

Base EXP progression should initially target approximately:

**1.5× retail EXP**

The purpose is to shorten leveling without making levels meaningless.

The server explicitly rejects instant-level or extremely accelerated leveling.

Level progression should remain part of the player's relationship with a job.

Players should have time to:

* learn abilities;
* learn spells;
* learn weapon skills;
* acquire equipment;
* understand job mechanics;
* experiment with party composition.

Level 99 should be earned rather than treated as character creation.

---

# 6. Skill Progression

Combat and crafting skill-ups should receive increased progression rates.

This applies to areas such as:

* weapon skills;
* magic skills;
* defensive skills;
* crafting skills.

Exact multipliers should be determined through testing.

Skill progression should remain present, but excessively slow skill-up behavior should not become a barrier to playing a job or profession.

---

# 7. Grind Philosophy

LocalFFXIServer distinguishes between **meaningful progression** and **empty repetition**.

## Preserve

Grind may remain when it represents:

* major equipment progression;
* Relic/Mythic/Empyrean progression;
* meaningful endgame advancement;
* difficult NM hunting;
* crafting mastery;
* job development;
* mission advancement;
* reputation or achievement with meaningful rewards;
* progression where preparation or mastery matters.

## Reduce

Grinding should be reconsidered when difficulty has disappeared and the activity primarily measures:

* hours spent;
* repetitive trivial kills;
* excessive waiting;
* extremely low-probability RNG;
* unnecessary travel;
* population-dependent inconvenience;
* obsolete competition mechanics;
* repeated trivial encounters.

The objective is not to eliminate grind.

The objective is to eliminate **grind for grind's sake**.

---

# 8. Item and Drop Philosophy

Rare and NM-related drops should initially receive modest improvement.

Initial target:

**approximately 1.5× effective availability**

This is particularly relevant to systems such as Dynamis job/relic equipment and other content where low population and repeated farming can create excessive friction.

Drop rates should not become so generous that equipment ceases to feel earned.

Different content may require different adjustments rather than one universal multiplier.

Future systems may include carefully designed bad-luck protection where persistent RNG becomes unreasonable.

---

# 9. Notorious Monsters

Notorious Monster mechanics should generally remain recognizable.

Existing systems such as:

* lottery spawning;
* placeholders;
* timed spawning;
* conditions;

should initially remain where practical.

However, spawn probability may be increased so the player spends less time waiting for the game to permit gameplay.

The goal is:

**preserve the hunt while reducing the parking-lot simulator.**

Exact changes should be evaluated per NM or NM family.

---

# 10. Missions and Story Progression

Players should be able to experience Final Fantasy XI's story without requiring other humans to happen to be on exactly the same mission.

Mission progression should therefore strongly support:

**solo + Trusts**

while preserving meaningful boss encounters.

Bosses should not simply be weakened until mechanics become irrelevant.

Where possible, accessibility should come from:

* allowing Trusts;
* improving Trust intelligence;
* correcting population-dependent restrictions;

rather than deleting encounter mechanics.

---

# 11. Level Caps and Battlefield Restrictions

Existing level-cap mechanics should initially remain intact.

Group restrictions should be evaluated separately.

Content that prohibits Trusts and therefore becomes inaccessible to the expected server population should be reviewed case by case.

Where technically and mechanically appropriate, Trusts may be enabled in historically restricted content.

Retail restrictions are not automatically removed.

Each battlefield should be examined for scripting, balance, event, and client compatibility before modification.

---

# 12. Job Identity

Every Final Fantasy XI job should retain a strong individual identity.

Job balance must not produce homogenization.

Warrior should not become Samurai.

Samurai should not become Dragoon.

Dragoon should not become Dark Knight.

Red Mage should not become White Mage with different clothing.

Differences between jobs are a foundational strength of FFXI.

---

# 13. Job Balance

The initial balance philosophy is:

**Preserve identity and buff underperforming jobs.**

After major weaknesses have been addressed, tighter overall parity may be considered.

Balance should generally be **buff-first**.

Nerfs should primarily be reserved for abilities, combinations, or mechanics that:

* genuinely trivialize meaningful content;
* invalidate large portions of the job system;
* create severe unintended interactions.

Being powerful is not by itself justification for a nerf.

---

# 14. Custom Job Mechanics

Non-retail job improvements are permitted when they continue to feel authentically FFXI.

Potential changes include:

* custom traits;
* altered traits;
* improved job abilities;
* altered recast timers;
* new ability interactions;
* redesigned weak abilities;
* pet improvements;
* custom spell behavior;
* improved job synergy;
* changes to outdated or ineffective mechanics.

Changes must preserve job identity and overall gameplay integrity.

Novelty alone is not sufficient justification.

---

# 15. Enemy Balance

Normal enemies should initially remain reasonably close to retail behavior.

Broader enemy balancing may occur later after sufficient testing.

NMs and bosses may eventually receive:

* improved AI;
* improved ability selection;
* better responses to Trust parties;
* smarter targeting;
* mechanical improvements;
* selective statistical adjustments.

Enemies should not simply receive enormous HP increases as a substitute for encounter design.

Difficulty should preferably come from mechanics and intelligent behavior.

---

# 16. Death

Retail-style death consequences should initially remain.

This includes EXP loss and associated inconvenience where currently applicable.

Death should retain meaning.

The server should not remove every consequence merely because it is private.

---

# 17. Travel and Quality of Life

Initial quality-of-life policy:

## Automatically Available

* all maps;
* all outposts;
* Sprout Beret;
* Echad Ring.

## Player-Unlocked

Players should still naturally discover and activate:

* Home Point crystal destinations;
* Survival Guides.

Travel should retain a sense of world progression.

Quality-of-life changes should remove unnecessary friction without making Vana'diel feel geographically meaningless.

---

# 18. Economy

Gil should remain meaningful.

Players should still:

* earn gil;
* make economic decisions;
* purchase equipment and materials;
* participate in an economy.

The economy should not simply provide unlimited free resources.

Because LocalFFXIServer will have an extremely small population, systems requiring thousands of human buyers and sellers must be supplemented.

The planned Auction House solution is **ffxiahbot**, providing simulated Auction House supply and purchasing activity.

Economy balance will be tuned separately once the bot and player behavior can be observed.

---

# 19. Crafting

Crafting should remain relevant while becoming practical for the population size.

Initial priorities include:

* increased crafting skill-up rates;
* maintaining material relevance;
* using Auction House simulation to improve material availability;
* preserving meaningful high-level crafting progression.

Further crafting changes should be based on observed bottlenecks rather than wholesale simplification.

---

# 20. Gil Acquisition

Gil should require effort.

The server should provide reasonable methods of earning money without turning gil acquisition into an excessive secondary job.

No universal massive gil multiplier is currently planned.

Gil generation will be reviewed after the Auction House simulation and normal player progression have been observed.

---

# 21. Custom Content

LocalFFXIServer is intended to eventually expand beyond stock retail content.

Potential additions include:

* custom quests;
* quest chains;
* new encounters;
* custom NMs;
* new battlefield content;
* custom progression systems;
* additional endgame systems;
* server-specific storylines;
* new NPC interactions;
* custom rewards.

Other FFXI private servers may serve as inspiration, but systems should be evaluated and implemented according to LocalFFXIServer's own philosophy.

Custom content should feel as though it belongs in Vana'diel.

---

# 22. Equipment Philosophy

Custom equipment should respect FFXI's horizontal-progression identity.

Avoid continuous vertical stat inflation.

New equipment should ideally provide:

* alternative builds;
* situational strengths;
* job-specific opportunities;
* sidegrades;
* new tactical choices;
* support for neglected play styles.

Custom content should not make entire eras of equipment irrelevant whenever a new update is introduced.

---

# 23. Era Philosophy

LocalFFXIServer is not strictly a 75-cap server or a nostalgia server.

The server should support the breadth of FFXI through the modern Level 99 era.

The emotional foundation may draw from both:

* the strong identity and progression of the 75-cap era;
* the accessibility and expanded systems of modern FFXI.

The objective is:

**all eras of FFXI adapted for a very small population.**

---

# 24. Endgame Philosophy

Endgame should have multiple tiers.

## Standard Endgame

Expected to support:

* solo + Trusts;
* 2–3 humans + Trusts;
* traditional human parties.

## Advanced Endgame

May require:

* stronger equipment;
* optimized Trust combinations;
* advanced job knowledge;
* coordinated human players.

## Optional Extreme Content

Certain optional encounters may intentionally be extremely difficult.

These encounters may expect:

* multiple human players;
* optimized jobs;
* high-end equipment;
* encounter knowledge;
* teamwork;
* preparation;
* repeated attempts.

Not every piece of content must be accessible to every player immediately.

---

# 25. Optional Superbosses

The server should eventually include intentionally brutal optional encounters.

These exist for players who want to push:

* equipment;
* job mastery;
* party composition;
* strategy;
* coordination.

Rewards should be desirable without making the remainder of the game irrelevant.

Difficulty should primarily come from encounter mechanics rather than arbitrary health inflation.

---

# 26. New Player Philosophy

New players may receive limited assistance during the earliest stages of progression.

Potential assistance is appropriate for:

* fresh accounts;
* approximately pre-level-15 characters;
* basic starter equipment;
* basic quality-of-life items;
* avoiding early progression traps.

Starter assistance must not become a mechanism for skipping the game.

Players should still experience job development and gear progression.

---

# 27. Hard Design Boundaries

LocalFFXIServer should **not** become:

* an instant Level 99 server;
* a free-equipment server;
* a server where every rare item is trivial to obtain;
* a server where Trusts completely play the game for the human;
* a server where every inconvenience is removed;
* a server dominated by pointless repetitive grind;
* a server where jobs lose their identity;
* a server where every job functions similarly;
* a server where stronger gear continuously invalidates previous content;
* a server where difficulty consists primarily of inflated HP;
* a server where retail restrictions are preserved solely because they existed historically.

---

# 28. Decision Test

When considering a future change, ask:

### Does this preserve what makes FFXI interesting?

If yes, continue.

### Does the existing behavior depend primarily on population we do not have?

If yes, modification is strongly justified.

### Is the mechanic difficult or merely tedious?

Difficulty should generally remain.

Tediousness may be reduced.

### Does this preserve job and content identity?

If not, redesign the change.

### Does it make progression meaningless?

If yes, reject or substantially revise it.

### Does it make solo/Trust progression unnecessarily impossible?

If yes, investigate modification.

### Would this still feel at home in Final Fantasy XI?

If not, it requires exceptional justification.

---

# 29. Core Philosophy

LocalFFXIServer should provide:

**The depth of Final Fantasy XI without requiring the population of Final Fantasy XI.**

Progression should matter.

Jobs should matter.

Equipment should matter.

Preparation should matter.

The world should matter.

Difficulty should matter.

Player time should also matter.
