echo $(find ./08_awk -regex '.*\/[0-9]+\.sh') | awk 'BEGIN{RS=" "} {print $1}'
echo $'\n'
echo $(find ./08_awk -iname '[0-9].sh') | awk 'BEGIN{RS=" "} {print $1}'