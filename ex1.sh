
echo "Saisissez une note entre 0 et 20"
read note
if [ $note -ge 0 -a $note -le 20 ]
then
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
fi
