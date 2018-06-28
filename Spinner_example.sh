spinner ()
{
	local pid=$1
	local delay=0.25
	local spinstr='|/-\'
	while [ $(ps -eo pid | grep $pid) ]; do
		local temp=${spinstr#?}
		printf "[%c] " "$spinstr"
		local spinstr=$temp${spinstr%"$temp"}
		sleep $delay
		printf "\b\b\b\b"
	done
	printf "	\b\b\b\b"
}


diskutil list

echo "Type the disk number:"
read DRIVE
clear

echo "Type name of img file inc .img.gz"
read NAME

script () {
sudo dd if=/dev/rdisk$DRIVE bs=1m | gzip > /Volumes/Volume_1/Repos/$NAME
}

(script) &
spinner $!
