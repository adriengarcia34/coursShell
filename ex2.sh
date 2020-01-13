done=0
count=0
total=0
while [ 1 ]
do
	done=0
	until [ $done -eq 1 ]
	do
		echo "Saisissez une note entre 0 et 20"
		read note
	
		case $note in
		[0-9]*) 
#			echo "Coucou case num"
			if [ $note -ge 0 -a $note -le 20 ]
			then
				done=1
				count=$(($count+1))
				total=$(($total+$note))
#				echo "Coucou if2"
			fi ;;
		"q")
			moyenne=$(($total/$count))
			echo "Sur $count candidat(s), la moyenne est : $moyenne"
			exit 3 ;;
		esac
	done
	if [ $note -le 10 ]
	then
		echo "Insuffisant"
	elif [ $note -le 12 ]
	then
		echo "Moyen"
	elif [ $note -le 14 ]
	then
		echo "Assez bien"
	elif [ $note -le 16 ]
	then
		echo "Bien"
	else
		echo "Tres bien"
	fi
done
