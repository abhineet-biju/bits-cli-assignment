#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR" || exit 1

mkdir -p Question3
workdir="Question3/link_lab"
out="Question3/coursera_command_output.txt"
rm -rf "$workdir"
mkdir -p "$workdir"

{
  echo "Question 3 - File System and Link Analysis"
  echo
  echo "Command: cd $workdir"
  cd "$workdir" || exit 1
  echo
  echo 'Command: echo "This file is used to test hard links and symbolic links." > original.txt'
  echo "This file is used to test hard links and symbolic links." > original.txt
  echo
  echo "Command: ln original.txt hardlink.txt"
  ln original.txt hardlink.txt
  echo
  echo "Command: ln -s original.txt symlink.txt"
  ln -s original.txt symlink.txt
  echo
  echo "Command: ls -li"
  ls -li
  echo
  echo "Command: stat original.txt"
  stat original.txt
  echo
  echo "Command: stat hardlink.txt"
  stat hardlink.txt
  echo
  echo "Command: stat symlink.txt"
  stat symlink.txt
  echo
  echo "Command: cat original.txt"
  cat original.txt
  echo
  echo "Command: rm original.txt"
  rm original.txt
  echo
  echo "Command: ls -li"
  ls -li
  echo
  echo "Command: cat hardlink.txt"
  cat hardlink.txt
  echo
  echo "Command: cat symlink.txt"
  cat symlink.txt
} 2>&1 | tee "$ROOT_DIR/$out"

echo
echo "Saved output to $out"
