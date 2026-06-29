#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR" || exit 1

mkdir -p Question1
out="Question1/coursera_command_output.txt"

{
  echo "Question 1 - Linux Environment Verification"
  echo
  echo "Command: whoami"
  whoami
  echo
  echo "Command: id"
  id
  echo
  echo "Command: groups"
  groups
  echo
  echo 'Command: echo "$SHELL"'
  echo "$SHELL"
  echo
  echo "Command: pwd"
  pwd
  echo
  echo "Command: ls -la"
  ls -la
  echo
  echo "Command: ping -c 4 google.com"
  ping -c 4 google.com
} | tee "$out"

echo
echo "Saved output to $out"
