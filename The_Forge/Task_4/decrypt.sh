
x="4f6if<j@"
i=0
base=0
echo "converting to ascii value"
while (( i++ < ${#x} ))
do
	char=$(expr substr "$x"  $i 1)
	for j in 'printf "%d" \'$char'' ; do
		j = $(($j+$base))
		printf \\$(printf '%03o' $j)
		$base = $(($base-1))
	done;
done;
