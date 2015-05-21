#!/bin/bash

function build_container() {
  local target_container=$1
  local target_tag=$2
  docker build --rm -t sequenceiq/${target_container}-bin:${target_tag} .
}

function main() {
  build_container "uluwatu" "cisco-branding"
}

main
