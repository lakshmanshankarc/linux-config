#Shell script for deleting the history of users 
echo "Enter Name of the user"
read usr;
var="$(whoami)"
if [ $usr = "/" ]
then
       cat /dev/null > /root/.bash_history
       echo "root user history will be deleted"
elif [ $usr = $var ]
then
        cat /dev/null > /home/$var/.bash_history
        echo "$var history will be deleted"
fi
~

