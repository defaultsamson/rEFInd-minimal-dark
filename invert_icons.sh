

# If file names are given, convert them
if [ $# -ge 1 ]; then
	IMAGES="$@"

# Else convert all files in icons folder
else
	IMAGES="icons/*"
fi

for path in $IMAGES; do
	name=${path##*/} # Removes the file path
	convert icons/$name -channel RGB -negate icons/$name
done
