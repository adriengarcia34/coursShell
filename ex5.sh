echo "1 - Vérifier l'existence d'un utilisateur"
echo "2 - Connatre l'UID d'un utilisateur"
echo "q - Quitter"

if [ -n $1 ]
then
	user=$1
	echo "Test sur l'user $user"
fi


read choice

if [ -z $user ]
then
	echo "Saisissez un utilisateur"
	read user
fi
case $choice in
	"q")
		exit 3 ;;
	1)
		cat /etc/passwd | grep $user >/dev/null 2>&1
		if [ $? -eq 0 ]
		then
			echo "L'utilisateur $user exite"
		else
			echo "L'utilisateur $user n'existe pas"
		fi
		;;
	2)
		uid=$(id -u $user)
		echo $uid
		
		;;
esac
