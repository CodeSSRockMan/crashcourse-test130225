#!/bin/bash
# Script: 07_match_whole_words_only.sh
# Write a script that finds all lines containing exactly the word "root" (excluding words like "uprooted" or "roots").
grep -E '\broot\b' "$1"
