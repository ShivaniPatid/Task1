#!/bin/bash -x

echo "Enter a value of a"
read a
echo "Enter a value of b"
read b
echo "Enter a value of c"
read c

res1=$((a+b*c))
res2=$((a*b+c))
res3=$((c+a/b))
res4=$((a%b+c))


declare -A result

result[v1]=$res1
result[v2]=$res2
result[v3]=$res3
result[v4]=$res4

echo "a+b*c = ${result[v1]}"
echo "a*b+c = ${result[v2]}"
echo "c+a/b = ${result[v3]}"
echo "a%b+c = ${result[v4]}"

sort -n <(printf "%s\n" "${result[@]}")
