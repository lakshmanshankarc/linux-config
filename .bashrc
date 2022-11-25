

neofetch
var="$(whoami)"

# backup the untouched bashrc before modify please execute the below commands
# cat ~/.bashrc > /home/$var/.bash_backup


#You can directly modify the files are not advisible so you can include you files by \
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi


#bash_aliases file

alias cool=clear
alias Azure='cd /home/$var/Documents/Azure'
alias update='sudo apt-get update'
alias cd-ans='cd /etc/ansible/'
alias laksh='cd /home/lakshman'
alias off='poweroff'
alias boot='reboot'


#Oracle dependcies ignore these
# export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_4:$LD_LIBRARY_PATH
# export PATH=$LD_LIBRARY_PATH:$PATH
# ORACLE_HOME=/u01/oracle; export ORACLE_HOME
# ORACLE_SID=asdb; export ORACLE_SID
