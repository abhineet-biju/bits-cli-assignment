#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR" || exit 1

mkdir -p Question2
out="Question2/coursera_command_output.txt"

{
  echo "Question 2 - Secure Project Workspace Setup"
  echo
  echo "Command: mkdir -p project_workspace"
  mkdir -p project_workspace
  echo
  echo "Command: touch project_workspace/plan.txt project_workspace/notes.txt"
  touch project_workspace/plan.txt project_workspace/notes.txt
  echo
  echo "Command: ls -l project_workspace"
  ls -l project_workspace
  echo
  echo "Command: ls -ld project_workspace"
  ls -ld project_workspace
  echo
  echo "Command: chmod 750 project_workspace"
  chmod 750 project_workspace
  echo
  echo "Command: ls -ld project_workspace"
  ls -ld project_workspace
  echo
  echo "Command: id"
  id
  echo
  echo "Command: umask"
  umask
  echo
  echo "Command: find project_workspace -maxdepth 2 -ls"
  find project_workspace -maxdepth 2 -ls
} | tee "$out"

echo
echo "Saved output to $out"
