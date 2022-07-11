ansible-playbook \
-vvv \
-i hosts \
$(basename ${BASH_SOURCE} .sh).yml
