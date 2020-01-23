# echo $(find ./08_awk -regex '.*\/[0-9]+\.sh') | awk 'BEGIN{RS=" "} {print $1}'
# echo $'\n'
# echo $(find ./08_awk -iname '[0-9].sh') | awk 'BEGIN{RS=" "} {print $1}'
# $(find ./02_for_while/ -name '*.sh');

# sed -i 's!:<<////!:<<\x27END_COMMENT\x27!' 1.sh
# sed -i 's!////!END_COMMENT!' 1.sh

# awk '$1 == "#" { print $0 }' 1.sh

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
    }' 1.sh

# echo $'\n'

# awk '
#     BEGIN {
#         x = 1
#         FS="\n"
#         print "```bash"
#     }
#     {
#         if($1 == ":<<\x27END_COMMENT\x27")
#             x = 0

#         if(x == 1)
#             print $1
#     }
#     END {
#         print "```"
#     }' 1.sh

# echo $'\n'

# awk '
#     BEGIN {
#         x = 0
#         FS="\n"
#         print "<details>"
#         print "\t<summary>Детальная информация</summary>"
#     }
#     {
#         if($1 == ":<<\x27END_COMMENT\x27")
#             x = 1

#         if(x == 1 && $1 != ":<<\x27END_COMMENT\x27" && $1 != "END_COMMENT")
#             print $1
#     }
#     END {
#         print "</details>"
#     }' 1.sh