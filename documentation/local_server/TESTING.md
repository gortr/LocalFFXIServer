# LocalFFXIServer Testing Workflow

## Purpose

Custom LocalFFXIServer changes must be tested before merging into
Main-LocalFFXIServer.

Compilation alone does not establish that gameplay behavior is correct.

## Testing Layers

Changes should use the strongest applicable combination of:

1. Source inspection
2. Automated xi_test coverage
3. Database verification
4. Server log verification
5. GM-character testing
6. Real FFXI client testing

## Custom Automated Tests

LocalFFXIServer-specific tests live under:

scripts/tests/localffxi/

Categories:

- trusts/
- jobs/
- mobs/
- quests/
- qol/
- systems/

Actual gameplay modifications remain under:

modules/custom/

## Running Tests

Stop the live LSB server:

sudo systemctl stop xi

Confirm MariaDB remains running:

systemctl is-active mariadb

Run LocalFFXIServer tests:

~/lsb-tools/test-lsb.sh --keep-going --file 'localffxi'

Run a particular category:

~/lsb-tools/test-lsb.sh --keep-going --file 'localffxi/trusts'

Run a particular test case:

~/lsb-tools/test-lsb.sh --keep-going --filter '<test name>'

Start the server afterward:

sudo systemctl start xi

## Test Isolation

Use before_each() when tests mutate player, mob, or world state and individual
cases should be independent.

Do not assume xi_test automatically restores gameplay state between test cases.

## Gameplay Validation

Automated testing does not replace real-client testing for gameplay-facing
features.

After automated tests pass:

1. Start LandSandBoat.
2. Connect using the development GM character.
3. Reproduce the relevant conditions.
4. Verify intended behavior.
5. Check journal logs.
6. Verify relevant database state when applicable.

## Completion Standard

A feature is not considered complete merely because:

- it compiles;
- Lua loads without errors;
- SQL executes;
- an automated test passes.

The required validation depends on the feature.

Gameplay-facing features should normally be tested using the actual FFXI
client before merging to Main-LocalFFXIServer.
