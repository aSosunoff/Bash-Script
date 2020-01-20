#!/usr/bin/env bash

function getDirectoryName {
	echo $(find -mindepth 1 -maxdepth 1 -type d -regex '^\.\/[^.].*');
}

>README.md

for fileMain in $(getDirectoryName); do
	
	folderName="${fileMain:2}";

	# echo "# $folderName"

	echo ""

	for fileSub in $(find ./$folderName -name '*.sh'); do		
		IFS=$'\n'

		is_header=true
		
		for line in $(cat $fileSub); do
			if $is_header; then
				echo ${line}
				echo ""
				is_header=false
				echo "\`\`\`bash"
			else
				echo "$line"
			fi
		done
		echo "\`\`\`"
		echo ""
	done
done >>README.md