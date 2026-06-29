#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR" || exit 1

mkdir -p Question4
out="Question4/coursera_command_output.txt"

{
  echo "Question 4 - File Access and I/O Investigation"
  echo
  echo "Command: lsof -p $$"
  if command -v lsof >/dev/null 2>&1; then
    lsof -p $$
  else
    echo "lsof is not installed in this lab environment."
  fi
  echo
  echo 'Command: ls -l /proc/$$/fd'
  ls -l /proc/$$/fd
  echo
  echo 'Command: echo "Application log entry created successfully" > Question4/output.txt'
  echo "Application log entry created successfully" > Question4/output.txt
  echo
  echo "Command: cat Question4/output.txt"
  cat Question4/output.txt
  echo
  echo "Command: ls missing_file.txt 2> Question4/error.txt"
  ls missing_file.txt 2> Question4/error.txt
  echo
  echo "Command: cat Question4/error.txt"
  cat Question4/error.txt
  echo
  echo "Command: ulimit -a"
  ulimit -a
} 2>&1 | tee "$out"

echo
echo "Saved output to $out"
