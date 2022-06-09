#!/usr/bin/env bats

load "$BATS_PLUGIN_PATH/load.bash"

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Overwrites the BUILDKITE_REPO env variable" {
  export BUILDKITE_PLUGIN_DAWYZ_ENV_HOOK_VARS="*.bats"

  run "$PWD/hooks/environment"

  assert_success
  assert_output "TEST"

}