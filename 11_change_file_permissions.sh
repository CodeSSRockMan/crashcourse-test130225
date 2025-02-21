#!/bin/bash

for sh_file in *.sh; do
	chmod +rwx "$sh_file"
	echo "$sh_file got rwx permission"
done




