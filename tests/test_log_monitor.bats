#!/usr/bin/env bats

@test "timestamp format is correct" {
  run bash -c 'source ./utils.sh && timestamp'
  [[ "$output" =~ [0-9]{4}-[0-9]{2}-[0-9]{2} ]]
}