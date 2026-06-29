#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR" || exit 1

mkdir -p Question5
out="Question5/coursera_command_output.txt"

{
  echo "Question 5 - Storage Health Assessment and Documentation"
  echo
  echo "Command: lsblk"
  lsblk
  echo
  echo "Command: df -h"
  df -h
  echo
  echo "Command: df -i"
  df -i
  echo
  echo "Command: mount | head -20"
  mount | head -20
  echo
  echo "Command: command -v smartctl"
  command -v smartctl || true
  echo
  echo "Command: smartctl -H /dev/sda"
  if command -v smartctl >/dev/null 2>&1; then
    smartctl -H /dev/sda || true
  else
    echo "smartctl is not installed or unavailable in this lab environment."
  fi
} 2>&1 | tee "$out"

echo
echo "Saved output to $out"
echo "Now open vi with: vi Question5/Storage_Assessment_Report.txt"
