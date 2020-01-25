# echo $(find ./08_awk -regex '.*\/[0-9]+\.sh') | awk 'BEGIN{RS=" "} {print $1}'
# echo $'\n'
# echo $(find ./08_awk -iname '[0-9].sh') | awk 'BEGIN{RS=" "} {print $1}'
# $(find ./02_for_while/ -name '*.sh');

# sed -i 's!:<<////!:<<\x27END_COMMENT\x27!' 1.sh
# sed -i 's!////!END_COMMENT!' 1.sh

# awk '$1 == "#" { print $0 }' 1.sh

# function trim {
#     echo $(echo $1 | sed 's/^[ \t]*//;s/[ \t]*$//')
# }
