#!/bin/bash
# Script: 16_search_for_urls.sh
# Write a script that uses grep to extract URLs (e.g., http or https) from a document.
grep -o -E 'https?://([A-Za-z0-9-]+\.)*[A-Za-z0-9-]+(\.[A-Za-z]{2,})?(:[0-9]+)?(/[A-Za-z0-9._~:/?#@!$&()*+,;=%-]*)?' "$1"

# https?:// is for matching either http or https
# ([A-Za-z0-9-]+\.)*[A-Za-z0-9-]+(\.[A-Za-z]{2,})? matches domain
# ([A-Za-z0-9-]+\.)* matches alphanumeric or - for subdomain like www (optional) * means zero or more
# \. matches dot
# [A-Za-z0-9-]+ matches main part of the domain
# (\.[A-Za-z]{2,})? matches the dot and the domain like .com .net .io with at least 2 alphanumerical numbers
# (:[0-9]+)? matches optional ports
# (/[A-Za-z0-9._~:/?#@!$&()*+,;=%-]*)? captures optional paths after the domain
