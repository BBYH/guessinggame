# I made this assuming that we cared to differentiate between "special" files
# such as directories and executables and regular old data files. Additionally,
# I think we care about that hidden stuff, but who knows.
# I also assume that no one would be silly enough to use touch to create a 
# file with special characters. Honestly who would be silly enough to do that.
# It would create a real headache. gosh darn error testing.
function FN {
	local p=$(ls -a -F | egrep "[\*\/\=\>\@\|]"| wc -l)
	local q=$(ls -a | wc -l)
	eval echo $q-$p
}
function guessinggame.sh {
# putting it in a function is pretty ugly I know, but I'm not sure how else to
# avoid wiping i and q globally
i=-1
q=$(FN)
while [[ $i -ne $q ]]
do
	echo "make your guess: "
	read i
	if [[ $i -eq $q  ]]
	then
		echo "Correct, congrats"
	elif [[ $i -gt $q ]]
	then
		echo "too high, try again"
	else
		echo "too low, try again"
	fi
done
}
guessinggame.sh
#again ugly
