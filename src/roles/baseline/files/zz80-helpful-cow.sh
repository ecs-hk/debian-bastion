# Managed by Ansible

# Only run if in interactive shell..
if [[ $- == *i* ]]  ; then

        which fortune > /dev/null 2>&1
        _rc1=${?}
        which cowsay > /dev/null 2>&1
        _rc2=${?}

        if [ ${_rc1} -eq 0 ] && [ ${_rc2} -eq 0 ] ; then
                fortune -s | cowsay
        fi

fi
