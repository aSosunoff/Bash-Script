#!/usr/bin/env bash

function getDirectoryName {
	echo $(find -mindepth 1 -maxdepth 1 -type d -regex '^\.\/[^.].*');
}

>README.md

for fileMain in $(getDirectoryName); do
	folderName="${fileMain:2}";
	for fileSub in $(find ./$folderName -regex '.*\/[0-9]+\.sh'); do
		awk '
			BEGIN {
				x = 0
				FS="\n"
			}
			{
				if($1 == ":<<\x27END_COMMENT\x27")
					x = 1

				if(x == 1 && $1 ~ "^#")
					print $0
			}' $fileSub

		echo $'\n'

		awk '
			BEGIN {
				x = 1
				FS="\n"
				print "```bash"
			}
			{
				if($1 == ":<<\x27END_COMMENT\x27")
					x = 0

				if(x == 1)
					print $1
			}
			END {
				print "```"
			}' $fileSub

		echo $'\n'

		awk '
			BEGIN {
				x = 0
				FS="\n"
				print "<details>"
				print "\t<summary>Детальная информация</summary>\n"
			}
			{
				if($1 == ":<<\x27END_COMMENT\x27")
					x = 1

				if(x == 1 && $1 != ":<<\x27END_COMMENT\x27" && $1 != "END_COMMENT")
					print $1
			}
			END {
				print "</details>"
			}' $fileSub

		echo $'\n'
	done
done >>README.md