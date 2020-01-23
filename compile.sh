#!/usr/bin/env bash

function getDirectoryName {
	echo $(find -mindepth 1 -maxdepth 1 -type d -regex '^\.\/[^.].*');
}

function getHeader {
	if [ -n $1 ]; then
		fileSub=$1
	
		count_line=0
		IFS=$'\n'
		
		for line in $(cat $fileSub); do
			count_line=$[ $count_line + 1 ]
			if [[ "$line" =~ ^\:\<\<\/\/\/\/ ]]; then
				echo $(sed -n "$[ $count_line + 1 ]{p;q}" $fileSub)
				exit
			fi
		done
	fi
	echo ''
}

>README.md

for fileMain in $(getDirectoryName); do
	folderName="${fileMain:2}";
	echo ""
	# $(find ./02_for_while/ -name '*.sh');
	for fileSub in $(find ./$folderName -regex '.*\/[0-9]+\.sh'); do
		IFS=$'\n'
		
		echo "# $(getHeader $fileSub)"
		echo ""
		echo '```bash'
		closer='```'

		for line in $(cat $fileSub); do
			if [[ "$line" =~ ^\:\<\<\/\/\/\/ ]]; then
				echo "$closer"
				echo "<details>"
				echo "	<summary>Детальная информация</summary>"
				closer="</details>"
			elif [[ ! "$line" =~ ^\/\/\/\/ ]]; then
				echo "$line"
			fi
		done

		echo "$closer"
		echo ""
	done
done >>README.md