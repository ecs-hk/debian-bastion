# Managed by Ansible

ps -p ${$} | grep -q 'bash'
_rc1=${?}

printf "${-}" | grep -q 'i'
_rc2=${?}

# Only run if bash and if in interactive shell
if [ ${_rc1} -eq 0 ] && [ ${_rc2} -eq 0 ]  ; then

        which fortune > /dev/null 2>&1
        _rc1=${?}
        which cowsay > /dev/null 2>&1
        _rc2=${?}

        # Only run if both programs are installed
        if [ ${_rc1} -eq 0 ] && [ ${_rc2} -eq 0 ] ; then
                fortune -s | cowsay
        fi

fi
