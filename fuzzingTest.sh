res1=$(date +%s.%N)

## VARIABLES ##
folder="$1"
results="$2"
testcases="$3"
tested="$4"
tester="$5"

## Mocked functions
#mock1="$6"
#mock2="$7"

## Inlude ##
#include="$8"

cd "$folder"

afl-gcc -fno-stack-protector -z execstack $tester -I $include -Wl,--wrap=$mock1,--wrap=$mock2 -lcmocka -o test_wtt_ft

afl-fuzz -i ./testcases/ -o ./results/ ./test_wtt_ft

res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)

LC_NUMERIC=C printf "Runtime FT: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds >> "./time.txt"